local namespaced = import './namespaced.libsonnet';

std.foldl(
  function(acc, obj)
    acc + {
      [std.splitLimit(obj.definition.spec.group, '.', 1)[0]]+: {
        [std.splitLimit(obj.definition.spec.claimNames.plural, '.', 1)[0]]+:
          [obj],
      },
    },
  namespaced,
  {}
)
