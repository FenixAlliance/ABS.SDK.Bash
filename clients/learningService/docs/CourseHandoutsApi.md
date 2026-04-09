# CourseHandoutsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseHandoutAsync**](CourseHandoutsApi.md#createCourseHandoutAsync) | **POST** /api/v2/LearningService/CourseHandouts | Create a course handout
[**deleteCourseHandoutAsync**](CourseHandoutsApi.md#deleteCourseHandoutAsync) | **DELETE** /api/v2/LearningService/CourseHandouts/{handoutId} | Delete a course handout
[**getCourseHandoutByIdAsync**](CourseHandoutsApi.md#getCourseHandoutByIdAsync) | **GET** /api/v2/LearningService/CourseHandouts/{handoutId} | Get course handout by ID
[**getCourseHandoutsAsync**](CourseHandoutsApi.md#getCourseHandoutsAsync) | **GET** /api/v2/LearningService/CourseHandouts | Get all course handouts
[**getCourseHandoutsCountAsync**](CourseHandoutsApi.md#getCourseHandoutsCountAsync) | **GET** /api/v2/LearningService/CourseHandouts/Count | Get course handouts count
[**updateCourseHandoutAsync**](CourseHandoutsApi.md#updateCourseHandoutAsync) | **PUT** /api/v2/LearningService/CourseHandouts/{handoutId} | Update a course handout



## createCourseHandoutAsync

Create a course handout

Creates a new course handout for the specified tenant.

### Example

```bash
 createCourseHandoutAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseHandoutCreateDto** | [**CourseHandoutCreateDto**](CourseHandoutCreateDto.md) |  | [optional]

### Return type

[**CourseHandoutDto**](CourseHandoutDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCourseHandoutAsync

Delete a course handout

Deletes a course handout by its ID.

### Example

```bash
 deleteCourseHandoutAsync  tenantId=value handoutId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **handoutId** | **string** |  | [default to null]
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


## getCourseHandoutByIdAsync

Get course handout by ID

Retrieves a specific course handout by its ID.

### Example

```bash
 getCourseHandoutByIdAsync handoutId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **handoutId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CourseHandoutDto**](CourseHandoutDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseHandoutsAsync

Get all course handouts

Retrieves all course handouts for the specified tenant.

### Example

```bash
 getCourseHandoutsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseHandoutDto]**](CourseHandoutDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseHandoutsCountAsync

Get course handouts count

Returns the count of course handouts for the specified tenant.

### Example

```bash
 getCourseHandoutsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## updateCourseHandoutAsync

Update a course handout

Updates an existing course handout.

### Example

```bash
 updateCourseHandoutAsync  tenantId=value handoutId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **handoutId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseHandoutUpdateDto** | [**CourseHandoutUpdateDto**](CourseHandoutUpdateDto.md) |  | [optional]

### Return type

[**CourseHandoutDto**](CourseHandoutDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

