# ApplicationPrincipalsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**disableGlobalApplicationPrincipal**](ApplicationPrincipalsApi.md#disableGlobalApplicationPrincipal) | **POST** /api/v2/SystemService/ApplicationPrincipals/{principalId}/Disable | Disable an application principal (global)
[**enableGlobalApplicationPrincipal**](ApplicationPrincipalsApi.md#enableGlobalApplicationPrincipal) | **POST** /api/v2/SystemService/ApplicationPrincipals/{principalId}/Enable | Enable an application principal (global)
[**getGlobalApplicationPrincipal**](ApplicationPrincipalsApi.md#getGlobalApplicationPrincipal) | **GET** /api/v2/SystemService/ApplicationPrincipals/{principalId} | Get one application principal (any tenant)
[**getGlobalApplicationPrincipals**](ApplicationPrincipalsApi.md#getGlobalApplicationPrincipals) | **GET** /api/v2/SystemService/ApplicationPrincipals | List application principals across all tenants
[**getGlobalApplicationPrincipalsCount**](ApplicationPrincipalsApi.md#getGlobalApplicationPrincipalsCount) | **GET** /api/v2/SystemService/ApplicationPrincipals/Count | Count application principals across all tenants
[**grantGlobalApplicationPrincipalPermission**](ApplicationPrincipalsApi.md#grantGlobalApplicationPrincipalPermission) | **POST** /api/v2/SystemService/ApplicationPrincipals/{principalId}/Permissions | Grant a permission to an application principal (any tenant)
[**provisionGlobalApplicationPrincipal**](ApplicationPrincipalsApi.md#provisionGlobalApplicationPrincipal) | **POST** /api/v2/SystemService/ApplicationPrincipals/Provision | Provision an application principal (any tenant, incl. system-locked)
[**provisionPaymentsConnector**](ApplicationPrincipalsApi.md#provisionPaymentsConnector) | **POST** /api/v2/SystemService/ApplicationPrincipals/PaymentsConnector | Provision the platform payments-connector identity
[**revokeGlobalApplicationPrincipalPermission**](ApplicationPrincipalsApi.md#revokeGlobalApplicationPrincipalPermission) | **DELETE** /api/v2/SystemService/ApplicationPrincipals/{principalId}/Permissions/{permission} | Revoke a permission from an application principal (any tenant)
[**suspendGlobalApplicationPrincipal**](ApplicationPrincipalsApi.md#suspendGlobalApplicationPrincipal) | **POST** /api/v2/SystemService/ApplicationPrincipals/{principalId}/Suspend | Suspend an application principal (global)



## disableGlobalApplicationPrincipal

Disable an application principal (global)

Disables the application principal; dependent unattended execution fails closed (applies to system-locked principals here). tenantId scopes the action to a tenant the principal is enrolled in (required). Global-administrator only.

### Example

```bash
 disableGlobalApplicationPrincipal principalId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principalId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## enableGlobalApplicationPrincipal

Enable an application principal (global)

Reinstates the application principal to the Active lifecycle state (applies to system-locked principals here). tenantId scopes the action to a tenant the principal is enrolled in (required). Global-administrator only.

### Example

```bash
 enableGlobalApplicationPrincipal principalId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principalId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getGlobalApplicationPrincipal

Get one application principal (any tenant)

Returns one application principal's detail by id: owning application, an enrollment, the system-locked flag, lifecycle status, and that enrollment's explicit least-privilege grants. Pass tenantId to select the enrollment for a multi-tenant principal; when omitted the principal's first enrollment is used. Global-administrator only.

### Example

```bash
 getGlobalApplicationPrincipal principalId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principalId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ApplicationPrincipalDetailDtoEnvelope**](ApplicationPrincipalDetailDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getGlobalApplicationPrincipals

List application principals across all tenants

Lists every non-human application principal enrollment across ALL tenants (payload-safe fields only), including the platform-managed (system-locked) connectors. Use OData to scope — e.g. $filter=SystemLocked eq true for the platform connectors or TenantId eq '{guid}' for one tenant — and to page/order. Global-administrator only.

### Example

```bash
 getGlobalApplicationPrincipals  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **applicationPrincipalDtoCollectionQueryParameters** | [**ApplicationPrincipalDtoCollectionQueryParameters**](ApplicationPrincipalDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**ApplicationPrincipalDtoIReadOnlyListEnvelope**](ApplicationPrincipalDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getGlobalApplicationPrincipalsCount

Count application principals across all tenants

Returns the count of application principal enrollments across ALL tenants under the same OData shaping as the list read (e.g. $filter=SystemLocked eq true). Global-administrator only.

### Example

```bash
 getGlobalApplicationPrincipalsCount  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **applicationPrincipalDtoCollectionQueryParameters** | [**ApplicationPrincipalDtoCollectionQueryParameters**](ApplicationPrincipalDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## grantGlobalApplicationPrincipalPermission

Grant a permission to an application principal (any tenant)

Grants a single least-privilege permission to the application principal's enrollment in the tenantId tenant (grants are per-tenant, so tenantId is required). Owner/admin/wildcard/*_manage permissions are rejected even for a global admin (least-privilege by construction). Global-administrator only.

### Example

```bash
 grantGlobalApplicationPrincipalPermission principalId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principalId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **applicationPrincipalPermissionRequestDto** | [**ApplicationPrincipalPermissionRequestDto**](ApplicationPrincipalPermissionRequestDto.md) |  |
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## provisionGlobalApplicationPrincipal

Provision an application principal (any tenant, incl. system-locked)

Idempotently provisions the application principal (and its own least-privilege enrollment) for a governed business application. tenantId selects the target tenant (defaults to the platform/root tenant). Unlike the per-tenant lane, a system-locked platform application is provisionable here. Global-administrator only.

### Example

```bash
 provisionGlobalApplicationPrincipal  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationPrincipalProvisionRequestDto** | [**ApplicationPrincipalProvisionRequestDto**](ApplicationPrincipalProvisionRequestDto.md) |  |
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ApplicationPrincipalProvisioningResultDtoEnvelope**](ApplicationPrincipalProvisioningResultDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## provisionPaymentsConnector

Provision the platform payments-connector identity

Idempotently stands up the platform payments-connector identity — its well-known business application, its application principal, and its own least-privilege enrollment (payments_create/payments_update/journals_post). tenantId selects the target tenant (defaults to the platform/root tenant). The provisioned connector then appears in this global list and (for its tenant) the per-tenant list. Global-administrator only.

### Example

```bash
 provisionPaymentsConnector  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ApplicationPrincipalProvisioningResultDtoEnvelope**](ApplicationPrincipalProvisioningResultDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## revokeGlobalApplicationPrincipalPermission

Revoke a permission from an application principal (any tenant)

Revokes a direct permission grant from the application principal's enrollment in the tenantId tenant (required). Idempotent. Global-administrator only.

### Example

```bash
 revokeGlobalApplicationPrincipalPermission principalId=value permission=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principalId** | **string** |  | [default to null]
 **permission** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## suspendGlobalApplicationPrincipal

Suspend an application principal (global)

Temporarily suspends the application principal; its identity is retained but it cannot act until reinstated (applies to system-locked principals here). tenantId scopes the action to a tenant the principal is enrolled in (required). Global-administrator only.

### Example

```bash
 suspendGlobalApplicationPrincipal principalId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **principalId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

