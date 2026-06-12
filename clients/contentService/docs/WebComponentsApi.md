# WebComponentsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countWebComponentsAsync**](WebComponentsApi.md#countWebComponentsAsync) | **GET** /api/v2/ContentService/WebComponents/Count | Count web components
[**createWebComponentAsync**](WebComponentsApi.md#createWebComponentAsync) | **POST** /api/v2/ContentService/WebComponents | Create a web component
[**deleteWebComponentAsync**](WebComponentsApi.md#deleteWebComponentAsync) | **DELETE** /api/v2/ContentService/WebComponents/{webComponentId} | Delete a web component
[**getWebComponentByIdAsync**](WebComponentsApi.md#getWebComponentByIdAsync) | **GET** /api/v2/ContentService/WebComponents/{webComponentId} | Get web component by ID
[**getWebComponentsAsync**](WebComponentsApi.md#getWebComponentsAsync) | **GET** /api/v2/ContentService/WebComponents | Get web components
[**updateWebComponentAsync**](WebComponentsApi.md#updateWebComponentAsync) | **PUT** /api/v2/ContentService/WebComponents/{webComponentId} | Update a web component



## countWebComponentsAsync

Count web components

Counts all web components for the specified tenant.

### Example

```bash
 countWebComponentsAsync  tenantId=value  api-version=value x-api-version:value
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


## createWebComponentAsync

Create a web component

Creates a new web component for the specified tenant.

### Example

```bash
 createWebComponentAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webComponentCreateDto** | [**WebComponentCreateDto**](WebComponentCreateDto.md) |  |
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


## deleteWebComponentAsync

Delete a web component

Deletes a web component for the specified tenant.

### Example

```bash
 deleteWebComponentAsync  tenantId=value webComponentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webComponentId** | **string** |  | [default to null]
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


## getWebComponentByIdAsync

Get web component by ID

Retrieves a specific web component by its identifier.

### Example

```bash
 getWebComponentByIdAsync  tenantId=value webComponentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webComponentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WebComponentDtoEnvelope**](WebComponentDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getWebComponentsAsync

Get web components

Retrieves all web components for the specified tenant.

### Example

```bash
 getWebComponentsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WebComponentDtoListEnvelope**](WebComponentDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateWebComponentAsync

Update a web component

Updates an existing web component for the specified tenant.

### Example

```bash
 updateWebComponentAsync  tenantId=value webComponentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webComponentId** | **string** |  | [default to null]
 **webComponentUpdateDto** | [**WebComponentUpdateDto**](WebComponentUpdateDto.md) |  |
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

