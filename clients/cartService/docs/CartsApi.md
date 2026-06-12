# CartsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**addItemToCartAsync**](CartsApi.md#addItemToCartAsync) | **POST** /api/v2/CartService/Carts/{cartId}/Items/{itemId} | Add an Item to a cart
[**addItemToCartCompareTable**](CartsApi.md#addItemToCartCompareTable) | **POST** /api/v2/CartService/Carts/{cartId}/Compare/{itemId} | Add an item to the compare table
[**addItemToWishList**](CartsApi.md#addItemToWishList) | **POST** /api/v2/CartService/Carts/{cartId}/WishLists/{wishListId}/Records | Add a record to a wish list
[**cartWishListExistsHead**](CartsApi.md#cartWishListExistsHead) | **HEAD** /api/v2/CartService/Carts/{cartId}/WishLists/{wishListId}/Exists | Assesses if a WishList exists
[**clearCartRecords**](CartsApi.md#clearCartRecords) | **DELETE** /api/v2/CartService/Carts/{cartId}/Items | Clear all items from a cart
[**createWishListAsync**](CartsApi.md#createWishListAsync) | **POST** /api/v2/CartService/Carts/{cartId}/WishLists | Create a new wish list
[**decreaseCartItemQuantity**](CartsApi.md#decreaseCartItemQuantity) | **PUT** /api/v2/CartService/Carts/{cartId}/Items/{itemId}/Decrease | Decrease an Item in a cart
[**decreaseCartLineAsync**](CartsApi.md#decreaseCartLineAsync) | **PUT** /api/v2/CartService/Carts/{cartId}/Lines/{lineId}/Decrease | Decrease the quantity of a cart line
[**deleteCartWishList**](CartsApi.md#deleteCartWishList) | **DELETE** /api/v2/CartService/Carts/{cartId}/WishLists/{wishListId} | Delete a wish list
[**deleteCartWishListRecord**](CartsApi.md#deleteCartWishListRecord) | **DELETE** /api/v2/CartService/Carts/{cartId}/WishLists/{wishListId}/Records/{recordId} | Remove a record from a wish list
[**getActingCart**](CartsApi.md#getActingCart) | **GET** /api/v2/CartService/Carts/ActingCart | Get the acting cart
[**getCartByIdAsync**](CartsApi.md#getCartByIdAsync) | **GET** /api/v2/CartService/Carts/{cartId} | Get all business owned contacts
[**getCartCompareRecord**](CartsApi.md#getCartCompareRecord) | **GET** /api/v2/CartService/Carts/{cartId}/Compare/{itemId} | Get an item from the compare table
[**getCartCompareRecords**](CartsApi.md#getCartCompareRecords) | **GET** /api/v2/CartService/Carts/{cartId}/Compare | Get all items in the compare table
[**getCartCountryAsync**](CartsApi.md#getCartCountryAsync) | **GET** /api/v2/CartService/Carts/{cartId}/Country | Get the country of a cart
[**getCartCurrencyAsync**](CartsApi.md#getCartCurrencyAsync) | **GET** /api/v2/CartService/Carts/{cartId}/Currency | Get the currency of a cart
[**getCartItems**](CartsApi.md#getCartItems) | **GET** /api/v2/CartService/Carts/{cartId}/Items | Get all cart lines
[**getCartLineAsync**](CartsApi.md#getCartLineAsync) | **GET** /api/v2/CartService/Carts/{cartId}/Lines/{lineId} | Get a cart line by ID
[**getCartLinesAsync**](CartsApi.md#getCartLinesAsync) | **GET** /api/v2/CartService/Carts/{cartId}/Lines | Get all cart lines
[**getCartWishList**](CartsApi.md#getCartWishList) | **GET** /api/v2/CartService/Carts/{cartId}/WishLists | Get all wishlists in a cart
[**getCartWishListDetails**](CartsApi.md#getCartWishListDetails) | **GET** /api/v2/CartService/Carts/{cartId}/WishLists/{wishListId} | Get a wish list by ID
[**getCartWishListItemAsync**](CartsApi.md#getCartWishListItemAsync) | **GET** /api/v2/CartService/Carts/{cartId}/WishLists/{wishListId}/Records/{recordId} | Get a record in a wish list
[**getCartWishListItems**](CartsApi.md#getCartWishListItems) | **GET** /api/v2/CartService/Carts/{cartId}/WishLists/{wishListId}/Records | Get all records in a wish list
[**getGuestCartAsync**](CartsApi.md#getGuestCartAsync) | **GET** /api/v2/CartService/Carts/GuestCart | Get the guest cart
[**getTenantCartAsync**](CartsApi.md#getTenantCartAsync) | **GET** /api/v2/CartService/Carts/BusinessCart/{tenantId} | Get the business cart
[**getUserCart**](CartsApi.md#getUserCart) | **GET** /api/v2/CartService/Carts/UserCart | Get the current user&#39;s cart
[**increaseCartLineAsync**](CartsApi.md#increaseCartLineAsync) | **PUT** /api/v2/CartService/Carts/{cartId}/Lines/{lineId}/Increase | Increase the quantity of a cart line
[**increaseItemCartRecordQuantityAsync**](CartsApi.md#increaseItemCartRecordQuantityAsync) | **PUT** /api/v2/CartService/Carts/{cartId}/Items/{itemId}/Increase | Increase an Item in a cart
[**isItemAlreadyInCartAsync**](CartsApi.md#isItemAlreadyInCartAsync) | **GET** /api/v2/CartService/Carts/{cartId}/Contains/{itemId} | Assesses if an Item is already in a cart
[**isItemInCompareTableAsync**](CartsApi.md#isItemInCompareTableAsync) | **GET** /api/v2/CartService/Carts/{cartId}/Compare/Contains/{itemId} | Assesses if an Item is already in the compare table
[**isItemInWishLists**](CartsApi.md#isItemInWishLists) | **GET** /api/v2/CartService/Carts/{cartId}/WishLists/Contains/{itemId} | Assesses if an Item is already in any of the cart&#39;s wishlists
[**patchCartAsync**](CartsApi.md#patchCartAsync) | **PATCH** /api/v2/CartService/Carts/{cartId} | Patch a cart
[**removeCartLineAsync**](CartsApi.md#removeCartLineAsync) | **DELETE** /api/v2/CartService/Carts/{cartId}/Lines/{lineId} | Remove a cart line
[**removeItemFromCartAsync**](CartsApi.md#removeItemFromCartAsync) | **DELETE** /api/v2/CartService/Carts/{cartId}/Items/{itemId} | Remove an Item from a cart
[**removeItemFromCompareTableAsync**](CartsApi.md#removeItemFromCompareTableAsync) | **DELETE** /api/v2/CartService/Carts/{cartId}/Compare/{itemId} | Remove an item from the compare table
[**setCartCountryAsync**](CartsApi.md#setCartCountryAsync) | **PUT** /api/v2/CartService/Carts/{cartId}/Country | Set the country of a cart
[**setCartCurrencyAsync**](CartsApi.md#setCartCurrencyAsync) | **PUT** /api/v2/CartService/Carts/{cartId}/Currency | Set the currency of a cart
[**submitCartAsync**](CartsApi.md#submitCartAsync) | **POST** /api/v2/CartService/Carts/{cartId}/Submit | Submit a cart for processing
[**updateCartAsync**](CartsApi.md#updateCartAsync) | **PUT** /api/v2/CartService/Carts/{cartId} | Update a cart
[**updateCartLineAsync**](CartsApi.md#updateCartLineAsync) | **PUT** /api/v2/CartService/Carts/{cartId}/Lines/{lineId} | Update a cart line
[**updateItemCartRecordAsync**](CartsApi.md#updateItemCartRecordAsync) | **PUT** /api/v2/CartService/Carts/{cartId}/Items/{itemId} | Update an Item in a cart
[**updateItemToWishList**](CartsApi.md#updateItemToWishList) | **PUT** /api/v2/CartService/Carts/{cartId}/WishLists/{wishListId} | Update a wish list
[**wishListExistsAsync**](CartsApi.md#wishListExistsAsync) | **GET** /api/v2/CartService/Carts/{cartId}/WishLists/{wishListId}/Exists | Assesses if a WishList exists



## addItemToCartAsync

Add an Item to a cart

Add an Item to a cart

### Example

```bash
 addItemToCartAsync cartId=value itemId=value  quantity=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **itemId** | **string** |  | [default to null]
 **quantity** | **integer** |  | [optional] [default to 1]
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


## addItemToCartCompareTable

Add an item to the compare table

Add an item to the compare table

### Example

```bash
 addItemToCartCompareTable cartId=value itemId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **itemId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemCartRecordDto**](ItemCartRecordDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## addItemToWishList

Add a record to a wish list

Add a record to a wish list

### Example

```bash
 addItemToWishList cartId=value wishListId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **wishListId** | **string** |  | [default to null]
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


## cartWishListExistsHead

Assesses if a WishList exists

Assesses if a WishList exists but does not return the content

### Example

```bash
 cartWishListExistsHead cartId=value wishListId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
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


## clearCartRecords

Clear all items from a cart

Clear all items from a cart

### Example

```bash
 clearCartRecords cartId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
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


## createWishListAsync

Create a new wish list

Create a new wish list

### Example

```bash
 createWishListAsync cartId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
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


## decreaseCartItemQuantity

Decrease an Item in a cart

Decrease an Item in a cart

### Example

```bash
 decreaseCartItemQuantity cartId=value itemId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **itemId** | **string** |  | [default to null]
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


## decreaseCartLineAsync

Decrease the quantity of a cart line

Decrease the quantity of a cart line

### Example

```bash
 decreaseCartLineAsync cartId=value lineId=value  quantity=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **lineId** | **string** |  | [default to null]
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


## deleteCartWishList

Delete a wish list

Delete a wish list

### Example

```bash
 deleteCartWishList cartId=value wishListId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
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


## deleteCartWishListRecord

Remove a record from a wish list

Remove a record from a wish list

### Example

```bash
 deleteCartWishListRecord cartId=value wishListId=value recordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **wishListId** | **string** |  | [default to null]
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


## getActingCart

Get the acting cart

Get the acting cart

### Example

```bash
 getActingCart  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CartDtoEnvelope**](CartDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCartByIdAsync

Get all business owned contacts

Get all business owned contacts

### Example

```bash
 getCartByIdAsync cartId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CartDtoEnvelope**](CartDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCartCompareRecord

Get an item from the compare table

Get an item from the compare table

### Example

```bash
 getCartCompareRecord cartId=value itemId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **itemId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemToCompareCartRecordDtoEnvelope**](ItemToCompareCartRecordDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCartCompareRecords

Get all items in the compare table

Get all items in the compare table

### Example

```bash
 getCartCompareRecords cartId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemToCompareCartRecordDtoListEnvelope**](ItemToCompareCartRecordDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCartCountryAsync

Get the country of a cart

The country of a cart is used to calculate taxes and shipping costs

### Example

```bash
 getCartCountryAsync cartId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CountryDtoEnvelope**](CountryDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCartCurrencyAsync

Get the currency of a cart

The currency of a cart used for display purposes

### Example

```bash
 getCartCurrencyAsync cartId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CurrencyDtoEnvelope**](CurrencyDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCartItems

Get all cart lines

Get all cart lines

### Example

```bash
 getCartItems cartId=value  api-version=value x-api-version:value
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


## getCartLineAsync

Get a cart line by ID

Get a cart line by ID

### Example

```bash
 getCartLineAsync cartId=value lineId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **lineId** | **string** |  | [default to null]
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


## getCartLinesAsync

Get all cart lines

Get all cart lines

### Example

```bash
 getCartLinesAsync cartId=value  api-version=value x-api-version:value
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


## getCartWishList

Get all wishlists in a cart

Get all wishlists in a cart

### Example

```bash
 getCartWishList cartId=value  api-version=value x-api-version:value
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


## getCartWishListDetails

Get a wish list by ID

Get a wish list by ID

### Example

```bash
 getCartWishListDetails cartId=value wishListId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **wishListId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WishListDtoEnvelope**](WishListDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCartWishListItemAsync

Get a record in a wish list

Get a record in a wish list

### Example

```bash
 getCartWishListItemAsync cartId=value wishListId=value recordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **wishListId** | **string** |  | [default to null]
 **recordId** | **string** |  | [default to null]
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


## getCartWishListItems

Get all records in a wish list

Get all records in a wish list

### Example

```bash
 getCartWishListItems cartId=value wishListId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
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


## getGuestCartAsync

Get the guest cart

Get the guest cart

### Example

```bash
 getGuestCartAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CartDtoEnvelope**](CartDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTenantCartAsync

Get the business cart

Get the business cart

### Example

```bash
 getTenantCartAsync tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CartDtoEnvelope**](CartDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getUserCart

Get the current user's cart

Get the current user's cart

### Example

```bash
 getUserCart  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CartDtoEnvelope**](CartDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## increaseCartLineAsync

Increase the quantity of a cart line

Increase the quantity of a cart line

### Example

```bash
 increaseCartLineAsync cartId=value lineId=value  quantity=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **lineId** | **string** |  | [default to null]
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


## increaseItemCartRecordQuantityAsync

Increase an Item in a cart

Increase an Item in a cart

### Example

```bash
 increaseItemCartRecordQuantityAsync cartId=value itemId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **itemId** | **string** |  | [default to null]
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


## isItemAlreadyInCartAsync

Assesses if an Item is already in a cart

Assesses if an Item is already in a cart

### Example

```bash
 isItemAlreadyInCartAsync cartId=value itemId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **itemId** | **string** |  | [default to null]
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


## isItemInCompareTableAsync

Assesses if an Item is already in the compare table

Assesses if an Item is already in the compare table

### Example

```bash
 isItemInCompareTableAsync cartId=value itemId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **itemId** | **string** |  | [default to null]
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


## isItemInWishLists

Assesses if an Item is already in any of the cart's wishlists

Assesses if an Item is already in any of the cart's wishlists

### Example

```bash
 isItemInWishLists cartId=value itemId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **itemId** | **string** |  | [default to null]
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


## patchCartAsync

Patch a cart

Partially updates a cart using a JSON Patch document.

### Example

```bash
 patchCartAsync cartId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
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


## removeCartLineAsync

Remove a cart line

Remove a cart line

### Example

```bash
 removeCartLineAsync cartId=value lineId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **lineId** | **string** |  | [default to null]
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


## removeItemFromCartAsync

Remove an Item from a cart

Remove an Item from a cart

### Example

```bash
 removeItemFromCartAsync cartId=value itemId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **itemId** | **string** |  | [default to null]
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


## removeItemFromCompareTableAsync

Remove an item from the compare table

Remove an item from the compare table

### Example

```bash
 removeItemFromCompareTableAsync cartId=value itemId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **itemId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemToCompareCartRecordDto**](ItemToCompareCartRecordDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## setCartCountryAsync

Set the country of a cart

Set the country of a cart

### Example

```bash
 setCartCountryAsync cartId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **countrySwitchRequest** | [**CountrySwitchRequest**](CountrySwitchRequest.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## setCartCurrencyAsync

Set the currency of a cart

Set the currency of a cart

### Example

```bash
 setCartCurrencyAsync cartId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **currencySwitchRequest** | [**CurrencySwitchRequest**](CurrencySwitchRequest.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## submitCartAsync

Submit a cart for processing

Submit a cart for processing

### Example

```bash
 submitCartAsync cartId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
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


## updateCartAsync

Update a cart

Update a cart

### Example

```bash
 updateCartAsync cartId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cartUpdateRequest** | [**CartUpdateRequest**](CartUpdateRequest.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateCartLineAsync

Update a cart line

Update a cart line

### Example

```bash
 updateCartLineAsync cartId=value lineId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **lineId** | **string** |  | [default to null]
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


## updateItemCartRecordAsync

Update an Item in a cart

Update an Item in a cart

### Example

```bash
 updateItemCartRecordAsync cartId=value itemId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **itemId** | **string** |  | [default to null]
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


## updateItemToWishList

Update a wish list

Update a wish list

### Example

```bash
 updateItemToWishList cartId=value wishListId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
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


## wishListExistsAsync

Assesses if a WishList exists

Assesses if a WishList exists

### Example

```bash
 wishListExistsAsync cartId=value wishListId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **string** |  | [default to null]
 **wishListId** | **string** |  | [default to null]
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

