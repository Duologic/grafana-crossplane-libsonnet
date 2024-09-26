local abstract = import './abstraction.libsonnet';

local teams = {
  infra: {
    name: 'infra',
    members: [
      'john@grafana.net',
      'mary@grafana.net',
    ],
  },
  networking: {
    name: 'networking',
    members: [
      'mia.qus@grafana.net',
      'lilly@grafana.net',
    ],
  },
};

local mixins = [
  {
    dashboards: {
      'my-dashboard.json': {
        title: 'My Dashboard',
        uid: 'my-dashboard-uid',
      },
    },
    dashboardFolder: 'Kubernetes',
  },
];

local topLevelFolders = [
  {
    name: 'Infra',
    admins: [teams.infra, teams.networking],
    mixins: mixins,
  },
];

/*
 *  Resulting structure in Grafana:
 *
 *  - Applications (read-only)     (folder)
 *    - Infra                      (folder)
 *      - Kubernetes               (folder)
 *        - My Dashboard           (dashboard)
 */
{
  local root = self,

  teams: {
    [team.key]:
      abstract.team.new(team.key)
      + abstract.team.withMembers(team.value.members)
    for team in std.objectKeysValues(teams)
  },

  mixinsFolder:
    abstract.folder.new('applications')
    + abstract.folder.withTitle('Applications (read-only)'),

  env:
    [
      {
        local this = self,
        parent: {
          folder:
            abstract.folder.new(f.name)
            + abstract.folder.withParentFolder(root.mixinsFolder),
          permission: [
            abstract.folderPermission.forFolder(self.folder)
            + abstract.folderPermission.withTeamPermission(root.teams[t.name])
            for t in f.admins
          ],
        },
        mixins: [
          {
            folder:
              abstract.folder.new(mixin.dashboardFolder)
              + abstract.folder.withParentFolder(this.parent.folder),
            dashboards: [
              abstract.dashboard.new(dashboard.key, dashboard.value, self.folder)
              for dashboard in std.objectKeysValues(mixin.dashboards)
            ],
          }
          for mixin in f.mixins
        ],
      }
      for f in topLevelFolders
    ],
}
