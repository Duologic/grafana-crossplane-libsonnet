local grafanaplane = import './main.libsonnet';

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
      grafanaplane.oss.team.new(team.key)
      + grafanaplane.oss.team.withMembers(team.value.members)
    for team in std.objectKeysValues(teams)
  },

  mixinsFolder:
    grafanaplane.oss.folder.new('applications')
    + grafanaplane.oss.folder.withTitle('Applications (read-only)'),

  env:
    [
      {
        local this = self,
        parent: {
          folder:
            grafanaplane.oss.folder.new(f.name)
            + grafanaplane.oss.folder.withParentFolder(root.mixinsFolder),
          permission: [
            grafanaplane.oss.folderPermission.forFolder(self.folder)
            + grafanaplane.oss.folderPermission.withTeamPermission(root.teams[t.name])
            for t in f.admins
          ],
        },
        mixins: [
          {
            folder:
              grafanaplane.oss.folder.new(mixin.dashboardFolder)
              + grafanaplane.oss.folder.withParentFolder(this.parent.folder),
            dashboards: [
              grafanaplane.oss.dashboard.new(dashboard.key, dashboard.value, self.folder)
              for dashboard in std.objectKeysValues(mixin.dashboards)
            ],
          }
          for mixin in f.mixins
        ],
      }
      for f in topLevelFolders
    ],
}
