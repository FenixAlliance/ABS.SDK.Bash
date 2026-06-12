# BlogPostsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBlogPostAsync**](BlogPostsApi.md#createBlogPostAsync) | **POST** /api/v2/ContentService/BlogPosts | Create a new blog post
[**createCategoryForBlogPostAsync**](BlogPostsApi.md#createCategoryForBlogPostAsync) | **POST** /api/v2/ContentService/BlogPosts/{blogPostId}/Categories | Create a category for a blog post
[**createCommentForBlogPostAsync**](BlogPostsApi.md#createCommentForBlogPostAsync) | **POST** /api/v2/ContentService/BlogPosts/{blogPostId}/Comments | Create a comment for a blog post
[**createTagForBlogPostAsync**](BlogPostsApi.md#createTagForBlogPostAsync) | **POST** /api/v2/ContentService/BlogPosts/{blogPostId}/Tags | Create a tag for a blog post
[**deleteBlogPostAsync**](BlogPostsApi.md#deleteBlogPostAsync) | **DELETE** /api/v2/ContentService/BlogPosts/{blogPostId} | Delete a blog post
[**deleteCommentFromBlogPostAsync**](BlogPostsApi.md#deleteCommentFromBlogPostAsync) | **DELETE** /api/v2/ContentService/BlogPosts/{blogPostId}/Comments/{commentId} | Delete a blog post comment
[**getBlogPostByIdAsync**](BlogPostsApi.md#getBlogPostByIdAsync) | **GET** /api/v2/ContentService/BlogPosts/{blogPostId} | Get a blog post by ID
[**getBlogPostsAsync**](BlogPostsApi.md#getBlogPostsAsync) | **GET** /api/v2/ContentService/BlogPosts | Retrieve a list of blog posts
[**getBlogPostsCountAsync**](BlogPostsApi.md#getBlogPostsCountAsync) | **GET** /api/v2/ContentService/BlogPosts/Count | Get the count of blog posts
[**getCategoriesForBlogPostAsync**](BlogPostsApi.md#getCategoriesForBlogPostAsync) | **GET** /api/v2/ContentService/BlogPosts/{blogPostId}/Categories | Get categories for a blog post
[**getCommentsForBlogPostAsync**](BlogPostsApi.md#getCommentsForBlogPostAsync) | **GET** /api/v2/ContentService/BlogPosts/{blogPostId}/Comments | Get comments for a blog post
[**getRepliesForCommentAsync**](BlogPostsApi.md#getRepliesForCommentAsync) | **GET** /api/v2/ContentService/BlogPosts/{blogPostId}/Comments/{commentId}/Replies | Get replies for a comment
[**getTagsForBlogPostAsync**](BlogPostsApi.md#getTagsForBlogPostAsync) | **GET** /api/v2/ContentService/BlogPosts/{blogPostId}/Tags | Get tags for a blog post
[**patchBlogPostAsync**](BlogPostsApi.md#patchBlogPostAsync) | **PATCH** /api/v2/ContentService/BlogPosts/{blogPostId} | Patch a blog post
[**relateCategoryToBlogPostAsync**](BlogPostsApi.md#relateCategoryToBlogPostAsync) | **POST** /api/v2/ContentService/BlogPosts/{blogPostId}/Categories/{categoryId} | Relate an existing category to a blog post
[**relateTagToBlogPostAsync**](BlogPostsApi.md#relateTagToBlogPostAsync) | **POST** /api/v2/ContentService/BlogPosts/{blogPostId}/Tags/{tagId} | Relate an existing tag to a blog post
[**replyToCommentAsync**](BlogPostsApi.md#replyToCommentAsync) | **POST** /api/v2/ContentService/BlogPosts/{blogPostId}/Comments/{commentId}/Reply | Reply to a blog post comment
[**unrelateCategoryFromBlogPostAsync**](BlogPostsApi.md#unrelateCategoryFromBlogPostAsync) | **DELETE** /api/v2/ContentService/BlogPosts/{blogPostId}/Categories/{categoryId} | Remove a category from a blog post
[**unrelateTagFromBlogPostAsync**](BlogPostsApi.md#unrelateTagFromBlogPostAsync) | **DELETE** /api/v2/ContentService/BlogPosts/{blogPostId}/Tags/{tagId} | Remove a tag from a blog post
[**updateBlogPostAsync**](BlogPostsApi.md#updateBlogPostAsync) | **PUT** /api/v2/ContentService/BlogPosts/{blogPostId} | Update a blog post



## createBlogPostAsync

Create a new blog post

Creates a new blog post for the specified tenant.

### Example

```bash
 createBlogPostAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostCreateDto** | [**BlogPostCreateDto**](BlogPostCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createCategoryForBlogPostAsync

Create a category for a blog post

Creates a new category and relates it to a specific blog post.

### Example

```bash
 createCategoryForBlogPostAsync  tenantId=value blogPostId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostId** | **string** |  | [default to null]
 **blogPostCategoryCreateDto** | [**BlogPostCategoryCreateDto**](BlogPostCategoryCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createCommentForBlogPostAsync

Create a comment for a blog post

Creates a new comment on a specific blog post.

### Example

```bash
 createCommentForBlogPostAsync  tenantId=value blogPostId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostId** | **string** |  | [default to null]
 **blogPostCommentCreateDto** | [**BlogPostCommentCreateDto**](BlogPostCommentCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createTagForBlogPostAsync

Create a tag for a blog post

Creates a new tag and relates it to a specific blog post.

### Example

```bash
 createTagForBlogPostAsync  tenantId=value blogPostId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostId** | **string** |  | [default to null]
 **blogPostTagCreateDto** | [**BlogPostTagCreateDto**](BlogPostTagCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteBlogPostAsync

Delete a blog post

Deletes a blog post for the specified tenant.

### Example

```bash
 deleteBlogPostAsync  tenantId=value blogPostId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCommentFromBlogPostAsync

Delete a blog post comment

Deletes a comment from a specific blog post.

### Example

```bash
 deleteCommentFromBlogPostAsync  tenantId=value blogPostId=value commentId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostId** | **string** |  | [default to null]
 **commentId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBlogPostByIdAsync

Get a blog post by ID

Retrieves a single blog post by its unique identifier.

### Example

```bash
 getBlogPostByIdAsync blogPostId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blogPostId** | **string** |  | [default to null]

### Return type

[**BlogPostDtoEnvelope**](BlogPostDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBlogPostsAsync

Retrieve a list of blog posts

Retrieves all blog posts, optionally filtered by tenant using OData query options.

### Example

```bash
 getBlogPostsAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]

### Return type

[**BlogPostDtoListEnvelope**](BlogPostDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBlogPostsCountAsync

Get the count of blog posts

Returns the total count of blog posts, optionally filtered by tenant using OData query options.

### Example

```bash
 getBlogPostsCountAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCategoriesForBlogPostAsync

Get categories for a blog post

Retrieves all categories related to a specific blog post.

### Example

```bash
 getCategoriesForBlogPostAsync blogPostId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blogPostId** | **string** |  | [default to null]

### Return type

[**BlogPostCategoryDtoListEnvelope**](BlogPostCategoryDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCommentsForBlogPostAsync

Get comments for a blog post

Retrieves all comments for a specific blog post.

### Example

```bash
 getCommentsForBlogPostAsync blogPostId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blogPostId** | **string** |  | [default to null]

### Return type

[**BlogPostCommentDtoListEnvelope**](BlogPostCommentDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getRepliesForCommentAsync

Get replies for a comment

Retrieves all replies for a specific blog post comment.

### Example

```bash
 getRepliesForCommentAsync commentId=value blogPostId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commentId** | **string** |  | [default to null]
 **blogPostId** | **string** |  | [default to null]

### Return type

[**BlogPostCommentDtoListEnvelope**](BlogPostCommentDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTagsForBlogPostAsync

Get tags for a blog post

Retrieves all tags related to a specific blog post.

### Example

```bash
 getTagsForBlogPostAsync blogPostId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blogPostId** | **string** |  | [default to null]

### Return type

[**BlogPostTagDtoListEnvelope**](BlogPostTagDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchBlogPostAsync

Patch a blog post

Partially updates an existing blog post for the specified tenant.

### Example

```bash
 patchBlogPostAsync  tenantId=value blogPostId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostId** | **string** |  | [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## relateCategoryToBlogPostAsync

Relate an existing category to a blog post

Creates a relationship between an existing category and a blog post.

### Example

```bash
 relateCategoryToBlogPostAsync  tenantId=value blogPostId=value categoryId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostId** | **string** |  | [default to null]
 **categoryId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## relateTagToBlogPostAsync

Relate an existing tag to a blog post

Creates a relationship between an existing tag and a blog post.

### Example

```bash
 relateTagToBlogPostAsync  tenantId=value blogPostId=value tagId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostId** | **string** |  | [default to null]
 **tagId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## replyToCommentAsync

Reply to a blog post comment

Creates a reply to an existing comment on a blog post.

### Example

```bash
 replyToCommentAsync  tenantId=value blogPostId=value commentId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostId** | **string** |  | [default to null]
 **commentId** | **string** |  | [default to null]
 **blogPostCommentCreateDto** | [**BlogPostCommentCreateDto**](BlogPostCommentCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## unrelateCategoryFromBlogPostAsync

Remove a category from a blog post

Removes the relationship between a category and a blog post.

### Example

```bash
 unrelateCategoryFromBlogPostAsync  tenantId=value blogPostId=value categoryId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostId** | **string** |  | [default to null]
 **categoryId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## unrelateTagFromBlogPostAsync

Remove a tag from a blog post

Removes the relationship between a tag and a blog post.

### Example

```bash
 unrelateTagFromBlogPostAsync  tenantId=value blogPostId=value tagId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostId** | **string** |  | [default to null]
 **tagId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateBlogPostAsync

Update a blog post

Updates an existing blog post for the specified tenant.

### Example

```bash
 updateBlogPostAsync  tenantId=value blogPostId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blogPostId** | **string** |  | [default to null]
 **blogPostUpdateDto** | [**BlogPostUpdateDto**](BlogPostUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

