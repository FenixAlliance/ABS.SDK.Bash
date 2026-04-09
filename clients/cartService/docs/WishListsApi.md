# WishListsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**addProductToWishList**](WishListsApi.md#addProductToWishList) | **POST** /api/v2/CartService/WishLists/Records | Add a product to a wish list
[**createWishList**](WishListsApi.md#createWishList) | **POST** /api/v2/CartService/WishLists | Create a wish list
[**deleteWishList**](WishListsApi.md#deleteWishList) | **DELETE** /api/v2/CartService/WishLists/{wishListId} | Delete a wish list
[**deleteWishListRecord**](WishListsApi.md#deleteWishListRecord) | **DELETE** /api/v2/CartService/WishLists/Records/{recordId} | Delete a wish list record
[**getCartWishListDetailsAsync**](WishListsApi.md#getCartWishListDetailsAsync) | **GET** /api/v2/CartService/WishLists/{wishListId}/Details | Get wish list details
[**getCartWishListItemsAsync**](WishListsApi.md#getCartWishListItemsAsync) | **GET** /api/v2/CartService/WishLists/{wishListId}/Records | Get wish list item records
[**getWishListAsync**](WishListsApi.md#getWishListAsync) | **GET** /api/v2/CartService/WishLists/{cartId} | Get wish lists for a cart
[**isProductInWishLists**](WishListsApi.md#isProductInWishLists) | **GET** /api/v2/CartService/WishLists/Contains | Check if a product is in any wish list
[**updateProductToWishList**](WishListsApi.md#updateProductToWishList) | **PUT** /api/v2/CartService/WishLists/{wishListId} | Update a wish list
[**wishListExists**](WishListsApi.md#wishListExists) | **GET** /api/v2/CartService/WishLists/Exists | Check if a wish list exists
[**wishListExistsHeadAsync**](WishListsApi.md#wishListExistsHeadAsync) | **HEAD** /api/v2/CartService/WishLists/Exists | Check if a wish list exists (HEAD)



## addProductToWishList

Add a product to a wish list

Adds the specified product to the given wish list.

### Example

```bash
 addProductToWishList  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **productToWishListRequest** | [**ProductToWishListRequest**](ProductToWishListRequest.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createWishList

Create a wish list

Creates a new wish list from the provided request data.

### Example

```bash
 createWishList  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **newWishListRequest** | [**NewWishListRequest**](NewWishListRequest.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteWishList

Delete a wish list

Deletes the specified wish list.

### Example

```bash
 deleteWishList wishListId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wishListId** | **string** |  | [default to null]
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


## deleteWishListRecord

Delete a wish list record

Removes a specific item record from a wish list by its record ID.

### Example

```bash
 deleteWishListRecord recordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recordId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCartWishListDetailsAsync

Get wish list details

Retrieves the full details of the specified wish list.

### Example

```bash
 getCartWishListDetailsAsync wishListId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wishListId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WishListDto**](WishListDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCartWishListItemsAsync

Get wish list item records

Retrieves all item records in the specified wish list.

### Example

```bash
 getCartWishListItemsAsync wishListId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wishListId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[WishListItemRecordDto]**](WishListItemRecordDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getWishListAsync

Get wish lists for a cart

Retrieves all wish lists associated with the specified cart.

### Example

```bash
 getWishListAsync cartId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[WishListDto]**](WishListDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## isProductInWishLists

Check if a product is in any wish list

Returns a boolean indicating whether the specified product exists in any wish list of the given cart.

### Example

```bash
 isProductInWishLists  cartId=value  productId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [optional] [default to null]
 **productId** | **string** |  | [optional] [default to null]
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


## updateProductToWishList

Update a wish list

Updates the specified wish list with the provided data.

### Example

```bash
 updateProductToWishList wishListId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wishListId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **wishListUpdateDto** | [**WishListUpdateDto**](WishListUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## wishListExists

Check if a wish list exists

Returns a boolean indicating whether the specified wish list exists.

### Example

```bash
 wishListExists  wishListId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wishListId** | **string** |  | [optional] [default to null]
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


## wishListExistsHeadAsync

Check if a wish list exists (HEAD)

HEAD request to check whether the specified wish list exists without returning a response body.

### Example

```bash
 wishListExistsHeadAsync  wishListId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wishListId** | **string** |  | [optional] [default to null]
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

