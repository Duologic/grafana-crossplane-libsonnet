# algorithm



## Subpackages

* [config](config.md)

## Index

* [`fn withConfig(value)`](#fn-withconfig)
* [`fn withConfigMixin(value)`](#fn-withconfigmixin)
* [`fn withName(value)`](#fn-withname)
* [`fn withSensitivity(value)`](#fn-withsensitivity)

## Fields

### fn withConfig

```jsonnet
withConfig(value)
```

PARAMETERS:

* **value** (`array`)

For DBSCAN only, specify the configuration map
### fn withConfigMixin

```jsonnet
withConfigMixin(value)
```

PARAMETERS:

* **value** (`array`)

For DBSCAN only, specify the configuration map
### fn withName

```jsonnet
withName(value)
```

PARAMETERS:

* **value** (`string`)

The name of the algorithm to use ('mad' or 'dbscan').
### fn withSensitivity

```jsonnet
withSensitivity(value)
```

PARAMETERS:

* **value** (`number`)

Specify the sensitivity of the detector (in range [0,1]).