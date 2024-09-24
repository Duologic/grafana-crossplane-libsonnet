{
  '#': { help: '', name: 'escalationChain' },
  '#new': { 'function': { args: [{ default: null, enums: null, name: 'name', type: 'string' }], help: '`new` creates a new instance' } },
  new(name):
    self.withApiVersion()
    + self.withKind()
    + self.metadata.withName(name),
  '#withApiVersion': { 'function': { args: [], help: '' } },
  withApiVersion(): {
    apiVersion: 'oncall.grafana.crossplane.io.namespaced/v1alpha1',
  },
  '#withKind': { 'function': { args: [], help: '' } },
  withKind(): {
    kind: 'EscalationChain',
  },
  '#withMetadata': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.' } },
  withMetadata(value): {
    metadata: value,
  },
  '#withMetadataMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.' } },
  withMetadataMixin(value): {
    metadata+: value,
  },
  metadata+: import './metadata/main.libsonnet',
  '#withSpec': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
  withSpec(value): {
    spec: value,
  },
  '#withSpecMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
  withSpecMixin(value): {
    spec+: value,
  },
  spec+: import './spec/main.libsonnet',
}