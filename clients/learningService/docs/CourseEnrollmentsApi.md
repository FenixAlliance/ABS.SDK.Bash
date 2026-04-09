# CourseEnrollmentsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseEnrollmentAsync**](CourseEnrollmentsApi.md#createCourseEnrollmentAsync) | **POST** /api/v2/LearningService/CourseEnrollments | Create a new course enrollment
[**deleteCourseEnrollmentAsync**](CourseEnrollmentsApi.md#deleteCourseEnrollmentAsync) | **DELETE** /api/v2/LearningService/CourseEnrollments/{courseEnrollmentId} | Delete a course enrollment
[**getCourseEnrollmentAsync**](CourseEnrollmentsApi.md#getCourseEnrollmentAsync) | **GET** /api/v2/LearningService/CourseEnrollments/{courseEnrollmentId} | Get course enrollment by ID
[**getEnrollmentsAsync**](CourseEnrollmentsApi.md#getEnrollmentsAsync) | **GET** /api/v2/LearningService/CourseEnrollments | Get all course enrollments
[**getEnrollmentsCountAsync**](CourseEnrollmentsApi.md#getEnrollmentsCountAsync) | **GET** /api/v2/LearningService/CourseEnrollments/Count | Get course enrollments count
[**getStudentCourseEnrollmentsAsync**](CourseEnrollmentsApi.md#getStudentCourseEnrollmentsAsync) | **GET** /api/v2/LearningService/CourseEnrollments/Student/{studentProfileId} | Get enrollments by student
[**updateCourseEnrollmentAsync**](CourseEnrollmentsApi.md#updateCourseEnrollmentAsync) | **PUT** /api/v2/LearningService/CourseEnrollments/{courseEnrollmentId} | Update a course enrollment



## createCourseEnrollmentAsync

Create a new course enrollment

Creates a new course enrollment for the specified tenant.

### Example

```bash
 createCourseEnrollmentAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseEnrollmentCreateDto** | [**CourseEnrollmentCreateDto**](CourseEnrollmentCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCourseEnrollmentAsync

Delete a course enrollment

Deletes a course enrollment for the specified tenant.

### Example

```bash
 deleteCourseEnrollmentAsync  tenantId=value courseEnrollmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **courseEnrollmentId** | **string** |  | [default to null]
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


## getCourseEnrollmentAsync

Get course enrollment by ID

Retrieves a specific course enrollment by its ID.

### Example

```bash
 getCourseEnrollmentAsync  tenantId=value courseEnrollmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **courseEnrollmentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CourseEnrollmentDto**](CourseEnrollmentDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getEnrollmentsAsync

Get all course enrollments

Retrieves all course enrollments for the specified tenant.

### Example

```bash
 getEnrollmentsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseEnrollmentDto]**](CourseEnrollmentDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getEnrollmentsCountAsync

Get course enrollments count

Returns the count of course enrollments for the specified tenant.

### Example

```bash
 getEnrollmentsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## getStudentCourseEnrollmentsAsync

Get enrollments by student

Retrieves all enrollments for a specific student.

### Example

```bash
 getStudentCourseEnrollmentsAsync  tenantId=value studentProfileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **studentProfileId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseEnrollmentDto]**](CourseEnrollmentDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateCourseEnrollmentAsync

Update a course enrollment

Updates an existing course enrollment for the specified tenant.

### Example

```bash
 updateCourseEnrollmentAsync  tenantId=value courseEnrollmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **courseEnrollmentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseEnrollmentUpdateDto** | [**CourseEnrollmentUpdateDto**](CourseEnrollmentUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

