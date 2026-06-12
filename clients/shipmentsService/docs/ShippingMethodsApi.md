# ShippingMethodsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createShippingMethodAsync**](ShippingMethodsApi.md#createShippingMethodAsync) | **POST** /api/v2/ShipmentsService/ShippingMethods | Create a shipping method
[**deleteShippingMethodAsync**](ShippingMethodsApi.md#deleteShippingMethodAsync) | **DELETE** /api/v2/ShipmentsService/ShippingMethods/{methodId} | Delete a shipping method
[**getShippingMethodByIdAsync**](ShippingMethodsApi.md#getShippingMethodByIdAsync) | **GET** /api/v2/ShipmentsService/ShippingMethods/{methodId} | Get shipping method by ID
[**getShippingMethodsAsync**](ShippingMethodsApi.md#getShippingMethodsAsync) | **GET** /api/v2/ShipmentsService/ShippingMethods | Get all shipping methods
[**getShippingMethodsCountAsync**](ShippingMethodsApi.md#getShippingMethodsCountAsync) | **GET** /api/v2/ShipmentsService/ShippingMethods/Count | Get shipping methods count
[**patchShippingMethodAsync**](ShippingMethodsApi.md#patchShippingMethodAsync) | **PATCH** /api/v2/ShipmentsService/ShippingMethods/{methodId} | Patch a shipping method
[**updateShippingMethodAsync**](ShippingMethodsApi.md#updateShippingMethodAsync) | **PUT** /api/v2/ShipmentsService/ShippingMethods/{methodId} | Update a shipping method



## createShippingMethodAsync

Create a shipping method

Creates a new shipping method.

### Example

```bash
 createShippingMethodAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **shippingMethodCreateDto** | [**ShippingMethodCreateDto**](ShippingMethodCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteShippingMethodAsync

Delete a shipping method

Deletes a shipping method.

### Example

```bash
 deleteShippingMethodAsync  tenantId=value methodId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **methodId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getShippingMethodByIdAsync

Get shipping method by ID

Retrieves a specific shipping method.

### Example

```bash
 getShippingMethodByIdAsync  tenantId=value methodId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **methodId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ShippingMethodDtoEnvelope**](ShippingMethodDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getShippingMethodsAsync

Get all shipping methods

Retrieves all shipping methods for the specified tenant.

### Example

```bash
 getShippingMethodsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ShippingMethodDtoListEnvelope**](ShippingMethodDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getShippingMethodsCountAsync

Get shipping methods count

Returns the count of shipping methods.

### Example

```bash
 getShippingMethodsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchShippingMethodAsync

Patch a shipping method

Partially updates an existing shipping method using JSON Patch.

### Example

```bash
 patchShippingMethodAsync  tenantId=value methodId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **methodId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateShippingMethodAsync

Update a shipping method

Updates an existing shipping method.

### Example

```bash
 updateShippingMethodAsync  tenantId=value methodId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **methodId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **shippingMethodUpdateDto** | [**ShippingMethodUpdateDto**](ShippingMethodUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

