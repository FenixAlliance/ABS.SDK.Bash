# CourseCategoriesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseCategoryAsync**](CourseCategoriesApi.md#createCourseCategoryAsync) | **POST** /api/v2/LearningService/CourseCategories | Create a new course category
[**deleteCourseCategoryAsync**](CourseCategoriesApi.md#deleteCourseCategoryAsync) | **DELETE** /api/v2/LearningService/CourseCategories/{categoryId} | Delete a course category
[**getCourseCategoriesAsync**](CourseCategoriesApi.md#getCourseCategoriesAsync) | **GET** /api/v2/LearningService/CourseCategories | Get all course categories
[**getCourseCategoriesCountAsync**](CourseCategoriesApi.md#getCourseCategoriesCountAsync) | **GET** /api/v2/LearningService/CourseCategories/Count | Get course categories count
[**getCourseCategoryByIdAsync**](CourseCategoriesApi.md#getCourseCategoryByIdAsync) | **GET** /api/v2/LearningService/CourseCategories/{categoryId} | Get course category by ID
[**updateCourseCategoryAsync**](CourseCategoriesApi.md#updateCourseCategoryAsync) | **PUT** /api/v2/LearningService/CourseCategories/{categoryId} | Update a course category



## createCourseCategoryAsync

Create a new course category

Creates a new course category for the specified tenant.

### Example

```bash
 createCourseCategoryAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseCategoryCreateDto** | [**CourseCategoryCreateDto**](CourseCategoryCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCourseCategoryAsync

Delete a course category

Deletes a course category for the specified tenant.

### Example

```bash
 deleteCourseCategoryAsync  tenantId=value categoryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **categoryId** | **string** |  | [default to null]
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


## getCourseCategoriesAsync

Get all course categories

Retrieves all course categories for the specified tenant.

### Example

```bash
 getCourseCategoriesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseCategoryDto]**](CourseCategoryDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseCategoriesCountAsync

Get course categories count

Returns the count of course categories for the specified tenant.

### Example

```bash
 getCourseCategoriesCountAsync  tenantId=value  api-version=value x-api-version:value
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


## getCourseCategoryByIdAsync

Get course category by ID

Retrieves a specific course category by its ID.

### Example

```bash
 getCourseCategoryByIdAsync categoryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CourseCategoryDto**](CourseCategoryDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateCourseCategoryAsync

Update a course category

Updates an existing course category for the specified tenant.

### Example

```bash
 updateCourseCategoryAsync  tenantId=value categoryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **categoryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseCategoryUpdateDto** | [**CourseCategoryUpdateDto**](CourseCategoryUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

