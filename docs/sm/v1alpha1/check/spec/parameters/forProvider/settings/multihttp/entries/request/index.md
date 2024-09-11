# request



## Subpackages

* [body](body.md)
* [headers](headers.md)
* [queryFields](queryFields.md)

## Index

* [`fn withBody(value)`](#fn-withbody)
* [`fn withBodyMixin(value)`](#fn-withbodymixin)
* [`fn withHeaders(value)`](#fn-withheaders)
* [`fn withHeadersMixin(value)`](#fn-withheadersmixin)
* [`fn withMethod(value)`](#fn-withmethod)
* [`fn withQueryFields(value)`](#fn-withqueryfields)
* [`fn withQueryFieldsMixin(value)`](#fn-withqueryfieldsmixin)
* [`fn withUrl(value)`](#fn-withurl)

## Fields

### fn withBody

```jsonnet
withBody(value)
```

PARAMETERS:

* **value** (`array`)

(String) The body of the HTTP request used in probe.
The body of the HTTP request used in probe.
### fn withBodyMixin

```jsonnet
withBodyMixin(value)
```

PARAMETERS:

* **value** (`array`)

(String) The body of the HTTP request used in probe.
The body of the HTTP request used in probe.
### fn withHeaders

```jsonnet
withHeaders(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) The HTTP headers set for the probe.
The headers to send with the request
### fn withHeadersMixin

```jsonnet
withHeadersMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) The HTTP headers set for the probe.
The headers to send with the request
### fn withMethod

```jsonnet
withMethod(value)
```

PARAMETERS:

* **value** (`string`)

(String) Request method. One of GET, CONNECT, DELETE, HEAD, OPTIONS, POST, PUT, TRACE Defaults to GET.
The HTTP method to use
### fn withQueryFields

```jsonnet
withQueryFields(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set) Query fields to send with the request (see below for nested schema)
Query fields to send with the request
### fn withQueryFieldsMixin

```jsonnet
withQueryFieldsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set) Query fields to send with the request (see below for nested schema)
Query fields to send with the request
### fn withUrl

```jsonnet
withUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The URL for the request
The URL for the request