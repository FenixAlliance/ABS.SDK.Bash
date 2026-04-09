# CourseFilesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseFileAsync**](CourseFilesApi.md#createCourseFileAsync) | **POST** /api/v2/LearningService/CourseFiles | Create a new course file
[**deleteCourseFileAsync**](CourseFilesApi.md#deleteCourseFileAsync) | **DELETE** /api/v2/LearningService/CourseFiles/{fileId} | Delete a course file
[**getCourseFileByIdAsync**](CourseFilesApi.md#getCourseFileByIdAsync) | **GET** /api/v2/LearningService/CourseFiles/{fileId} | Get course file by ID
[**getCourseFilesAsync**](CourseFilesApi.md#getCourseFilesAsync) | **GET** /api/v2/LearningService/CourseFiles | Get all course files
[**getCourseFilesCountAsync**](CourseFilesApi.md#getCourseFilesCountAsync) | **GET** /api/v2/LearningService/CourseFiles/Count | Get course files count
[**updateCourseFileAsync**](CourseFilesApi.md#updateCourseFileAsync) | **PUT** /api/v2/LearningService/CourseFiles/{fileId} | Update a course file



## createCourseFileAsync

Create a new course file

Creates a new course file for the specified tenant.

### Example

```bash
 createCourseFileAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseFileCreateDto** | [**CourseFileCreateDto**](CourseFileCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCourseFileAsync

Delete a course file

Deletes a course file for the specified tenant.

### Example

```bash
 deleteCourseFileAsync  tenantId=value fileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **fileId** | **string** |  | [default to null]
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


## getCourseFileByIdAsync

Get course file by ID

Retrieves a specific course file by its ID.

### Example

```bash
 getCourseFileByIdAsync fileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CourseFileDto**](CourseFileDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseFilesAsync

Get all course files

Retrieves all course files for the specified tenant.

### Example

```bash
 getCourseFilesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseFileDto]**](CourseFileDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseFilesCountAsync

Get course files count

Returns the count of course files for the specified tenant.

### Example

```bash
 getCourseFilesCountAsync  tenantId=value  api-version=value x-api-version:value
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


## updateCourseFileAsync

Update a course file

Updates an existing course file for the specified tenant.

### Example

```bash
 updateCourseFileAsync  tenantId=value fileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **fileId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseFileUpdateDto** | [**CourseFileUpdateDto**](CourseFileUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

