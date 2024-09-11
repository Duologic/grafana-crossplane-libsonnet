local namespaced = import './namespaced.libsonnet';

local helpers = import 'github.com/crdsonnet/crdsonnet/crdsonnet/helpers.libsonnet';
local crdsonnet = import 'github.com/crdsonnet/crdsonnet/crdsonnet/main.libsonnet';

std.foldl(
  function(acc, def)
    local group = helpers.getGroupKey(def.definition.spec.group, 'grafana.crossplane.io');
    local version = 'v1alpha1';
    local kind = helpers.camelCaseKind(crdsonnet.xrd.getKind(def.definition));

    acc + {
      [group]+: {
        [version]+: {
          [kind]+:
            def,
        },
      },
    },
  namespaced,
  {}
)
