# dns



## Subpackages

* [validateAdditionalRrs](validateAdditionalRrs.md)
* [validateAnswerRrs](validateAnswerRrs.md)
* [validateAuthorityRrs](validateAuthorityRrs.md)

## Index

* [`fn withIpVersion(value)`](#fn-withipversion)
* [`fn withPort(value)`](#fn-withport)
* [`fn withProtocol(value)`](#fn-withprotocol)
* [`fn withRecordType(value)`](#fn-withrecordtype)
* [`fn withServer(value)`](#fn-withserver)
* [`fn withSourceIpAddress(value)`](#fn-withsourceipaddress)
* [`fn withValidRCodes(value)`](#fn-withvalidrcodes)
* [`fn withValidRCodesMixin(value)`](#fn-withvalidrcodesmixin)
* [`fn withValidateAdditionalRrs(value)`](#fn-withvalidateadditionalrrs)
* [`fn withValidateAdditionalRrsMixin(value)`](#fn-withvalidateadditionalrrsmixin)
* [`fn withValidateAnswerRrs(value)`](#fn-withvalidateanswerrrs)
* [`fn withValidateAnswerRrsMixin(value)`](#fn-withvalidateanswerrrsmixin)
* [`fn withValidateAuthorityRrs(value)`](#fn-withvalidateauthorityrrs)
* [`fn withValidateAuthorityRrsMixin(value)`](#fn-withvalidateauthorityrrsmixin)

## Fields

### fn withIpVersion

```jsonnet
withIpVersion(value)
```

PARAMETERS:

* **value** (`string`)

(String) Options are V4, V6, Any. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The Any value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to V4.
Options are `V4`, `V6`, `Any`. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The `Any` value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to `V4`.
### fn withPort

```jsonnet
withPort(value)
```

PARAMETERS:

* **value** (`number`)

(Number) Port to target. Defaults to 53.
Port to target. Defaults to `53`.
### fn withProtocol

```jsonnet
withProtocol(value)
```

PARAMETERS:

* **value** (`string`)

(String) TCP or UDP. Defaults to UDP.
`TCP` or `UDP`. Defaults to `UDP`.
### fn withRecordType

```jsonnet
withRecordType(value)
```

PARAMETERS:

* **value** (`string`)

(String) One of ANY, A, AAAA, CNAME, MX, NS, PTR, SOA, SRV, TXT. Defaults to A.
One of `ANY`, `A`, `AAAA`, `CNAME`, `MX`, `NS`, `PTR`, `SOA`, `SRV`, `TXT`. Defaults to `A`.
### fn withServer

```jsonnet
withServer(value)
```

PARAMETERS:

* **value** (`string`)

(String) DNS server address to target. Defaults to 8.8.8.8.
DNS server address to target. Defaults to `8.8.8.8`.
### fn withSourceIpAddress

```jsonnet
withSourceIpAddress(value)
```

PARAMETERS:

* **value** (`string`)

(String) Source IP address.
Source IP address.
### fn withValidRCodes

```jsonnet
withValidRCodes(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) List of valid response codes. Options include NOERROR, BADALG, BADMODE, BADKEY, BADCOOKIE, BADNAME, BADSIG, BADTIME, BADTRUNC, BADVERS, FORMERR, NOTIMP, NOTAUTH, NOTZONE, NXDOMAIN, NXRRSET, REFUSED, SERVFAIL, YXDOMAIN, YXRRSET.
List of valid response codes. Options include `NOERROR`, `BADALG`, `BADMODE`, `BADKEY`, `BADCOOKIE`, `BADNAME`, `BADSIG`, `BADTIME`, `BADTRUNC`, `BADVERS`, `FORMERR`, `NOTIMP`, `NOTAUTH`, `NOTZONE`, `NXDOMAIN`, `NXRRSET`, `REFUSED`, `SERVFAIL`, `YXDOMAIN`, `YXRRSET`.
### fn withValidRCodesMixin

```jsonnet
withValidRCodesMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) List of valid response codes. Options include NOERROR, BADALG, BADMODE, BADKEY, BADCOOKIE, BADNAME, BADSIG, BADTIME, BADTRUNC, BADVERS, FORMERR, NOTIMP, NOTAUTH, NOTZONE, NXDOMAIN, NXRRSET, REFUSED, SERVFAIL, YXDOMAIN, YXRRSET.
List of valid response codes. Options include `NOERROR`, `BADALG`, `BADMODE`, `BADKEY`, `BADCOOKIE`, `BADNAME`, `BADSIG`, `BADTIME`, `BADTRUNC`, `BADVERS`, `FORMERR`, `NOTIMP`, `NOTAUTH`, `NOTZONE`, `NXDOMAIN`, `NXRRSET`, `REFUSED`, `SERVFAIL`, `YXDOMAIN`, `YXRRSET`.
### fn withValidateAdditionalRrs

```jsonnet
withValidateAdditionalRrs(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set) Validate additional matches. (see below for nested schema)
Validate additional matches.
### fn withValidateAdditionalRrsMixin

```jsonnet
withValidateAdditionalRrsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set) Validate additional matches. (see below for nested schema)
Validate additional matches.
### fn withValidateAnswerRrs

```jsonnet
withValidateAnswerRrs(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Validate response answer. (see below for nested schema)
Validate response answer.
### fn withValidateAnswerRrsMixin

```jsonnet
withValidateAnswerRrsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Validate response answer. (see below for nested schema)
Validate response answer.
### fn withValidateAuthorityRrs

```jsonnet
withValidateAuthorityRrs(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Validate response authority. (see below for nested schema)
Validate response authority.
### fn withValidateAuthorityRrsMixin

```jsonnet
withValidateAuthorityRrsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Validate response authority. (see below for nested schema)
Validate response authority.