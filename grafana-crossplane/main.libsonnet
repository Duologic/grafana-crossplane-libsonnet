local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  '#': d.package.new(
    'grafanaplane',
    'github.com/Duologic/grafana-crossplane-libsonnet/grafana-crossplane',
    '',
    'main.libsonnet',
    'main'
  ),
  compositions: import './compositions.libsonnet',
  lib: import './raw.libsonnet',
}
