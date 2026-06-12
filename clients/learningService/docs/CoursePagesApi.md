# CoursePagesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCoursePageAsync**](CoursePagesApi.md#createCoursePageAsync) | **POST** /api/v2/LearningService/CoursePages | Create a new course page
[**deleteCoursePageAsync**](CoursePagesApi.md#deleteCoursePageAsync) | **DELETE** /api/v2/LearningService/CoursePages/{pageId} | Delete a course page
[**getCoursePageByIdAsync**](CoursePagesApi.md#getCoursePageByIdAsync) | **GET** /api/v2/LearningService/CoursePages/{pageId} | Get course page by ID
[**getCoursePagesAsync**](CoursePagesApi.md#getCoursePagesAsync) | **GET** /api/v2/LearningService/CoursePages | Get all course pages
[**getCoursePagesCountAsync**](CoursePagesApi.md#getCoursePagesCountAsync) | **GET** /api/v2/LearningService/CoursePages/Count | Get course pages count
[**patchCoursePageAsync**](CoursePagesApi.md#patchCoursePageAsync) | **PATCH** /api/v2/LearningService/CoursePages/{pageId} | Patch a course page
[**updateCoursePageAsync**](CoursePagesApi.md#updateCoursePageAsync) | **PUT** /api/v2/LearningService/CoursePages/{pageId} | Update a course page



## createCoursePageAsync

Create a new course page

Creates a new course page for the specified tenant.

### Example

```bash
 createCoursePageAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **coursePageCreateDto** | [**CoursePageCreateDto**](CoursePageCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCoursePageAsync

Delete a course page

Deletes a course page for the specified tenant.

### Example

```bash
 deleteCoursePageAsync  tenantId=value pageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **pageId** | **string** |  | [default to null]
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


## getCoursePageByIdAsync

Get course page by ID

Retrieves a specific course page by its ID.

### Example

```bash
 getCoursePageByIdAsync pageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CoursePageDto**](CoursePageDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCoursePagesAsync

Get all course pages

Retrieves all course pages for the specified tenant.

### Example

```bash
 getCoursePagesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CoursePageDto]**](CoursePageDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCoursePagesCountAsync

Get course pages count

Returns the count of course pages for the specified tenant.

### Example

```bash
 getCoursePagesCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchCoursePageAsync

Patch a course page

Partially updates an existing course page for the specified tenant.

### Example

```bash
 patchCoursePageAsync  tenantId=value pageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **pageId** | **string** |  | [default to null]
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


## updateCoursePageAsync

Update a course page

Updates an existing course page for the specified tenant.

### Example

```bash
 updateCoursePageAsync  tenantId=value pageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **pageId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **coursePageUpdateDto** | [**CoursePageUpdateDto**](CoursePageUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

