# CourseUpdatesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseUpdateAsync**](CourseUpdatesApi.md#createCourseUpdateAsync) | **POST** /api/v2/LearningService/CourseUpdates | Create a new course update
[**deleteCourseUpdateAsync**](CourseUpdatesApi.md#deleteCourseUpdateAsync) | **DELETE** /api/v2/LearningService/CourseUpdates/{updateId} | Delete a course update
[**getCourseUpdateByIdAsync**](CourseUpdatesApi.md#getCourseUpdateByIdAsync) | **GET** /api/v2/LearningService/CourseUpdates/{updateId} | Get course update by ID
[**getCourseUpdatesAsync**](CourseUpdatesApi.md#getCourseUpdatesAsync) | **GET** /api/v2/LearningService/CourseUpdates | Get all course updates
[**getCourseUpdatesCountAsync**](CourseUpdatesApi.md#getCourseUpdatesCountAsync) | **GET** /api/v2/LearningService/CourseUpdates/Count | Get course updates count
[**updateCourseUpdateAsync**](CourseUpdatesApi.md#updateCourseUpdateAsync) | **PUT** /api/v2/LearningService/CourseUpdates/{updateId} | Update a course update



## createCourseUpdateAsync

Create a new course update

Creates a new course update for the specified tenant.

### Example

```bash
 createCourseUpdateAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseNewsCreateDto** | [**CourseNewsCreateDto**](CourseNewsCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCourseUpdateAsync

Delete a course update

Deletes a course update for the specified tenant.

### Example

```bash
 deleteCourseUpdateAsync  tenantId=value updateId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **updateId** | **string** |  | [default to null]
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


## getCourseUpdateByIdAsync

Get course update by ID

Retrieves a specific course update by its ID.

### Example

```bash
 getCourseUpdateByIdAsync updateId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CourseNewsDto**](CourseNewsDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseUpdatesAsync

Get all course updates

Retrieves all course updates for the specified tenant.

### Example

```bash
 getCourseUpdatesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseNewsDto]**](CourseNewsDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseUpdatesCountAsync

Get course updates count

Returns the count of course updates for the specified tenant.

### Example

```bash
 getCourseUpdatesCountAsync  tenantId=value  api-version=value x-api-version:value
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


## updateCourseUpdateAsync

Update a course update

Updates an existing course update for the specified tenant.

### Example

```bash
 updateCourseUpdateAsync  tenantId=value updateId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **updateId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseNewsUpdateDto** | [**CourseNewsUpdateDto**](CourseNewsUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

