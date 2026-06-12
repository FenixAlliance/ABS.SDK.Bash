# OAuthApplicationsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOAuthApplicationAsync**](OAuthApplicationsApi.md#createOAuthApplicationAsync) | **POST** /api/v2/SecurityService/OAuthApplications | Create a new OAuth application
[**deleteOAuthApplicationAsync**](OAuthApplicationsApi.md#deleteOAuthApplicationAsync) | **DELETE** /api/v2/SecurityService/OAuthApplications/{applicationId} | Delete an OAuth application
[**getOAuthApplicationByIdAsync**](OAuthApplicationsApi.md#getOAuthApplicationByIdAsync) | **GET** /api/v2/SecurityService/OAuthApplications/{applicationId} | Get OAuth application by ID
[**getOAuthApplicationsAsync**](OAuthApplicationsApi.md#getOAuthApplicationsAsync) | **GET** /api/v2/SecurityService/OAuthApplications | Get all OAuth applications
[**getOAuthApplicationsCountAsync**](OAuthApplicationsApi.md#getOAuthApplicationsCountAsync) | **GET** /api/v2/SecurityService/OAuthApplications/Count | Get OAuth applications count
[**getOAuthAuthorizationByIdAsync**](OAuthApplicationsApi.md#getOAuthAuthorizationByIdAsync) | **GET** /api/v2/SecurityService/OAuthApplications/Authorizations/{authorizationId} | Get OAuth authorization by ID
[**getOAuthAuthorizationsAsync**](OAuthApplicationsApi.md#getOAuthAuthorizationsAsync) | **GET** /api/v2/SecurityService/OAuthApplications/Authorizations | Get all OAuth authorizations
[**getOAuthAuthorizationsCountAsync**](OAuthApplicationsApi.md#getOAuthAuthorizationsCountAsync) | **GET** /api/v2/SecurityService/OAuthApplications/Authorizations/Count | Get OAuth authorizations count
[**patchOAuthApplicationAsync**](OAuthApplicationsApi.md#patchOAuthApplicationAsync) | **PATCH** /api/v2/SecurityService/OAuthApplications/{applicationId} | Patch an existing OAuth application
[**updateOAuthApplicationAsync**](OAuthApplicationsApi.md#updateOAuthApplicationAsync) | **PUT** /api/v2/SecurityService/OAuthApplications/{applicationId} | Update an existing OAuth application



## createOAuthApplicationAsync

Create a new OAuth application

Creates a new OAuth application for the specified tenant.

### Example

```bash
 createOAuthApplicationAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **oAuthApplicationCreateDto** | [**OAuthApplicationCreateDto**](OAuthApplicationCreateDto.md) |  |
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


## deleteOAuthApplicationAsync

Delete an OAuth application

Deletes an existing OAuth application.

### Example

```bash
 deleteOAuthApplicationAsync  tenantId=value applicationId=value  api-version=value x-api-version:value
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


## getOAuthApplicationByIdAsync

Get OAuth application by ID

Retrieves a specific OAuth application by its identifier.

### Example

```bash
 getOAuthApplicationByIdAsync  tenantId=value applicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **applicationId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**OAuthApplicationDtoEnvelope**](OAuthApplicationDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getOAuthApplicationsAsync

Get all OAuth applications

Retrieves all OAuth applications for the specified tenant.

### Example

```bash
 getOAuthApplicationsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**OAuthApplicationDtoListEnvelope**](OAuthApplicationDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getOAuthApplicationsCountAsync

Get OAuth applications count

Retrieves the count of OAuth applications for the specified tenant.

### Example

```bash
 getOAuthApplicationsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## getOAuthAuthorizationByIdAsync

Get OAuth authorization by ID

Retrieves a specific OAuth authorization by its identifier.

### Example

```bash
 getOAuthAuthorizationByIdAsync  tenantId=value authorizationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **authorizationId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**OAuthAuthorizationDtoEnvelope**](OAuthAuthorizationDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getOAuthAuthorizationsAsync

Get all OAuth authorizations

Retrieves all OAuth authorizations for the specified user.

### Example

```bash
 getOAuthAuthorizationsAsync  tenantId=value  userId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **userId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**OAuthAuthorizationDtoListEnvelope**](OAuthAuthorizationDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getOAuthAuthorizationsCountAsync

Get OAuth authorizations count

Retrieves the count of OAuth authorizations for the specified user.

### Example

```bash
 getOAuthAuthorizationsCountAsync  tenantId=value  userId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **userId** | **string** |  | [optional] [default to null]
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


## patchOAuthApplicationAsync

Patch an existing OAuth application

Partially updates an existing OAuth application using a JSON Patch document.

### Example

```bash
 patchOAuthApplicationAsync  tenantId=value applicationId=value  api-version=value x-api-version:value
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


## updateOAuthApplicationAsync

Update an existing OAuth application

Updates an existing OAuth application.

### Example

```bash
 updateOAuthApplicationAsync  tenantId=value applicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **applicationId** | **string** |  | [default to null]
 **oAuthApplicationUpdateDto** | [**OAuthApplicationUpdateDto**](OAuthApplicationUpdateDto.md) |  |
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

