# ItemCategoriesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countItemCategoriesAsync**](ItemCategoriesApi.md#countItemCategoriesAsync) | **GET** /api/v2/CatalogService/ItemCategories/Count | Count item categories
[**createItemCategoryAsync**](ItemCategoriesApi.md#createItemCategoryAsync) | **POST** /api/v2/CatalogService/ItemCategories | Create a new item category
[**deleteItemCategoryAsync**](ItemCategoriesApi.md#deleteItemCategoryAsync) | **DELETE** /api/v2/CatalogService/ItemCategories/{itemCategoryId} | Delete an item category
[**getItemCategoriesAsync**](ItemCategoriesApi.md#getItemCategoriesAsync) | **GET** /api/v2/CatalogService/ItemCategories | Get all item categories
[**getItemCategoryByIdAsync**](ItemCategoriesApi.md#getItemCategoryByIdAsync) | **GET** /api/v2/CatalogService/ItemCategories/{itemCategoryId} | Get item category by ID
[**updateItemCategoryAsync**](ItemCategoriesApi.md#updateItemCategoryAsync) | **PUT** /api/v2/CatalogService/ItemCategories/{itemCategoryId} | Update an item category



## countItemCategoriesAsync

Count item categories

Counts all item categories for the specified tenant.

### Example

```bash
 countItemCategoriesAsync  tenantId=value  api-version=value x-api-version:value
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


## createItemCategoryAsync

Create a new item category

Creates a new item category for the specified tenant.

### Example

```bash
 createItemCategoryAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemCategoryCreateDto** | [**ItemCategoryCreateDto**](ItemCategoryCreateDto.md) |  | [optional]

### Return type

[**ItemCategoryDtoEnvelope**](ItemCategoryDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteItemCategoryAsync

Delete an item category

Deletes an item category for the specified tenant.

### Example

```bash
 deleteItemCategoryAsync  tenantId=value itemCategoryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemCategoryId** | **string** |  | [default to null]
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


## getItemCategoriesAsync

Get all item categories

Retrieves all item categories for the specified tenant using OData query options.

### Example

```bash
 getItemCategoriesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemCategoryDtoListEnvelope**](ItemCategoryDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemCategoryByIdAsync

Get item category by ID

Retrieves a specific item category by its ID.

### Example

```bash
 getItemCategoryByIdAsync itemCategoryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemCategoryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemCategoryDtoEnvelope**](ItemCategoryDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateItemCategoryAsync

Update an item category

Updates an existing item category for the specified tenant.

### Example

```bash
 updateItemCategoryAsync  tenantId=value itemCategoryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemCategoryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemCategoryUpdateDto** | [**ItemCategoryUpdateDto**](ItemCategoryUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

