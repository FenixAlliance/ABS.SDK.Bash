# CourseForumsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseForumAsync**](CourseForumsApi.md#createCourseForumAsync) | **POST** /api/v2/LearningService/CourseForums | Create a course forum
[**deleteCourseForumAsync**](CourseForumsApi.md#deleteCourseForumAsync) | **DELETE** /api/v2/LearningService/CourseForums/{forumId} | Delete a course forum
[**getCourseForumByIdAsync**](CourseForumsApi.md#getCourseForumByIdAsync) | **GET** /api/v2/LearningService/CourseForums/{forumId} | Get course forum by ID
[**getCourseForumsAsync**](CourseForumsApi.md#getCourseForumsAsync) | **GET** /api/v2/LearningService/CourseForums | Get all course forums
[**getCourseForumsCountAsync**](CourseForumsApi.md#getCourseForumsCountAsync) | **GET** /api/v2/LearningService/CourseForums/Count | Get course forums count
[**patchCourseForumAsync**](CourseForumsApi.md#patchCourseForumAsync) | **PATCH** /api/v2/LearningService/CourseForums/{forumId} | Patch a course forum
[**updateCourseForumAsync**](CourseForumsApi.md#updateCourseForumAsync) | **PUT** /api/v2/LearningService/CourseForums/{forumId} | Update a course forum



## createCourseForumAsync

Create a course forum

Creates a new course forum for the specified tenant.

### Example

```bash
 createCourseForumAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseForumCreateDto** | [**CourseForumCreateDto**](CourseForumCreateDto.md) |  | [optional]

### Return type

[**CourseForumDto**](CourseForumDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCourseForumAsync

Delete a course forum

Deletes a course forum by its ID.

### Example

```bash
 deleteCourseForumAsync  tenantId=value forumId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **forumId** | **string** |  | [default to null]
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


## getCourseForumByIdAsync

Get course forum by ID

Retrieves a specific course forum by its ID.

### Example

```bash
 getCourseForumByIdAsync forumId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forumId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CourseForumDto**](CourseForumDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseForumsAsync

Get all course forums

Retrieves all course forums for the specified tenant.

### Example

```bash
 getCourseForumsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseForumDto]**](CourseForumDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseForumsCountAsync

Get course forums count

Returns the count of course forums for the specified tenant.

### Example

```bash
 getCourseForumsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchCourseForumAsync

Patch a course forum

Partially updates an existing course forum.

### Example

```bash
 patchCourseForumAsync  tenantId=value forumId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **forumId** | **string** |  | [default to null]
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


## updateCourseForumAsync

Update a course forum

Updates an existing course forum.

### Example

```bash
 updateCourseForumAsync  tenantId=value forumId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **forumId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseForumUpdateDto** | [**CourseForumUpdateDto**](CourseForumUpdateDto.md) |  | [optional]

### Return type

[**CourseForumDto**](CourseForumDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

