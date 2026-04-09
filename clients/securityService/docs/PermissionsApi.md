# PermissionsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignPermissionToBusinessApplicationAsync**](PermissionsApi.md#assignPermissionToBusinessApplicationAsync) | **POST** /api/v2/SecurityService/Permissions/{securityPermissionId}/Applications/{applicationId} | Assign a permission to a business application
[**assignPermissionToEnrollmentAsync**](PermissionsApi.md#assignPermissionToEnrollmentAsync) | **POST** /api/v2/SecurityService/Permissions/{securityPermissionId}/Enrollments/{enrollmentId} | Assign a permission to an enrollment
[**assignRoleToPermissionAsync**](PermissionsApi.md#assignRoleToPermissionAsync) | **POST** /api/v2/SecurityService/Permissions/{securityPermissionId}/Roles/{securityRoleId} | Assign a role to a permission
[**createPermissionAsync**](PermissionsApi.md#createPermissionAsync) | **POST** /api/v2/SecurityService/Permissions | Create a new permission
[**deletePermissionAsync**](PermissionsApi.md#deletePermissionAsync) | **DELETE** /api/v2/SecurityService/Permissions/{securityPermissionId} | Delete an existing permission
[**getApplicationsByPermissionAsync**](PermissionsApi.md#getApplicationsByPermissionAsync) | **GET** /api/v2/SecurityService/Permissions/{securityPermissionId}/Applications | Get applications by permission
[**getEnrollmentsByPermissionAsync**](PermissionsApi.md#getEnrollmentsByPermissionAsync) | **GET** /api/v2/SecurityService/Permissions/{securityPermissionId}/Enrollments | Get enrollments by permission
[**getPermissionAsync**](PermissionsApi.md#getPermissionAsync) | **GET** /api/v2/SecurityService/Permissions/{securityPermissionId} | Get permission by ID
[**getPermissionsAsync**](PermissionsApi.md#getPermissionsAsync) | **GET** /api/v2/SecurityService/Permissions | Get all permissions
[**getPermissionsByEnrollmentAsync**](PermissionsApi.md#getPermissionsByEnrollmentAsync) | **GET** /api/v2/SecurityService/Permissions/ByEnrollment/{enrollmentId} | Get permissions by enrollment
[**getPermissionsCountAsync**](PermissionsApi.md#getPermissionsCountAsync) | **GET** /api/v2/SecurityService/Permissions/Count | Get permissions count
[**getRolesByPermissionAsync**](PermissionsApi.md#getRolesByPermissionAsync) | **GET** /api/v2/SecurityService/Permissions/{securityPermissionId}/Roles | Get roles by permission
[**revokePermissionFromBusinessApplicationAsync**](PermissionsApi.md#revokePermissionFromBusinessApplicationAsync) | **DELETE** /api/v2/SecurityService/Permissions/{securityPermissionId}/Applications/{applicationId} | Revoke a permission from a business application
[**revokePermissionFromEnrollmentAsync**](PermissionsApi.md#revokePermissionFromEnrollmentAsync) | **DELETE** /api/v2/SecurityService/Permissions/{securityPermissionId}/Enrollments/{enrollmentId} | Revoke a permission from an enrollment
[**revokeRoleFromPermissionAsync**](PermissionsApi.md#revokeRoleFromPermissionAsync) | **DELETE** /api/v2/SecurityService/Permissions/{securityPermissionId}/Roles/{securityRoleId} | Revoke a role from a permission
[**updatePermissionAsync**](PermissionsApi.md#updatePermissionAsync) | **PUT** /api/v2/SecurityService/Permissions/{securityPermissionId} | Update an existing permission



## assignPermissionToBusinessApplicationAsync

Assign a permission to a business application

Assigns a security permission to a business application.

### Example

```bash
 assignPermissionToBusinessApplicationAsync  tenantId=value securityPermissionId=value applicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityPermissionId** | **string** |  | [default to null]
 **applicationId** | **string** |  | [default to null]
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


## assignPermissionToEnrollmentAsync

Assign a permission to an enrollment

Assigns a security permission to a tenant enrollment.

### Example

```bash
 assignPermissionToEnrollmentAsync  tenantId=value securityPermissionId=value enrollmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityPermissionId** | **string** |  | [default to null]
 **enrollmentId** | **string** |  | [default to null]
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


## assignRoleToPermissionAsync

Assign a role to a permission

Assigns a security role to a security permission.

### Example

```bash
 assignRoleToPermissionAsync  tenantId=value securityPermissionId=value securityRoleId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityPermissionId** | **string** |  | [default to null]
 **securityRoleId** | **string** |  | [default to null]
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


## createPermissionAsync

Create a new permission

Creates a new security permission for the specified tenant.

### Example

```bash
 createPermissionAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityPermissionCreateDto** | [**SecurityPermissionCreateDto**](SecurityPermissionCreateDto.md) |  |
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


## deletePermissionAsync

Delete an existing permission

Deletes an existing security permission for the specified tenant.

### Example

```bash
 deletePermissionAsync  tenantId=value securityPermissionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityPermissionId** | **string** |  | [default to null]
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


## getApplicationsByPermissionAsync

Get applications by permission

Retrieves all business applications that have a specific permission granted.

### Example

```bash
 getApplicationsByPermissionAsync  tenantId=value securityPermissionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityPermissionId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BusinessApplicationSimpleDtoListEnvelope**](BusinessApplicationSimpleDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getEnrollmentsByPermissionAsync

Get enrollments by permission

Retrieves all tenant enrollments that have a specific permission.

### Example

```bash
 getEnrollmentsByPermissionAsync  tenantId=value securityPermissionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityPermissionId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TenantEnrollmentDtoListEnvelope**](TenantEnrollmentDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPermissionAsync

Get permission by ID

Retrieves a specific security permission by its ID.

### Example

```bash
 getPermissionAsync  tenantId=value securityPermissionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityPermissionId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SecurityPermissionDtoEnvelope**](SecurityPermissionDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPermissionsAsync

Get all permissions

Retrieves all security permissions for the specified tenant.

### Example

```bash
 getPermissionsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SecurityPermissionDtoListEnvelope**](SecurityPermissionDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPermissionsByEnrollmentAsync

Get permissions by enrollment

Retrieves all security permissions granted to a specific enrollment.

### Example

```bash
 getPermissionsByEnrollmentAsync  tenantId=value enrollmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **enrollmentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SecurityPermissionDtoListEnvelope**](SecurityPermissionDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPermissionsCountAsync

Get permissions count

Retrieves the count of security permissions for the specified tenant.

### Example

```bash
 getPermissionsCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getRolesByPermissionAsync

Get roles by permission

Retrieves all security roles that have a specific permission granted.

### Example

```bash
 getRolesByPermissionAsync  tenantId=value securityPermissionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityPermissionId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SecurityRoleDtoListEnvelope**](SecurityRoleDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## revokePermissionFromBusinessApplicationAsync

Revoke a permission from a business application

Revokes a security permission from a business application.

### Example

```bash
 revokePermissionFromBusinessApplicationAsync  tenantId=value securityPermissionId=value applicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityPermissionId** | **string** |  | [default to null]
 **applicationId** | **string** |  | [default to null]
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


## revokePermissionFromEnrollmentAsync

Revoke a permission from an enrollment

Revokes a security permission from a tenant enrollment.

### Example

```bash
 revokePermissionFromEnrollmentAsync  tenantId=value securityPermissionId=value enrollmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityPermissionId** | **string** |  | [default to null]
 **enrollmentId** | **string** |  | [default to null]
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


## revokeRoleFromPermissionAsync

Revoke a role from a permission

Revokes a security role from a security permission.

### Example

```bash
 revokeRoleFromPermissionAsync  tenantId=value securityPermissionId=value securityRoleId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityPermissionId** | **string** |  | [default to null]
 **securityRoleId** | **string** |  | [default to null]
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


## updatePermissionAsync

Update an existing permission

Updates an existing security permission for the specified tenant.

### Example

```bash
 updatePermissionAsync  tenantId=value securityPermissionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityPermissionId** | **string** |  | [default to null]
 **securityPermissionUpdateDto** | [**SecurityPermissionUpdateDto**](SecurityPermissionUpdateDto.md) |  |
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

