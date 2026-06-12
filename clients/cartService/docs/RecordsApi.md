# RecordsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**addItemToCart**](RecordsApi.md#addItemToCart) | **POST** /api/v2/CartService/Records/AddItem | Add an item to a cart
[**addProductToCartAsync**](RecordsApi.md#addProductToCartAsync) | **POST** /api/v2/CartService/Records | Add a product to a cart with tracking
[**clearCartAsync**](RecordsApi.md#clearCartAsync) | **POST** /api/v2/CartService/Records/ClearCart | Clear all items from a cart
[**decreaseItemCartRecord**](RecordsApi.md#decreaseItemCartRecord) | **PUT** /api/v2/CartService/Records/{recordId}/Decrease | Decrease cart record quantity
[**getItemCartRecord**](RecordsApi.md#getItemCartRecord) | **GET** /api/v2/CartService/Records/{recordId}/Details | Get a cart record by ID
[**getItemsInCartAsync**](RecordsApi.md#getItemsInCartAsync) | **GET** /api/v2/CartService/Records/{cartId} | Get all items in a cart
[**increaseItemCartRecord**](RecordsApi.md#increaseItemCartRecord) | **PUT** /api/v2/CartService/Records/{recordId}/Increase | Increase cart record quantity
[**isItemAlreadyInCart**](RecordsApi.md#isItemAlreadyInCart) | **GET** /api/v2/CartService/Records/IsInCart | Check if an item is in a cart
[**patchItemCartRecord**](RecordsApi.md#patchItemCartRecord) | **PATCH** /api/v2/CartService/Records/{recordId} | Patch a cart record
[**removeProductFromCartByParams**](RecordsApi.md#removeProductFromCartByParams) | **DELETE** /api/v2/CartService/Records | Remove a product from a cart
[**removeProductFromCartByRecordId**](RecordsApi.md#removeProductFromCartByRecordId) | **DELETE** /api/v2/CartService/Records/{recordId} | Remove a product from a cart by record ID
[**updateItemCartRecord**](RecordsApi.md#updateItemCartRecord) | **PUT** /api/v2/CartService/Records/{recordId} | Update a cart record



## addItemToCart

Add an item to a cart

Adds an item with the specified quantity to the given cart.

### Example

```bash
 addItemToCart  cartId=value  itemId=value  quantity=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [optional] [default to null]
 **itemId** | **string** |  | [optional] [default to null]
 **quantity** | **integer** |  | [optional] [default to null]
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


## addProductToCartAsync

Add a product to a cart with tracking

Adds a product to the cart using a request body with cart ID, product ID, and quantity.

### Example

```bash
 addProductToCartAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemCartRecordCreateDto** | [**ItemCartRecordCreateDto**](ItemCartRecordCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## clearCartAsync

Clear all items from a cart

Removes all item records from the specified cart.

### Example

```bash
 clearCartAsync  cartID=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartID** | **string** |  | [default to null]
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


## decreaseItemCartRecord

Decrease cart record quantity

Decreases the quantity of the specified item cart record by the given amount.

### Example

```bash
 decreaseItemCartRecord recordId=value  quantity=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recordId** | **string** |  | [default to null]
 **quantity** | **float** |  | [optional] [default to 1]
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


## getItemCartRecord

Get a cart record by ID

Retrieves the details of a specific item cart record.

### Example

```bash
 getItemCartRecord recordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recordId** | **string** |  | [default to null]
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


## getItemsInCartAsync

Get all items in a cart

Retrieves all item cart records for the specified cart.

### Example

```bash
 getItemsInCartAsync cartId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemCartRecordDtoListEnvelope**](ItemCartRecordDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## increaseItemCartRecord

Increase cart record quantity

Increases the quantity of the specified item cart record by the given amount.

### Example

```bash
 increaseItemCartRecord recordId=value  quantity=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recordId** | **string** |  | [default to null]
 **quantity** | **float** |  | [optional] [default to 1]
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


## isItemAlreadyInCart

Check if an item is in a cart

Returns a boolean indicating whether the specified item is already in the given cart.

### Example

```bash
 isItemAlreadyInCart  itemID=value  cartID=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemID** | **string** |  | [default to null]
 **cartID** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BooleanEnvelope**](BooleanEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchItemCartRecord

Patch a cart record

Partially updates the specified item cart record using a JSON Patch document.

### Example

```bash
 patchItemCartRecord recordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recordId** | **string** |  | [default to null]
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


## removeProductFromCartByParams

Remove a product from a cart

Removes a product from the cart using cart ID and product ID query parameters.

### Example

```bash
 removeProductFromCartByParams  cartId=value  productId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [optional] [default to null]
 **productId** | **string** |  | [optional] [default to null]
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


## removeProductFromCartByRecordId

Remove a product from a cart by record ID

Removes a specific item record from the cart by its record ID.

### Example

```bash
 removeProductFromCartByRecordId recordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recordId** | **string** |  | [default to null]
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


## updateItemCartRecord

Update a cart record

Updates the specified item cart record with the provided data.

### Example

```bash
 updateItemCartRecord recordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recordId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemCartRecordUpdateDto** | [**ItemCartRecordUpdateDto**](ItemCartRecordUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

