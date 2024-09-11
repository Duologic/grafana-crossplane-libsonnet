local d = import './vendor/github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local a = import 'github.com/crdsonnet/astsonnet/main.libsonnet';
local autils = import 'github.com/crdsonnet/astsonnet/utils.libsonnet';
local helpers = import 'github.com/crdsonnet/crdsonnet/crdsonnet/helpers.libsonnet';
local crdsonnet = import 'github.com/crdsonnet/crdsonnet/crdsonnet/main.libsonnet';

local processor = crdsonnet.processor.new('ast');

local definitions = import './namespaced.libsonnet';

local subPackageDocstring(name, help='') =
  a.object.new([
    a.field.new(
      a.string.new('#'),
      a.literal.new(
        std.manifestJsonEx(
          d.package.newSub(name, help)
          , '  ', ''
        ),
      ),
    ),
  ]);

local mergeDocstring(group, version, name, obj, help='') =
  autils.deepMergeObjects([
    a.object.new([
      a.field.new(
        a.id.new(group),
        a.object.new([
          a.field.new(
            a.string.new('#'),
            a.literal.new(
              std.manifestJsonEx(
                d.package.newSub(group, '')
                , '  ', ''
              ),
            ),
          ),
          a.field.new(
            a.id.new(version),
            a.object.new([
              a.field.new(
                a.id.new(name),
                subPackageDocstring(name, help)
              ),
            ]),
          ),
        ]),
      ),
    ]),
    obj,
  ]);

std.foldl(
  function(acc, def)
    local render = crdsonnet.xrd.render(def.definition, 'grafana.crossplane.io', processor);

    local group = helpers.getGroupKey(def.definition.spec.group, 'grafana.crossplane.io');
    local version = 'v1alpha1';
    local kind = helpers.camelCaseKind(crdsonnet.xrd.getKind(def.definition));

    local renderWithDocs = mergeDocstring(group, version, kind, render);

    autils.deepMergeObjects([acc, renderWithDocs]),
  definitions,
  a.object.withMembers([]),
).toString()
