{
  alerting+: import './alerting/main.libsonnet',
  cloud+: import './cloud/main.libsonnet',
  enterprise+: import './enterprise/main.libsonnet',
  ml+: import './ml/main.libsonnet',
  oncall+: import './oncall/main.libsonnet',
  oss+: import './oss/main.libsonnet',
  slo+: import './slo/main.libsonnet',
  sm+: import './sm/main.libsonnet',
  '#':
    {
      filename: 'main.libsonnet',
      help:
        |||
          Jsonnet library providing a namespaced set of compositions/XRDs for the Grafana Crossplane provider. The compositions, XRDs and the library for creating the XRD objects is generated.

          The compositions/XRDs can be imported like this:

          ```jsonnet
          local compositions = import 'github.com/Duologic/grafana-crossplane-libsonnet/grafanaplane/compositions.libsonnet';

          [
            # Each composition has a `definition` and `composition` key
            compositions.oss.v1alpha1.folder.composition,
            compositions.oss.v1alpha1.folder.definition,

            # When using Tanka, then providing the higher level objects is also possible
            compositions.cloud.v1alpha1.stack, # a composition/XRD pair
            compositions.oss,                  # whole group of composition/XRD pairs
          ]
          ```

          The library in `main.libsonnet` can be used to build objects for these XRDs.


          ## Install

          ```
          jb install github.com/Duologic/grafana-crossplane-libsonnet/grafanaplane@0.0.3-0.18.0
          ```

          ## Usage

          ```jsonnet
          local grafanaplane = import 'github.com/Duologic/grafana-crossplane-libsonnet/grafanaplane/main.libsonnet';
          ```

        |||,
      'import': 'github.com/Duologic/grafana-crossplane-libsonnet/grafanaplane/main.libsonnet',
      installTemplate: '\n## Install\n\n```\njb install %(url)s@%(version)s\n```\n',
      name: 'grafanaplane',
      url: 'github.com/Duologic/grafana-crossplane-libsonnet/grafanaplane',
      usageTemplate: "\n## Usage\n\n```jsonnet\nlocal %(name)s = import '%(import)s';\n```\n",
      version: '0.0.3-0.18.0',
    },
}
