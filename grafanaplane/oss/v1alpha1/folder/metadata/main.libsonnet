{
  '#withAnnotations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations' } },
  withAnnotations(value): {
    metadata+: {
      annotations: value,
    },
  },
  '#withAnnotationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations' } },
  withAnnotationsMixin(value): {
    metadata+: {
      annotations+: value,
    },
  },
  '#withClusterName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request.' } },
  withClusterName(value): {
    metadata+: {
      clusterName: value,
    },
  },
  '#withCreationTimestamp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.\n\nPopulated by the system. Read-only. Null for lists. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata' } },
  withCreationTimestamp(value): {
    metadata+: {
      creationTimestamp: value,
    },
  },
  '#withDeletionGracePeriodSeconds': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['integer'] }], help: 'Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.' } },
  withDeletionGracePeriodSeconds(value): {
    metadata+: {
      deletionGracePeriodSeconds: value,
    },
  },
  '#withDeletionTimestamp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource is expected to be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field, once the finalizers list is empty. As long as the finalizers list contains items, deletion is blocked. Once the deletionTimestamp is set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup, remove the pod from the API. In the presence of network partitions, this object may still exist after this timestamp, until an administrator or automated process can determine the resource is fully terminated. If not set, graceful deletion of the object has not been requested.\n\nPopulated by the system when a graceful deletion is requested. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata' } },
  withDeletionTimestamp(value): {
    metadata+: {
      deletionTimestamp: value,
    },
  },
  '#withFinalizers': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list.' } },
  withFinalizers(value): {
    metadata+: {
      finalizers:
        (if std.isArray(value)
         then value
         else [value]),
    },
  },
  '#withFinalizersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list.' } },
  withFinalizersMixin(value): {
    metadata+: {
      finalizers+:
        (if std.isArray(value)
         then value
         else [value]),
    },
  },
  '#withGenerateName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.\n\nIf this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).\n\nApplied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency' } },
  withGenerateName(value): {
    metadata+: {
      generateName: value,
    },
  },
  '#withGeneration': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['integer'] }], help: 'A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.' } },
  withGeneration(value): {
    metadata+: {
      generation: value,
    },
  },
  '#withLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels' } },
  withLabels(value): {
    metadata+: {
      labels: value,
    },
  },
  '#withLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels' } },
  withLabelsMixin(value): {
    metadata+: {
      labels+: value,
    },
  },
  '#withManagedFields': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like \"ci-cd\". The set of fields is always in the version that the workflow used when modifying the object." } },
  withManagedFields(value): {
    metadata+: {
      managedFields:
        (if std.isArray(value)
         then value
         else [value]),
    },
  },
  '#withManagedFieldsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like \"ci-cd\". The set of fields is always in the version that the workflow used when modifying the object." } },
  withManagedFieldsMixin(value): {
    metadata+: {
      managedFields+:
        (if std.isArray(value)
         then value
         else [value]),
    },
  },
  '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names' } },
  withName(value): {
    metadata+: {
      name: value,
    },
  },
  '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace defines the space within which each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.\n\nMust be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces' } },
  withNamespace(value): {
    metadata+: {
      namespace: value,
    },
  },
  '#withOwnerReferences': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.' } },
  withOwnerReferences(value): {
    metadata+: {
      ownerReferences:
        (if std.isArray(value)
         then value
         else [value]),
    },
  },
  '#withOwnerReferencesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.' } },
  withOwnerReferencesMixin(value): {
    metadata+: {
      ownerReferences+:
        (if std.isArray(value)
         then value
         else [value]),
    },
  },
  '#withResourceVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.\n\nPopulated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency' } },
  withResourceVersion(value): {
    metadata+: {
      resourceVersion: value,
    },
  },
  '#withSelfLink': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'SelfLink is a URL representing this object. Populated by the system. Read-only.\n\nDEPRECATED Kubernetes will stop propagating this field in 1.20 release and the field is planned to be removed in 1.21 release.' } },
  withSelfLink(value): {
    metadata+: {
      selfLink: value,
    },
  },
  '#withUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.\n\nPopulated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids' } },
  withUid(value): {
    metadata+: {
      uid: value,
    },
  },
}
