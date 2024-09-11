# email



## Index

* [`fn withAddresses(value)`](#fn-withaddresses)
* [`fn withAddressesMixin(value)`](#fn-withaddressesmixin)
* [`fn withDisableResolveMessage(value=true)`](#fn-withdisableresolvemessage)
* [`fn withMessage(value)`](#fn-withmessage)
* [`fn withSettingsSecretRef(value)`](#fn-withsettingssecretref)
* [`fn withSettingsSecretRefMixin(value)`](#fn-withsettingssecretrefmixin)
* [`fn withSingleEmail(value=true)`](#fn-withsingleemail)
* [`fn withSubject(value)`](#fn-withsubject)

## Fields

### fn withAddresses

```jsonnet
withAddresses(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) The addresses to send emails to.
The addresses to send emails to.
### fn withAddressesMixin

```jsonnet
withAddressesMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) The addresses to send emails to.
The addresses to send emails to.
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
The templated content of the email. Defaults to “.
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


### fn withSingleEmail

```jsonnet
withSingleEmail(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to send a single email CC'ing all addresses, rather than a separate email to each address. Defaults to false.
Whether to send a single email CC'ing all addresses, rather than a separate email to each address. Defaults to `false`.
### fn withSubject

```jsonnet
withSubject(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated subject line of the email. Defaults to “.
The templated subject line of the email. Defaults to “.