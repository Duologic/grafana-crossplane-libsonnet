local d = import './generator/vendor/github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import './generator/vendor/github.com/jsonnet-libs/xtd/main.libsonnet';
local grafanaplane = import './grafanaplane/main.libsonnet';

{
  oss: {
    team: {
      '#new': d.func.new(
        '`new` creates a team.',
        [d.argument.new('name', d.T.string)]
      ),
      new(name):
        grafanaplane.oss.v1alpha1.team.new(name)
        + grafanaplane.oss.v1alpha1.team.spec.parameters.withExternalName(name)
        + grafanaplane.oss.v1alpha1.team.spec.parameters.forProvider.withName(name),

      '#withExternalName': d.func.new(
        '`withExternalName` can be used to import an existing team.',
        [d.argument.new('externalName', d.T.string)]
      ),
      withExternalName(externalName):
        grafanaplane.oss.v1alpha1.team.spec.parameters.withExternalName(externalName),

      '#withMembers':
        d.func.new(
          '`withMembers` configures the team members, it expects a set of email addresses corresponding to the users who should be given membership.',
          |||
            `withMembers` configures the team members, it expects a set of email addresses corresponding to users who should be given membership to the team.

            Note: users specified here must already exist in Grafana.
          |||,
          [d.argument.fromSchema('members', { type: 'array', items: { type: 'string' } })]
        ),
      withMembers(members):
        grafanaplane.oss.v1alpha1.team.spec.parameters.forProvider.withMembers(members),
    },

    folder: {
      local forProvider = grafanaplane.oss.v1alpha1.folder.spec.parameters.forProvider,

      '#new': d.func.new(
        |||
          `new` creates a folder.
        |||,
        [
          d.argument.new('title', d.T.string),
        ]
      ),
      new(title):
        local uid = xtd.ascii.stringToRFC1123(title);
        grafanaplane.oss.v1alpha1.folder.new(uid)
        + forProvider.withPreventDestroyIfNotEmpty()
        + forProvider.withTitle(title)
        + forProvider.withUid(uid)
        + grafanaplane.oss.v1alpha1.folder.spec.parameters.withExternalName(uid),

      '#withParentFolder': d.func.new(
        '`withParentFolder` sets the parent folder. `folderResource` can be created by `folder.new()`',
        [d.argument.new('folderResource', d.T.object)]
      ),
      withParentFolder(folderResource):
        forProvider.withParentFolderUid(folderResource.spec.parameters.forProvider.uid),

      '#withDestroyIfNotEmpty': d.func.new(
        '`withDestroyIfNotEmpty` will turn off the protection that prevents a folder from being deleted when it still has dashboards in it. Turning it off will remove the folder regardless if it still contains dashboards.',
        [d.argument.new('value', d.T.bool, default=true)]
      ),
      withDestroyIfNotEmpty(value=true):
        forProvider.withPreventDestroyIfNotEmpty(!value),

      '#withTitle': d.func.new(
        '`withTitle` sets the human readable title in the UI',
        [d.argument.new('title', d.T.string)]
      ),
      withTitle(title):
        forProvider.withTitle(title),

      '#withName': d.func.new(
        '`withName` sets Kubernetes object name',
        [d.argument.new('name', d.T.string)]
      ),
      withName(name):
        grafanaplane.oss.v1alpha1.folder.metadata.withName(name),

      '#withUid': d.func.new(
        '`withUid` sets the identifier visible in the URL',
        [d.argument.new('uid', d.T.string)]
      ),
      withUid(uid):
        forProvider.withUid(uid),

      '#withExternalName': d.func.new(
        '`withExternalName` can be used to import an existing folder, it can be either a UID or a numeric ID.',
        [d.argument.new('externalName', d.T.string)]
      ),
      withExternalName(externalName):
        grafanaplane.oss.v1alpha1.folder.spec.parameters.withExternalName(externalName),
    },

    folderPermission: {
      local forProvider = grafanaplane.oss.v1alpha1.folderPermission.spec.parameters.forProvider,

      '#forFolder': d.func.new(
        '`forFolder` configures the permission for a folder. `folderResource` can be created by `folder.new()`.',
        [d.argument.new('folderResource', d.T.object)]
      ),
      forFolder(folderResource):
        grafanaplane.oss.v1alpha1.folderPermission.new(folderResource.metadata.name)
        + forProvider.withFolderUid(folderResource.spec.parameters.forProvider.uid),

      permissions: forProvider.permissions,

      '#withPermissions': d.func.new(
        |||
          `withPermissions` sets the permission items to add/update. Items that are omitted from the list will be removed.
        |||,
        [d.argument.new('permissions', d.T.array)]
      ),
      withPermissions(permissions):
        forProvider.withPermissions(permissions),

      '#withPermissionsMixin': d.func.new(
        |||
          `withPermissionsMixin` adds permission items to add/update. Items that are omitted from the list will be removed.
        |||,
        [d.argument.new('permissions', d.T.array)]
      ),
      withPermissionsMixin(permissions):
        forProvider.withPermissionsMixin(permissions),

      '#withTeamPermission': d.func.new(
        |||
          `withTeamPermission` adds the permission for a team resource to a folder. `teamResource` can be created by `team.new()`
        |||,
        [d.argument.new('permissions', d.T.array)]
      ),
      withTeamPermission(teamResource, permission='Admin'):
        self.withPermissionsMixin([
          self.permissions.teamRef.withName(teamResource.spec.parameters.forProvider.name)
          + self.permissions.withPermission(permission),
        ]),
    },

    dashboard: {
      local forProvider = grafanaplane.oss.v1alpha1.dashboard.spec.parameters.forProvider,

      '#new': d.func.new(
        |||
          `new` creates a dashboard.

          - `name` is the Kubernetes object name
          - `dashboardObject` is the actual JSON object of the dashboard
          - `folderResource` can be created by `folder.new()`
        |||,
        [
          d.argument.new('name', d.T.string),
          d.argument.new('dashboardObject', d.T.object),
          d.argument.new('folderResource', d.T.object),
        ]
      ),
      new(name, dashboardObject, folderResource):
        local slug = xtd.ascii.stringToRFC1123(name);
        grafanaplane.oss.v1alpha1.dashboard.new(slug)
        + forProvider.withConfigJson(std.manifestJson(dashboardObject))
        + forProvider.withFolder(folderResource.spec.parameters.forProvider.uid)
        + forProvider.withOverwrite(),
    },

    datasource: {
      local forProvider = grafanaplane.oss.v1alpha1.dataSource.spec.parameters.forProvider,

      '#new': d.func.new(
        |||
          `new` configures a datasource.
        |||,
        [
          d.argument.new('name', d.T.string),
          d.argument.new('type', d.T.string),
        ]
      ),
      new(name, type):
        local uid = xtd.ascii.stringToRFC1123(name);
        grafanaplane.oss.v1alpha1.dataSource.new(uid)
        + forProvider.withName(name)
        + forProvider.withType(type)
        + forProvider.withUid(uid)
        + grafanaplane.oss.v1alpha1.dataSource.spec.parameters.withExternalName(uid),

      '#withExternalName': d.func.new(
        '`withExternalName` can be used to import an existing datasource.',
        [d.argument.new('externalName', d.T.string)]
      ),
      withExternalName(externalName):
        grafanaplane.oss.v1alpha1.dataSource.spec.parameters.withExternalName(externalName),

      '#withJsonData': d.func.new(
        |||
          `withJsonData` configures options for the data source. To figure out what options a datasource has available, see its docs or inspect the network data when saving it from the Grafana UI. Note that keys in this map are usually camelCased.
        |||,
        [d.argument.new('configObject', d.T.object)],
      ),
      withJsonData(configObject):
        forProvider.withJsonDataEncoded(std.manifestJson(configObject)),

      '#withSecureJsonDataSecretRef': d.func.new(
        |||
          `withSecureJsonDataSecretRef` references a secret that configures sensitive options for the data source. To figure out what options a datasource has available, see its docs or inspect the network data when saving it from the Grafana UI. Note that keys in this map are usually camelCased.
        |||,
        [
          d.argument.new('name', d.T.string),
          d.argument.new('namespace', d.T.string),
          d.argument.new('key', d.T.string),
        ],
      ),
      withSecureJsonDataSecretRef(name, namespace, key):
        forProvider.secureJsonDataEncodedSecretRef.withName(key)
        + forProvider.secureJsonDataEncodedSecretRef.withNamespace(namespace)
        + forProvider.secureJsonDataEncodedSecretRef.withKey(key),

      '#withBasicAuth': d.func.new(
        |||
          `withBasicAuth` enables basic authentication for the data source, not that this'll likely expect secret referenced with `withSecureJsonDataSecretRef()` that has a key `basicAuthPassword`.
        |||,
        [d.argument.new('username', d.T.string)]
      ),
      withBasicAuth(username):
        forProvider.withBasicAuthEnabled()
        + forProvider.withBasicAuthUsername(username),
    },

  },

  sm: {
    check: {
      local forProvider = grafanaplane.sm.v1alpha1.check.spec.parameters.forProvider,

      // TODO: Probe IDs hardcoded for now, look into ways to get them from API in Crossplane. Observe-only resource for the probes datasource?
      local fullProbeList = [1, 7, 8, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 756, 757, 853, 854, 855, 856, 867],
      local shortProbeList = [7, 856, 867],  // Paris, North Virginia, Seoul (all AWS)


      '#new': d.func.new(
        |||
          `new` configures a synthetic monitoring check.

          Note: The probe list will match a short list of just three nodes across the globe.
        |||,
        [
          d.argument.new('name', d.T.string),
          d.argument.new('type', d.T.string),
        ]
      ),
      new(name, job, url):
        local slug = xtd.ascii.stringToRFC1123(name);
        grafanaplane.sm.v1alpha1.check.new(slug)
        + forProvider.withJob(job)
        + forProvider.withTarget(url)
        + forProvider.withProbes(shortProbeList)
        + forProvider.withEnabled(true)
        + forProvider.withAlertSensitivity('high')
        + forProvider.withBasicMetricsOnly(true)
        + forProvider.withFrequency(60000)  // ms
        + forProvider.withTimeout(10000),  // ms

      '#withProbes': d.func.new(
        |||
          `withProbes` takes a list of probe location IDs where the target will be checked from.
        |||,
        [d.argument.new('probes', d.T.array)],
      ),
      withProbes(probes):
        forProvider.withProbes(probes),

      '#withFullProbeList': d.func.new(
        |||
          `withFullProbeList` sets the `probes` array to match the fulll list of probes.

          Note: Probe IDs hardcoded for now.
        |||,
        [d.argument.new('probes', d.T.array, fullProbeList)],
      ),
      withFullProbeList(probes=fullProbeList):
        self.withProbes(probes),

      '#withLabels': d.func.new(
        |||
          `withLabels` adds custom labels to be included with collected metrics and logs. The maximum number of labels that can be specified per check is 5. These are applied, along with the probe-specific labels, to the outgoing metrics. The names and values of the labels cannot be empty, and the maximum length is 32 bytes.
        |||,
        [d.argument.new('labels', d.T.object)]
      ),
      withLabels(labels):
        forProvider.withLabels(labels),

      '#withHttpSettings': d.func.new(
        |||
          `withHttpSettings` configures the settings for a HTTP check. The target must be a URL (http or https).

          The `http` object can be created with `check.settings.http.new()`.
        |||,
        [d.argument.new('http', d.T.object)]
      ),
      withHttpSettings(http):
        forProvider.withSettings(
          forProvider.settings.withHttp(http)
        ),

      '#withHttpStatusCheck': d.func.new(
        |||
          `withHttpStatusCheck` configures a simple HTTP status check for the target URL.
        |||,
        [d.argument.new('validStatusCodes', d.T.array, default=[200])]
      ),
      withHttpStatusCheck(validStatusCodes=[200]):
        self.withHttpSettings(self.settings.http.new(validStatusCodes)),

      settings: {
        http:
          forProvider.settings.http
          + {
            '#new': d.func.new(
              |||
                `new` provides the settings for a HTTP check.
              |||,
              [d.argument.new('validStatusCodes', d.T.array, default=[200])]
            ),
            new(validStatusCodes=[200]):
              self.withValidStatusCodes(validStatusCodes)
              + self.withFailIfSsl(false)
              + self.withFailIfNotSsl(true)
              + self.withNoFollowRedirects(true)
              + self.withMethod('GET'),
          },
      },
    },
  },
}
