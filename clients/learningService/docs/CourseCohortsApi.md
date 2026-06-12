# CourseCohortsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseCohortAsync**](CourseCohortsApi.md#createCourseCohortAsync) | **POST** /api/v2/LearningService/CourseCohorts | Create a new course cohort
[**deleteCourseCohortAsync**](CourseCohortsApi.md#deleteCourseCohortAsync) | **DELETE** /api/v2/LearningService/CourseCohorts/{cohortId} | Delete a course cohort
[**getCourseCohortByIdAsync**](CourseCohortsApi.md#getCourseCohortByIdAsync) | **GET** /api/v2/LearningService/CourseCohorts/{cohortId} | Get course cohort by ID
[**getCourseCohortsAsync**](CourseCohortsApi.md#getCourseCohortsAsync) | **GET** /api/v2/LearningService/CourseCohorts | Get all course cohorts
[**getCourseCohortsCountAsync**](CourseCohortsApi.md#getCourseCohortsCountAsync) | **GET** /api/v2/LearningService/CourseCohorts/Count | Get course cohorts count
[**patchCourseCohortAsync**](CourseCohortsApi.md#patchCourseCohortAsync) | **PATCH** /api/v2/LearningService/CourseCohorts/{cohortId} | Patch a course cohort
[**updateCourseCohortAsync**](CourseCohortsApi.md#updateCourseCohortAsync) | **PUT** /api/v2/LearningService/CourseCohorts/{cohortId} | Update a course cohort



## createCourseCohortAsync

Create a new course cohort

Creates a new course cohort for the specified tenant.

### Example

```bash
 createCourseCohortAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseCohortCreateDto** | [**CourseCohortCreateDto**](CourseCohortCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCourseCohortAsync

Delete a course cohort

Deletes a course cohort for the specified tenant.

### Example

```bash
 deleteCourseCohortAsync  tenantId=value cohortId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **cohortId** | **string** |  | [default to null]
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


## getCourseCohortByIdAsync

Get course cohort by ID

Retrieves a specific course cohort by its ID.

### Example

```bash
 getCourseCohortByIdAsync cohortId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cohortId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CourseCohortDto**](CourseCohortDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseCohortsAsync

Get all course cohorts

Retrieves all course cohorts for the specified tenant.

### Example

```bash
 getCourseCohortsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseCohortDto]**](CourseCohortDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseCohortsCountAsync

Get course cohorts count

Returns the count of course cohorts for the specified tenant.

### Example

```bash
 getCourseCohortsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchCourseCohortAsync

Patch a course cohort

Partially updates a course cohort for the specified tenant.

### Example

```bash
 patchCourseCohortAsync  tenantId=value cohortId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **cohortId** | **string** |  | [default to null]
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


## updateCourseCohortAsync

Update a course cohort

Updates an existing course cohort for the specified tenant.

### Example

```bash
 updateCourseCohortAsync  tenantId=value cohortId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **cohortId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseCohortUpdateDto** | [**CourseCohortUpdateDto**](CourseCohortUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

