# CourseAssignmentComponentsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseAssignmentComponentAsync**](CourseAssignmentComponentsApi.md#createCourseAssignmentComponentAsync) | **POST** /api/v2/LearningService/CourseAssignmentComponents | Create a course assignment component
[**deleteCourseAssignmentComponentAsync**](CourseAssignmentComponentsApi.md#deleteCourseAssignmentComponentAsync) | **DELETE** /api/v2/LearningService/CourseAssignmentComponents/{componentId} | Delete a course assignment component
[**getCourseAssignmentComponentByIdAsync**](CourseAssignmentComponentsApi.md#getCourseAssignmentComponentByIdAsync) | **GET** /api/v2/LearningService/CourseAssignmentComponents/{componentId} | Get course assignment component by ID
[**getCourseAssignmentComponentsAsync**](CourseAssignmentComponentsApi.md#getCourseAssignmentComponentsAsync) | **GET** /api/v2/LearningService/CourseAssignmentComponents | Get all course assignment components
[**getCourseAssignmentComponentsCountAsync**](CourseAssignmentComponentsApi.md#getCourseAssignmentComponentsCountAsync) | **GET** /api/v2/LearningService/CourseAssignmentComponents/Count | Get course assignment components count
[**patchCourseAssignmentComponentAsync**](CourseAssignmentComponentsApi.md#patchCourseAssignmentComponentAsync) | **PATCH** /api/v2/LearningService/CourseAssignmentComponents/{componentId} | Patch a course assignment component
[**updateCourseAssignmentComponentAsync**](CourseAssignmentComponentsApi.md#updateCourseAssignmentComponentAsync) | **PUT** /api/v2/LearningService/CourseAssignmentComponents/{componentId} | Update a course assignment component



## createCourseAssignmentComponentAsync

Create a course assignment component

Creates a new course assignment component for the specified tenant.

### Example

```bash
 createCourseAssignmentComponentAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseAssignmentComponentCreateDto** | [**CourseAssignmentComponentCreateDto**](CourseAssignmentComponentCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCourseAssignmentComponentAsync

Delete a course assignment component

Deletes a course assignment component by its ID.

### Example

```bash
 deleteCourseAssignmentComponentAsync  tenantId=value componentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **componentId** | **string** |  | [default to null]
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


## getCourseAssignmentComponentByIdAsync

Get course assignment component by ID

Retrieves a specific course assignment component by its ID.

### Example

```bash
 getCourseAssignmentComponentByIdAsync componentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **componentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CourseAssignmentComponentDto**](CourseAssignmentComponentDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseAssignmentComponentsAsync

Get all course assignment components

Retrieves all course assignment components for the specified tenant.

### Example

```bash
 getCourseAssignmentComponentsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseAssignmentComponentDto]**](CourseAssignmentComponentDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseAssignmentComponentsCountAsync

Get course assignment components count

Returns the count of course assignment components for the specified tenant.

### Example

```bash
 getCourseAssignmentComponentsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchCourseAssignmentComponentAsync

Patch a course assignment component

Partially updates a course assignment component for the specified tenant.

### Example

```bash
 patchCourseAssignmentComponentAsync  tenantId=value componentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **componentId** | **string** |  | [default to null]
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


## updateCourseAssignmentComponentAsync

Update a course assignment component

Updates an existing course assignment component.

### Example

```bash
 updateCourseAssignmentComponentAsync  tenantId=value componentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **componentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseAssignmentComponentUpdateDto** | [**CourseAssignmentComponentUpdateDto**](CourseAssignmentComponentUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

