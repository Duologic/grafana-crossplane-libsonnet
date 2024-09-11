# assertions



## Index

* [`fn withCondition(value)`](#fn-withcondition)
* [`fn withExpression(value)`](#fn-withexpression)
* [`fn withSubject(value)`](#fn-withsubject)
* [`fn withType(value)`](#fn-withtype)
* [`fn withValue(value)`](#fn-withvalue)

## Fields

### fn withCondition

```jsonnet
withCondition(value)
```

PARAMETERS:

* **value** (`string`)

(String) The condition of the assertion: NOT_CONTAINS, EQUALS, STARTS_WITH, ENDS_WITH, TYPE_OF, CONTAINS
The condition of the assertion: NOT_CONTAINS, EQUALS, STARTS_WITH, ENDS_WITH, TYPE_OF, CONTAINS
### fn withExpression

```jsonnet
withExpression(value)
```

PARAMETERS:

* **value** (`string`)

(String) The expression of the assertion. Should start with $.
The expression of the assertion. Should start with $.
### fn withSubject

```jsonnet
withSubject(value)
```

PARAMETERS:

* **value** (`string`)

(String) The subject of the assertion: RESPONSE_HEADERS, HTTP_STATUS_CODE, RESPONSE_BODY
The subject of the assertion: RESPONSE_HEADERS, HTTP_STATUS_CODE, RESPONSE_BODY
### fn withType

```jsonnet
withType(value)
```

PARAMETERS:

* **value** (`string`)

(String) The type of assertion to make: TEXT, JSON_PATH_VALUE, JSON_PATH_ASSERTION, REGEX_ASSERTION
The type of assertion to make: TEXT, JSON_PATH_VALUE, JSON_PATH_ASSERTION, REGEX_ASSERTION
### fn withValue

```jsonnet
withValue(value)
```

PARAMETERS:

* **value** (`string`)

(String) The value of the assertion
The value of the assertion