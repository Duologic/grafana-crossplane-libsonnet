# discord



## Index

* [`fn withAvatarUrl(value)`](#fn-withavatarurl)
* [`fn withDisableResolveMessage(value=true)`](#fn-withdisableresolvemessage)
* [`fn withMessage(value)`](#fn-withmessage)
* [`fn withSettingsSecretRef(value)`](#fn-withsettingssecretref)
* [`fn withSettingsSecretRefMixin(value)`](#fn-withsettingssecretrefmixin)
* [`fn withTitle(value)`](#fn-withtitle)
* [`fn withUrlSecretRef(value)`](#fn-withurlsecretref)
* [`fn withUrlSecretRefMixin(value)`](#fn-withurlsecretrefmixin)
* [`fn withUseDiscordUsername(value=true)`](#fn-withusediscordusername)
* [`obj settingsSecretRef`](#obj-settingssecretref)
  * [`fn withName(value)`](#fn-settingssecretrefwithname)
  * [`fn withNamespace(value)`](#fn-settingssecretrefwithnamespace)
* [`obj urlSecretRef`](#obj-urlsecretref)
  * [`fn withKey(value)`](#fn-urlsecretrefwithkey)
  * [`fn withName(value)`](#fn-urlsecretrefwithname)
  * [`fn withNamespace(value)`](#fn-urlsecretrefwithnamespace)

## Fields

### fn withAvatarUrl

```jsonnet
withAvatarUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The URL of a custom avatar image to use. Defaults to “.
The URL of a custom avatar image to use. Defaults to “.
### fn withDisableResolveMessage

```jsonnet
withDisableResolveMessage(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to disable sending resolve messages. Defaults to false.
Whether to disable sending resolve messages. Defaults to `false`.
### fn withMessage

```jsonnet
withMessage(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated content of the message.
The templated content of the message. Defaults to “.
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
### fn withTitle

```jsonnet
withTitle(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated title of the message.
The templated content of the title.
### fn withUrlSecretRef

```jsonnet
withUrlSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String) The URL of the Alertmanager instance.
The discord webhook URL.
### fn withUrlSecretRefMixin

```jsonnet
withUrlSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String) The URL of the Alertmanager instance.
The discord webhook URL.
### fn withUseDiscordUsername

```jsonnet
withUseDiscordUsername(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to use the bot account's plain username instead of "Grafana." Defaults to false.
Whether to use the bot account's plain username instead of "Grafana." Defaults to `false`.
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
### obj urlSecretRef


#### fn urlSecretRef.withKey

```jsonnet
urlSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn urlSecretRef.withName

```jsonnet
urlSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn urlSecretRef.withNamespace

```jsonnet
urlSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.