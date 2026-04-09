# WebPagesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countWebPagesAsync**](WebPagesApi.md#countWebPagesAsync) | **GET** /api/v2/ContentService/WebPages/Count | Count web pages
[**createWebPageAsync**](WebPagesApi.md#createWebPageAsync) | **POST** /api/v2/ContentService/WebPages | Create a web page
[**createWebPageCategoryRelationAsync**](WebPagesApi.md#createWebPageCategoryRelationAsync) | **POST** /api/v2/ContentService/WebPages/{webPageId}/Categories | Create a web page category relation
[**createWebPageTagRelationAsync**](WebPagesApi.md#createWebPageTagRelationAsync) | **POST** /api/v2/ContentService/WebPages/{webPageId}/Tags | Create a web page tag relation
[**deleteWebPageAsync**](WebPagesApi.md#deleteWebPageAsync) | **DELETE** /api/v2/ContentService/WebPages/{webPageId} | Delete a web page
[**getCategoriesByWebPageAsync**](WebPagesApi.md#getCategoriesByWebPageAsync) | **GET** /api/v2/ContentService/WebPages/{webPageId}/Categories | Get categories by web page
[**getTagsByWebPageAsync**](WebPagesApi.md#getTagsByWebPageAsync) | **GET** /api/v2/ContentService/WebPages/{webPageId}/Tags | Get tags by web page
[**getWebPageByIdAsync**](WebPagesApi.md#getWebPageByIdAsync) | **GET** /api/v2/ContentService/WebPages/{webPageId} | Get web page by ID
[**getWebPagesAsync**](WebPagesApi.md#getWebPagesAsync) | **GET** /api/v2/ContentService/WebPages | Get web pages
[**relateWebPageToCategoryAsync**](WebPagesApi.md#relateWebPageToCategoryAsync) | **POST** /api/v2/ContentService/WebPages/{webPageId}/Categories/{categoryId} | Relate web page to category
[**relateWebPageToTagAsync**](WebPagesApi.md#relateWebPageToTagAsync) | **POST** /api/v2/ContentService/WebPages/{webPageId}/Tags/{tagId} | Relate web page to tag
[**unrelateWebPageCategoryAsync**](WebPagesApi.md#unrelateWebPageCategoryAsync) | **DELETE** /api/v2/ContentService/WebPages/{webPageId}/Categories/{categoryId} | Unrelate web page from category
[**unrelateWebPageTagAsync**](WebPagesApi.md#unrelateWebPageTagAsync) | **DELETE** /api/v2/ContentService/WebPages/{webPageId}/Tags/{tagId} | Unrelate web page from tag
[**updateWebPageAsync**](WebPagesApi.md#updateWebPageAsync) | **PUT** /api/v2/ContentService/WebPages/{webPageId} | Update a web page



## countWebPagesAsync

Count web pages

Counts all web pages for the specified tenant.

### Example

```bash
 countWebPagesAsync  tenantId=value  api-version=value x-api-version:value
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


## createWebPageAsync

Create a web page

Creates a new web page for the specified tenant.

### Example

```bash
 createWebPageAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **webPageCreateDto** | [**WebPageCreateDto**](WebPageCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createWebPageCategoryRelationAsync

Create a web page category relation

Creates a new category and relates it to a web page.

### Example

```bash
 createWebPageCategoryRelationAsync  tenantId=value webPageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webPageId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **webPageCategoryCreateDto** | [**WebPageCategoryCreateDto**](WebPageCategoryCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createWebPageTagRelationAsync

Create a web page tag relation

Creates a new tag and relates it to a web page.

### Example

```bash
 createWebPageTagRelationAsync  tenantId=value webPageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webPageId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **webPageTagCreateDto** | [**WebPageTagCreateDto**](WebPageTagCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteWebPageAsync

Delete a web page

Deletes a web page for the specified tenant.

### Example

```bash
 deleteWebPageAsync  tenantId=value webPageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webPageId** | **string** |  | [default to null]
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


## getCategoriesByWebPageAsync

Get categories by web page

Retrieves all categories related to a specific web page.

### Example

```bash
 getCategoriesByWebPageAsync webPageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webPageId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WebPageCategoryDtoListEnvelope**](WebPageCategoryDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTagsByWebPageAsync

Get tags by web page

Retrieves all tags related to a specific web page.

### Example

```bash
 getTagsByWebPageAsync webPageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webPageId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WebPageTagDtoListEnvelope**](WebPageTagDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getWebPageByIdAsync

Get web page by ID

Retrieves a specific web page by its identifier.

### Example

```bash
 getWebPageByIdAsync  tenantId=value webPageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webPageId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WebPageDtoEnvelope**](WebPageDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getWebPagesAsync

Get web pages

Retrieves all web pages for the specified tenant.

### Example

```bash
 getWebPagesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WebPageDtoListEnvelope**](WebPageDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## relateWebPageToCategoryAsync

Relate web page to category

Relates an existing category to a web page.

### Example

```bash
 relateWebPageToCategoryAsync  tenantId=value webPageId=value categoryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webPageId** | **string** |  | [default to null]
 **categoryId** | **string** |  | [default to null]
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


## relateWebPageToTagAsync

Relate web page to tag

Relates an existing tag to a web page.

### Example

```bash
 relateWebPageToTagAsync  tenantId=value webPageId=value tagId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webPageId** | **string** |  | [default to null]
 **tagId** | **string** |  | [default to null]
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


## unrelateWebPageCategoryAsync

Unrelate web page from category

Removes the relationship between a web page and a category.

### Example

```bash
 unrelateWebPageCategoryAsync  tenantId=value webPageId=value categoryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webPageId** | **string** |  | [default to null]
 **categoryId** | **string** |  | [default to null]
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


## unrelateWebPageTagAsync

Unrelate web page from tag

Removes the relationship between a web page and a tag.

### Example

```bash
 unrelateWebPageTagAsync  tenantId=value webPageId=value tagId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webPageId** | **string** |  | [default to null]
 **tagId** | **string** |  | [default to null]
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


## updateWebPageAsync

Update a web page

Updates an existing web page for the specified tenant.

### Example

```bash
 updateWebPageAsync  tenantId=value webPageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webPageId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **webPageUpdateDto** | [**WebPageUpdateDto**](WebPageUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

