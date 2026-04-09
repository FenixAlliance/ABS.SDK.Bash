# PriceListsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPriceListAsync**](PriceListsApi.md#createPriceListAsync) | **POST** /api/v2/PricingService/PriceLists | Creates a new price list
[**createPriceListPricesAsync**](PriceListsApi.md#createPriceListPricesAsync) | **POST** /api/v2/PricingService/PriceLists/{priceListId}/Prices | Creates a price list entry
[**deletePriceListAsync**](PriceListsApi.md#deletePriceListAsync) | **DELETE** /api/v2/PricingService/PriceLists/{priceListId} | Deletes a price list
[**deletePriceListPriceAsync**](PriceListsApi.md#deletePriceListPriceAsync) | **DELETE** /api/v2/PricingService/PriceLists/{priceListId}/Prices/{priceId} | Deletes a price list entry
[**getPriceListAsync**](PriceListsApi.md#getPriceListAsync) | **GET** /api/v2/PricingService/PriceLists/{priceListId} | Gets a price list by ID
[**getPriceListPriceAsync**](PriceListsApi.md#getPriceListPriceAsync) | **GET** /api/v2/PricingService/PriceLists/{priceListId}/Prices/{priceId} | Gets a price list entry by ID
[**getPriceListPricesAsync**](PriceListsApi.md#getPriceListPricesAsync) | **GET** /api/v2/PricingService/PriceLists/{priceListId}/Prices | Retrieves prices in a price list
[**getPriceListsAsync**](PriceListsApi.md#getPriceListsAsync) | **GET** /api/v2/PricingService/PriceLists | Retrieves all price lists
[**getPriceListsCountAsync**](PriceListsApi.md#getPriceListsCountAsync) | **GET** /api/v2/PricingService/PriceLists/Count | Counts price lists
[**updatePriceListAsync**](PriceListsApi.md#updatePriceListAsync) | **PUT** /api/v2/PricingService/PriceLists/{priceListId} | Updates a price list
[**updatePriceListPriceAsync**](PriceListsApi.md#updatePriceListPriceAsync) | **PUT** /api/v2/PricingService/PriceLists/{priceListId}/Prices/{priceId} | Updates a price list entry



## createPriceListAsync

Creates a new price list

Creates a new price list for the current tenant.

### Example

```bash
 createPriceListAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **priceListCreateDto** | [**PriceListCreateDto**](PriceListCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createPriceListPricesAsync

Creates a price list entry

Creates a new price entry in the specified price list.

### Example

```bash
 createPriceListPricesAsync  tenantId=value priceListId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **priceListId** | **string** |  | [default to null]
 **itemPriceCreateDto** | [**ItemPriceCreateDto**](ItemPriceCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deletePriceListAsync

Deletes a price list

Deletes the specified price list.

### Example

```bash
 deletePriceListAsync  tenantId=value priceListId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **priceListId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deletePriceListPriceAsync

Deletes a price list entry

Deletes the specified price entry from a price list.

### Example

```bash
 deletePriceListPriceAsync  tenantId=value priceListId=value priceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **priceListId** | **string** |  | [default to null]
 **priceId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPriceListAsync

Gets a price list by ID

Retrieves the details of a price list using its unique identifier.

### Example

```bash
 getPriceListAsync  tenantId=value priceListId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **priceListId** | **string** |  | [default to null]

### Return type

[**PriceListDtoEnvelope**](PriceListDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPriceListPriceAsync

Gets a price list entry by ID

Retrieves a specific price entry from a price list.

### Example

```bash
 getPriceListPriceAsync  tenantId=value priceListId=value priceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **priceListId** | **string** |  | [default to null]
 **priceId** | **string** |  | [default to null]

### Return type

[**ItemPriceDtoEnvelope**](ItemPriceDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPriceListPricesAsync

Retrieves prices in a price list

Gets all price entries for a specific price list with OData support.

### Example

```bash
 getPriceListPricesAsync  tenantId=value priceListId=value  itemId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **priceListId** | **string** |  | [default to null]
 **itemId** | **string** |  | [optional] [default to null]

### Return type

[**ItemPriceDtoListEnvelope**](ItemPriceDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPriceListsAsync

Retrieves all price lists

Gets all price lists for the current tenant with OData support.

### Example

```bash
 getPriceListsAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**PriceListDtoListEnvelope**](PriceListDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPriceListsCountAsync

Counts price lists

Gets the count of price lists for the current tenant.

### Example

```bash
 getPriceListsCountAsync  tenantId=value
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


## updatePriceListAsync

Updates a price list

Updates the specified price list.

### Example

```bash
 updatePriceListAsync  tenantId=value priceListId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **priceListId** | **string** |  | [default to null]
 **priceListUpdateDto** | [**PriceListUpdateDto**](PriceListUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updatePriceListPriceAsync

Updates a price list entry

Updates the specified price entry in a price list.

### Example

```bash
 updatePriceListPriceAsync  tenantId=value priceListId=value priceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **priceListId** | **string** |  | [default to null]
 **priceId** | **string** |  | [default to null]
 **itemPriceUpdateDto** | [**ItemPriceUpdateDto**](ItemPriceUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

