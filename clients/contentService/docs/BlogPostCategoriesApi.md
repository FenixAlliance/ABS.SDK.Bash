# BlogPostCategoriesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countBlogPostCategoriesAsync**](BlogPostCategoriesApi.md#countBlogPostCategoriesAsync) | **GET** /api/v2/ContentService/BlogPostCategories/Count | Count blog post categories
[**createBlogPostCategoryAsync**](BlogPostCategoriesApi.md#createBlogPostCategoryAsync) | **POST** /api/v2/ContentService/BlogPostCategories | Create a blog post category
[**deleteBlogPostCategoryAsync**](BlogPostCategoriesApi.md#deleteBlogPostCategoryAsync) | **DELETE** /api/v2/ContentService/BlogPostCategories/{blogPostCategoryId} | Delete a blog post category
[**getBlogPostCategoriesAsync**](BlogPostCategoriesApi.md#getBlogPostCategoriesAsync) | **GET** /api/v2/ContentService/BlogPostCategories | Get blog post categories
[**getBlogPostCategoryByIdAsync**](BlogPostCategoriesApi.md#getBlogPostCategoryByIdAsync) | **GET** /api/v2/ContentService/BlogPostCategories/{blogPostCategoryId} | Get blog post category by ID
[**patchBlogPostCategoryAsync**](BlogPostCategoriesApi.md#patchBlogPostCategoryAsync) | **PATCH** /api/v2/ContentService/BlogPostCategories/{blogPostCategoryId} | Patch a blog post category
[**updateBlogPostCategoryAsync**](BlogPostCategoriesApi.md#updateBlogPostCategoryAsync) | **PUT** /api/v2/ContentService/BlogPostCategories/{blogPostCategoryId} | Update a blog post category



## countBlogPostCategoriesAsync

Count blog post categories

Counts all blog post categories for the specified tenant.

### Example

```bash
 countBlogPostCategoriesAsync  tenantId=value  api-version=value x-api-version:value
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


## createBlogPostCategoryAsync

Create a blog post category

Creates a new blog post category for the specified tenant.

### Example

```bash
 createBlogPostCategoryAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **blogPostCategoryCreateDto** | [**BlogPostCategoryCreateDto**](BlogPostCategoryCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteBlogPostCategoryAsync

Delete a blog post category

Deletes a blog post category for the specified tenant.

### Example

```bash
 deleteBlogPostCategoryAsync  tenantId=value blogPostCategoryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostCategoryId** | **string** |  | [default to null]
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


## getBlogPostCategoriesAsync

Get blog post categories

Retrieves all blog post categories for the specified tenant.

### Example

```bash
 getBlogPostCategoriesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BlogPostCategoryDtoListEnvelope**](BlogPostCategoryDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBlogPostCategoryByIdAsync

Get blog post category by ID

Retrieves a specific blog post category by its ID.

### Example

```bash
 getBlogPostCategoryByIdAsync  tenantId=value blogPostCategoryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostCategoryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BlogPostCategoryDtoEnvelope**](BlogPostCategoryDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchBlogPostCategoryAsync

Patch a blog post category

Partially updates an existing blog post category for the specified tenant.

### Example

```bash
 patchBlogPostCategoryAsync  tenantId=value blogPostCategoryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostCategoryId** | **string** |  | [default to null]
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


## updateBlogPostCategoryAsync

Update a blog post category

Updates an existing blog post category for the specified tenant.

### Example

```bash
 updateBlogPostCategoryAsync  tenantId=value blogPostCategoryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostCategoryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **blogPostCategoryUpdateDto** | [**BlogPostCategoryUpdateDto**](BlogPostCategoryUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

