{
  '#withDeletionPolicy': { 'function': { args: [{ default: 'Delete', enums: ['Orphan', 'Delete'], name: 'value', type: ['string'] }], help: 'DeletionPolicy specifies what will happen to the underlying external\nwhen this managed resource is deleted - either "Delete" or "Orphan" the\nexternal resource.\nThis field is planned to be deprecated in favor of the ManagementPolicies\nfield in a future release. Currently, both could be set independently and\nnon-default values would be honored if the feature flag is enabled.\nSee the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223' } },
  withDeletionPolicy(value='Delete'): {
    spec+: {
      parameters+: {
        deletionPolicy: value,
      },
    },
  },
  '#withForProvider': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
  withForProvider(value): {
    spec+: {
      parameters+: {
        forProvider: value,
      },
    },
  },
  '#withForProviderMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
  withForProviderMixin(value): {
    spec+: {
      parameters+: {
        forProvider+: value,
      },
    },
  },
  forProvider+:
    {
      '#withAuthorizationHeaderSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The auth data of the webhook. Used in Authorization header instead of user/password auth.\nThe auth data of the webhook. Used in Authorization header instead of user/password auth.' } },
      withAuthorizationHeaderSecretRef(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              authorizationHeaderSecretRef: value,
            },
          },
        },
      },
      '#withAuthorizationHeaderSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The auth data of the webhook. Used in Authorization header instead of user/password auth.\nThe auth data of the webhook. Used in Authorization header instead of user/password auth.' } },
      withAuthorizationHeaderSecretRefMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              authorizationHeaderSecretRef+: value,
            },
          },
        },
      },
      authorizationHeaderSecretRef+:
        {
          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
          withKey(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  authorizationHeaderSecretRef+: {
                    key: value,
                  },
                },
              },
            },
          },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
          withName(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  authorizationHeaderSecretRef+: {
                    name: value,
                  },
                },
              },
            },
          },
          '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
          withNamespace(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  authorizationHeaderSecretRef+: {
                    namespace: value,
                  },
                },
              },
            },
          },
        },
      '#withData': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The data of the webhook.\nThe data of the webhook.' } },
      withData(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              data: value,
            },
          },
        },
      },
      '#withForwardWholePayload': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Toggle to send the entire webhook payload instead of using the values in the Data field.\nToggle to send the entire webhook payload instead of using the values in the Data field.' } },
      withForwardWholePayload(value=true): {
        spec+: {
          parameters+: {
            forProvider+: {
              forwardWholePayload: value,
            },
          },
        },
      },
      '#withHeaders': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Headers to add to the outgoing webhook request.\nHeaders to add to the outgoing webhook request.' } },
      withHeaders(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              headers: value,
            },
          },
        },
      },
      '#withHttpMethod': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The HTTP method used in the request made by the outgoing webhook. Defaults to POST.\nThe HTTP method used in the request made by the outgoing webhook. Defaults to `POST`.' } },
      withHttpMethod(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              httpMethod: value,
            },
          },
        },
      },
      '#withIntegrationFilter': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) Restricts the outgoing webhook to only trigger if the event came from a selected integration. If no integrations are selected the outgoing webhook will trigger for any integration.\nRestricts the outgoing webhook to only trigger if the event came from a selected integration. If no integrations are selected the outgoing webhook will trigger for any integration.' } },
      withIntegrationFilter(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              integrationFilter:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withIntegrationFilterMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) Restricts the outgoing webhook to only trigger if the event came from a selected integration. If no integrations are selected the outgoing webhook will trigger for any integration.\nRestricts the outgoing webhook to only trigger if the event came from a selected integration. If no integrations are selected the outgoing webhook will trigger for any integration.' } },
      withIntegrationFilterMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              integrationFilter+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withIsWebhookEnabled': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Controls whether the outgoing webhook will trigger or is ignored. Defaults to true.\nControls whether the outgoing webhook will trigger or is ignored. Defaults to `true`.' } },
      withIsWebhookEnabled(value=true): {
        spec+: {
          parameters+: {
            forProvider+: {
              isWebhookEnabled: value,
            },
          },
        },
      },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the outgoing webhook.\nThe name of the outgoing webhook.' } },
      withName(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              name: value,
            },
          },
        },
      },
      '#withPasswordSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The auth data of the webhook. Used for Basic authentication\nThe auth data of the webhook. Used for Basic authentication' } },
      withPasswordSecretRef(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              passwordSecretRef: value,
            },
          },
        },
      },
      '#withPasswordSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The auth data of the webhook. Used for Basic authentication\nThe auth data of the webhook. Used for Basic authentication' } },
      withPasswordSecretRefMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              passwordSecretRef+: value,
            },
          },
        },
      },
      passwordSecretRef+:
        {
          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
          withKey(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  passwordSecretRef+: {
                    key: value,
                  },
                },
              },
            },
          },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
          withName(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  passwordSecretRef+: {
                    name: value,
                  },
                },
              },
            },
          },
          '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
          withNamespace(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  passwordSecretRef+: {
                    namespace: value,
                  },
                },
              },
            },
          },
        },
      '#withTeamId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The ID of the OnCall team. To get one, create a team in Grafana, and navigate to the OnCall plugin (to sync the team with OnCall). You can then get the ID using the grafana_oncall_team datasource.\nThe ID of the OnCall team. To get one, create a team in Grafana, and navigate to the OnCall plugin (to sync the team with OnCall). You can then get the ID using the `grafana_oncall_team` datasource.' } },
      withTeamId(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              teamId: value,
            },
          },
        },
      },
      '#withTriggerTemplate': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) A template used to dynamically determine whether the webhook should execute based on the content of the payload.\nA template used to dynamically determine whether the webhook should execute based on the content of the payload.' } },
      withTriggerTemplate(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              triggerTemplate: value,
            },
          },
        },
      },
      '#withTriggerType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The type of event that will cause this outgoing webhook to execute. The types of triggers are: escalation, alert group created, acknowledge, resolve, silence, unsilence, unresolve, unacknowledge. Defaults to escalation.\nThe type of event that will cause this outgoing webhook to execute. The types of triggers are: `escalation`, `alert group created`, `acknowledge`, `resolve`, `silence`, `unsilence`, `unresolve`, `unacknowledge`. Defaults to `escalation`.' } },
      withTriggerType(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              triggerType: value,
            },
          },
        },
      },
      '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The webhook URL.\nThe webhook URL.' } },
      withUrl(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              url: value,
            },
          },
        },
      },
      '#withUser': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Username to use when making the outgoing webhook request.\nUsername to use when making the outgoing webhook request.' } },
      withUser(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              user: value,
            },
          },
        },
      },
    },
  '#withInitProvider': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'THIS IS A BETA FIELD. It will be honored\nunless the Management Policies feature flag is disabled.\nInitProvider holds the same fields as ForProvider, with the exception\nof Identifier and other resource reference fields. The fields that are\nin InitProvider are merged into ForProvider when the resource is created.\nThe same fields are also added to the terraform ignore_changes hook, to\navoid updating them after creation. This is useful for fields that are\nrequired on creation, but we do not desire to update them after creation,\nfor example because of an external controller is managing them, like an\nautoscaler.' } },
  withInitProvider(value): {
    spec+: {
      parameters+: {
        initProvider: value,
      },
    },
  },
  '#withInitProviderMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'THIS IS A BETA FIELD. It will be honored\nunless the Management Policies feature flag is disabled.\nInitProvider holds the same fields as ForProvider, with the exception\nof Identifier and other resource reference fields. The fields that are\nin InitProvider are merged into ForProvider when the resource is created.\nThe same fields are also added to the terraform ignore_changes hook, to\navoid updating them after creation. This is useful for fields that are\nrequired on creation, but we do not desire to update them after creation,\nfor example because of an external controller is managing them, like an\nautoscaler.' } },
  withInitProviderMixin(value): {
    spec+: {
      parameters+: {
        initProvider+: value,
      },
    },
  },
  initProvider+:
    {
      '#withAuthorizationHeaderSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The auth data of the webhook. Used in Authorization header instead of user/password auth.\nThe auth data of the webhook. Used in Authorization header instead of user/password auth.' } },
      withAuthorizationHeaderSecretRef(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              authorizationHeaderSecretRef: value,
            },
          },
        },
      },
      '#withAuthorizationHeaderSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The auth data of the webhook. Used in Authorization header instead of user/password auth.\nThe auth data of the webhook. Used in Authorization header instead of user/password auth.' } },
      withAuthorizationHeaderSecretRefMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              authorizationHeaderSecretRef+: value,
            },
          },
        },
      },
      authorizationHeaderSecretRef+:
        {
          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
          withKey(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  authorizationHeaderSecretRef+: {
                    key: value,
                  },
                },
              },
            },
          },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
          withName(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  authorizationHeaderSecretRef+: {
                    name: value,
                  },
                },
              },
            },
          },
          '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
          withNamespace(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  authorizationHeaderSecretRef+: {
                    namespace: value,
                  },
                },
              },
            },
          },
        },
      '#withData': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The data of the webhook.\nThe data of the webhook.' } },
      withData(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              data: value,
            },
          },
        },
      },
      '#withForwardWholePayload': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Toggle to send the entire webhook payload instead of using the values in the Data field.\nToggle to send the entire webhook payload instead of using the values in the Data field.' } },
      withForwardWholePayload(value=true): {
        spec+: {
          parameters+: {
            initProvider+: {
              forwardWholePayload: value,
            },
          },
        },
      },
      '#withHeaders': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Headers to add to the outgoing webhook request.\nHeaders to add to the outgoing webhook request.' } },
      withHeaders(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              headers: value,
            },
          },
        },
      },
      '#withHttpMethod': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The HTTP method used in the request made by the outgoing webhook. Defaults to POST.\nThe HTTP method used in the request made by the outgoing webhook. Defaults to `POST`.' } },
      withHttpMethod(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              httpMethod: value,
            },
          },
        },
      },
      '#withIntegrationFilter': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) Restricts the outgoing webhook to only trigger if the event came from a selected integration. If no integrations are selected the outgoing webhook will trigger for any integration.\nRestricts the outgoing webhook to only trigger if the event came from a selected integration. If no integrations are selected the outgoing webhook will trigger for any integration.' } },
      withIntegrationFilter(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              integrationFilter:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withIntegrationFilterMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) Restricts the outgoing webhook to only trigger if the event came from a selected integration. If no integrations are selected the outgoing webhook will trigger for any integration.\nRestricts the outgoing webhook to only trigger if the event came from a selected integration. If no integrations are selected the outgoing webhook will trigger for any integration.' } },
      withIntegrationFilterMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              integrationFilter+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withIsWebhookEnabled': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Controls whether the outgoing webhook will trigger or is ignored. Defaults to true.\nControls whether the outgoing webhook will trigger or is ignored. Defaults to `true`.' } },
      withIsWebhookEnabled(value=true): {
        spec+: {
          parameters+: {
            initProvider+: {
              isWebhookEnabled: value,
            },
          },
        },
      },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the outgoing webhook.\nThe name of the outgoing webhook.' } },
      withName(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              name: value,
            },
          },
        },
      },
      '#withPasswordSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The auth data of the webhook. Used for Basic authentication\nThe auth data of the webhook. Used for Basic authentication' } },
      withPasswordSecretRef(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              passwordSecretRef: value,
            },
          },
        },
      },
      '#withPasswordSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The auth data of the webhook. Used for Basic authentication\nThe auth data of the webhook. Used for Basic authentication' } },
      withPasswordSecretRefMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              passwordSecretRef+: value,
            },
          },
        },
      },
      passwordSecretRef+:
        {
          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
          withKey(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  passwordSecretRef+: {
                    key: value,
                  },
                },
              },
            },
          },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
          withName(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  passwordSecretRef+: {
                    name: value,
                  },
                },
              },
            },
          },
          '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
          withNamespace(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  passwordSecretRef+: {
                    namespace: value,
                  },
                },
              },
            },
          },
        },
      '#withTeamId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The ID of the OnCall team. To get one, create a team in Grafana, and navigate to the OnCall plugin (to sync the team with OnCall). You can then get the ID using the grafana_oncall_team datasource.\nThe ID of the OnCall team. To get one, create a team in Grafana, and navigate to the OnCall plugin (to sync the team with OnCall). You can then get the ID using the `grafana_oncall_team` datasource.' } },
      withTeamId(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              teamId: value,
            },
          },
        },
      },
      '#withTriggerTemplate': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) A template used to dynamically determine whether the webhook should execute based on the content of the payload.\nA template used to dynamically determine whether the webhook should execute based on the content of the payload.' } },
      withTriggerTemplate(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              triggerTemplate: value,
            },
          },
        },
      },
      '#withTriggerType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The type of event that will cause this outgoing webhook to execute. The types of triggers are: escalation, alert group created, acknowledge, resolve, silence, unsilence, unresolve, unacknowledge. Defaults to escalation.\nThe type of event that will cause this outgoing webhook to execute. The types of triggers are: `escalation`, `alert group created`, `acknowledge`, `resolve`, `silence`, `unsilence`, `unresolve`, `unacknowledge`. Defaults to `escalation`.' } },
      withTriggerType(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              triggerType: value,
            },
          },
        },
      },
      '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The webhook URL.\nThe webhook URL.' } },
      withUrl(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              url: value,
            },
          },
        },
      },
      '#withUser': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Username to use when making the outgoing webhook request.\nUsername to use when making the outgoing webhook request.' } },
      withUser(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              user: value,
            },
          },
        },
      },
    },
  '#withManagementPolicies': { 'function': { args: [{ default: ['*'], enums: null, name: 'value', type: ['array'] }], help: 'THIS IS A BETA FIELD. It is on by default but can be opted out\nthrough a Crossplane feature flag.\nManagementPolicies specify the array of actions Crossplane is allowed to\ntake on the managed and external resources.\nThis field is planned to replace the DeletionPolicy field in a future\nrelease. Currently, both could be set independently and non-default\nvalues would be honored if the feature flag is enabled. If both are\ncustom, the DeletionPolicy field will be ignored.\nSee the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223\nand this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md' } },
  withManagementPolicies(value): {
    spec+: {
      parameters+: {
        managementPolicies:
          (if std.isArray(value)
           then value
           else [value]),
      },
    },
  },
  '#withManagementPoliciesMixin': { 'function': { args: [{ default: ['*'], enums: null, name: 'value', type: ['array'] }], help: 'THIS IS A BETA FIELD. It is on by default but can be opted out\nthrough a Crossplane feature flag.\nManagementPolicies specify the array of actions Crossplane is allowed to\ntake on the managed and external resources.\nThis field is planned to replace the DeletionPolicy field in a future\nrelease. Currently, both could be set independently and non-default\nvalues would be honored if the feature flag is enabled. If both are\ncustom, the DeletionPolicy field will be ignored.\nSee the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223\nand this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md' } },
  withManagementPoliciesMixin(value): {
    spec+: {
      parameters+: {
        managementPolicies+:
          (if std.isArray(value)
           then value
           else [value]),
      },
    },
  },
  '#withProviderConfigRef': { 'function': { args: [{ default: { name: 'default' }, enums: null, name: 'value', type: ['object'] }], help: 'ProviderConfigReference specifies how the provider that will be used to\ncreate, observe, update, and delete this managed resource should be\nconfigured.' } },
  withProviderConfigRef(value={ name: 'default' }): {
    spec+: {
      parameters+: {
        providerConfigRef: value,
      },
    },
  },
  '#withProviderConfigRefMixin': { 'function': { args: [{ default: { name: 'default' }, enums: null, name: 'value', type: ['object'] }], help: 'ProviderConfigReference specifies how the provider that will be used to\ncreate, observe, update, and delete this managed resource should be\nconfigured.' } },
  withProviderConfigRefMixin(value): {
    spec+: {
      parameters+: {
        providerConfigRef+: value,
      },
    },
  },
  providerConfigRef+:
    {
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
      withName(value): {
        spec+: {
          parameters+: {
            providerConfigRef+: {
              name: value,
            },
          },
        },
      },
      '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
      withPolicy(value): {
        spec+: {
          parameters+: {
            providerConfigRef+: {
              policy: value,
            },
          },
        },
      },
      '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
      withPolicyMixin(value): {
        spec+: {
          parameters+: {
            providerConfigRef+: {
              policy+: value,
            },
          },
        },
      },
      policy+:
        {
          '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
          withResolution(value='Required'): {
            spec+: {
              parameters+: {
                providerConfigRef+: {
                  policy+: {
                    resolution: value,
                  },
                },
              },
            },
          },
          '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
          withResolve(value): {
            spec+: {
              parameters+: {
                providerConfigRef+: {
                  policy+: {
                    resolve: value,
                  },
                },
              },
            },
          },
        },
    },
  '#withPublishConnectionDetailsTo': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'PublishConnectionDetailsTo specifies the connection secret config which\ncontains a name, metadata and a reference to secret store config to\nwhich any connection details for this managed resource should be written.\nConnection details frequently include the endpoint, username,\nand password required to connect to the managed resource.' } },
  withPublishConnectionDetailsTo(value): {
    spec+: {
      parameters+: {
        publishConnectionDetailsTo: value,
      },
    },
  },
  '#withPublishConnectionDetailsToMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'PublishConnectionDetailsTo specifies the connection secret config which\ncontains a name, metadata and a reference to secret store config to\nwhich any connection details for this managed resource should be written.\nConnection details frequently include the endpoint, username,\nand password required to connect to the managed resource.' } },
  withPublishConnectionDetailsToMixin(value): {
    spec+: {
      parameters+: {
        publishConnectionDetailsTo+: value,
      },
    },
  },
  publishConnectionDetailsTo+:
    {
      '#withConfigRef': { 'function': { args: [{ default: { name: 'default' }, enums: null, name: 'value', type: ['object'] }], help: 'SecretStoreConfigRef specifies which secret store config should be used\nfor this ConnectionSecret.' } },
      withConfigRef(value={ name: 'default' }): {
        spec+: {
          parameters+: {
            publishConnectionDetailsTo+: {
              configRef: value,
            },
          },
        },
      },
      '#withConfigRefMixin': { 'function': { args: [{ default: { name: 'default' }, enums: null, name: 'value', type: ['object'] }], help: 'SecretStoreConfigRef specifies which secret store config should be used\nfor this ConnectionSecret.' } },
      withConfigRefMixin(value): {
        spec+: {
          parameters+: {
            publishConnectionDetailsTo+: {
              configRef+: value,
            },
          },
        },
      },
      configRef+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
          withName(value): {
            spec+: {
              parameters+: {
                publishConnectionDetailsTo+: {
                  configRef+: {
                    name: value,
                  },
                },
              },
            },
          },
          '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
          withPolicy(value): {
            spec+: {
              parameters+: {
                publishConnectionDetailsTo+: {
                  configRef+: {
                    policy: value,
                  },
                },
              },
            },
          },
          '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
          withPolicyMixin(value): {
            spec+: {
              parameters+: {
                publishConnectionDetailsTo+: {
                  configRef+: {
                    policy+: value,
                  },
                },
              },
            },
          },
          policy+:
            {
              '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
              withResolution(value='Required'): {
                spec+: {
                  parameters+: {
                    publishConnectionDetailsTo+: {
                      configRef+: {
                        policy+: {
                          resolution: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
              withResolve(value): {
                spec+: {
                  parameters+: {
                    publishConnectionDetailsTo+: {
                      configRef+: {
                        policy+: {
                          resolve: value,
                        },
                      },
                    },
                  },
                },
              },
            },
        },
      '#withMetadata': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Metadata is the metadata for connection secret.' } },
      withMetadata(value): {
        spec+: {
          parameters+: {
            publishConnectionDetailsTo+: {
              metadata: value,
            },
          },
        },
      },
      '#withMetadataMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Metadata is the metadata for connection secret.' } },
      withMetadataMixin(value): {
        spec+: {
          parameters+: {
            publishConnectionDetailsTo+: {
              metadata+: value,
            },
          },
        },
      },
      metadata+:
        {
          '#withAnnotations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Annotations are the annotations to be added to connection secret.\n- For Kubernetes secrets, this will be used as "metadata.annotations".\n- It is up to Secret Store implementation for others store types.' } },
          withAnnotations(value): {
            spec+: {
              parameters+: {
                publishConnectionDetailsTo+: {
                  metadata+: {
                    annotations: value,
                  },
                },
              },
            },
          },
          '#withAnnotationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Annotations are the annotations to be added to connection secret.\n- For Kubernetes secrets, this will be used as "metadata.annotations".\n- It is up to Secret Store implementation for others store types.' } },
          withAnnotationsMixin(value): {
            spec+: {
              parameters+: {
                publishConnectionDetailsTo+: {
                  metadata+: {
                    annotations+: value,
                  },
                },
              },
            },
          },
          '#withLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Labels are the labels/tags to be added to connection secret.\n- For Kubernetes secrets, this will be used as "metadata.labels".\n- It is up to Secret Store implementation for others store types.' } },
          withLabels(value): {
            spec+: {
              parameters+: {
                publishConnectionDetailsTo+: {
                  metadata+: {
                    labels: value,
                  },
                },
              },
            },
          },
          '#withLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Labels are the labels/tags to be added to connection secret.\n- For Kubernetes secrets, this will be used as "metadata.labels".\n- It is up to Secret Store implementation for others store types.' } },
          withLabelsMixin(value): {
            spec+: {
              parameters+: {
                publishConnectionDetailsTo+: {
                  metadata+: {
                    labels+: value,
                  },
                },
              },
            },
          },
          '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Type is the SecretType for the connection secret.\n- Only valid for Kubernetes Secret Stores.' } },
          withType(value): {
            spec+: {
              parameters+: {
                publishConnectionDetailsTo+: {
                  metadata+: {
                    type: value,
                  },
                },
              },
            },
          },
        },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name is the name of the connection secret.' } },
      withName(value): {
        spec+: {
          parameters+: {
            publishConnectionDetailsTo+: {
              name: value,
            },
          },
        },
      },
    },
  '#withWriteConnectionSecretToRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'WriteConnectionSecretToReference specifies the namespace and name of a\nSecret to which any connection details for this managed resource should\nbe written. Connection details frequently include the endpoint, username,\nand password required to connect to the managed resource.\nThis field is planned to be replaced in a future release in favor of\nPublishConnectionDetailsTo. Currently, both could be set independently\nand connection details would be published to both without affecting\neach other.' } },
  withWriteConnectionSecretToRef(value): {
    spec+: {
      parameters+: {
        writeConnectionSecretToRef: value,
      },
    },
  },
  '#withWriteConnectionSecretToRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'WriteConnectionSecretToReference specifies the namespace and name of a\nSecret to which any connection details for this managed resource should\nbe written. Connection details frequently include the endpoint, username,\nand password required to connect to the managed resource.\nThis field is planned to be replaced in a future release in favor of\nPublishConnectionDetailsTo. Currently, both could be set independently\nand connection details would be published to both without affecting\neach other.' } },
  withWriteConnectionSecretToRefMixin(value): {
    spec+: {
      parameters+: {
        writeConnectionSecretToRef+: value,
      },
    },
  },
  writeConnectionSecretToRef+:
    {
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
      withName(value): {
        spec+: {
          parameters+: {
            writeConnectionSecretToRef+: {
              name: value,
            },
          },
        },
      },
      '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
      withNamespace(value): {
        spec+: {
          parameters+: {
            writeConnectionSecretToRef+: {
              namespace: value,
            },
          },
        },
      },
    },
}
