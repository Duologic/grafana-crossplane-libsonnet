# oss



## Subpackages

* [folderPermission.permissions](folderPermission/permissions.md)

## Index

* [`obj dashboard`](#obj-dashboard)
  * [`fn new(name, dashboardObject, folderResource)`](#fn-dashboardnew)
* [`obj datasource`](#obj-datasource)
  * [`fn new(name, type)`](#fn-datasourcenew)
  * [`fn withBasicAuth(username)`](#fn-datasourcewithbasicauth)
  * [`fn withExternalName(externalName)`](#fn-datasourcewithexternalname)
  * [`fn withJsonData(configObject)`](#fn-datasourcewithjsondata)
  * [`fn withSecureJsonDataSecretRef(name, namespace, key)`](#fn-datasourcewithsecurejsondatasecretref)
* [`obj folder`](#obj-folder)
  * [`fn new(title)`](#fn-foldernew)
  * [`fn withDestroyIfNotEmpty(value=true)`](#fn-folderwithdestroyifnotempty)
  * [`fn withExternalName(externalName)`](#fn-folderwithexternalname)
  * [`fn withName(name)`](#fn-folderwithname)
  * [`fn withParentFolder(folderResource)`](#fn-folderwithparentfolder)
  * [`fn withTitle(title)`](#fn-folderwithtitle)
  * [`fn withUid(uid)`](#fn-folderwithuid)
* [`obj folderPermission`](#obj-folderpermission)
  * [`fn forFolder(folderResource)`](#fn-folderpermissionforfolder)
  * [`fn withPermissions(permissions)`](#fn-folderpermissionwithpermissions)
  * [`fn withPermissionsMixin(permissions)`](#fn-folderpermissionwithpermissionsmixin)
  * [`fn withTeamPermission(permissions)`](#fn-folderpermissionwithteampermission)
* [`obj team`](#obj-team)
  * [`fn new(name)`](#fn-teamnew)
  * [`fn withExternalName(externalName)`](#fn-teamwithexternalname)
  * [`fn withMembers(members)`](#fn-teamwithmembers)

## Fields

### obj dashboard


#### fn dashboard.new

```jsonnet
dashboard.new(name, dashboardObject, folderResource)
```

PARAMETERS:

* **name** (`string`)
* **dashboardObject** (`object`)
* **folderResource** (`object`)

`new` creates a dashboard.

- `name` is the Kubernetes object name
- `dashboardObject` is the actual JSON object of the dashboard
- `folderResource` can be created by `folder.new()`

### obj datasource


#### fn datasource.new

```jsonnet
datasource.new(name, type)
```

PARAMETERS:

* **name** (`string`)
* **type** (`string`)

`new` configures a datasource.

#### fn datasource.withBasicAuth

```jsonnet
datasource.withBasicAuth(username)
```

PARAMETERS:

* **username** (`string`)

`withBasicAuth` enables basic authentication for the data source, not that this'll likely expect secret referenced with `withSecureJsonDataSecretRef()` that has a key `basicAuthPassword`.

#### fn datasource.withExternalName

```jsonnet
datasource.withExternalName(externalName)
```

PARAMETERS:

* **externalName** (`string`)

`withExternalName` can be used to import an existing datasource.
#### fn datasource.withJsonData

```jsonnet
datasource.withJsonData(configObject)
```

PARAMETERS:

* **configObject** (`object`)

`withJsonData` configures options for the data source. To figure out what options a datasource has available, see its docs or inspect the network data when saving it from the Grafana UI. Note that keys in this map are usually camelCased.

#### fn datasource.withSecureJsonDataSecretRef

```jsonnet
datasource.withSecureJsonDataSecretRef(name, namespace, key)
```

PARAMETERS:

* **name** (`string`)
* **namespace** (`string`)
* **key** (`string`)

`withSecureJsonDataSecretRef` references a secret that configures sensitive options for the data source. To figure out what options a datasource has available, see its docs or inspect the network data when saving it from the Grafana UI. Note that keys in this map are usually camelCased.

### obj folder


#### fn folder.new

```jsonnet
folder.new(title)
```

PARAMETERS:

* **title** (`string`)

`new` creates a folder.

#### fn folder.withDestroyIfNotEmpty

```jsonnet
folder.withDestroyIfNotEmpty(value=true)
```

PARAMETERS:

* **value** (`bool`)
   - default value: `true`

`withDestroyIfNotEmpty` will turn off the protection that prevents a folder from being deleted when it still has dashboards in it. Turning it off will remove the folder regardless if it still contains dashboards.
#### fn folder.withExternalName

```jsonnet
folder.withExternalName(externalName)
```

PARAMETERS:

* **externalName** (`string`)

`withExternalName` can be used to import an existing folder, it can be either a UID or a numeric ID.
#### fn folder.withName

```jsonnet
folder.withName(name)
```

PARAMETERS:

* **name** (`string`)

`withName` sets Kubernetes object name
#### fn folder.withParentFolder

```jsonnet
folder.withParentFolder(folderResource)
```

PARAMETERS:

* **folderResource** (`object`)

`withParentFolder` sets the parent folder. `folderResource` can be created by `folder.new()`
#### fn folder.withTitle

```jsonnet
folder.withTitle(title)
```

PARAMETERS:

* **title** (`string`)

`withTitle` sets the human readable title in the UI
#### fn folder.withUid

```jsonnet
folder.withUid(uid)
```

PARAMETERS:

* **uid** (`string`)

`withUid` sets the identifier visible in the URL
### obj folderPermission


#### fn folderPermission.forFolder

```jsonnet
folderPermission.forFolder(folderResource)
```

PARAMETERS:

* **folderResource** (`object`)

`forFolder` configures the permission for a folder. `folderResource` can be created by `folder.new()`.
#### fn folderPermission.withPermissions

```jsonnet
folderPermission.withPermissions(permissions)
```

PARAMETERS:

* **permissions** (`array`)

`withPermissions` sets the permission items to add/update. Items that are omitted from the list will be removed.

#### fn folderPermission.withPermissionsMixin

```jsonnet
folderPermission.withPermissionsMixin(permissions)
```

PARAMETERS:

* **permissions** (`array`)

`withPermissionsMixin` adds permission items to add/update. Items that are omitted from the list will be removed.

#### fn folderPermission.withTeamPermission

```jsonnet
folderPermission.withTeamPermission(permissions)
```

PARAMETERS:

* **permissions** (`array`)

`withTeamPermission` adds the permission for a team resource to a folder. `teamResource` can be created by `team.new()`

### obj team


#### fn team.new

```jsonnet
team.new(name)
```

PARAMETERS:

* **name** (`string`)

`new` creates a team.
#### fn team.withExternalName

```jsonnet
team.withExternalName(externalName)
```

PARAMETERS:

* **externalName** (`string`)

`withExternalName` can be used to import an existing team.
#### fn team.withMembers

```jsonnet
team.withMembers(members)
```

PARAMETERS:

* **members** (`array`)

`withMembers` configures the team members, it expects a set of email addresses corresponding to users who should be given membership to the team.

Note: users specified here must already exist in Grafana.
