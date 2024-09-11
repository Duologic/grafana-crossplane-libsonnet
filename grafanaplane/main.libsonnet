local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

(import './raw.libsonnet')
+ {
  '#': d.package.new(
    'grafanaplane',
    'github.com/Duologic/grafana-crossplane-libsonnet/grafanaplane',
    |||
      Jsonnet library providing a namespaced set of compositions/XRDs for the Grafana Crossplane provider. The compositions, XRDs and the library for creating the XRD objects is generated.

      The compositions/XRDs can be imported like this:

      ```jsonnet
      local compositions = import "github.com/Duologic/grafana-crossplane-libsonnet/grafanaplane/compositions.libsonnet"

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

    |||,
    'main.libsonnet',
    'main'
  ),
}
