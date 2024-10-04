# data



## Subpackages

* [relativeTimeRange](relativeTimeRange.md)

## Index

* [`fn withDatasourceUid(value)`](#fn-withdatasourceuid)
* [`fn withModel(value)`](#fn-withmodel)
* [`fn withQueryType(value)`](#fn-withquerytype)
* [`fn withRefId(value)`](#fn-withrefid)
* [`fn withRelativeTimeRange(value)`](#fn-withrelativetimerange)
* [`fn withRelativeTimeRangeMixin(value)`](#fn-withrelativetimerangemixin)

## Fields

### fn withDatasourceUid

```jsonnet
withDatasourceUid(value)
```

PARAMETERS:

* **value** (`string`)

100" if this stage is an expression stage.
The UID of the datasource being queried, or "-100" if this stage is an expression stage.
### fn withModel

```jsonnet
withModel(value)
```

PARAMETERS:

* **value** (`string`)

(String) Custom JSON data to send to the specified datasource when querying.
Custom JSON data to send to the specified datasource when querying.
### fn withQueryType

```jsonnet
withQueryType(value)
```

PARAMETERS:

* **value** (`string`)

(String) An optional identifier for the type of query being executed. Defaults to “.
An optional identifier for the type of query being executed. Defaults to “.
### fn withRefId

```jsonnet
withRefId(value)
```

PARAMETERS:

* **value** (`string`)

(String) A unique string to identify this query stage within a rule.
A unique string to identify this query stage within a rule.
### fn withRelativeTimeRange

```jsonnet
withRelativeTimeRange(value)
```

PARAMETERS:

* **value** (`array`)

(Block List, Min: 1, Max: 1) The time range, relative to when the query is executed, across which to query. (see below for nested schema)
The time range, relative to when the query is executed, across which to query.
### fn withRelativeTimeRangeMixin

```jsonnet
withRelativeTimeRangeMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block List, Min: 1, Max: 1) The time range, relative to when the query is executed, across which to query. (see below for nested schema)
The time range, relative to when the query is executed, across which to query.