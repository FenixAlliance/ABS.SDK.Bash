# MarketingListsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMarketingListAsync**](MarketingListsApi.md#createMarketingListAsync) | **POST** /api/v2/MarketingService/MarketingLists | Create a marketing list
[**deleteMarketingListAsync**](MarketingListsApi.md#deleteMarketingListAsync) | **DELETE** /api/v2/MarketingService/MarketingLists/{marketinglistId} | Delete a marketing list
[**getMarketingListDetailsAsync**](MarketingListsApi.md#getMarketingListDetailsAsync) | **GET** /api/v2/MarketingService/MarketingLists/{marketinglistId} | Get marketing list by ID
[**getMarketingListODataAsync**](MarketingListsApi.md#getMarketingListODataAsync) | **GET** /api/v2/MarketingService/MarketingLists | Get marketing lists
[**getMarketingListsCountAsync**](MarketingListsApi.md#getMarketingListsCountAsync) | **GET** /api/v2/MarketingService/MarketingLists/Count | Get marketing lists count
[**patchMarketingListAsync**](MarketingListsApi.md#patchMarketingListAsync) | **PATCH** /api/v2/MarketingService/MarketingLists/{marketinglistId} | Patch a marketing list
[**updateMarketingListAsync**](MarketingListsApi.md#updateMarketingListAsync) | **PUT** /api/v2/MarketingService/MarketingLists/{marketinglistId} | Update a marketing list



## createMarketingListAsync

Create a marketing list

Creates a new marketing list for the specified tenant.

### Example

```bash
 createMarketingListAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **marketingListCreateDto** | [**MarketingListCreateDto**](MarketingListCreateDto.md) |  |
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


## deleteMarketingListAsync

Delete a marketing list

Deletes a marketing list by its ID.

### Example

```bash
 deleteMarketingListAsync  tenantId=value marketinglistId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **marketinglistId** | **string** |  | [default to null]
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


## getMarketingListDetailsAsync

Get marketing list by ID

Retrieves the details of a specific marketing list by its ID.

### Example

```bash
 getMarketingListDetailsAsync  tenantId=value marketinglistId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **marketinglistId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**MarketingListDtoEnvelope**](MarketingListDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getMarketingListODataAsync

Get marketing lists

Retrieves a collection of marketing lists for the specified tenant using OData query options.

### Example

```bash
 getMarketingListODataAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**MarketingListDtoListEnvelope**](MarketingListDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getMarketingListsCountAsync

Get marketing lists count

Returns the count of marketing lists for the specified tenant using OData query options.

### Example

```bash
 getMarketingListsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchMarketingListAsync

Patch a marketing list

Partially updates a marketing list by its ID using JSON Patch.

### Example

```bash
 patchMarketingListAsync  tenantId=value marketinglistId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **marketinglistId** | **string** |  | [default to null]
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


## updateMarketingListAsync

Update a marketing list

Updates an existing marketing list by its ID.

### Example

```bash
 updateMarketingListAsync  tenantId=value marketinglistId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **marketinglistId** | **string** |  | [default to null]
 **marketingListUpdateDto** | [**MarketingListUpdateDto**](MarketingListUpdateDto.md) |  |
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

