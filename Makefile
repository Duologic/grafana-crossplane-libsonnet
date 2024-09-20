LIBRARY_VERSION:=0.0.1
PROVIDER_VERSION:=0.18.0
JSONNET_BIN:=jrsonnet

grafanaplane: grafanaplane/raw.libsonnet grafanaplane/compositions.libsonnet

grafanaplane/raw.libsonnet: generator/main.libsonnet generator/namespaced.libsonnet generator/crds.yaml generator/vendor
	$(JSONNET_BIN) -S -J generator/vendor -A 'version=$(LIBRARY_VERSION)-$(PROVIDER_VERSION)' generator/main.libsonnet | jsonnetfmt - > grafanaplane/raw.libsonnet

grafanaplane/compositions.libsonnet: generator/compositions.libsonnet generator/namespaced.libsonnet generator/crds.yaml generator/vendor
	$(JSONNET_BIN) -J generator/vendor generator/compositions.libsonnet | jsonnetfmt - > grafanaplane/compositions.libsonnet

generator/crds.yaml:
	cd generator && \
	curl -sLO https://github.com/grafana/crossplane-provider-grafana/releases/download/v$(PROVIDER_VERSION)/crds.yaml

docs: grafanaplane
	@rm -rf docs/
	@$(JSONNET_BIN) \
		-J generator/vendor \
		-S -c -m docs \
		-e '(import "github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet").render(import "grafanaplane/main.libsonnet")'

.PHONY: tag
tag:
	git tag $(LIBRARY_VERSION)-$(PROVIDER_VERSION)
