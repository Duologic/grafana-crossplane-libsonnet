{
  '#withCloudApiUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Override the Grafana Cloud API URL from the credentials reference attribute.' } },
  withCloudApiUrl(value): {
    spec+: {
      cloudApiUrl: value,
    },
  },
  '#withCredentials': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Credentials required to authenticate to this provider.' } },
  withCredentials(value): {
    spec+: {
      credentials: value,
    },
  },
  '#withCredentialsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Credentials required to authenticate to this provider.' } },
  withCredentialsMixin(value): {
    spec+: {
      credentials+: value,
    },
  },
  credentials+: import './credentials.libsonnet',
  '#withOncallUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Override the OnCall API URL from the credentials reference attribute.' } },
  withOncallUrl(value): {
    spec+: {
      oncallUrl: value,
    },
  },
  '#withSmUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Override the Synthetic Monitoring API URL from the credentials reference attribute.' } },
  withSmUrl(value): {
    spec+: {
      smUrl: value,
    },
  },
  '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Override the Grafana URL from the credentials reference attribute.' } },
  withUrl(value): {
    spec+: {
      url: value,
    },
  },
}
