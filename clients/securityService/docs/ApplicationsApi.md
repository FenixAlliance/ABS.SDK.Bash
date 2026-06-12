# ApplicationsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBusinessApplicationAsync**](ApplicationsApi.md#createBusinessApplicationAsync) | **POST** /api/v2/SecurityService/Applications | Create a new business application
[**deleteBusinessApplicationAsync**](ApplicationsApi.md#deleteBusinessApplicationAsync) | **DELETE** /api/v2/SecurityService/Applications/{applicationId} | Delete a business application
[**getBusinessApplicationByIdAsync**](ApplicationsApi.md#getBusinessApplicationByIdAsync) | **GET** /api/v2/SecurityService/Applications/{applicationId} | Get business application by ID
[**getBusinessApplicationsAsync**](ApplicationsApi.md#getBusinessApplicationsAsync) | **GET** /api/v2/SecurityService/Applications | Get all business applications
[**getBusinessApplicationsCountAsync**](ApplicationsApi.md#getBusinessApplicationsCountAsync) | **GET** /api/v2/SecurityService/Applications/Count | Get business applications count
[**getPermissionsByApplicationAsync**](ApplicationsApi.md#getPermissionsByApplicationAsync) | **GET** /api/v2/SecurityService/Applications/{applicationId}/Permissions | Get permissions by application
[**getRolesByApplicationAsync**](ApplicationsApi.md#getRolesByApplicationAsync) | **GET** /api/v2/SecurityService/Applications/{applicationId}/Roles | Get roles by application
[**patchBusinessApplicationAsync**](ApplicationsApi.md#patchBusinessApplicationAsync) | **PATCH** /api/v2/SecurityService/Applications/{applicationId} | Patch an existing business application
[**updateBusinessApplicationAsync**](ApplicationsApi.md#updateBusinessApplicationAsync) | **PUT** /api/v2/SecurityService/Applications/{applicationId} | Update an existing business application



## createBusinessApplicationAsync

Create a new business application

Creates a new business application for the specified tenant.

### Example

```bash
 createBusinessApplicationAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **businessApplicationCreateDto** | [**BusinessApplicationCreateDto**](BusinessApplicationCreateDto.md) |  |
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


## deleteBusinessApplicationAsync

Delete a business application

Deletes an existing business application for the specified tenant.

### Example

```bash
 deleteBusinessApplicationAsync  tenantId=value applicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
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


## getBusinessApplicationByIdAsync

Get business application by ID

Retrieves a specific business application by its identifier.

### Example

```bash
 getBusinessApplicationByIdAsync  tenantId=value applicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **applicationId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BusinessApplicationDtoEnvelope**](BusinessApplicationDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBusinessApplicationsAsync

Get all business applications

Retrieves all business applications for the specified tenant.

### Example

```bash
 getBusinessApplicationsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BusinessApplicationDtoListEnvelope**](BusinessApplicationDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBusinessApplicationsCountAsync

Get business applications count

Retrieves the count of business applications for the specified tenant.

### Example

```bash
 getBusinessApplicationsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## getPermissionsByApplicationAsync

Get permissions by application

Retrieves all security permissions granted to a specific business application.

### Example

```bash
 getPermissionsByApplicationAsync  tenantId=value applicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **applicationId** | **string** |  | [default to null]
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


## getRolesByApplicationAsync

Get roles by application

Retrieves all security roles granted to a specific business application.

### Example

```bash
 getRolesByApplicationAsync  tenantId=value applicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **applicationId** | **string** |  | [default to null]
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


## patchBusinessApplicationAsync

Patch an existing business application

Partially updates an existing business application using a JSON Patch document.

### Example

```bash
 patchBusinessApplicationAsync  tenantId=value applicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **applicationId** | **string** |  | [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  |
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


## updateBusinessApplicationAsync

Update an existing business application

Updates an existing business application for the specified tenant.

### Example

```bash
 updateBusinessApplicationAsync  tenantId=value applicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **applicationId** | **string** |  | [default to null]
 **businessApplicationUpdateDto** | [**BusinessApplicationUpdateDto**](BusinessApplicationUpdateDto.md) |  |
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

