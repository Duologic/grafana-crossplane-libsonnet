local cngen = import 'crossplane-namespaced-libsonnet/main.jsonnet';

local crds =
  std.filter(
    function(crd) crd.spec.group != 'grafana.crossplane.io',
    std.parseYaml(importstr './crds.yaml'),
  );

std.map(cngen.fromCRD, crds)
