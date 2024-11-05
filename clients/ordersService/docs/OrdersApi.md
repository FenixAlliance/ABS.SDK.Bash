# OrdersApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2OrdersServiceOrdersCountGet**](OrdersApi.md#apiV2OrdersServiceOrdersCountGet) | **GET** /api/v2/OrdersService/Orders/Count | 
[**apiV2OrdersServiceOrdersExtendedGet**](OrdersApi.md#apiV2OrdersServiceOrdersExtendedGet) | **GET** /api/v2/OrdersService/Orders/Extended | 
[**apiV2OrdersServiceOrdersOrderIdCalculatePut**](OrdersApi.md#apiV2OrdersServiceOrdersOrderIdCalculatePut) | **PUT** /api/v2/OrdersService/Orders/{orderId}/Calculate | 
[**apiV2OrdersServiceOrdersOrderIdDelete**](OrdersApi.md#apiV2OrdersServiceOrdersOrderIdDelete) | **DELETE** /api/v2/OrdersService/Orders/{orderId} | 
[**apiV2OrdersServiceOrdersOrderIdLinesCountGet**](OrdersApi.md#apiV2OrdersServiceOrdersOrderIdLinesCountGet) | **GET** /api/v2/OrdersService/Orders/{orderId}/Lines/Count | 
[**apiV2OrdersServiceOrdersOrderIdLinesGet**](OrdersApi.md#apiV2OrdersServiceOrdersOrderIdLinesGet) | **GET** /api/v2/OrdersService/Orders/{orderId}/Lines | 
[**apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut**](OrdersApi.md#apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut) | **PUT** /api/v2/OrdersService/Orders/{orderId}/Lines/{orderLineId}/Calculate | 
[**apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete**](OrdersApi.md#apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete) | **DELETE** /api/v2/OrdersService/Orders/{orderId}/Lines/{orderLineId} | 
[**apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet**](OrdersApi.md#apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet) | **GET** /api/v2/OrdersService/Orders/{orderId}/Lines/{orderLineId} | 
[**apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut**](OrdersApi.md#apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut) | **PUT** /api/v2/OrdersService/Orders/{orderId}/Lines/{orderLineId} | 
[**apiV2OrdersServiceOrdersOrderIdLinesPost**](OrdersApi.md#apiV2OrdersServiceOrdersOrderIdLinesPost) | **POST** /api/v2/OrdersService/Orders/{orderId}/Lines | 
[**apiV2OrdersServiceOrdersOrderIdPut**](OrdersApi.md#apiV2OrdersServiceOrdersOrderIdPut) | **PUT** /api/v2/OrdersService/Orders/{orderId} | 
[**apiV2OrdersServiceOrdersPost**](OrdersApi.md#apiV2OrdersServiceOrdersPost) | **POST** /api/v2/OrdersService/Orders | 
[**apiV2OrdersServiceOrdersSubmitCartPost**](OrdersApi.md#apiV2OrdersServiceOrdersSubmitCartPost) | **POST** /api/v2/OrdersService/Orders/SubmitCart | 
[**getOrderAsync**](OrdersApi.md#getOrderAsync) | **GET** /api/v2/OrdersService/Orders/{orderId} | 
[**getOrdersAsync**](OrdersApi.md#getOrdersAsync) | **GET** /api/v2/OrdersService/Orders | 



## apiV2OrdersServiceOrdersCountGet



### Example

```bash
 apiV2OrdersServiceOrdersCountGet  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2OrdersServiceOrdersExtendedGet



### Example

```bash
 apiV2OrdersServiceOrdersExtendedGet  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**ExtendedOrderDtoListEnvelope**](ExtendedOrderDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2OrdersServiceOrdersOrderIdCalculatePut



### Example

```bash
 apiV2OrdersServiceOrdersOrderIdCalculatePut  tenantId=value orderId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **orderId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2OrdersServiceOrdersOrderIdDelete



### Example

```bash
 apiV2OrdersServiceOrdersOrderIdDelete  tenantId=value orderId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **orderId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2OrdersServiceOrdersOrderIdLinesCountGet



### Example

```bash
 apiV2OrdersServiceOrdersOrderIdLinesCountGet  tenantId=value orderId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **orderId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2OrdersServiceOrdersOrderIdLinesGet



### Example

```bash
 apiV2OrdersServiceOrdersOrderIdLinesGet  tenantId=value orderId=value  itemId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **orderId** | **string** |  | [default to null]
 **itemId** | **string** |  | [optional] [default to null]

### Return type

[**OrderLineDtoListEnvelope**](OrderLineDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut



### Example

```bash
 apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut  tenantId=value orderId=value orderLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **orderId** | **string** |  | [default to null]
 **orderLineId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete



### Example

```bash
 apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete  tenantId=value orderId=value orderLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **orderId** | **string** |  | [default to null]
 **orderLineId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet



### Example

```bash
 apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet  tenantId=value orderId=value orderLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **orderId** | **string** |  | [default to null]
 **orderLineId** | **string** |  | [default to null]

### Return type

[**OrderLineDtoEnvelope**](OrderLineDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut



### Example

```bash
 apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut  tenantId=value orderId=value orderLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **orderId** | **string** |  | [default to null]
 **orderLineId** | **string** |  | [default to null]
 **orderLineUpdateDto** | [**OrderLineUpdateDto**](OrderLineUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2OrdersServiceOrdersOrderIdLinesPost



### Example

```bash
 apiV2OrdersServiceOrdersOrderIdLinesPost  tenantId=value orderId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **orderId** | **string** |  | [default to null]
 **orderLineCreateDto** | [**OrderLineCreateDto**](OrderLineCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2OrdersServiceOrdersOrderIdPut



### Example

```bash
 apiV2OrdersServiceOrdersOrderIdPut  tenantId=value orderId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **orderId** | **string** |  | [default to null]
 **orderUpdateDto** | [**OrderUpdateDto**](OrderUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2OrdersServiceOrdersPost



### Example

```bash
 apiV2OrdersServiceOrdersPost  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **orderCreateDto** | [**OrderCreateDto**](OrderCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2OrdersServiceOrdersSubmitCartPost



### Example

```bash
 apiV2OrdersServiceOrdersSubmitCartPost  cartId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]

### Return type

[**OrderDtoEnvelope**](OrderDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getOrderAsync



### Example

```bash
 getOrderAsync  tenantId=value orderId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **orderId** | **string** |  | [default to null]

### Return type

[**OrderDtoEnvelope**](OrderDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getOrdersAsync



### Example

```bash
 getOrdersAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**OrderDtoListEnvelope**](OrderDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

