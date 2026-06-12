# CourseAssignmentTypesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseAssignmentTypeAsync**](CourseAssignmentTypesApi.md#createCourseAssignmentTypeAsync) | **POST** /api/v2/LearningService/CourseAssignmentTypes | Create a course assignment type
[**deleteCourseAssignmentTypeAsync**](CourseAssignmentTypesApi.md#deleteCourseAssignmentTypeAsync) | **DELETE** /api/v2/LearningService/CourseAssignmentTypes/{assignmentTypeId} | Delete a course assignment type
[**getCourseAssignmentTypeByIdAsync**](CourseAssignmentTypesApi.md#getCourseAssignmentTypeByIdAsync) | **GET** /api/v2/LearningService/CourseAssignmentTypes/{assignmentTypeId} | Get course assignment type by ID
[**getCourseAssignmentTypesAsync**](CourseAssignmentTypesApi.md#getCourseAssignmentTypesAsync) | **GET** /api/v2/LearningService/CourseAssignmentTypes | Get all course assignment types
[**getCourseAssignmentTypesCountAsync**](CourseAssignmentTypesApi.md#getCourseAssignmentTypesCountAsync) | **GET** /api/v2/LearningService/CourseAssignmentTypes/Count | Get course assignment types count
[**patchCourseAssignmentTypeAsync**](CourseAssignmentTypesApi.md#patchCourseAssignmentTypeAsync) | **PATCH** /api/v2/LearningService/CourseAssignmentTypes/{assignmentTypeId} | Patch a course assignment type
[**updateCourseAssignmentTypeAsync**](CourseAssignmentTypesApi.md#updateCourseAssignmentTypeAsync) | **PUT** /api/v2/LearningService/CourseAssignmentTypes/{assignmentTypeId} | Update a course assignment type



## createCourseAssignmentTypeAsync

Create a course assignment type

Creates a new course assignment type for the specified tenant.

### Example

```bash
 createCourseAssignmentTypeAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseAssignmentTypeCreateDto** | [**CourseAssignmentTypeCreateDto**](CourseAssignmentTypeCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCourseAssignmentTypeAsync

Delete a course assignment type

Deletes a course assignment type by its ID.

### Example

```bash
 deleteCourseAssignmentTypeAsync  tenantId=value assignmentTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assignmentTypeId** | **string** |  | [default to null]
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


## getCourseAssignmentTypeByIdAsync

Get course assignment type by ID

Retrieves a specific course assignment type by its ID.

### Example

```bash
 getCourseAssignmentTypeByIdAsync assignmentTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assignmentTypeId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CourseAssignmentTypeDto**](CourseAssignmentTypeDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseAssignmentTypesAsync

Get all course assignment types

Retrieves all course assignment types for the specified tenant.

### Example

```bash
 getCourseAssignmentTypesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseAssignmentTypeDto]**](CourseAssignmentTypeDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseAssignmentTypesCountAsync

Get course assignment types count

Returns the count of course assignment types for the specified tenant.

### Example

```bash
 getCourseAssignmentTypesCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchCourseAssignmentTypeAsync

Patch a course assignment type

Partially updates a course assignment type for the specified tenant.

### Example

```bash
 patchCourseAssignmentTypeAsync  tenantId=value assignmentTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assignmentTypeId** | **string** |  | [default to null]
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


## updateCourseAssignmentTypeAsync

Update a course assignment type

Updates an existing course assignment type.

### Example

```bash
 updateCourseAssignmentTypeAsync  tenantId=value assignmentTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assignmentTypeId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseAssignmentTypeUpdateDto** | [**CourseAssignmentTypeUpdateDto**](CourseAssignmentTypeUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

