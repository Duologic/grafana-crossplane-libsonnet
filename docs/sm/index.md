# sm



## Subpackages

* [check.settings.http](check/settings/http/index.md)

## Index

* [`obj check`](#obj-check)
  * [`fn new(name, type)`](#fn-checknew)
  * [`fn withFullProbeList(probes=[1,7,8,10,11,12,13,14,15,16,17,18,19,20,21,756,757,853,854,855,856,867])`](#fn-checkwithfullprobelist)
  * [`fn withHttpSettings(http)`](#fn-checkwithhttpsettings)
  * [`fn withHttpStatusCheck(validStatusCodes=[200])`](#fn-checkwithhttpstatuscheck)
  * [`fn withLabels(labels)`](#fn-checkwithlabels)
  * [`fn withProbes(probes)`](#fn-checkwithprobes)

## Fields

### obj check


#### fn check.new

```jsonnet
check.new(name, type)
```

PARAMETERS:

* **name** (`string`)
* **type** (`string`)

`new` configures a synthetic monitoring check.

Note: The probe list will match a short list of just three nodes across the globe.

#### fn check.withFullProbeList

```jsonnet
check.withFullProbeList(probes=[1,7,8,10,11,12,13,14,15,16,17,18,19,20,21,756,757,853,854,855,856,867])
```

PARAMETERS:

* **probes** (`array`)
   - default value: `[1,7,8,10,11,12,13,14,15,16,17,18,19,20,21,756,757,853,854,855,856,867]`

`withFullProbeList` sets the `probes` array to match the fulll list of probes.

Note: Probe IDs hardcoded for now.

#### fn check.withHttpSettings

```jsonnet
check.withHttpSettings(http)
```

PARAMETERS:

* **http** (`object`)

`withHttpSettings` configures the settings for a HTTP check. The target must be a URL (http or https).

The `http` object can be created with `check.settings.http.new()`.

#### fn check.withHttpStatusCheck

```jsonnet
check.withHttpStatusCheck(validStatusCodes=[200])
```

PARAMETERS:

* **validStatusCodes** (`array`)
   - default value: `[200]`

`withHttpStatusCheck` configures a simple HTTP status check for the target URL.

#### fn check.withLabels

```jsonnet
check.withLabels(labels)
```

PARAMETERS:

* **labels** (`object`)

`withLabels` adds custom labels to be included with collected metrics and logs. The maximum number of labels that can be specified per check is 5. These are applied, along with the probe-specific labels, to the outgoing metrics. The names and values of the labels cannot be empty, and the maximum length is 32 bytes.

#### fn check.withProbes

```jsonnet
check.withProbes(probes)
```

PARAMETERS:

* **probes** (`array`)

`withProbes` takes a list of probe location IDs where the target will be checked from.
