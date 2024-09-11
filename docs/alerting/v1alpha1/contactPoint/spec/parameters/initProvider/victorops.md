# victorops



## Index

* [`fn withDescription(value)`](#fn-withdescription)
* [`fn withDisableResolveMessage(value=true)`](#fn-withdisableresolvemessage)
* [`fn withMessageType(value)`](#fn-withmessagetype)
* [`fn withSettingsSecretRef(value)`](#fn-withsettingssecretref)
* [`fn withSettingsSecretRefMixin(value)`](#fn-withsettingssecretrefmixin)
* [`fn withTitle(value)`](#fn-withtitle)
* [`fn withUrl(value)`](#fn-withurl)

## Fields

### fn withDescription

```jsonnet
withDescription(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated description of the Kafka message.
Templated description of the message.
### fn withDisableResolveMessage

```jsonnet
withDisableResolveMessage(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to disable sending resolve messages. Defaults to false.
Whether to disable sending resolve messages. Defaults to `false`.
### fn withMessageType

```jsonnet
withMessageType(value)
```

PARAMETERS:

* **value** (`string`)

either 'link' or 'actionCard'
The VictorOps alert state - typically either `CRITICAL` or `RECOVERY`.
### fn withSettingsSecretRef

```jsonnet
withSettingsSecretRef(value)
```

PARAMETERS:

* **value** (`object`)


### fn withSettingsSecretRefMixin

```jsonnet
withSettingsSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)


### fn withTitle

```jsonnet
withTitle(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated title of the message.
Templated title to display.
### fn withUrl

```jsonnet
withUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The URL of the Alertmanager instance.
The VictorOps webhook URL.