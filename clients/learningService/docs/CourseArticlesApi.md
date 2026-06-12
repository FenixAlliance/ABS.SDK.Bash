# CourseArticlesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseArticleAsync**](CourseArticlesApi.md#createCourseArticleAsync) | **POST** /api/v2/LearningService/CourseArticles | Create a new course article
[**deleteCourseArticleAsync**](CourseArticlesApi.md#deleteCourseArticleAsync) | **DELETE** /api/v2/LearningService/CourseArticles/{articleId} | Delete a course article
[**getCourseArticleByIdAsync**](CourseArticlesApi.md#getCourseArticleByIdAsync) | **GET** /api/v2/LearningService/CourseArticles/{articleId} | Get course article by ID
[**getCourseArticlesAsync**](CourseArticlesApi.md#getCourseArticlesAsync) | **GET** /api/v2/LearningService/CourseArticles | Get all course articles
[**getCourseArticlesCountAsync**](CourseArticlesApi.md#getCourseArticlesCountAsync) | **GET** /api/v2/LearningService/CourseArticles/Count | Get course articles count
[**patchCourseArticleAsync**](CourseArticlesApi.md#patchCourseArticleAsync) | **PATCH** /api/v2/LearningService/CourseArticles/{articleId} | Patch a course article
[**updateCourseArticleAsync**](CourseArticlesApi.md#updateCourseArticleAsync) | **PUT** /api/v2/LearningService/CourseArticles/{articleId} | Update a course article



## createCourseArticleAsync

Create a new course article

Creates a new course article for the specified tenant.

### Example

```bash
 createCourseArticleAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseArticleCreateDto** | [**CourseArticleCreateDto**](CourseArticleCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCourseArticleAsync

Delete a course article

Deletes a course article for the specified tenant.

### Example

```bash
 deleteCourseArticleAsync  tenantId=value articleId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **articleId** | **string** |  | [default to null]
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


## getCourseArticleByIdAsync

Get course article by ID

Retrieves a specific course article by its ID.

### Example

```bash
 getCourseArticleByIdAsync articleId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CourseArticleDto**](CourseArticleDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseArticlesAsync

Get all course articles

Retrieves all course articles for the specified tenant.

### Example

```bash
 getCourseArticlesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseArticleDto]**](CourseArticleDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseArticlesCountAsync

Get course articles count

Returns the count of course articles for the specified tenant.

### Example

```bash
 getCourseArticlesCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchCourseArticleAsync

Patch a course article

Partially updates a course article for the specified tenant.

### Example

```bash
 patchCourseArticleAsync  tenantId=value articleId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **articleId** | **string** |  | [default to null]
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


## updateCourseArticleAsync

Update a course article

Updates an existing course article for the specified tenant.

### Example

```bash
 updateCourseArticleAsync  tenantId=value articleId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **articleId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseArticleUpdateDto** | [**CourseArticleUpdateDto**](CourseArticleUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

