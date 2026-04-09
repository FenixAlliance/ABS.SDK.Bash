# CourseProblemSetsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseProblemSetAsync**](CourseProblemSetsApi.md#createCourseProblemSetAsync) | **POST** /api/v2/LearningService/CourseProblemSets | Create a new course problem set
[**deleteCourseProblemSetAsync**](CourseProblemSetsApi.md#deleteCourseProblemSetAsync) | **DELETE** /api/v2/LearningService/CourseProblemSets/{problemSetId} | Delete a course problem set
[**getCourseProblemSetByIdAsync**](CourseProblemSetsApi.md#getCourseProblemSetByIdAsync) | **GET** /api/v2/LearningService/CourseProblemSets/{problemSetId} | Get course problem set by ID
[**getCourseProblemSetsAsync**](CourseProblemSetsApi.md#getCourseProblemSetsAsync) | **GET** /api/v2/LearningService/CourseProblemSets | Get all course problem sets
[**getCourseProblemSetsCountAsync**](CourseProblemSetsApi.md#getCourseProblemSetsCountAsync) | **GET** /api/v2/LearningService/CourseProblemSets/Count | Get course problem sets count
[**updateCourseProblemSetAsync**](CourseProblemSetsApi.md#updateCourseProblemSetAsync) | **PUT** /api/v2/LearningService/CourseProblemSets/{problemSetId} | Update a course problem set



## createCourseProblemSetAsync

Create a new course problem set

Creates a new course problem set for the specified tenant.

### Example

```bash
 createCourseProblemSetAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseProblemSetCreateDto** | [**CourseProblemSetCreateDto**](CourseProblemSetCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCourseProblemSetAsync

Delete a course problem set

Deletes a course problem set for the specified tenant.

### Example

```bash
 deleteCourseProblemSetAsync  tenantId=value problemSetId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **problemSetId** | **string** |  | [default to null]
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


## getCourseProblemSetByIdAsync

Get course problem set by ID

Retrieves a specific course problem set by its ID.

### Example

```bash
 getCourseProblemSetByIdAsync problemSetId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **problemSetId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CourseProblemSetDto**](CourseProblemSetDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseProblemSetsAsync

Get all course problem sets

Retrieves all course problem sets for the specified tenant.

### Example

```bash
 getCourseProblemSetsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseProblemSetDto]**](CourseProblemSetDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseProblemSetsCountAsync

Get course problem sets count

Returns the count of course problem sets for the specified tenant.

### Example

```bash
 getCourseProblemSetsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## updateCourseProblemSetAsync

Update a course problem set

Updates an existing course problem set for the specified tenant.

### Example

```bash
 updateCourseProblemSetAsync  tenantId=value problemSetId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **problemSetId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseProblemSetUpdateDto** | [**CourseProblemSetUpdateDto**](CourseProblemSetUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

