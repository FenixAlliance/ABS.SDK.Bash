# CompareApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**addItemToCompareTableAsync**](CompareApi.md#addItemToCompareTableAsync) | **POST** /api/v2/CartService/Compare | Add an item to the compare table
[**getItemToCompareRecord**](CompareApi.md#getItemToCompareRecord) | **GET** /api/v2/CartService/Compare/{recordId}/Details | Get compare record details
[**getItemToCompareRecords**](CompareApi.md#getItemToCompareRecords) | **GET** /api/v2/CartService/Compare/{cartId} | Get items to compare in a cart
[**removeItemFromCompareTable**](CompareApi.md#removeItemFromCompareTable) | **DELETE** /api/v2/CartService/Compare/{recordId} | Remove an item from the compare table



## addItemToCompareTableAsync

Add an item to the compare table

Adds a product to the compare table for the specified cart with tracking.

### Example

```bash
 addItemToCompareTableAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **addProductToCompareRequest** | [**AddProductToCompareRequest**](AddProductToCompareRequest.md) |  | [optional]

### Return type

[**ItemCartRecordDto**](ItemCartRecordDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemToCompareRecord

Get compare record details

Retrieves the details of a specific item-to-compare cart record.

### Example

```bash
 getItemToCompareRecord recordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recordId** | **string** |  | [default to null]
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


## getItemToCompareRecords

Get items to compare in a cart

Retrieves all items added to the compare table for the specified cart.

### Example

```bash
 getItemToCompareRecords cartId=value  api-version=value x-api-version:value
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


## removeItemFromCompareTable

Remove an item from the compare table

Removes a specific record from the compare table by its record ID.

### Example

```bash
 removeItemFromCompareTable recordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recordId** | **string** |  | [default to null]
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

