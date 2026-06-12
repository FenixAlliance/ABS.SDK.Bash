# TrainingProgramCoursesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTrainingProgramCourseAsync**](TrainingProgramCoursesApi.md#createTrainingProgramCourseAsync) | **POST** /api/v2/HrmsService/TrainingProgramCourses | Create a training program course
[**deleteTrainingProgramCourseAsync**](TrainingProgramCoursesApi.md#deleteTrainingProgramCourseAsync) | **DELETE** /api/v2/HrmsService/TrainingProgramCourses/{courseId} | Delete a training program course
[**getTrainingProgramCourseByIdAsync**](TrainingProgramCoursesApi.md#getTrainingProgramCourseByIdAsync) | **GET** /api/v2/HrmsService/TrainingProgramCourses/{courseId} | Get training program course by ID
[**getTrainingProgramCoursesAsync**](TrainingProgramCoursesApi.md#getTrainingProgramCoursesAsync) | **GET** /api/v2/HrmsService/TrainingProgramCourses | Get training program courses
[**getTrainingProgramCoursesCountAsync**](TrainingProgramCoursesApi.md#getTrainingProgramCoursesCountAsync) | **GET** /api/v2/HrmsService/TrainingProgramCourses/Count | Count training program courses
[**patchTrainingProgramCourseAsync**](TrainingProgramCoursesApi.md#patchTrainingProgramCourseAsync) | **PATCH** /api/v2/HrmsService/TrainingProgramCourses/{courseId} | Patch a training program course
[**updateTrainingProgramCourseAsync**](TrainingProgramCoursesApi.md#updateTrainingProgramCourseAsync) | **PUT** /api/v2/HrmsService/TrainingProgramCourses/{courseId} | Update a training program course



## createTrainingProgramCourseAsync

Create a training program course

Creates a new training program course for the specified tenant.

### Example

```bash
 createTrainingProgramCourseAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **trainingProgramCourseCreateDto** | [**TrainingProgramCourseCreateDto**](TrainingProgramCourseCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteTrainingProgramCourseAsync

Delete a training program course

Deletes a training program course for the specified tenant.

### Example

```bash
 deleteTrainingProgramCourseAsync  tenantId=value courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTrainingProgramCourseByIdAsync

Get training program course by ID

Retrieves a specific training program course by its identifier.

### Example

```bash
 getTrainingProgramCourseByIdAsync  tenantId=value courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TrainingProgramCourseDtoEnvelope**](TrainingProgramCourseDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTrainingProgramCoursesAsync

Get training program courses

Retrieves training program courses for the specified tenant.

### Example

```bash
 getTrainingProgramCoursesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TrainingProgramCourseDtoListEnvelope**](TrainingProgramCourseDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTrainingProgramCoursesCountAsync

Count training program courses

Counts training program courses for the specified tenant.

### Example

```bash
 getTrainingProgramCoursesCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchTrainingProgramCourseAsync

Patch a training program course

Partially updates an existing training program course for the specified tenant.

### Example

```bash
 patchTrainingProgramCourseAsync  tenantId=value courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **courseId** | **string** |  | [default to null]
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


## updateTrainingProgramCourseAsync

Update a training program course

Updates an existing training program course for the specified tenant.

### Example

```bash
 updateTrainingProgramCourseAsync  tenantId=value courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **trainingProgramCourseUpdateDto** | [**TrainingProgramCourseUpdateDto**](TrainingProgramCourseUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

