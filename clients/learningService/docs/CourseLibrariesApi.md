# CourseLibrariesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseLibraryAsync**](CourseLibrariesApi.md#createCourseLibraryAsync) | **POST** /api/v2/LearningService/CourseLibraries | Create a course library
[**deleteCourseLibraryAsync**](CourseLibrariesApi.md#deleteCourseLibraryAsync) | **DELETE** /api/v2/LearningService/CourseLibraries/{libraryId} | Delete a course library
[**getCourseLibrariesAsync**](CourseLibrariesApi.md#getCourseLibrariesAsync) | **GET** /api/v2/LearningService/CourseLibraries | Get all course libraries
[**getCourseLibrariesCountAsync**](CourseLibrariesApi.md#getCourseLibrariesCountAsync) | **GET** /api/v2/LearningService/CourseLibraries/Count | Get course libraries count
[**getCourseLibraryByIdAsync**](CourseLibrariesApi.md#getCourseLibraryByIdAsync) | **GET** /api/v2/LearningService/CourseLibraries/{libraryId} | Get course library by ID
[**updateCourseLibraryAsync**](CourseLibrariesApi.md#updateCourseLibraryAsync) | **PUT** /api/v2/LearningService/CourseLibraries/{libraryId} | Update a course library



## createCourseLibraryAsync

Create a course library

Creates a new course library for the specified tenant.

### Example

```bash
 createCourseLibraryAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseLibraryCreateDto** | [**CourseLibraryCreateDto**](CourseLibraryCreateDto.md) |  | [optional]

### Return type

[**CourseLibraryDto**](CourseLibraryDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCourseLibraryAsync

Delete a course library

Deletes a course library by its ID.

### Example

```bash
 deleteCourseLibraryAsync  tenantId=value libraryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **libraryId** | **string** |  | [default to null]
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


## getCourseLibrariesAsync

Get all course libraries

Retrieves all course libraries for the specified tenant.

### Example

```bash
 getCourseLibrariesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseLibraryDto]**](CourseLibraryDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseLibrariesCountAsync

Get course libraries count

Returns the count of course libraries for the specified tenant.

### Example

```bash
 getCourseLibrariesCountAsync  tenantId=value  api-version=value x-api-version:value
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


## getCourseLibraryByIdAsync

Get course library by ID

Retrieves a specific course library by its ID.

### Example

```bash
 getCourseLibraryByIdAsync libraryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **libraryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CourseLibraryDto**](CourseLibraryDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateCourseLibraryAsync

Update a course library

Updates an existing course library.

### Example

```bash
 updateCourseLibraryAsync  tenantId=value libraryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **libraryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseLibraryUpdateDto** | [**CourseLibraryUpdateDto**](CourseLibraryUpdateDto.md) |  | [optional]

### Return type

[**CourseLibraryDto**](CourseLibraryDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

