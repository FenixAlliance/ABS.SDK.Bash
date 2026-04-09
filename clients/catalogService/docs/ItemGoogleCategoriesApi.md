# ItemGoogleCategoriesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllItemGoogleCategoriesAsync**](ItemGoogleCategoriesApi.md#getAllItemGoogleCategoriesAsync) | **GET** /api/v2/CatalogService/ItemGoogleCategories/All | Get all Google item categories (all)
[**getChildrenItemGoogleCategoriesByIdAsync**](ItemGoogleCategoriesApi.md#getChildrenItemGoogleCategoriesByIdAsync) | **GET** /api/v2/CatalogService/ItemGoogleCategories/{itemCategoryId}/Children | Get children Google item categories by ID
[**getItemGoogleCategoriesAsync**](ItemGoogleCategoriesApi.md#getItemGoogleCategoriesAsync) | **GET** /api/v2/CatalogService/ItemGoogleCategories | Get all Google item categories
[**getItemGoogleCategoriesCountAsync**](ItemGoogleCategoriesApi.md#getItemGoogleCategoriesCountAsync) | **GET** /api/v2/CatalogService/ItemGoogleCategories/Count | Get Google item categories count
[**getItemGoogleCategoriesTreeAsync**](ItemGoogleCategoriesApi.md#getItemGoogleCategoriesTreeAsync) | **GET** /api/v2/CatalogService/ItemGoogleCategories/tree | Get Google item categories tree
[**getItemGoogleCategoryByIdAsync**](ItemGoogleCategoriesApi.md#getItemGoogleCategoryByIdAsync) | **GET** /api/v2/CatalogService/ItemGoogleCategories/{itemCategoryId} | Get Google item category by ID
[**getRootItemGoogleCategoriesAsync**](ItemGoogleCategoriesApi.md#getRootItemGoogleCategoriesAsync) | **GET** /api/v2/CatalogService/ItemGoogleCategories/Primary | Get root Google item categories
[**mapItemGoogleCategoriesTreeAsync**](ItemGoogleCategoriesApi.md#mapItemGoogleCategoriesTreeAsync) | **POST** /api/v2/CatalogService/ItemGoogleCategories/tree | Map Google item categories tree



## getAllItemGoogleCategoriesAsync

Get all Google item categories (all)

Retrieves all Google item categories (all) without OData query options.

### Example

```bash
 getAllItemGoogleCategoriesAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemGoogleCategoryDtoListEnvelope**](ItemGoogleCategoryDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getChildrenItemGoogleCategoriesByIdAsync

Get children Google item categories by ID

Retrieves children Google item categories for a given ID.

### Example

```bash
 getChildrenItemGoogleCategoriesByIdAsync itemCategoryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemCategoryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemGoogleCategoryDtoListEnvelope**](ItemGoogleCategoryDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemGoogleCategoriesAsync

Get all Google item categories

Retrieves all Google item categories using OData query options.

### Example

```bash
 getItemGoogleCategoriesAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemGoogleCategoryDtoListEnvelope**](ItemGoogleCategoryDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemGoogleCategoriesCountAsync

Get Google item categories count

Retrieves the count of Google item categories using OData query options.

### Example

```bash
 getItemGoogleCategoriesCountAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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


## getItemGoogleCategoriesTreeAsync

Get Google item categories tree

Retrieves the Google item categories tree.

### Example

```bash
 getItemGoogleCategoriesTreeAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemGoogleCategoryDtoListEnvelope**](ItemGoogleCategoryDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemGoogleCategoryByIdAsync

Get Google item category by ID

Retrieves a specific Google item category by its ID.

### Example

```bash
 getItemGoogleCategoryByIdAsync itemCategoryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemCategoryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemGoogleCategoryDtoEnvelope**](ItemGoogleCategoryDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getRootItemGoogleCategoriesAsync

Get root Google item categories

Retrieves root Google item categories.

### Example

```bash
 getRootItemGoogleCategoriesAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemGoogleCategoryDtoListEnvelope**](ItemGoogleCategoryDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mapItemGoogleCategoriesTreeAsync

Map Google item categories tree

Maps the Google item categories tree.

### Example

```bash
 mapItemGoogleCategoriesTreeAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemGoogleCategoryDtoListEnvelope**](ItemGoogleCategoryDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

