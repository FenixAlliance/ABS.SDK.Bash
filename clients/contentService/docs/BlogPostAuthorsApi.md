# BlogPostAuthorsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countBlogPostsByAuthorAsync**](BlogPostAuthorsApi.md#countBlogPostsByAuthorAsync) | **GET** /api/v2/ContentService/BlogPostAuthors/{authorId}/BlogPosts/Count | Count blog posts by author
[**getBlogAuthorByIdAsync**](BlogPostAuthorsApi.md#getBlogAuthorByIdAsync) | **GET** /api/v2/ContentService/BlogPostAuthors/{authorId} | Get blog author by ID
[**getBlogAuthorsAsync**](BlogPostAuthorsApi.md#getBlogAuthorsAsync) | **GET** /api/v2/ContentService/BlogPostAuthors | Get blog authors
[**getBlogPostsByAuthorAsync**](BlogPostAuthorsApi.md#getBlogPostsByAuthorAsync) | **GET** /api/v2/ContentService/BlogPostAuthors/{authorId}/BlogPosts | Get blog posts by author



## countBlogPostsByAuthorAsync

Count blog posts by author

Returns the count of blog posts written by a specific author.

### Example

```bash
 countBlogPostsByAuthorAsync authorId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorId** | **string** |  | [default to null]
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


## getBlogAuthorByIdAsync

Get blog author by ID

Retrieves a specific blog author by their identifier.

### Example

```bash
 getBlogAuthorByIdAsync authorId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BlogAuthorDtoEnvelope**](BlogAuthorDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBlogAuthorsAsync

Get blog authors

Retrieves all blog authors, optionally filtered by tenant.

### Example

```bash
 getBlogAuthorsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BlogAuthorDtoListEnvelope**](BlogAuthorDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBlogPostsByAuthorAsync

Get blog posts by author

Retrieves all blog posts written by a specific author.

### Example

```bash
 getBlogPostsByAuthorAsync authorId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BlogPostDtoListEnvelope**](BlogPostDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

