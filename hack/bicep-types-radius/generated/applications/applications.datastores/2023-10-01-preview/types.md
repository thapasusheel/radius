# Applications.Datastores @ 2023-10-01-preview

## Resource Applications.Datastores/mongoDatabases@2023-10-01-preview
* **Valid Scope(s)**: Unknown
### Properties
* **apiVersion**: '2023-10-01-preview' (ReadOnly, DeployTimeConstant): The resource api version
* **id**: string (ReadOnly, DeployTimeConstant): The resource id
* **location**: string (Required): The geo-location where the resource lives
* **name**: string (Required, DeployTimeConstant): The resource name
* **properties**: [MongoDatabaseProperties](#mongodatabaseproperties): MongoDatabase portable resource properties
* **systemData**: [SystemData](#systemdata) (ReadOnly): Metadata pertaining to creation and last modification of the resource.
* **tags**: [TrackedResourceTags](#trackedresourcetags): Resource tags.
* **type**: 'Applications.Datastores/mongoDatabases' (ReadOnly, DeployTimeConstant): The resource type

## Resource Applications.Datastores/redisCaches@2023-10-01-preview
* **Valid Scope(s)**: Unknown
### Properties
* **apiVersion**: '2023-10-01-preview' (ReadOnly, DeployTimeConstant): The resource api version
* **id**: string (ReadOnly, DeployTimeConstant): The resource id
* **location**: string (Required): The geo-location where the resource lives
* **name**: string (Required, DeployTimeConstant): The resource name
* **properties**: [RedisCacheProperties](#rediscacheproperties): RedisCache portable resource properties
* **systemData**: [SystemData](#systemdata) (ReadOnly): Metadata pertaining to creation and last modification of the resource.
* **tags**: [TrackedResourceTags](#trackedresourcetags): Resource tags.
* **type**: 'Applications.Datastores/redisCaches' (ReadOnly, DeployTimeConstant): The resource type

## Resource Applications.Datastores/sqlDatabases@2023-10-01-preview
* **Valid Scope(s)**: Unknown
### Properties
* **apiVersion**: '2023-10-01-preview' (ReadOnly, DeployTimeConstant): The resource api version
* **id**: string (ReadOnly, DeployTimeConstant): The resource id
* **location**: string (Required): The geo-location where the resource lives
* **name**: string (Required, DeployTimeConstant): The resource name
* **properties**: [SqlDatabaseProperties](#sqldatabaseproperties): SqlDatabase properties
* **systemData**: [SystemData](#systemdata) (ReadOnly): Metadata pertaining to creation and last modification of the resource.
* **tags**: [TrackedResourceTags](#trackedresourcetags): Resource tags.
* **type**: 'Applications.Datastores/sqlDatabases' (ReadOnly, DeployTimeConstant): The resource type

## Function listSecrets (Applications.Datastores/mongoDatabases@2023-10-01-preview)
* **Resource**: Applications.Datastores/mongoDatabases
* **ApiVersion**: 2023-10-01-preview
* **Input**: any
* **Output**: [MongoDatabaseListSecretsResult](#mongodatabaselistsecretsresult)

## Function listSecrets (Applications.Datastores/redisCaches@2023-10-01-preview)
* **Resource**: Applications.Datastores/redisCaches
* **ApiVersion**: 2023-10-01-preview
* **Input**: any
* **Output**: [RedisCacheListSecretsResult](#rediscachelistsecretsresult)

## Function listSecrets (Applications.Datastores/sqlDatabases@2023-10-01-preview)
* **Resource**: Applications.Datastores/sqlDatabases
* **ApiVersion**: 2023-10-01-preview
* **Input**: any
* **Output**: [SqlDatabaseListSecretsResult](#sqldatabaselistsecretsresult)

## MongoDatabaseProperties
### Properties
* **application**: string: Fully qualified resource ID for the application that the portable resource is consumed by (if applicable)
* **database**: string: Database name of the target Mongo database
* **environment**: string (Required): Fully qualified resource ID for the environment that the portable resource is linked to
* **host**: string: Host name of the target Mongo database
* **port**: int: Port value of the target Mongo database
* **provisioningState**: 'Accepted' | 'Canceled' | 'Deleting' | 'Failed' | 'Provisioning' | 'Succeeded' | 'Updating' (ReadOnly): Provisioning state of the portable resource at the time the operation was called
* **recipe**: [Recipe](#recipe): The recipe used to automatically deploy underlying infrastructure for a portable resource
* **resourceProvisioning**: 'manual' | 'recipe': Specifies how the underlying service/resource is provisioned and managed. Available values are 'recipe', where Radius manages the lifecycle of the resource through a Recipe, and 'manual', where a user manages the resource and provides the values.
* **resources**: [ResourceReference](#resourcereference)[]: List of the resource IDs that support the MongoDB resource
* **secrets**: [MongoDatabaseSecrets](#mongodatabasesecrets): The secret values for the given MongoDatabase resource
* **status**: [ResourceStatus](#resourcestatus) (ReadOnly): Status of a resource.
* **username**: string: Username to use when connecting to the target Mongo database

## Recipe
### Properties
* **name**: string (Required): The name of the recipe within the environment to use
* **parameters**: any: Any object

## ResourceReference
### Properties
* **id**: string (Required): Resource id of an existing resource

## MongoDatabaseSecrets
### Properties
* **connectionString**: string: Connection string used to connect to the target Mongo database
* **password**: string: Password to use when connecting to the target Mongo database

## ResourceStatus
### Properties
* **compute**: [EnvironmentCompute](#environmentcompute): Represents backing compute resource
* **outputResources**: [OutputResource](#outputresource)[]: Properties of an output resource

## EnvironmentCompute
* **Discriminator**: kind

### Base Properties
* **identity**: [IdentitySettings](#identitysettings): IdentitySettings is the external identity setting.
* **resourceId**: string: The resource id of the compute resource for application environment.
### KubernetesCompute
#### Properties
* **kind**: 'kubernetes' (Required): Discriminator property for EnvironmentCompute.
* **namespace**: string (Required): The namespace to use for the environment.


## IdentitySettings
### Properties
* **kind**: 'azure.com.workload' | 'undefined' (Required): IdentitySettingKind is the kind of supported external identity setting
* **oidcIssuer**: string: The URI for your compute platform's OIDC issuer
* **resource**: string: The resource ID of the provisioned identity

## OutputResource
### Properties
* **id**: string: The UCP resource ID of the underlying resource.
* **localId**: string: The logical identifier scoped to the owning Radius resource. This is only needed or used when a resource has a dependency relationship. LocalIDs do not have any particular format or meaning beyond being compared to determine dependency relationships.
* **radiusManaged**: bool: Determines whether Radius manages the lifecycle of the underlying resource.

## SystemData
### Properties
* **createdAt**: string: The timestamp of resource creation (UTC).
* **createdBy**: string: The identity that created the resource.
* **createdByType**: 'Application' | 'Key' | 'ManagedIdentity' | 'User': The type of identity that created the resource.
* **lastModifiedAt**: string: The timestamp of resource last modification (UTC)
* **lastModifiedBy**: string: The identity that last modified the resource.
* **lastModifiedByType**: 'Application' | 'Key' | 'ManagedIdentity' | 'User': The type of identity that created the resource.

## TrackedResourceTags
### Properties
### Additional Properties
* **Additional Properties Type**: string

## RedisCacheProperties
### Properties
* **application**: string: Fully qualified resource ID for the application that the portable resource is consumed by (if applicable)
* **environment**: string (Required): Fully qualified resource ID for the environment that the portable resource is linked to
* **host**: string: The host name of the target Redis cache
* **port**: int: The port value of the target Redis cache
* **provisioningState**: 'Accepted' | 'Canceled' | 'Deleting' | 'Failed' | 'Provisioning' | 'Succeeded' | 'Updating' (ReadOnly): Provisioning state of the portable resource at the time the operation was called
* **recipe**: [Recipe](#recipe): The recipe used to automatically deploy underlying infrastructure for a portable resource
* **resourceProvisioning**: 'manual' | 'recipe': Specifies how the underlying service/resource is provisioned and managed. Available values are 'recipe', where Radius manages the lifecycle of the resource through a Recipe, and 'manual', where a user manages the resource and provides the values.
* **resources**: [ResourceReference](#resourcereference)[]: List of the resource IDs that support the Redis resource
* **secrets**: [RedisCacheSecrets](#rediscachesecrets): The secret values for the given RedisCache resource
* **status**: [ResourceStatus](#resourcestatus) (ReadOnly): Status of a resource.
* **tls**: bool: Specifies whether to enable SSL connections to the Redis cache
* **username**: string: The username for Redis cache

## RedisCacheSecrets
### Properties
* **connectionString**: string: The connection string used to connect to the Redis cache
* **password**: string: The password for this Redis cache instance
* **url**: string: The URL used to connect to the Redis cache

## TrackedResourceTags
### Properties
### Additional Properties
* **Additional Properties Type**: string

## SqlDatabaseProperties
### Properties
* **application**: string: Fully qualified resource ID for the application that the portable resource is consumed by (if applicable)
* **database**: string: The name of the Sql database.
* **environment**: string (Required): Fully qualified resource ID for the environment that the portable resource is linked to
* **port**: int: Port value of the target Sql database
* **provisioningState**: 'Accepted' | 'Canceled' | 'Deleting' | 'Failed' | 'Provisioning' | 'Succeeded' | 'Updating' (ReadOnly): Provisioning state of the portable resource at the time the operation was called
* **recipe**: [Recipe](#recipe): The recipe used to automatically deploy underlying infrastructure for a portable resource
* **resourceProvisioning**: 'manual' | 'recipe': Specifies how the underlying service/resource is provisioned and managed. Available values are 'recipe', where Radius manages the lifecycle of the resource through a Recipe, and 'manual', where a user manages the resource and provides the values.
* **resources**: [ResourceReference](#resourcereference)[]: List of the resource IDs that support the SqlDatabase resource
* **secrets**: [SqlDatabaseSecrets](#sqldatabasesecrets): The secret values for the given SqlDatabase resource
* **server**: string: The fully qualified domain name of the Sql database.
* **status**: [ResourceStatus](#resourcestatus) (ReadOnly): Status of a resource.
* **username**: string: Username to use when connecting to the target Sql database

## SqlDatabaseSecrets
### Properties
* **connectionString**: string: Connection string used to connect to the target Sql database
* **password**: string: Password to use when connecting to the target Sql database

## TrackedResourceTags
### Properties
### Additional Properties
* **Additional Properties Type**: string

## MongoDatabaseListSecretsResult
### Properties
* **connectionString**: string (ReadOnly): Connection string used to connect to the target Mongo database
* **password**: string (ReadOnly): Password to use when connecting to the target Mongo database

## RedisCacheListSecretsResult
### Properties
* **connectionString**: string (ReadOnly): The connection string used to connect to the Redis cache
* **password**: string (ReadOnly): The password for this Redis cache instance
* **url**: string (ReadOnly): The URL used to connect to the Redis cache

## SqlDatabaseListSecretsResult
### Properties
* **connectionString**: string (ReadOnly): Connection string used to connect to the target Sql database
* **password**: string (ReadOnly): Password to use when connecting to the target Sql database

