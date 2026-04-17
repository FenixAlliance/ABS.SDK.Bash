# WebPageCategoriesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countWebPageCategoriesAsync**](WebPageCategoriesApi.md#countWebPageCategoriesAsync) | **GET** /api/v2/ContentService/WebPageCategories/Count | Count web page categories
[**createWebPageCategoryAsync**](WebPageCategoriesApi.md#createWebPageCategoryAsync) | **POST** /api/v2/ContentService/WebPageCategories | Create a web page category
[**deleteWebPageCategoryAsync**](WebPageCategoriesApi.md#deleteWebPageCategoryAsync) | **DELETE** /api/v2/ContentService/WebPageCategories/{webPageCategoryId} | Delete a web page category
[**getWebPageCategoriesAsync**](WebPageCategoriesApi.md#getWebPageCategoriesAsync) | **GET** /api/v2/ContentService/WebPageCategories | Get web page categories
[**getWebPageCategoryByIdAsync**](WebPageCategoriesApi.md#getWebPageCategoryByIdAsync) | **GET** /api/v2/ContentService/WebPageCategories/{webPageCategoryId} | Get web page category by ID
[**updateWebPageCategoryAsync**](WebPageCategoriesApi.md#updateWebPageCategoryAsync) | **PUT** /api/v2/ContentService/WebPageCategories/{webPageCategoryId} | Update a web page category



## countWebPageCategoriesAsync

Count web page categories

Counts all web page categories for the specified tenant.

### Example

```bash
 countWebPageCategoriesAsync  tenantId=value  api-version=value x-api-version:value
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


## createWebPageCategoryAsync

Create a web page category

Creates a new web page category for the specified tenant.

### Example

```bash
 createWebPageCategoryAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **webPageCategoryCreateDto** | [**WebPageCategoryCreateDto**](WebPageCategoryCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteWebPageCategoryAsync

Delete a web page category

Deletes a web page category for the specified tenant.

### Example

```bash
 deleteWebPageCategoryAsync  tenantId=value webPageCategoryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webPageCategoryId** | **string** |  | [default to null]
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


## getWebPageCategoriesAsync

Get web page categories

Retrieves all web page categories for the specified tenant.

### Example

```bash
 getWebPageCategoriesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
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


## getWebPageCategoryByIdAsync

Get web page category by ID

Retrieves a specific web page category by its ID.

### Example

```bash
 getWebPageCategoryByIdAsync  tenantId=value webPageCategoryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webPageCategoryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WebPageCategoryDtoEnvelope**](WebPageCategoryDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateWebPageCategoryAsync

Update a web page category

Updates an existing web page category for the specified tenant.

### Example

```bash
 updateWebPageCategoryAsync  tenantId=value webPageCategoryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webPageCategoryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **webPageCategoryUpdateDto** | [**WebPageCategoryUpdateDto**](WebPageCategoryUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

