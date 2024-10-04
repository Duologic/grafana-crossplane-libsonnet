# alertmanager



## Index

* [`fn withBasicAuthPasswordSecretRef(value)`](#fn-withbasicauthpasswordsecretref)
* [`fn withBasicAuthPasswordSecretRefMixin(value)`](#fn-withbasicauthpasswordsecretrefmixin)
* [`fn withBasicAuthUser(value)`](#fn-withbasicauthuser)
* [`fn withDisableResolveMessage(value=true)`](#fn-withdisableresolvemessage)
* [`fn withSettingsSecretRef(value)`](#fn-withsettingssecretref)
* [`fn withSettingsSecretRefMixin(value)`](#fn-withsettingssecretrefmixin)
* [`fn withUrl(value)`](#fn-withurl)
* [`obj basicAuthPasswordSecretRef`](#obj-basicauthpasswordsecretref)
  * [`fn withKey(value)`](#fn-basicauthpasswordsecretrefwithkey)
  * [`fn withName(value)`](#fn-basicauthpasswordsecretrefwithname)
  * [`fn withNamespace(value)`](#fn-basicauthpasswordsecretrefwithnamespace)
* [`obj settingsSecretRef`](#obj-settingssecretref)
  * [`fn withName(value)`](#fn-settingssecretrefwithname)
  * [`fn withNamespace(value)`](#fn-settingssecretrefwithnamespace)

## Fields

### fn withBasicAuthPasswordSecretRef

```jsonnet
withBasicAuthPasswordSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The password component of the basic auth credentials to use.
The password component of the basic auth credentials to use.
### fn withBasicAuthPasswordSecretRefMixin

```jsonnet
withBasicAuthPasswordSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The password component of the basic auth credentials to use.
The password component of the basic auth credentials to use.
### fn withBasicAuthUser

```jsonnet
withBasicAuthUser(value)
```

PARAMETERS:

* **value** (`string`)

(String) The username component of the basic auth credentials to use.
The username component of the basic auth credentials to use.
### fn withDisableResolveMessage

```jsonnet
withDisableResolveMessage(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to disable sending resolve messages. Defaults to false.
Whether to disable sending resolve messages. Defaults to `false`.
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
The URL of the Alertmanager instance.
### obj basicAuthPasswordSecretRef


#### fn basicAuthPasswordSecretRef.withKey

```jsonnet
basicAuthPasswordSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn basicAuthPasswordSecretRef.withName

```jsonnet
basicAuthPasswordSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn basicAuthPasswordSecretRef.withNamespace

```jsonnet
basicAuthPasswordSecretRef.withNamespace(value)
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