# storeConfig



## Subpackages

* [status.conditions](status/conditions.md)

## Index

* [`fn new(name)`](#fn-new)
* [`fn withApiVersion()`](#fn-withapiversion)
* [`fn withKind()`](#fn-withkind)
* [`fn withMetadata(value)`](#fn-withmetadata)
* [`fn withMetadataMixin(value)`](#fn-withmetadatamixin)
* [`fn withSpec(value)`](#fn-withspec)
* [`fn withSpecMixin(value)`](#fn-withspecmixin)
* [`fn withStatus(value)`](#fn-withstatus)
* [`fn withStatusMixin(value)`](#fn-withstatusmixin)
* [`obj metadata`](#obj-metadata)
  * [`fn withAnnotations(value)`](#fn-metadatawithannotations)
  * [`fn withAnnotationsMixin(value)`](#fn-metadatawithannotationsmixin)
  * [`fn withClusterName(value)`](#fn-metadatawithclustername)
  * [`fn withCreationTimestamp(value)`](#fn-metadatawithcreationtimestamp)
  * [`fn withDeletionGracePeriodSeconds(value)`](#fn-metadatawithdeletiongraceperiodseconds)
  * [`fn withDeletionTimestamp(value)`](#fn-metadatawithdeletiontimestamp)
  * [`fn withFinalizers(value)`](#fn-metadatawithfinalizers)
  * [`fn withFinalizersMixin(value)`](#fn-metadatawithfinalizersmixin)
  * [`fn withGenerateName(value)`](#fn-metadatawithgeneratename)
  * [`fn withGeneration(value)`](#fn-metadatawithgeneration)
  * [`fn withLabels(value)`](#fn-metadatawithlabels)
  * [`fn withLabelsMixin(value)`](#fn-metadatawithlabelsmixin)
  * [`fn withManagedFields(value)`](#fn-metadatawithmanagedfields)
  * [`fn withManagedFieldsMixin(value)`](#fn-metadatawithmanagedfieldsmixin)
  * [`fn withName(value)`](#fn-metadatawithname)
  * [`fn withNamespace(value)`](#fn-metadatawithnamespace)
  * [`fn withOwnerReferences(value)`](#fn-metadatawithownerreferences)
  * [`fn withOwnerReferencesMixin(value)`](#fn-metadatawithownerreferencesmixin)
  * [`fn withResourceVersion(value)`](#fn-metadatawithresourceversion)
  * [`fn withSelfLink(value)`](#fn-metadatawithselflink)
  * [`fn withUid(value)`](#fn-metadatawithuid)
* [`obj spec`](#obj-spec)
  * [`fn withDefaultScope(value)`](#fn-specwithdefaultscope)
  * [`fn withKubernetes(value)`](#fn-specwithkubernetes)
  * [`fn withKubernetesMixin(value)`](#fn-specwithkubernetesmixin)
  * [`fn withPlugin(value)`](#fn-specwithplugin)
  * [`fn withPluginMixin(value)`](#fn-specwithpluginmixin)
  * [`fn withType(value="Kubernetes")`](#fn-specwithtype)
  * [`obj kubernetes`](#obj-speckubernetes)
    * [`fn withAuth(value)`](#fn-speckuberneteswithauth)
    * [`fn withAuthMixin(value)`](#fn-speckuberneteswithauthmixin)
    * [`obj auth`](#obj-speckubernetesauth)
      * [`fn withEnv(value)`](#fn-speckubernetesauthwithenv)
      * [`fn withEnvMixin(value)`](#fn-speckubernetesauthwithenvmixin)
      * [`fn withFs(value)`](#fn-speckubernetesauthwithfs)
      * [`fn withFsMixin(value)`](#fn-speckubernetesauthwithfsmixin)
      * [`fn withSecretRef(value)`](#fn-speckubernetesauthwithsecretref)
      * [`fn withSecretRefMixin(value)`](#fn-speckubernetesauthwithsecretrefmixin)
      * [`fn withSource(value)`](#fn-speckubernetesauthwithsource)
      * [`obj env`](#obj-speckubernetesauthenv)
        * [`fn withName(value)`](#fn-speckubernetesauthenvwithname)
      * [`obj fs`](#obj-speckubernetesauthfs)
        * [`fn withPath(value)`](#fn-speckubernetesauthfswithpath)
      * [`obj secretRef`](#obj-speckubernetesauthsecretref)
        * [`fn withKey(value)`](#fn-speckubernetesauthsecretrefwithkey)
        * [`fn withName(value)`](#fn-speckubernetesauthsecretrefwithname)
        * [`fn withNamespace(value)`](#fn-speckubernetesauthsecretrefwithnamespace)
  * [`obj plugin`](#obj-specplugin)
    * [`fn withConfigRef(value)`](#fn-specpluginwithconfigref)
    * [`fn withConfigRefMixin(value)`](#fn-specpluginwithconfigrefmixin)
    * [`fn withEndpoint(value)`](#fn-specpluginwithendpoint)
    * [`obj configRef`](#obj-specpluginconfigref)
      * [`fn withApiVersion(value)`](#fn-specpluginconfigrefwithapiversion)
      * [`fn withKind(value)`](#fn-specpluginconfigrefwithkind)
      * [`fn withName(value)`](#fn-specpluginconfigrefwithname)
* [`obj status`](#obj-status)
  * [`fn withConditions(value)`](#fn-statuswithconditions)
  * [`fn withConditionsMixin(value)`](#fn-statuswithconditionsmixin)

## Fields

### fn new

```jsonnet
new(name)
```

PARAMETERS:

* **name** (`string`)

`new` creates a new instance
### fn withApiVersion

```jsonnet
withApiVersion()
```


APIVersion defines the versioned schema of this representation of an object.
Servers should convert recognized schemas to the latest internal value, and
may reject unrecognized values.
More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
### fn withKind

```jsonnet
withKind()
```


Kind is a string value representing the REST resource this object represents.
Servers may infer this from the endpoint the client submits requests to.
Cannot be updated.
In CamelCase.
More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
### fn withMetadata

```jsonnet
withMetadata(value)
```

PARAMETERS:

* **value** (`object`)

ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
### fn withMetadataMixin

```jsonnet
withMetadataMixin(value)
```

PARAMETERS:

* **value** (`object`)

ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
### fn withSpec

```jsonnet
withSpec(value)
```

PARAMETERS:

* **value** (`object`)

A StoreConfigSpec defines the desired state of a ProviderConfig.
### fn withSpecMixin

```jsonnet
withSpecMixin(value)
```

PARAMETERS:

* **value** (`object`)

A StoreConfigSpec defines the desired state of a ProviderConfig.
### fn withStatus

```jsonnet
withStatus(value)
```

PARAMETERS:

* **value** (`object`)

A StoreConfigStatus represents the status of a StoreConfig.
### fn withStatusMixin

```jsonnet
withStatusMixin(value)
```

PARAMETERS:

* **value** (`object`)

A StoreConfigStatus represents the status of a StoreConfig.
### obj metadata


#### fn metadata.withAnnotations

```jsonnet
metadata.withAnnotations(value)
```

PARAMETERS:

* **value** (`object`)

Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations
#### fn metadata.withAnnotationsMixin

```jsonnet
metadata.withAnnotationsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations
#### fn metadata.withClusterName

```jsonnet
metadata.withClusterName(value)
```

PARAMETERS:

* **value** (`string`)

The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request.
#### fn metadata.withCreationTimestamp

```jsonnet
metadata.withCreationTimestamp(value)
```

PARAMETERS:

* **value** (`string`)

CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.

Populated by the system. Read-only. Null for lists. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
#### fn metadata.withDeletionGracePeriodSeconds

```jsonnet
metadata.withDeletionGracePeriodSeconds(value)
```

PARAMETERS:

* **value** (`integer`)

Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.
#### fn metadata.withDeletionTimestamp

```jsonnet
metadata.withDeletionTimestamp(value)
```

PARAMETERS:

* **value** (`string`)

DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource is expected to be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field, once the finalizers list is empty. As long as the finalizers list contains items, deletion is blocked. Once the deletionTimestamp is set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup, remove the pod from the API. In the presence of network partitions, this object may still exist after this timestamp, until an administrator or automated process can determine the resource is fully terminated. If not set, graceful deletion of the object has not been requested.

Populated by the system when a graceful deletion is requested. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
#### fn metadata.withFinalizers

```jsonnet
metadata.withFinalizers(value)
```

PARAMETERS:

* **value** (`array`)

Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list.
#### fn metadata.withFinalizersMixin

```jsonnet
metadata.withFinalizersMixin(value)
```

PARAMETERS:

* **value** (`array`)

Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list.
#### fn metadata.withGenerateName

```jsonnet
metadata.withGenerateName(value)
```

PARAMETERS:

* **value** (`string`)

GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.

If this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).

Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency
#### fn metadata.withGeneration

```jsonnet
metadata.withGeneration(value)
```

PARAMETERS:

* **value** (`integer`)

A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.
#### fn metadata.withLabels

```jsonnet
metadata.withLabels(value)
```

PARAMETERS:

* **value** (`object`)

Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels
#### fn metadata.withLabelsMixin

```jsonnet
metadata.withLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels
#### fn metadata.withManagedFields

```jsonnet
metadata.withManagedFields(value)
```

PARAMETERS:

* **value** (`array`)

ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like "ci-cd". The set of fields is always in the version that the workflow used when modifying the object.
#### fn metadata.withManagedFieldsMixin

```jsonnet
metadata.withManagedFieldsMixin(value)
```

PARAMETERS:

* **value** (`array`)

ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like "ci-cd". The set of fields is always in the version that the workflow used when modifying the object.
#### fn metadata.withName

```jsonnet
metadata.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names
#### fn metadata.withNamespace

```jsonnet
metadata.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace defines the space within which each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.

Must be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces
#### fn metadata.withOwnerReferences

```jsonnet
metadata.withOwnerReferences(value)
```

PARAMETERS:

* **value** (`array`)

List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.
#### fn metadata.withOwnerReferencesMixin

```jsonnet
metadata.withOwnerReferencesMixin(value)
```

PARAMETERS:

* **value** (`array`)

List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.
#### fn metadata.withResourceVersion

```jsonnet
metadata.withResourceVersion(value)
```

PARAMETERS:

* **value** (`string`)

An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.

Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
#### fn metadata.withSelfLink

```jsonnet
metadata.withSelfLink(value)
```

PARAMETERS:

* **value** (`string`)

SelfLink is a URL representing this object. Populated by the system. Read-only.

DEPRECATED Kubernetes will stop propagating this field in 1.20 release and the field is planned to be removed in 1.21 release.
#### fn metadata.withUid

```jsonnet
metadata.withUid(value)
```

PARAMETERS:

* **value** (`string`)

UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.

Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids
### obj spec


#### fn spec.withDefaultScope

```jsonnet
spec.withDefaultScope(value)
```

PARAMETERS:

* **value** (`string`)

DefaultScope used for scoping secrets for "cluster-scoped" resources.
If store type is "Kubernetes", this would mean the default namespace to
store connection secrets for cluster scoped resources.
In case of "Vault", this would be used as the default parent path.
Typically, should be set as Crossplane installation namespace.
#### fn spec.withKubernetes

```jsonnet
spec.withKubernetes(value)
```

PARAMETERS:

* **value** (`object`)

Kubernetes configures a Kubernetes secret store.
If the "type" is "Kubernetes" but no config provided, in cluster config
will be used.
#### fn spec.withKubernetesMixin

```jsonnet
spec.withKubernetesMixin(value)
```

PARAMETERS:

* **value** (`object`)

Kubernetes configures a Kubernetes secret store.
If the "type" is "Kubernetes" but no config provided, in cluster config
will be used.
#### fn spec.withPlugin

```jsonnet
spec.withPlugin(value)
```

PARAMETERS:

* **value** (`object`)

Plugin configures External secret store as a plugin.
#### fn spec.withPluginMixin

```jsonnet
spec.withPluginMixin(value)
```

PARAMETERS:

* **value** (`object`)

Plugin configures External secret store as a plugin.
#### fn spec.withType

```jsonnet
spec.withType(value="Kubernetes")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Kubernetes"`
   - valid values: `"Kubernetes"`, `"Vault"`, `"Plugin"`

Type configures which secret store to be used. Only the configuration
block for this store will be used and others will be ignored if provided.
Default is Kubernetes.
#### obj spec.kubernetes


##### fn spec.kubernetes.withAuth

```jsonnet
spec.kubernetes.withAuth(value)
```

PARAMETERS:

* **value** (`object`)

Credentials used to connect to the Kubernetes API.
##### fn spec.kubernetes.withAuthMixin

```jsonnet
spec.kubernetes.withAuthMixin(value)
```

PARAMETERS:

* **value** (`object`)

Credentials used to connect to the Kubernetes API.
##### obj spec.kubernetes.auth


###### fn spec.kubernetes.auth.withEnv

```jsonnet
spec.kubernetes.auth.withEnv(value)
```

PARAMETERS:

* **value** (`object`)

Env is a reference to an environment variable that contains credentials
that must be used to connect to the provider.
###### fn spec.kubernetes.auth.withEnvMixin

```jsonnet
spec.kubernetes.auth.withEnvMixin(value)
```

PARAMETERS:

* **value** (`object`)

Env is a reference to an environment variable that contains credentials
that must be used to connect to the provider.
###### fn spec.kubernetes.auth.withFs

```jsonnet
spec.kubernetes.auth.withFs(value)
```

PARAMETERS:

* **value** (`object`)

Fs is a reference to a filesystem location that contains credentials that
must be used to connect to the provider.
###### fn spec.kubernetes.auth.withFsMixin

```jsonnet
spec.kubernetes.auth.withFsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Fs is a reference to a filesystem location that contains credentials that
must be used to connect to the provider.
###### fn spec.kubernetes.auth.withSecretRef

```jsonnet
spec.kubernetes.auth.withSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

A SecretRef is a reference to a secret key that contains the credentials
that must be used to connect to the provider.
###### fn spec.kubernetes.auth.withSecretRefMixin

```jsonnet
spec.kubernetes.auth.withSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

A SecretRef is a reference to a secret key that contains the credentials
that must be used to connect to the provider.
###### fn spec.kubernetes.auth.withSource

```jsonnet
spec.kubernetes.auth.withSource(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"None"`, `"Secret"`, `"Environment"`, `"Filesystem"`

Source of the credentials.
###### obj spec.kubernetes.auth.env


####### fn spec.kubernetes.auth.env.withName

```jsonnet
spec.kubernetes.auth.env.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name is the name of an environment variable.
###### obj spec.kubernetes.auth.fs


####### fn spec.kubernetes.auth.fs.withPath

```jsonnet
spec.kubernetes.auth.fs.withPath(value)
```

PARAMETERS:

* **value** (`string`)

Path is a filesystem path.
###### obj spec.kubernetes.auth.secretRef


####### fn spec.kubernetes.auth.secretRef.withKey

```jsonnet
spec.kubernetes.auth.secretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
####### fn spec.kubernetes.auth.secretRef.withName

```jsonnet
spec.kubernetes.auth.secretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
####### fn spec.kubernetes.auth.secretRef.withNamespace

```jsonnet
spec.kubernetes.auth.secretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.
#### obj spec.plugin


##### fn spec.plugin.withConfigRef

```jsonnet
spec.plugin.withConfigRef(value)
```

PARAMETERS:

* **value** (`object`)

ConfigRef contains store config reference info.
##### fn spec.plugin.withConfigRefMixin

```jsonnet
spec.plugin.withConfigRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

ConfigRef contains store config reference info.
##### fn spec.plugin.withEndpoint

```jsonnet
spec.plugin.withEndpoint(value)
```

PARAMETERS:

* **value** (`string`)

Endpoint is the endpoint of the gRPC server.
##### obj spec.plugin.configRef


###### fn spec.plugin.configRef.withApiVersion

```jsonnet
spec.plugin.configRef.withApiVersion(value)
```

PARAMETERS:

* **value** (`string`)

APIVersion of the referenced config.
###### fn spec.plugin.configRef.withKind

```jsonnet
spec.plugin.configRef.withKind(value)
```

PARAMETERS:

* **value** (`string`)

Kind of the referenced config.
###### fn spec.plugin.configRef.withName

```jsonnet
spec.plugin.configRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced config.
### obj status


#### fn status.withConditions

```jsonnet
status.withConditions(value)
```

PARAMETERS:

* **value** (`array`)

Conditions of the resource.
#### fn status.withConditionsMixin

```jsonnet
status.withConditionsMixin(value)
```

PARAMETERS:

* **value** (`array`)

Conditions of the resource.