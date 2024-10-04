# ping



## Index

* [`fn withDontFragment(value=true)`](#fn-withdontfragment)
* [`fn withIpVersion(value)`](#fn-withipversion)
* [`fn withPayloadSize(value)`](#fn-withpayloadsize)
* [`fn withSourceIpAddress(value)`](#fn-withsourceipaddress)

## Fields

### fn withDontFragment

```jsonnet
withDontFragment(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

bit in the IP-header. Only works with ipV4. Defaults to false.
Set the DF-bit in the IP-header. Only works with ipV4. Defaults to `false`.
### fn withIpVersion

```jsonnet
withIpVersion(value)
```

PARAMETERS:

* **value** (`string`)

(String) Options are V4, V6, Any. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The Any value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to V4.
Options are `V4`, `V6`, `Any`. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The `Any` value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to `V4`.
### fn withPayloadSize

```jsonnet
withPayloadSize(value)
```

PARAMETERS:

* **value** (`number`)

(Number) Payload size. Defaults to 0.
Payload size. Defaults to `0`.
### fn withSourceIpAddress

```jsonnet
withSourceIpAddress(value)
```

PARAMETERS:

* **value** (`string`)

(String) Source IP address.
Source IP address.