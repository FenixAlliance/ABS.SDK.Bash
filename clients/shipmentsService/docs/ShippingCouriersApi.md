# ShippingCouriersApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createShippingCourierAsync**](ShippingCouriersApi.md#createShippingCourierAsync) | **POST** /api/v2/ShipmentsService/ShippingCouriers | Create a shipping courier
[**deleteShippingCourierAsync**](ShippingCouriersApi.md#deleteShippingCourierAsync) | **DELETE** /api/v2/ShipmentsService/ShippingCouriers/{courierId} | Delete a shipping courier
[**getShippingCourierByIdAsync**](ShippingCouriersApi.md#getShippingCourierByIdAsync) | **GET** /api/v2/ShipmentsService/ShippingCouriers/{courierId} | Get shipping courier by ID
[**getShippingCouriersAsync**](ShippingCouriersApi.md#getShippingCouriersAsync) | **GET** /api/v2/ShipmentsService/ShippingCouriers | Get all shipping couriers
[**getShippingCouriersCountAsync**](ShippingCouriersApi.md#getShippingCouriersCountAsync) | **GET** /api/v2/ShipmentsService/ShippingCouriers/Count | Get shipping couriers count
[**patchShippingCourierAsync**](ShippingCouriersApi.md#patchShippingCourierAsync) | **PATCH** /api/v2/ShipmentsService/ShippingCouriers/{courierId} | Patch a shipping courier
[**updateShippingCourierAsync**](ShippingCouriersApi.md#updateShippingCourierAsync) | **PUT** /api/v2/ShipmentsService/ShippingCouriers/{courierId} | Update a shipping courier



## createShippingCourierAsync

Create a shipping courier

Creates a new shipping courier.

### Example

```bash
 createShippingCourierAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **shippingCourierCreateDto** | [**ShippingCourierCreateDto**](ShippingCourierCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteShippingCourierAsync

Delete a shipping courier

Deletes a shipping courier.

### Example

```bash
 deleteShippingCourierAsync  tenantId=value courierId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **courierId** | **string** |  | [default to null]
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


## getShippingCourierByIdAsync

Get shipping courier by ID

Retrieves a specific shipping courier by its ID.

### Example

```bash
 getShippingCourierByIdAsync  tenantId=value courierId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **courierId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ShippingCourierDtoEnvelope**](ShippingCourierDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getShippingCouriersAsync

Get all shipping couriers

Retrieves all shipping couriers for the specified tenant.

### Example

```bash
 getShippingCouriersAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ShippingCourierDtoListEnvelope**](ShippingCourierDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getShippingCouriersCountAsync

Get shipping couriers count

Returns the count of shipping couriers for the specified tenant.

### Example

```bash
 getShippingCouriersCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchShippingCourierAsync

Patch a shipping courier

Partially updates an existing shipping courier using JSON Patch.

### Example

```bash
 patchShippingCourierAsync  tenantId=value courierId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **courierId** | **string** |  | [default to null]
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


## updateShippingCourierAsync

Update a shipping courier

Updates an existing shipping courier.

### Example

```bash
 updateShippingCourierAsync  tenantId=value courierId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **courierId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **shippingCourierUpdateDto** | [**ShippingCourierUpdateDto**](ShippingCourierUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

