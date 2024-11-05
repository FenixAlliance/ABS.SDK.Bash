# PermissionsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2SecurityServicePermissionsGet**](PermissionsApi.md#apiV2SecurityServicePermissionsGet) | **GET** /api/v2/SecurityService/Permissions | 
[**apiV2SecurityServicePermissionsPost**](PermissionsApi.md#apiV2SecurityServicePermissionsPost) | **POST** /api/v2/SecurityService/Permissions | 
[**apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete**](PermissionsApi.md#apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete) | **DELETE** /api/v2/SecurityService/Permissions/{securityPermissionId}/Applications/{applicationId} | 
[**apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost**](PermissionsApi.md#apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost) | **POST** /api/v2/SecurityService/Permissions/{securityPermissionId}/Applications/{applicationId} | 
[**apiV2SecurityServicePermissionsSecurityPermissionIdDelete**](PermissionsApi.md#apiV2SecurityServicePermissionsSecurityPermissionIdDelete) | **DELETE** /api/v2/SecurityService/Permissions/{securityPermissionId} | 
[**apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete**](PermissionsApi.md#apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete) | **DELETE** /api/v2/SecurityService/Permissions/{securityPermissionId}/Enrollments/{enrollmentId} | 
[**apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost**](PermissionsApi.md#apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost) | **POST** /api/v2/SecurityService/Permissions/{securityPermissionId}/Enrollments/{enrollmentId} | 
[**apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet**](PermissionsApi.md#apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet) | **GET** /api/v2/SecurityService/Permissions/{securityPermissionId}/Enrollments | 
[**apiV2SecurityServicePermissionsSecurityPermissionIdGet**](PermissionsApi.md#apiV2SecurityServicePermissionsSecurityPermissionIdGet) | **GET** /api/v2/SecurityService/Permissions/{securityPermissionId} | 
[**apiV2SecurityServicePermissionsSecurityPermissionIdPut**](PermissionsApi.md#apiV2SecurityServicePermissionsSecurityPermissionIdPut) | **PUT** /api/v2/SecurityService/Permissions/{securityPermissionId} | 
[**apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete**](PermissionsApi.md#apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete) | **DELETE** /api/v2/SecurityService/Permissions/{securityPermissionId}/Roles/{securityRoleId} | 
[**apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost**](PermissionsApi.md#apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost) | **POST** /api/v2/SecurityService/Permissions/{securityPermissionId}/Roles/{securityRoleId} | 



## apiV2SecurityServicePermissionsGet



### Example

```bash
 apiV2SecurityServicePermissionsGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SecurityRoleDtoListEnvelope**](SecurityRoleDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SecurityServicePermissionsPost



### Example

```bash
 apiV2SecurityServicePermissionsPost  tenantId=value  api-version=value x-api-version:value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete



### Example

```bash
 apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete  tenantId=value securityPermissionId=value applicationId=value  api-version=value x-api-version:value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost



### Example

```bash
 apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost  tenantId=value securityPermissionId=value applicationId=value  api-version=value x-api-version:value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SecurityServicePermissionsSecurityPermissionIdDelete



### Example

```bash
 apiV2SecurityServicePermissionsSecurityPermissionIdDelete  tenantId=value securityPermissionId=value  api-version=value x-api-version:value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete



### Example

```bash
 apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete  tenantId=value securityPermissionId=value enrollmentId=value  api-version=value x-api-version:value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost



### Example

```bash
 apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost  tenantId=value securityPermissionId=value enrollmentId=value  api-version=value x-api-version:value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet



### Example

```bash
 apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet  tenantId=value securityPermissionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityPermissionId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TenantEnrolmentDtoListEnvelope**](TenantEnrolmentDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SecurityServicePermissionsSecurityPermissionIdGet



### Example

```bash
 apiV2SecurityServicePermissionsSecurityPermissionIdGet  tenantId=value securityPermissionId=value  api-version=value x-api-version:value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SecurityServicePermissionsSecurityPermissionIdPut



### Example

```bash
 apiV2SecurityServicePermissionsSecurityPermissionIdPut  tenantId=value securityPermissionId=value  api-version=value x-api-version:value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete



### Example

```bash
 apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete  tenantId=value securityPermissionId=value securityRoleId=value  api-version=value x-api-version:value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost



### Example

```bash
 apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost  tenantId=value securityPermissionId=value securityRoleId=value  api-version=value x-api-version:value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

