{
  alerting+: import './alerting/main.libsonnet',
  cloud+: import './cloud/main.libsonnet',
  enterprise+: import './enterprise/main.libsonnet',
  ml+: import './ml/main.libsonnet',
  oncall+: import './oncall/main.libsonnet',
  oss+: import './oss/main.libsonnet',
  slo+: import './slo/main.libsonnet',
  sm+: import './sm/main.libsonnet',
}
