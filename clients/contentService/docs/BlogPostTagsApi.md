# BlogPostTagsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countBlogPostTagsAsync**](BlogPostTagsApi.md#countBlogPostTagsAsync) | **GET** /api/v2/ContentService/BlogPostTags/Count | Count blog post tags
[**createBlogPostTagAsync**](BlogPostTagsApi.md#createBlogPostTagAsync) | **POST** /api/v2/ContentService/BlogPostTags | Create a blog post tag
[**deleteBlogPostTagAsync**](BlogPostTagsApi.md#deleteBlogPostTagAsync) | **DELETE** /api/v2/ContentService/BlogPostTags/{blogPostTagId} | Delete a blog post tag
[**getBlogPostTagByIdAsync**](BlogPostTagsApi.md#getBlogPostTagByIdAsync) | **GET** /api/v2/ContentService/BlogPostTags/{blogPostTagId} | Get blog post tag by ID
[**getBlogPostTagsAsync**](BlogPostTagsApi.md#getBlogPostTagsAsync) | **GET** /api/v2/ContentService/BlogPostTags | Get blog post tags
[**patchBlogPostTagAsync**](BlogPostTagsApi.md#patchBlogPostTagAsync) | **PATCH** /api/v2/ContentService/BlogPostTags/{blogPostTagId} | Patch a blog post tag
[**updateBlogPostTagAsync**](BlogPostTagsApi.md#updateBlogPostTagAsync) | **PUT** /api/v2/ContentService/BlogPostTags/{blogPostTagId} | Update a blog post tag



## countBlogPostTagsAsync

Count blog post tags

Counts all blog post tags for the specified tenant.

### Example

```bash
 countBlogPostTagsAsync  tenantId=value  api-version=value x-api-version:value
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


## createBlogPostTagAsync

Create a blog post tag

Creates a new blog post tag for the specified tenant.

### Example

```bash
 createBlogPostTagAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **blogPostTagCreateDto** | [**BlogPostTagCreateDto**](BlogPostTagCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteBlogPostTagAsync

Delete a blog post tag

Deletes a blog post tag for the specified tenant.

### Example

```bash
 deleteBlogPostTagAsync  tenantId=value blogPostTagId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostTagId** | **string** |  | [default to null]
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


## getBlogPostTagByIdAsync

Get blog post tag by ID

Retrieves a specific blog post tag by its ID.

### Example

```bash
 getBlogPostTagByIdAsync  tenantId=value blogPostTagId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostTagId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BlogPostTagDtoEnvelope**](BlogPostTagDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBlogPostTagsAsync

Get blog post tags

Retrieves all blog post tags for the specified tenant.

### Example

```bash
 getBlogPostTagsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BlogPostTagDtoListEnvelope**](BlogPostTagDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchBlogPostTagAsync

Patch a blog post tag

Partially updates an existing blog post tag for the specified tenant.

### Example

```bash
 patchBlogPostTagAsync  tenantId=value blogPostTagId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostTagId** | **string** |  | [default to null]
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


## updateBlogPostTagAsync

Update a blog post tag

Updates an existing blog post tag for the specified tenant.

### Example

```bash
 updateBlogPostTagAsync  tenantId=value blogPostTagId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostTagId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **blogPostTagUpdateDto** | [**BlogPostTagUpdateDto**](BlogPostTagUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

