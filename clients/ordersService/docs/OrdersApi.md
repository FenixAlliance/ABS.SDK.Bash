# OrdersApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**calculateOrder**](OrdersApi.md#calculateOrder) | **PUT** /api/v2/OrdersService/Orders/{orderId}/Calculate | Calculates totals for an order.
[**calculateOrderLine**](OrdersApi.md#calculateOrderLine) | **PUT** /api/v2/OrdersService/Orders/{orderId}/Lines/{orderLineId}/Calculate | Calculates totals for an order line.
[**createOrder**](OrdersApi.md#createOrder) | **POST** /api/v2/OrdersService/Orders | Creates a new order.
[**createOrderLine**](OrdersApi.md#createOrderLine) | **POST** /api/v2/OrdersService/Orders/{orderId}/Lines | Creates a new order line.
[**deleteOrder**](OrdersApi.md#deleteOrder) | **DELETE** /api/v2/OrdersService/Orders/{orderId} | Deletes an order.
[**deleteOrderLine**](OrdersApi.md#deleteOrderLine) | **DELETE** /api/v2/OrdersService/Orders/{orderId}/Lines/{orderLineId} | Deletes an order line.
[**getExtendedOrders**](OrdersApi.md#getExtendedOrders) | **GET** /api/v2/OrdersService/Orders/Extended | Gets a list of extended orders for a tenant.
[**getOrder**](OrdersApi.md#getOrder) | **GET** /api/v2/OrdersService/Orders/{orderId} | Gets a specific order by ID.
[**getOrderLine**](OrdersApi.md#getOrderLine) | **GET** /api/v2/OrdersService/Orders/{orderId}/Lines/{orderLineId} | Gets a specific order line.
[**getOrderLines**](OrdersApi.md#getOrderLines) | **GET** /api/v2/OrdersService/Orders/{orderId}/Lines | Gets order lines for an order.
[**getOrderLinesCount**](OrdersApi.md#getOrderLinesCount) | **GET** /api/v2/OrdersService/Orders/{orderId}/Lines/Count | Gets the count of order lines for an order.
[**getOrders**](OrdersApi.md#getOrders) | **GET** /api/v2/OrdersService/Orders | Gets a list of orders for a tenant.
[**getOrdersCount**](OrdersApi.md#getOrdersCount) | **GET** /api/v2/OrdersService/Orders/Count | Gets the count of orders for a tenant.
[**previewOrderEmailTemplate**](OrdersApi.md#previewOrderEmailTemplate) | **POST** /api/v2/OrdersService/Orders/{orderId}/Emails/Preview | Preview the rendered email for an Order.
[**sendOrderEmail**](OrdersApi.md#sendOrderEmail) | **POST** /api/v2/OrdersService/Orders/{orderId}/Emails/Send | Send a transactional email for an order.
[**submitCart**](OrdersApi.md#submitCart) | **POST** /api/v2/OrdersService/Orders/SubmitCart | Submits a cart and creates an order.
[**updateOrder**](OrdersApi.md#updateOrder) | **PUT** /api/v2/OrdersService/Orders/{orderId} | Updates an existing order.
[**updateOrderLine**](OrdersApi.md#updateOrderLine) | **PUT** /api/v2/OrdersService/Orders/{orderId}/Lines/{orderLineId} | Updates an order line.



## calculateOrder

Calculates totals for an order.

Performs calculation of totals and taxes for the specified order.

### Example

```bash
 calculateOrder  tenantId=value orderId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **orderId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## calculateOrderLine

Calculates totals for an order line.

Performs calculation of totals and taxes for the specified order line.

### Example

```bash
 calculateOrderLine  tenantId=value orderId=value orderLineId=value
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

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createOrder

Creates a new order.

Creates a new order for the specified tenant.

### Example

```bash
 createOrder  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **orderCreateDto** | [**OrderCreateDto**](OrderCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createOrderLine

Creates a new order line.

Creates a new line (item) for the specified order.

### Example

```bash
 createOrderLine  tenantId=value orderId=value
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

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteOrder

Deletes an order.

Deletes the specified order.

### Example

```bash
 deleteOrder  tenantId=value orderId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **orderId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteOrderLine

Deletes an order line.

Deletes the specified order line.

### Example

```bash
 deleteOrderLine  tenantId=value orderId=value orderLineId=value
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

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getExtendedOrders

Gets a list of extended orders for a tenant.

Retrieves a list of extended order details for the specified tenant.

### Example

```bash
 getExtendedOrders  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**ExtendedOrderDtoListEnvelope**](ExtendedOrderDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getOrder

Gets a specific order by ID.

Retrieves the details of a specific order by its ID.

### Example

```bash
 getOrder  tenantId=value orderId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **orderId** | **string** |  | [default to null]

### Return type

[**OrderDtoEnvelope**](OrderDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getOrderLine

Gets a specific order line.

Retrieves the details of a specific order line by its ID.

### Example

```bash
 getOrderLine  tenantId=value orderId=value orderLineId=value
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

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getOrderLines

Gets order lines for an order.

Retrieves the lines (items) for the specified order.

### Example

```bash
 getOrderLines  tenantId=value orderId=value  itemId=value
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

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getOrderLinesCount

Gets the count of order lines for an order.

Retrieves the total number of lines for the specified order.

### Example

```bash
 getOrderLinesCount  tenantId=value orderId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **orderId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getOrders

Gets a list of orders for a tenant.

Retrieves a list of orders for the specified tenant.

### Example

```bash
 getOrders  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**OrderDtoListEnvelope**](OrderDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getOrdersCount

Gets the count of orders for a tenant.

Retrieves the total number of orders for the specified tenant.

### Example

```bash
 getOrdersCount  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## previewOrderEmailTemplate

Preview the rendered email for an Order.

Previews the rendered email template for the specified order. Only users with the 'send_email' permission are permitted.

### Example

```bash
 previewOrderEmailTemplate orderId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **emailDispatchRequest** | [**EmailDispatchRequest**](EmailDispatchRequest.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sendOrderEmail

Send a transactional email for an order.

Sends a transactional email for the specified order. Only users with the 'send_email' permission are permitted.

### Example

```bash
 sendOrderEmail  tenantId=value orderId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **orderId** | **string** |  | [default to null]
 **emailDispatchRequest** | [**EmailDispatchRequest**](EmailDispatchRequest.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## submitCart

Submits a cart and creates an order.

Submits the specified cart and creates an order for the authenticated user.

### Example

```bash
 submitCart  cartId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]

### Return type

[**OrderDtoEnvelope**](OrderDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateOrder

Updates an existing order.

Updates the details of an existing order.

### Example

```bash
 updateOrder  tenantId=value orderId=value
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

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateOrderLine

Updates an order line.

Updates the details of a specific order line.

### Example

```bash
 updateOrderLine  tenantId=value orderId=value orderLineId=value
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

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

