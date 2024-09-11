# traceroute



## Index

* [`fn withMaxHops(value)`](#fn-withmaxhops)
* [`fn withMaxUnknownHops(value)`](#fn-withmaxunknownhops)
* [`fn withPtrLookup(value=true)`](#fn-withptrlookup)

## Fields

### fn withMaxHops

```jsonnet
withMaxHops(value)
```

PARAMETERS:

* **value** (`number`)

(Number) Maximum TTL for the trace Defaults to 64.
Maximum TTL for the trace Defaults to `64`.
### fn withMaxUnknownHops

```jsonnet
withMaxUnknownHops(value)
```

PARAMETERS:

* **value** (`number`)

(Number) Maximum number of hosts to travers that give no response Defaults to 15.
Maximum number of hosts to travers that give no response Defaults to `15`.
### fn withPtrLookup

```jsonnet
withPtrLookup(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Reverse lookup hostnames from IP addresses Defaults to true.
Reverse lookup hostnames from IP addresses Defaults to `true`.