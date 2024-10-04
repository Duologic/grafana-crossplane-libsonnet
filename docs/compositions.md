# compositions

This package contains the generated Compositions and CompositeResourceDefinitions (XRD).

The compositions/XRDs can be imported like this:

```jsonnet
local grafanaplane = import 'github.com/Duologic/grafana-crossplane-libsonnet/grafanaplane/main.libsonnet';
local compositions = grafanaplane.compositions;

[
  # Each composition has a `definition` and `composition` key
  compositions.oss.v1alpha1.folder.composition,
  compositions.oss.v1alpha1.folder.definition,

  # When using Tanka, then providing the higher level objects is also possible
  compositions.cloud.v1alpha1.stack, # a composition/XRD pair
  compositions.oss,                  # whole group of composition/XRD pairs
]
```

Available resources:

- alerting.v1alpha1.contactPoint
- alerting.v1alpha1.messageTemplate
- alerting.v1alpha1.muteTiming
- alerting.v1alpha1.notificationPolicy
- alerting.v1alpha1.ruleGroup
- cloud.v1alpha1.accessPolicy
- cloud.v1alpha1.accessPolicyToken
- cloud.v1alpha1.pluginInstallation
- cloud.v1alpha1.stack
- cloud.v1alpha1.stackServiceAccount
- cloud.v1alpha1.stackServiceAccountToken
- enterprise.v1alpha1.dataSourcePermission
- enterprise.v1alpha1.report
- enterprise.v1alpha1.role
- enterprise.v1alpha1.roleAssignment
- enterprise.v1alpha1.teamExternalGroup
- ml.v1alpha1.holiday
- ml.v1alpha1.job
- ml.v1alpha1.outlierDetector
- oncall.v1alpha1.escalation
- oncall.v1alpha1.escalationChain
- oncall.v1alpha1.integration
- oncall.v1alpha1.onCallShift
- oncall.v1alpha1.outgoingWebhook
- oncall.v1alpha1.route
- oncall.v1alpha1.schedule
- oncall.v1alpha1.userNotificationRule
- oss.v1alpha1.annotation
- oss.v1alpha1.dashboard
- oss.v1alpha1.dashboardPermission
- oss.v1alpha1.dashboardPublic
- oss.v1alpha1.dataSource
- oss.v1alpha1.folder
- oss.v1alpha1.folderPermission
- oss.v1alpha1.libraryPanel
- oss.v1alpha1.organization
- oss.v1alpha1.organizationPreferences
- oss.v1alpha1.playlist
- oss.v1alpha1.serviceAccount
- oss.v1alpha1.serviceAccountPermission
- oss.v1alpha1.serviceAccountToken
- oss.v1alpha1.ssoSettings
- oss.v1alpha1.team
- oss.v1alpha1.user
- slo.v1alpha1.slo
- sm.v1alpha1.check
- sm.v1alpha1.installation
- sm.v1alpha1.probe
