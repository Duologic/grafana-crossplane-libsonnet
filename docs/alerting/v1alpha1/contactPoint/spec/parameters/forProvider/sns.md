# sns



## Index

* [`fn withAccessKeySecretRef(value)`](#fn-withaccesskeysecretref)
* [`fn withAccessKeySecretRefMixin(value)`](#fn-withaccesskeysecretrefmixin)
* [`fn withAssumeRoleArn(value)`](#fn-withassumerolearn)
* [`fn withAuthProvider(value)`](#fn-withauthprovider)
* [`fn withBody(value)`](#fn-withbody)
* [`fn withDisableResolveMessage(value=true)`](#fn-withdisableresolvemessage)
* [`fn withExternalId(value)`](#fn-withexternalid)
* [`fn withMessageFormat(value)`](#fn-withmessageformat)
* [`fn withSecretKeySecretRef(value)`](#fn-withsecretkeysecretref)
* [`fn withSecretKeySecretRefMixin(value)`](#fn-withsecretkeysecretrefmixin)
* [`fn withSettingsSecretRef(value)`](#fn-withsettingssecretref)
* [`fn withSettingsSecretRefMixin(value)`](#fn-withsettingssecretrefmixin)
* [`fn withSubject(value)`](#fn-withsubject)
* [`fn withTopic(value)`](#fn-withtopic)
* [`obj accessKeySecretRef`](#obj-accesskeysecretref)
  * [`fn withKey(value)`](#fn-accesskeysecretrefwithkey)
  * [`fn withName(value)`](#fn-accesskeysecretrefwithname)
  * [`fn withNamespace(value)`](#fn-accesskeysecretrefwithnamespace)
* [`obj secretKeySecretRef`](#obj-secretkeysecretref)
  * [`fn withKey(value)`](#fn-secretkeysecretrefwithkey)
  * [`fn withName(value)`](#fn-secretkeysecretrefwithname)
  * [`fn withNamespace(value)`](#fn-secretkeysecretrefwithnamespace)
* [`obj settingsSecretRef`](#obj-settingssecretref)
  * [`fn withName(value)`](#fn-settingssecretrefwithname)
  * [`fn withNamespace(value)`](#fn-settingssecretrefwithnamespace)

## Fields

### fn withAccessKeySecretRef

```jsonnet
withAccessKeySecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) AWS access key ID used to authenticate with Amazon SNS.
AWS access key ID used to authenticate with Amazon SNS.
### fn withAccessKeySecretRefMixin

```jsonnet
withAccessKeySecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) AWS access key ID used to authenticate with Amazon SNS.
AWS access key ID used to authenticate with Amazon SNS.
### fn withAssumeRoleArn

```jsonnet
withAssumeRoleArn(value)
```

PARAMETERS:

* **value** (`string`)

(String) The Amazon Resource Name (ARN) of the role to assume to send notifications to Amazon SNS.
The Amazon Resource Name (ARN) of the role to assume to send notifications to Amazon SNS.
### fn withAuthProvider

```jsonnet
withAuthProvider(value)
```

PARAMETERS:

* **value** (`string`)

(String) The authentication provider to use. Valid values are default, arn and keys. Default is default. Defaults to default.
The authentication provider to use. Valid values are `default`, `arn` and `keys`. Default is `default`. Defaults to `default`.
### fn withBody

```jsonnet
withBody(value)
```

PARAMETERS:

* **value** (`string`)

(String)
### fn withDisableResolveMessage

```jsonnet
withDisableResolveMessage(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to disable sending resolve messages. Defaults to false.
Whether to disable sending resolve messages. Defaults to `false`.
### fn withExternalId

```jsonnet
withExternalId(value)
```

PARAMETERS:

* **value** (`string`)

(String) The external ID to use when assuming the role.
The external ID to use when assuming the role.
### fn withMessageFormat

```jsonnet
withMessageFormat(value)
```

PARAMETERS:

* **value** (`string`)

(String) The format of the message to send. Valid values are text, body and json. Default is text. Defaults to text.
The format of the message to send. Valid values are `text`, `body` and `json`. Default is `text`. Defaults to `text`.
### fn withSecretKeySecretRef

```jsonnet
withSecretKeySecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) AWS secret access key used to authenticate with Amazon SNS.
AWS secret access key used to authenticate with Amazon SNS.
### fn withSecretKeySecretRefMixin

```jsonnet
withSecretKeySecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) AWS secret access key used to authenticate with Amazon SNS.
AWS secret access key used to authenticate with Amazon SNS.
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
### fn withSubject

```jsonnet
withSubject(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated subject line of the email. Defaults to “.
### fn withTopic

```jsonnet
withTopic(value)
```

PARAMETERS:

* **value** (`string`)

(String) The name of the Kafka topic to publish to.
The Amazon SNS topic to send notifications to.
### obj accessKeySecretRef


#### fn accessKeySecretRef.withKey

```jsonnet
accessKeySecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn accessKeySecretRef.withName

```jsonnet
accessKeySecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn accessKeySecretRef.withNamespace

```jsonnet
accessKeySecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.
### obj secretKeySecretRef


#### fn secretKeySecretRef.withKey

```jsonnet
secretKeySecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn secretKeySecretRef.withName

```jsonnet
secretKeySecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn secretKeySecretRef.withNamespace

```jsonnet
secretKeySecretRef.withNamespace(value)
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