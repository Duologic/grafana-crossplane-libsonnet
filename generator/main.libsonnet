local a = import 'github.com/crdsonnet/astsonnet/main.libsonnet';
local autils = import 'github.com/crdsonnet/astsonnet/utils.libsonnet';
local crdsonnet = import 'github.com/crdsonnet/crdsonnet/crdsonnet/main.libsonnet';

local processor = crdsonnet.processor.new('ast');

local definitions = import './namespaced.libsonnet';

std.foldl(
  function(acc, def)
    local render = crdsonnet.xrd.render(def.definition, 'grafana.crossplane.io', processor);
    autils.deepMergeObjects([acc, render]),
  definitions,
  a.object.withMembers([]),
).toString()
