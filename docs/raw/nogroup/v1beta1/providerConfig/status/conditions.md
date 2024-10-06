# conditions



## Index

* [`fn withLastTransitionTime(value)`](#fn-withlasttransitiontime)
* [`fn withMessage(value)`](#fn-withmessage)
* [`fn withObservedGeneration(value)`](#fn-withobservedgeneration)
* [`fn withReason(value)`](#fn-withreason)
* [`fn withStatus(value)`](#fn-withstatus)
* [`fn withType(value)`](#fn-withtype)

## Fields

### fn withLastTransitionTime

```jsonnet
withLastTransitionTime(value)
```

PARAMETERS:

* **value** (`string`)

LastTransitionTime is the last time this condition transitioned from one
status to another.
### fn withMessage

```jsonnet
withMessage(value)
```

PARAMETERS:

* **value** (`string`)

A Message containing details about this condition's last transition from
one status to another, if any.
### fn withObservedGeneration

```jsonnet
withObservedGeneration(value)
```

PARAMETERS:

* **value** (`integer`)

ObservedGeneration represents the .metadata.generation that the condition was set based upon.
For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
with respect to the current state of the instance.
### fn withReason

```jsonnet
withReason(value)
```

PARAMETERS:

* **value** (`string`)

A Reason for this condition's last transition from one status to another.
### fn withStatus

```jsonnet
withStatus(value)
```

PARAMETERS:

* **value** (`string`)

Status of this condition; is it currently True, False, or Unknown?
### fn withType

```jsonnet
withType(value)
```

PARAMETERS:

* **value** (`string`)

Type of this condition. At most one of each condition type may apply to
a resource at any point in time.