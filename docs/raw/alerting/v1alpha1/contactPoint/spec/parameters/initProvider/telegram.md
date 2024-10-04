# telegram



## Index

* [`fn withChatId(value)`](#fn-withchatid)
* [`fn withDisableNotifications(value=true)`](#fn-withdisablenotifications)
* [`fn withDisableResolveMessage(value=true)`](#fn-withdisableresolvemessage)
* [`fn withDisableWebPagePreview(value=true)`](#fn-withdisablewebpagepreview)
* [`fn withMessage(value)`](#fn-withmessage)
* [`fn withMessageThreadId(value)`](#fn-withmessagethreadid)
* [`fn withParseMode(value)`](#fn-withparsemode)
* [`fn withProtectContent(value=true)`](#fn-withprotectcontent)
* [`fn withSettingsSecretRef(value)`](#fn-withsettingssecretref)
* [`fn withSettingsSecretRefMixin(value)`](#fn-withsettingssecretrefmixin)
* [`fn withTokenSecretRef(value)`](#fn-withtokensecretref)
* [`fn withTokenSecretRefMixin(value)`](#fn-withtokensecretrefmixin)
* [`obj tokenSecretRef`](#obj-tokensecretref)
  * [`fn withKey(value)`](#fn-tokensecretrefwithkey)
  * [`fn withName(value)`](#fn-tokensecretrefwithname)
  * [`fn withNamespace(value)`](#fn-tokensecretrefwithnamespace)

## Fields

### fn withChatId

```jsonnet
withChatId(value)
```

PARAMETERS:

* **value** (`string`)

(String) The chat ID to send messages to.
The chat ID to send messages to.
### fn withDisableNotifications

```jsonnet
withDisableNotifications(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) When set users will receive a notification with no sound.
When set users will receive a notification with no sound.
### fn withDisableResolveMessage

```jsonnet
withDisableResolveMessage(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to disable sending resolve messages. Defaults to false.
Whether to disable sending resolve messages. Defaults to `false`.
### fn withDisableWebPagePreview

```jsonnet
withDisableWebPagePreview(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) When set it disables link previews for links in the message.
When set it disables link previews for links in the message.
### fn withMessage

```jsonnet
withMessage(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated content of the message.
The templated content of the message.
### fn withMessageThreadId

```jsonnet
withMessageThreadId(value)
```

PARAMETERS:

* **value** (`string`)

(String) The ID of the message thread to send the message to.
The ID of the message thread to send the message to.
### fn withParseMode

```jsonnet
withParseMode(value)
```

PARAMETERS:

* **value** (`string`)

(String) Mode for parsing entities in the message text. Supported: None, Markdown, MarkdownV2, and HTML. HTML is the default.
Mode for parsing entities in the message text. Supported: None, Markdown, MarkdownV2, and HTML. HTML is the default.
### fn withProtectContent

```jsonnet
withProtectContent(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) When set it protects the contents of the message from forwarding and saving.
When set it protects the contents of the message from forwarding and saving.
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


### fn withTokenSecretRef

```jsonnet
withTokenSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The bearer token used to authorize the client.
The Telegram bot token.
### fn withTokenSecretRefMixin

```jsonnet
withTokenSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The bearer token used to authorize the client.
The Telegram bot token.
### obj tokenSecretRef


#### fn tokenSecretRef.withKey

```jsonnet
tokenSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn tokenSecretRef.withName

```jsonnet
tokenSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn tokenSecretRef.withNamespace

```jsonnet
tokenSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.