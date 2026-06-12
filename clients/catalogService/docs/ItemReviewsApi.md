# ItemReviewsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createItemReviewAsync**](ItemReviewsApi.md#createItemReviewAsync) | **POST** /api/v2/CatalogService/ItemReviews | Create a new item review
[**deleteItemReviewAsync**](ItemReviewsApi.md#deleteItemReviewAsync) | **DELETE** /api/v2/CatalogService/ItemReviews/{itemReviewId} | Delete an item review
[**getItemReviewByIdAsync**](ItemReviewsApi.md#getItemReviewByIdAsync) | **GET** /api/v2/CatalogService/ItemReviews/{itemReviewId} | Get item review by ID
[**getItemReviewsAsync**](ItemReviewsApi.md#getItemReviewsAsync) | **GET** /api/v2/CatalogService/ItemReviews | Get all item reviews
[**patchItemReviewAsync**](ItemReviewsApi.md#patchItemReviewAsync) | **PATCH** /api/v2/CatalogService/ItemReviews/{itemReviewId} | Patch an item review
[**updateItemReviewAsync**](ItemReviewsApi.md#updateItemReviewAsync) | **PUT** /api/v2/CatalogService/ItemReviews/{itemReviewId} | Update an item review



## createItemReviewAsync

Create a new item review

Creates a new item review for the specified tenant.

### Example

```bash
 createItemReviewAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemReviewCreateDto** | [**ItemReviewCreateDto**](ItemReviewCreateDto.md) |  | [optional]

### Return type

[**ItemReviewDtoEnvelope**](ItemReviewDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteItemReviewAsync

Delete an item review

Deletes an item review for the specified tenant.

### Example

```bash
 deleteItemReviewAsync  tenantId=value itemReviewId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemReviewId** | **string** |  | [default to null]
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


## getItemReviewByIdAsync

Get item review by ID

Retrieves a specific item review by its ID.

### Example

```bash
 getItemReviewByIdAsync itemReviewId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemReviewId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemReviewDtoEnvelope**](ItemReviewDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemReviewsAsync

Get all item reviews

Retrieves all item reviews for the specified item using OData query options.

### Example

```bash
 getItemReviewsAsync  itemId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemReviewDtoListEnvelope**](ItemReviewDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchItemReviewAsync

Patch an item review

Partially updates an existing item review for the specified tenant.

### Example

```bash
 patchItemReviewAsync  tenantId=value itemReviewId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemReviewId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateItemReviewAsync

Update an item review

Updates an existing item review for the specified tenant.

### Example

```bash
 updateItemReviewAsync  tenantId=value itemReviewId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemReviewId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemReviewUpdateDto** | [**ItemReviewUpdateDto**](ItemReviewUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

