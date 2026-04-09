# ApplicationsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getApplication**](ApplicationsApi.md#getApplication) | **GET** /api/v2/Applications/{appId} | Get application by ID
[**getGrantedEnrollmentPermissions**](ApplicationsApi.md#getGrantedEnrollmentPermissions) | **GET** /api/v2/Applications/{appId}/GrantedRoles/{securityRoleId}/GrantedPermissions | Get granted permissions for an application role
[**getGrantedTenantPermissions**](ApplicationsApi.md#getGrantedTenantPermissions) | **GET** /api/v2/Applications/{appId}/GrantedPermissions | Get granted tenant permissions for an application
[**getGrantedTenantRoles**](ApplicationsApi.md#getGrantedTenantRoles) | **GET** /api/v2/Applications/{appId}/GrantedRoles | Get granted tenant roles for an application
[**getRequiredPermissions**](ApplicationsApi.md#getRequiredPermissions) | **GET** /api/v2/Applications/{appId}/RequiredPermissions | Get required permissions for an application



## getApplication

Get application by ID

Retrieves an application by its unique identifier.

### Example

```bash
 getApplication appId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getGrantedEnrollmentPermissions

Get granted permissions for an application role

Retrieves the list of permissions granted through a specific security role for the specified application.

### Example

```bash
 getGrantedEnrollmentPermissions appId=value securityRoleId=value  enrollmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **string** |  | [default to null]
 **securityRoleId** | **string** |  | [default to null]
 **enrollmentId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getGrantedTenantPermissions

Get granted tenant permissions for an application

Retrieves the list of permissions granted to the specified application within a tenant context.

### Example

```bash
 getGrantedTenantPermissions appId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getGrantedTenantRoles

Get granted tenant roles for an application

Retrieves the list of security roles granted to the specified application within a tenant context.

### Example

```bash
 getGrantedTenantRoles appId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getRequiredPermissions

Get required permissions for an application

Retrieves the list of permissions required by the specified application.

### Example

```bash
 getRequiredPermissions appId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

