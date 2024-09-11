# tcp



## Subpackages

* [queryResponse](queryResponse.md)
* [tlsConfig](tlsConfig.md)

## Index

* [`fn withIpVersion(value)`](#fn-withipversion)
* [`fn withQueryResponse(value)`](#fn-withqueryresponse)
* [`fn withQueryResponseMixin(value)`](#fn-withqueryresponsemixin)
* [`fn withSourceIpAddress(value)`](#fn-withsourceipaddress)
* [`fn withTls(value=true)`](#fn-withtls)
* [`fn withTlsConfig(value)`](#fn-withtlsconfig)
* [`fn withTlsConfigMixin(value)`](#fn-withtlsconfigmixin)

## Fields

### fn withIpVersion

```jsonnet
withIpVersion(value)
```

PARAMETERS:

* **value** (`string`)

(String) Options are V4, V6, Any. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The Any value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to V4.
Options are `V4`, `V6`, `Any`. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The `Any` value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to `V4`.
### fn withQueryResponse

```jsonnet
withQueryResponse(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set) The query sent in the TCP probe and the expected associated response. (see below for nested schema)
The query sent in the TCP probe and the expected associated response.
### fn withQueryResponseMixin

```jsonnet
withQueryResponseMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set) The query sent in the TCP probe and the expected associated response. (see below for nested schema)
The query sent in the TCP probe and the expected associated response.
### fn withSourceIpAddress

```jsonnet
withSourceIpAddress(value)
```

PARAMETERS:

* **value** (`string`)

(String) Source IP address.
Source IP address.
### fn withTls

```jsonnet
withTls(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether or not TLS is used when the connection is initiated. Defaults to false.
Whether or not TLS is used when the connection is initiated. Defaults to `false`.
### fn withTlsConfig

```jsonnet
withTlsConfig(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) TLS config. (see below for nested schema)
TLS config.
### fn withTlsConfigMixin

```jsonnet
withTlsConfigMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) TLS config. (see below for nested schema)
TLS config.