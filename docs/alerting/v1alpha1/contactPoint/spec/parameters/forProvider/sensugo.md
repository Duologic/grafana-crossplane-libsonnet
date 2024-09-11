# sensugo



## Index

* [`fn withApiKeySecretRef(value)`](#fn-withapikeysecretref)
* [`fn withApiKeySecretRefMixin(value)`](#fn-withapikeysecretrefmixin)
* [`fn withCheck(value)`](#fn-withcheck)
* [`fn withDisableResolveMessage(value=true)`](#fn-withdisableresolvemessage)
* [`fn withEntity(value)`](#fn-withentity)
* [`fn withHandler(value)`](#fn-withhandler)
* [`fn withMessage(value)`](#fn-withmessage)
* [`fn withNamespace(value)`](#fn-withnamespace)
* [`fn withSettingsSecretRef(value)`](#fn-withsettingssecretref)
* [`fn withSettingsSecretRefMixin(value)`](#fn-withsettingssecretrefmixin)
* [`fn withUrl(value)`](#fn-withurl)
* [`obj apiKeySecretRef`](#obj-apikeysecretref)
  * [`fn withKey(value)`](#fn-apikeysecretrefwithkey)
  * [`fn withName(value)`](#fn-apikeysecretrefwithname)
  * [`fn withNamespace(value)`](#fn-apikeysecretrefwithnamespace)
* [`obj settingsSecretRef`](#obj-settingssecretref)
  * [`fn withName(value)`](#fn-settingssecretrefwithname)
  * [`fn withNamespace(value)`](#fn-settingssecretrefwithnamespace)

## Fields

### fn withApiKeySecretRef

```jsonnet
withApiKeySecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The OpsGenie API key to use.
The SensuGo API key.
### fn withApiKeySecretRefMixin

```jsonnet
withApiKeySecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The OpsGenie API key to use.
The SensuGo API key.
### fn withCheck

```jsonnet
withCheck(value)
```

PARAMETERS:

* **value** (`string`)

(String) The SensuGo check to which the event should be routed.
The SensuGo check to which the event should be routed.
### fn withDisableResolveMessage

```jsonnet
withDisableResolveMessage(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to disable sending resolve messages. Defaults to false.
Whether to disable sending resolve messages. Defaults to `false`.
### fn withEntity

```jsonnet
withEntity(value)
```

PARAMETERS:

* **value** (`string`)

(String) The entity being monitored.
The entity being monitored.
### fn withHandler

```jsonnet
withHandler(value)
```

PARAMETERS:

* **value** (`string`)

(String) A custom handler to execute in addition to the check.
A custom handler to execute in addition to the check.
### fn withMessage

```jsonnet
withMessage(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated content of the message.
Templated message content describing the alert.
### fn withNamespace

```jsonnet
withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

(String) The namespace in which the check resides.
The namespace in which the check resides.
### fn withSettingsSecretRef

```jsonnet
withSettingsSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].
Additional custom properties to attach to the notifier. Defaults to `map[]`.
### fn withSettingsSecretRefMixin

```jsonnet
withSettingsSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].
Additional custom properties to attach to the notifier. Defaults to `map[]`.
### fn withUrl

```jsonnet
withUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The URL of the Alertmanager instance.
The SensuGo URL to send requests to.
### obj apiKeySecretRef


#### fn apiKeySecretRef.withKey

```jsonnet
apiKeySecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn apiKeySecretRef.withName

```jsonnet
apiKeySecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn apiKeySecretRef.withNamespace

```jsonnet
apiKeySecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.
### obj settingsSecretRef


#### fn settingsSecretRef.withName

```jsonnet
settingsSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn settingsSecretRef.withNamespace

```jsonnet
settingsSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.