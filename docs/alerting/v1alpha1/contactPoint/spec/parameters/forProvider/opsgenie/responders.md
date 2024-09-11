# responders



## Index

* [`fn withId(value)`](#fn-withid)
* [`fn withName(value)`](#fn-withname)
* [`fn withType(value)`](#fn-withtype)
* [`fn withUsername(value)`](#fn-withusername)

## Fields

### fn withId

```jsonnet
withId(value)
```

PARAMETERS:

* **value** (`string`)

(String) The ID of this resource.
ID of the responder. Must be specified if name and username are empty.
### fn withName

```jsonnet
withName(value)
```

PARAMETERS:

* **value** (`string`)

(String) The name of the contact point.
Name of the responder. Must be specified if username and id are empty.
### fn withType

```jsonnet
withType(value)
```

PARAMETERS:

* **value** (`string`)

(String) Type of the responder. Supported: team, teams, user, escalation, schedule or a template that is expanded to one of these values.
Type of the responder. Supported: team, teams, user, escalation, schedule or a template that is expanded to one of these values.
### fn withUsername

```jsonnet
withUsername(value)
```

PARAMETERS:

* **value** (`string`)

(String) The user name to use when making a call to the Kafka REST Proxy
User name of the responder. Must be specified if name and id are empty.