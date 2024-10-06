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

  stack: grafanaplane.cloud.stack.new('grafanaplane', 'my-namespace', 'grafana-token'),

  local oss = grafanaplane.oss,

  teams: {
    [team.key]:
      oss.team.new(team.key)
      + oss.team.withMembers(team.value.members)
    for team in std.objectKeysValues(teams)
  },

  mixinsFolder:
    oss.folder.new('applications')
    + oss.folder.withTitle('Applications (read-only)'),

  env:
    [
      {
        local this = self,
        parent: {
          folder:
            oss.folder.new(f.name)
            + oss.folder.withParentFolder(root.mixinsFolder),
          permission: [
            oss.folderPermission.forFolder(self.folder)
            + oss.folderPermission.withTeamPermission(root.teams[t.name])
            for t in f.admins
          ],
        },
        mixins: [
          {
            folder:
              oss.folder.new(mixin.dashboardFolder)
              + oss.folder.withParentFolder(this.parent.folder),
            dashboards: [
              oss.dashboard.new(dashboard.key, dashboard.value, self.folder)
              for dashboard in std.objectKeysValues(mixin.dashboards)
            ],
          }
          for mixin in f.mixins
        ],
      }
      for f in topLevelFolders
    ],
}
