# intervals



## Subpackages

* [times](times.md)

## Index

* [`fn withDaysOfMonth(value)`](#fn-withdaysofmonth)
* [`fn withDaysOfMonthMixin(value)`](#fn-withdaysofmonthmixin)
* [`fn withLocation(value)`](#fn-withlocation)
* [`fn withMonths(value)`](#fn-withmonths)
* [`fn withMonthsMixin(value)`](#fn-withmonthsmixin)
* [`fn withTimes(value)`](#fn-withtimes)
* [`fn withTimesMixin(value)`](#fn-withtimesmixin)
* [`fn withWeekdays(value)`](#fn-withweekdays)
* [`fn withWeekdaysMixin(value)`](#fn-withweekdaysmixin)
* [`fn withYears(value)`](#fn-withyears)
* [`fn withYearsMixin(value)`](#fn-withyearsmixin)

## Fields

### fn withDaysOfMonth

```jsonnet
withDaysOfMonth(value)
```

PARAMETERS:

* **value** (`array`)

31, within a month, e.g. "1" or "14:16". Negative values can be used to represent days counting from the end of a month, e.g. "-1".
An inclusive range of days, 1-31, within a month, e.g. "1" or "14:16". Negative values can be used to represent days counting from the end of a month, e.g. "-1".
### fn withDaysOfMonthMixin

```jsonnet
withDaysOfMonthMixin(value)
```

PARAMETERS:

* **value** (`array`)

31, within a month, e.g. "1" or "14:16". Negative values can be used to represent days counting from the end of a month, e.g. "-1".
An inclusive range of days, 1-31, within a month, e.g. "1" or "14:16". Negative values can be used to represent days counting from the end of a month, e.g. "-1".
### fn withLocation

```jsonnet
withLocation(value)
```

PARAMETERS:

* **value** (`string`)

(String) Provides the time zone for the time interval. Must be a location in the IANA time zone database, e.g "America/New_York"
Provides the time zone for the time interval. Must be a location in the IANA time zone database, e.g "America/New_York"
### fn withMonths

```jsonnet
withMonths(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) An inclusive range of months, either numerical or full calendar month, e.g. "1:3", "december", or "may:august".
An inclusive range of months, either numerical or full calendar month, e.g. "1:3", "december", or "may:august".
### fn withMonthsMixin

```jsonnet
withMonthsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) An inclusive range of months, either numerical or full calendar month, e.g. "1:3", "december", or "may:august".
An inclusive range of months, either numerical or full calendar month, e.g. "1:3", "december", or "may:august".
### fn withTimes

```jsonnet
withTimes(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) The time ranges, represented in minutes, during which to mute in a given day. (see below for nested schema)
The time ranges, represented in minutes, during which to mute in a given day.
### fn withTimesMixin

```jsonnet
withTimesMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) The time ranges, represented in minutes, during which to mute in a given day. (see below for nested schema)
The time ranges, represented in minutes, during which to mute in a given day.
### fn withWeekdays

```jsonnet
withWeekdays(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) An inclusive range of weekdays, e.g. "monday" or "tuesday:thursday".
An inclusive range of weekdays, e.g. "monday" or "tuesday:thursday".
### fn withWeekdaysMixin

```jsonnet
withWeekdaysMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) An inclusive range of weekdays, e.g. "monday" or "tuesday:thursday".
An inclusive range of weekdays, e.g. "monday" or "tuesday:thursday".
### fn withYears

```jsonnet
withYears(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) A positive inclusive range of years, e.g. "2030" or "2025:2026".
A positive inclusive range of years, e.g. "2030" or "2025:2026".
### fn withYearsMixin

```jsonnet
withYearsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) A positive inclusive range of years, e.g. "2030" or "2025:2026".
A positive inclusive range of years, e.g. "2030" or "2025:2026".