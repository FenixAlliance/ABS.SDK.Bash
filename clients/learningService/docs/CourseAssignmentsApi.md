# CourseAssignmentsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseAssignmentAsync**](CourseAssignmentsApi.md#createCourseAssignmentAsync) | **POST** /api/v2/LearningService/CourseAssignments | Create a new course assignment
[**deleteCourseAssignmentAsync**](CourseAssignmentsApi.md#deleteCourseAssignmentAsync) | **DELETE** /api/v2/LearningService/CourseAssignments/{assignmentId} | Delete a course assignment
[**getCourseAssignmentByIdAsync**](CourseAssignmentsApi.md#getCourseAssignmentByIdAsync) | **GET** /api/v2/LearningService/CourseAssignments/{assignmentId} | Get course assignment by ID
[**getCourseAssignmentsAsync**](CourseAssignmentsApi.md#getCourseAssignmentsAsync) | **GET** /api/v2/LearningService/CourseAssignments | Get all course assignments
[**getCourseAssignmentsCountAsync**](CourseAssignmentsApi.md#getCourseAssignmentsCountAsync) | **GET** /api/v2/LearningService/CourseAssignments/Count | Get course assignments count
[**updateCourseAssignmentAsync**](CourseAssignmentsApi.md#updateCourseAssignmentAsync) | **PUT** /api/v2/LearningService/CourseAssignments/{assignmentId} | Update a course assignment



## createCourseAssignmentAsync

Create a new course assignment

Creates a new course assignment for the specified tenant.

### Example

```bash
 createCourseAssignmentAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseAssignmentCreateDto** | [**CourseAssignmentCreateDto**](CourseAssignmentCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCourseAssignmentAsync

Delete a course assignment

Deletes a course assignment for the specified tenant.

### Example

```bash
 deleteCourseAssignmentAsync  tenantId=value assignmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assignmentId** | **string** |  | [default to null]
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


## getCourseAssignmentByIdAsync

Get course assignment by ID

Retrieves a specific course assignment by its ID.

### Example

```bash
 getCourseAssignmentByIdAsync assignmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assignmentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CourseAssignmentDto**](CourseAssignmentDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseAssignmentsAsync

Get all course assignments

Retrieves all course assignments for the specified tenant.

### Example

```bash
 getCourseAssignmentsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseAssignmentDto]**](CourseAssignmentDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseAssignmentsCountAsync

Get course assignments count

Returns the count of course assignments for the specified tenant.

### Example

```bash
 getCourseAssignmentsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## updateCourseAssignmentAsync

Update a course assignment

Updates an existing course assignment for the specified tenant.

### Example

```bash
 updateCourseAssignmentAsync  tenantId=value assignmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assignmentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseAssignmentUpdateDto** | [**CourseAssignmentUpdateDto**](CourseAssignmentUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

