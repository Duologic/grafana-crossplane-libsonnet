VERSION:=0.18.0
JSONNET_BIN:=jrsonnet

grafana-crossplane: grafana-crossplane/raw.libsonnet grafana-crossplane/compositions.libsonnet

grafana-crossplane/raw.libsonnet: generator/main.libsonnet generator/namespaced.libsonnet generator/crds.yaml generator/vendor
	$(JSONNET_BIN) -S -J generator/vendor generator/main.libsonnet | jsonnetfmt - > grafana-crossplane/raw.libsonnet

grafana-crossplane/compositions.libsonnet: generator/compositions.libsonnet generator/namespaced.libsonnet generator/crds.yaml generator/vendor
	$(JSONNET_BIN) -J generator/vendor generator/compositions.libsonnet | jsonnetfmt - > grafana-crossplane/compositions.libsonnet

generator/crds.yaml:
	cd generator && \
	curl -sLO https://github.com/grafana/crossplane-provider-grafana/releases/download/v${VERSION}/crds.yaml

docs: grafana-crossplane
	@rm -rf docs/
	@$(JSONNET_BIN) \
		-J grafana-crossplane/vendor \
		-S -c -m docs \
		-e '(import "github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet").render(import "grafana-crossplane/main.libsonnet")'
