# variables



## Index

* [`fn withAttribute(value)`](#fn-withattribute)
* [`fn withExpression(value)`](#fn-withexpression)
* [`fn withName(value)`](#fn-withname)
* [`fn withType(value)`](#fn-withtype)

## Fields

### fn withAttribute

```jsonnet
withAttribute(value)
```

PARAMETERS:

* **value** (`string`)

(String) The attribute to use when finding the variable value. Only used when type is CSS_SELECTOR
The attribute to use when finding the variable value. Only used when type is CSS_SELECTOR
### fn withExpression

```jsonnet
withExpression(value)
```

PARAMETERS:

* **value** (`string`)

(String) The expression of the assertion. Should start with $.
The expression to when finding the variable. Should start with $. Only use when type is JSON_PATH or REGEX
### fn withName

```jsonnet
withName(value)
```

PARAMETERS:

* **value** (`string`)

(String) Name of the header to send
The name of the variable to extract
### fn withType

```jsonnet
withType(value)
```

PARAMETERS:

* **value** (`string`)

(String) The type of assertion to make: TEXT, JSON_PATH_VALUE, JSON_PATH_ASSERTION, REGEX_ASSERTION
The method of finding the variable value to extract. JSON_PATH, REGEX, CSS_SELECTOR