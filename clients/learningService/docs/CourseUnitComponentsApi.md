# CourseUnitComponentsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseUnitComponentAsync**](CourseUnitComponentsApi.md#createCourseUnitComponentAsync) | **POST** /api/v2/LearningService/CourseUnitComponents | Create a new course unit component
[**deleteCourseUnitComponentAsync**](CourseUnitComponentsApi.md#deleteCourseUnitComponentAsync) | **DELETE** /api/v2/LearningService/CourseUnitComponents/{componentId} | Delete a course unit component
[**getCourseUnitComponentByIdAsync**](CourseUnitComponentsApi.md#getCourseUnitComponentByIdAsync) | **GET** /api/v2/LearningService/CourseUnitComponents/{componentId} | Get course unit component by ID
[**getCourseUnitComponentsAsync**](CourseUnitComponentsApi.md#getCourseUnitComponentsAsync) | **GET** /api/v2/LearningService/CourseUnitComponents | Get all course unit components
[**getCourseUnitComponentsCountAsync**](CourseUnitComponentsApi.md#getCourseUnitComponentsCountAsync) | **GET** /api/v2/LearningService/CourseUnitComponents/Count | Get course unit components count
[**updateCourseUnitComponentAsync**](CourseUnitComponentsApi.md#updateCourseUnitComponentAsync) | **PUT** /api/v2/LearningService/CourseUnitComponents/{componentId} | Update a course unit component



## createCourseUnitComponentAsync

Create a new course unit component

Creates a new course unit component for the specified tenant.

### Example

```bash
 createCourseUnitComponentAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseUnitComponentCreateDto** | [**CourseUnitComponentCreateDto**](CourseUnitComponentCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCourseUnitComponentAsync

Delete a course unit component

Deletes a course unit component for the specified tenant.

### Example

```bash
 deleteCourseUnitComponentAsync  tenantId=value componentId=value  api-version=value x-api-version:value
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


## getCourseUnitComponentByIdAsync

Get course unit component by ID

Retrieves a specific course unit component by its ID.

### Example

```bash
 getCourseUnitComponentByIdAsync componentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **componentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CourseUnitComponentDto**](CourseUnitComponentDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseUnitComponentsAsync

Get all course unit components

Retrieves all course unit components for the specified tenant.

### Example

```bash
 getCourseUnitComponentsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseUnitComponentDto]**](CourseUnitComponentDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseUnitComponentsCountAsync

Get course unit components count

Returns the count of course unit components for the specified tenant.

### Example

```bash
 getCourseUnitComponentsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## updateCourseUnitComponentAsync

Update a course unit component

Updates an existing course unit component for the specified tenant.

### Example

```bash
 updateCourseUnitComponentAsync  tenantId=value componentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **componentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseUnitComponentUpdateDto** | [**CourseUnitComponentUpdateDto**](CourseUnitComponentUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

