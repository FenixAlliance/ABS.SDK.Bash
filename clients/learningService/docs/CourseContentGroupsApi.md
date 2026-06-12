# CourseContentGroupsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseContentGroupAsync**](CourseContentGroupsApi.md#createCourseContentGroupAsync) | **POST** /api/v2/LearningService/CourseContentGroups | Create a new course content group
[**deleteCourseContentGroupAsync**](CourseContentGroupsApi.md#deleteCourseContentGroupAsync) | **DELETE** /api/v2/LearningService/CourseContentGroups/{groupId} | Delete a course content group
[**getCourseContentGroupByIdAsync**](CourseContentGroupsApi.md#getCourseContentGroupByIdAsync) | **GET** /api/v2/LearningService/CourseContentGroups/{groupId} | Get course content group by ID
[**getCourseContentGroupsAsync**](CourseContentGroupsApi.md#getCourseContentGroupsAsync) | **GET** /api/v2/LearningService/CourseContentGroups | Get all course content groups
[**getCourseContentGroupsByCourseAsync**](CourseContentGroupsApi.md#getCourseContentGroupsByCourseAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/ContentGroups | Get course content groups by course
[**getCourseContentGroupsByCourseCountAsync**](CourseContentGroupsApi.md#getCourseContentGroupsByCourseCountAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/ContentGroups/Count | Get course content groups count by course
[**getCourseContentGroupsCountAsync**](CourseContentGroupsApi.md#getCourseContentGroupsCountAsync) | **GET** /api/v2/LearningService/CourseContentGroups/Count | Get course content groups count
[**patchCourseContentGroupAsync**](CourseContentGroupsApi.md#patchCourseContentGroupAsync) | **PATCH** /api/v2/LearningService/CourseContentGroups/{groupId} | Patch a course content group
[**updateCourseContentGroupAsync**](CourseContentGroupsApi.md#updateCourseContentGroupAsync) | **PUT** /api/v2/LearningService/CourseContentGroups/{groupId} | Update a course content group



## createCourseContentGroupAsync

Create a new course content group

Creates a new course content group for the specified tenant.

### Example

```bash
 createCourseContentGroupAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseContentGroupCreateDto** | [**CourseContentGroupCreateDto**](CourseContentGroupCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCourseContentGroupAsync

Delete a course content group

Deletes a course content group for the specified tenant.

### Example

```bash
 deleteCourseContentGroupAsync  tenantId=value groupId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **groupId** | **string** |  | [default to null]
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


## getCourseContentGroupByIdAsync

Get course content group by ID

Retrieves a specific course content group by its ID.

### Example

```bash
 getCourseContentGroupByIdAsync groupId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CourseContentGroupDto**](CourseContentGroupDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseContentGroupsAsync

Get all course content groups

Retrieves all course content groups for the specified tenant.

### Example

```bash
 getCourseContentGroupsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseContentGroupDto]**](CourseContentGroupDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseContentGroupsByCourseAsync

Get course content groups by course

Retrieves all course content groups for a specific course.

### Example

```bash
 getCourseContentGroupsByCourseAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseContentGroupDto]**](CourseContentGroupDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseContentGroupsByCourseCountAsync

Get course content groups count by course

Returns the count of course content groups for a specific course.

### Example

```bash
 getCourseContentGroupsByCourseCountAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
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


## getCourseContentGroupsCountAsync

Get course content groups count

Returns the count of course content groups for the specified tenant.

### Example

```bash
 getCourseContentGroupsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchCourseContentGroupAsync

Patch a course content group

Partially updates a course content group for the specified tenant.

### Example

```bash
 patchCourseContentGroupAsync  tenantId=value groupId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **groupId** | **string** |  | [default to null]
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


## updateCourseContentGroupAsync

Update a course content group

Updates an existing course content group for the specified tenant.

### Example

```bash
 updateCourseContentGroupAsync  tenantId=value groupId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **groupId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseContentGroupUpdateDto** | [**CourseContentGroupUpdateDto**](CourseContentGroupUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

