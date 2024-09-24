local parser = import 'github.com/Duologic/jsonnet-parser/parser.libsonnet';
local a = import 'github.com/crdsonnet/astsonnet/main.libsonnet';
local autils = import 'github.com/crdsonnet/astsonnet/utils.libsonnet';
local helpers = import 'github.com/crdsonnet/crdsonnet/crdsonnet/helpers.libsonnet';
local crdsonnet = import 'github.com/crdsonnet/crdsonnet/crdsonnet/main.libsonnet';
local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

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

local packageDocStringField(version='main') =
  a.field.new(
    a.string.new('#'),
    parser.new(
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
    ).parse()
    + {
      members: std.map(
        function(member)
          if member.fieldname.string == 'help'
          then member + { expr+: { textblock: true } }
          else member,
        super.members,
      ),
    }
    ,
  );

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

local splitIntoFiles(objast, sub='', depth=1, maxDepth=5) =
  local subdir = if sub != '' then sub + '/' else '';
  std.foldl(
    function(acc, member)
      if member.type == 'field'
         && member.expr.type == 'object'
         && !std.startsWith(member.fieldname.string, '#')
      then
        acc
        + {
          [subdir + 'main.libsonnet']+:
            a.object.withMembersMixin([
              member
              + a.field.withExpr(
                if depth != maxDepth
                then a.import_statement.new('./' + member.fieldname.string + '/main.libsonnet')
                else a.import_statement.new('./' + member.fieldname.string + '.libsonnet')
              ),
            ]),
        }
        + (if depth != maxDepth
           then splitIntoFiles(member.expr, subdir + member.fieldname.string, depth + 1)
           else {
             [subdir + member.fieldname.string + '.libsonnet']: member.expr,
           })
      else
        acc
        + {
          [subdir + 'main.libsonnet']+:
            a.object.withMembersMixin([member]),
        }
    ,
    objast.members,
    {
      [subdir + 'main.libsonnet']:
        a.object.new([]),
    }
  );

function(version='main')
  local files = splitIntoFiles(ast);
  {
    [file.key]: file.value.toString()
    for file in std.objectKeysValues(files)
  }
  + {
    'main.libsonnet':
      (
        files['main.libsonnet']
        + a.object.withMembersMixin(
          [packageDocStringField(version)]
        )
      ).toString(),
  }
