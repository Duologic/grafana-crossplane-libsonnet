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

local packageDocString(version='main') =
  a.object.new([
    a.field.new(
      a.string.new('#'),
      a.literal.new(
        std.manifestJsonEx(
          d.package.new(
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
            version
          )
          , '  ', ''
        ),
      ),
    ),
  ]);

local ast =
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
  );

function(version='main')
  autils.deepMergeObjects([ast, packageDocString(version)]).toString()

