# ratio



## Index

* [`fn withGroupByLabels(value)`](#fn-withgroupbylabels)
* [`fn withGroupByLabelsMixin(value)`](#fn-withgroupbylabelsmixin)
* [`fn withSuccessMetric(value)`](#fn-withsuccessmetric)
* [`fn withTotalMetric(value)`](#fn-withtotalmetric)

## Fields

### fn withGroupByLabels

```jsonnet
withGroupByLabels(value)
```

PARAMETERS:

* **value** (`array`)

label alerting. These appear as variables on SLO dashboards to enable filtering and aggregation. Labels must adhere to Prometheus label name schema - "^[a-zA-Z_][a-zA-Z0-9_]*$"
Defines Group By Labels used for per-label alerting. These appear as variables on SLO dashboards to enable filtering and aggregation. Labels must adhere to Prometheus label name schema - "^[a-zA-Z_][a-zA-Z0-9_]*$"
### fn withGroupByLabelsMixin

```jsonnet
withGroupByLabelsMixin(value)
```

PARAMETERS:

* **value** (`array`)

label alerting. These appear as variables on SLO dashboards to enable filtering and aggregation. Labels must adhere to Prometheus label name schema - "^[a-zA-Z_][a-zA-Z0-9_]*$"
Defines Group By Labels used for per-label alerting. These appear as variables on SLO dashboards to enable filtering and aggregation. Labels must adhere to Prometheus label name schema - "^[a-zA-Z_][a-zA-Z0-9_]*$"
### fn withSuccessMetric

```jsonnet
withSuccessMetric(value)
```

PARAMETERS:

* **value** (`string`)

(String) Counter metric for success events (numerator)
Counter metric for success events (numerator)
### fn withTotalMetric

```jsonnet
withTotalMetric(value)
```

PARAMETERS:

* **value** (`string`)

(String) Metric for total events (denominator)
Metric for total events (denominator)