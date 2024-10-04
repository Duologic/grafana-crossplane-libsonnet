# realm



## Subpackages

* [labelPolicy](labelPolicy.md)

## Index

* [`fn withIdentifier(value)`](#fn-withidentifier)
* [`fn withLabelPolicy(value)`](#fn-withlabelpolicy)
* [`fn withLabelPolicyMixin(value)`](#fn-withlabelpolicymixin)
* [`fn withStackRef(value)`](#fn-withstackref)
* [`fn withStackRefMixin(value)`](#fn-withstackrefmixin)
* [`fn withStackSelector(value)`](#fn-withstackselector)
* [`fn withStackSelectorMixin(value)`](#fn-withstackselectormixin)
* [`fn withType(value)`](#fn-withtype)
* [`obj stackRef`](#obj-stackref)
  * [`fn withName(value)`](#fn-stackrefwithname)
  * [`fn withPolicy(value)`](#fn-stackrefwithpolicy)
  * [`fn withPolicyMixin(value)`](#fn-stackrefwithpolicymixin)
  * [`obj policy`](#obj-stackrefpolicy)
    * [`fn withResolution(value="Required")`](#fn-stackrefpolicywithresolution)
    * [`fn withResolve(value)`](#fn-stackrefpolicywithresolve)
* [`obj stackSelector`](#obj-stackselector)
  * [`fn withMatchControllerRef(value=true)`](#fn-stackselectorwithmatchcontrollerref)
  * [`fn withMatchLabels(value)`](#fn-stackselectorwithmatchlabels)
  * [`fn withMatchLabelsMixin(value)`](#fn-stackselectorwithmatchlabelsmixin)
  * [`fn withPolicy(value)`](#fn-stackselectorwithpolicy)
  * [`fn withPolicyMixin(value)`](#fn-stackselectorwithpolicymixin)
  * [`obj policy`](#obj-stackselectorpolicy)
    * [`fn withResolution(value="Required")`](#fn-stackselectorpolicywithresolution)
    * [`fn withResolve(value)`](#fn-stackselectorpolicywithresolve)

## Fields

### fn withIdentifier

```jsonnet
withIdentifier(value)
```

PARAMETERS:

* **value** (`string`)

(String) The identifier of the org or stack. For orgs, this is the slug, for stacks, this is the stack ID.
The identifier of the org or stack. For orgs, this is the slug, for stacks, this is the stack ID.
### fn withLabelPolicy

```jsonnet
withLabelPolicy(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set) (see below for nested schema)
### fn withLabelPolicyMixin

```jsonnet
withLabelPolicyMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set) (see below for nested schema)
### fn withStackRef

```jsonnet
withStackRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a Stack in cloud to populate identifier.
### fn withStackRefMixin

```jsonnet
withStackRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a Stack in cloud to populate identifier.
### fn withStackSelector

```jsonnet
withStackSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a Stack in cloud to populate identifier.
### fn withStackSelectorMixin

```jsonnet
withStackSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a Stack in cloud to populate identifier.
### fn withType

```jsonnet
withType(value)
```

PARAMETERS:

* **value** (`string`)

(String) Whether a policy applies to a Cloud org or a specific stack. Should be one of org or stack.
Whether a policy applies to a Cloud org or a specific stack. Should be one of `org` or `stack`.
### obj stackRef


#### fn stackRef.withName

```jsonnet
stackRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
#### fn stackRef.withPolicy

```jsonnet
stackRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
#### fn stackRef.withPolicyMixin

```jsonnet
stackRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
#### obj stackRef.policy


##### fn stackRef.policy.withResolution

```jsonnet
stackRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
##### fn stackRef.policy.withResolve

```jsonnet
stackRef.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
### obj stackSelector


#### fn stackSelector.withMatchControllerRef

```jsonnet
stackSelector.withMatchControllerRef(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

MatchControllerRef ensures an object with the same controller reference
as the selecting object is selected.
#### fn stackSelector.withMatchLabels

```jsonnet
stackSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
#### fn stackSelector.withMatchLabelsMixin

```jsonnet
stackSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
#### fn stackSelector.withPolicy

```jsonnet
stackSelector.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
#### fn stackSelector.withPolicyMixin

```jsonnet
stackSelector.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
#### obj stackSelector.policy


##### fn stackSelector.policy.withResolution

```jsonnet
stackSelector.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
##### fn stackSelector.policy.withResolve

```jsonnet
stackSelector.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.