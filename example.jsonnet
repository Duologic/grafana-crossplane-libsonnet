local grafanaplane = import './grafanaplane/main.libsonnet',
      folder = grafanaplane.oss.v1alpha1.folder.spec.parameters.forProvider,
      folderPermission = grafanaplane.oss.v1alpha1.folderPermission.spec.parameters.forProvider;

local teams = [
  {
    name: 'infra',
    folders: ['infra', 'kubernetes'],
  },
  {
    name: 'networking',
    folders: ['ipv6', 'calico'],
  },
];

[
  {
    team:
      grafanaplane.oss.v1alpha1.team.new(team.name)
      + grafanaplane.oss.v1alpha1.team.spec.parameters.forProvider.withName(team.name),
    folders: [
      grafanaplane.oss.v1alpha1.folder.new(name)
      + folder.withTitle(name)
      + folder.withUid(name)
      + folder.withPreventDestroyIfNotEmpty(true)
      for name in team.folders
    ],
    perm: [
      grafanaplane.oss.v1alpha1.folderPermission.new(folder.metadata.name)
      + folderPermission.withFolderUid(folder.spec.parameters.forProvider.uid)
      + folderPermission.withPermissions([
        folderPermission.permissions.teamRef.withName(self.team.spec.parameters.forProvider.name)
        + folderPermission.permissions.withPermission('Admin'),
      ])
      for folder in self.folders
    ],
  }
  for team in teams
]
