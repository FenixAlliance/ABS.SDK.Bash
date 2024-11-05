# RolesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2SecurityServiceRolesGet**](RolesApi.md#apiV2SecurityServiceRolesGet) | **GET** /api/v2/SecurityService/Roles | 
[**apiV2SecurityServiceRolesPost**](RolesApi.md#apiV2SecurityServiceRolesPost) | **POST** /api/v2/SecurityService/Roles | 
[**apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete**](RolesApi.md#apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete) | **DELETE** /api/v2/SecurityService/Roles/{securityRoleId}/Applications/{applicationId} | 
[**apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost**](RolesApi.md#apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost) | **POST** /api/v2/SecurityService/Roles/{securityRoleId}/Applications/{applicationId} | 
[**apiV2SecurityServiceRolesSecurityRoleIdDelete**](RolesApi.md#apiV2SecurityServiceRolesSecurityRoleIdDelete) | **DELETE** /api/v2/SecurityService/Roles/{securityRoleId} | 
[**apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete**](RolesApi.md#apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete) | **DELETE** /api/v2/SecurityService/Roles/{securityRoleId}/Enrollments/{enrollmentId} | 
[**apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost**](RolesApi.md#apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost) | **POST** /api/v2/SecurityService/Roles/{securityRoleId}/Enrollments/{enrollmentId} | 
[**apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet**](RolesApi.md#apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet) | **GET** /api/v2/SecurityService/Roles/{securityRoleId}/Enrollments | 
[**apiV2SecurityServiceRolesSecurityRoleIdGet**](RolesApi.md#apiV2SecurityServiceRolesSecurityRoleIdGet) | **GET** /api/v2/SecurityService/Roles/{securityRoleId} | 
[**apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet**](RolesApi.md#apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet) | **GET** /api/v2/SecurityService/Roles/{securityRoleId}/Permissions | 
[**apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete**](RolesApi.md#apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete) | **DELETE** /api/v2/SecurityService/Roles/{securityRoleId}/Permissions/{securityPermissionId} | 
[**apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost**](RolesApi.md#apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost) | **POST** /api/v2/SecurityService/Roles/{securityRoleId}/Permissions/{securityPermissionId} | 
[**apiV2SecurityServiceRolesSecurityRoleIdPut**](RolesApi.md#apiV2SecurityServiceRolesSecurityRoleIdPut) | **PUT** /api/v2/SecurityService/Roles/{securityRoleId} | 



## apiV2SecurityServiceRolesGet



### Example

```bash
 apiV2SecurityServiceRolesGet  tenantId=value  api-version=value x-api-version:value
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


## apiV2SecurityServiceRolesPost



### Example

```bash
 apiV2SecurityServiceRolesPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **securityRoleCreateDto** | [**SecurityRoleCreateDto**](SecurityRoleCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete



### Example

```bash
 apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete  tenantId=value securityRoleId=value applicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityRoleId** | **string** |  | [default to null]
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


## apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost



### Example

```bash
 apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost  tenantId=value securityRoleId=value applicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityRoleId** | **string** |  | [default to null]
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


## apiV2SecurityServiceRolesSecurityRoleIdDelete



### Example

```bash
 apiV2SecurityServiceRolesSecurityRoleIdDelete  tenantId=value securityRoleId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
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


## apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete



### Example

```bash
 apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete  tenantId=value securityRoleId=value enrollmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityRoleId** | **string** |  | [default to null]
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


## apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost



### Example

```bash
 apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost  tenantId=value securityRoleId=value enrollmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityRoleId** | **string** |  | [default to null]
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


## apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet



### Example

```bash
 apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet  tenantId=value securityRoleId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityRoleId** | **string** |  | [default to null]
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


## apiV2SecurityServiceRolesSecurityRoleIdGet



### Example

```bash
 apiV2SecurityServiceRolesSecurityRoleIdGet  tenantId=value securityRoleId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityRoleId** | **string** |  | [default to null]
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


## apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet



### Example

```bash
 apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet  tenantId=value securityRoleId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityRoleId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SecurityPermissionDtoListEnvelope**](SecurityPermissionDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete



### Example

```bash
 apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete  tenantId=value securityRoleId=value securityPermissionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityRoleId** | **string** |  | [default to null]
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


## apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost



### Example

```bash
 apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost  tenantId=value securityRoleId=value securityPermissionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityRoleId** | **string** |  | [default to null]
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


## apiV2SecurityServiceRolesSecurityRoleIdPut



### Example

```bash
 apiV2SecurityServiceRolesSecurityRoleIdPut  tenantId=value securityRoleId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **securityRoleId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **securityRoleUpdateDto** | [**SecurityRoleUpdateDto**](SecurityRoleUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

