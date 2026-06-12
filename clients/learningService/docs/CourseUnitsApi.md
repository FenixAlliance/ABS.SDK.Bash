# CourseUnitsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseUnitAsync**](CourseUnitsApi.md#createCourseUnitAsync) | **POST** /api/v2/LearningService/CourseUnits | Create a new course unit
[**deleteCourseUnitAsync**](CourseUnitsApi.md#deleteCourseUnitAsync) | **DELETE** /api/v2/LearningService/CourseUnits/{unitId} | Delete a course unit
[**getCourseUnitByIdAsync**](CourseUnitsApi.md#getCourseUnitByIdAsync) | **GET** /api/v2/LearningService/CourseUnits/{unitId} | Get course unit by ID
[**getCourseUnitsAsync**](CourseUnitsApi.md#getCourseUnitsAsync) | **GET** /api/v2/LearningService/CourseUnits | Get all course units
[**getCourseUnitsCountAsync**](CourseUnitsApi.md#getCourseUnitsCountAsync) | **GET** /api/v2/LearningService/CourseUnits/Count | Get course units count
[**patchCourseUnitAsync**](CourseUnitsApi.md#patchCourseUnitAsync) | **PATCH** /api/v2/LearningService/CourseUnits/{unitId} | Patch a course unit
[**updateCourseUnitAsync**](CourseUnitsApi.md#updateCourseUnitAsync) | **PUT** /api/v2/LearningService/CourseUnits/{unitId} | Update a course unit



## createCourseUnitAsync

Create a new course unit

Creates a new course unit for the specified tenant.

### Example

```bash
 createCourseUnitAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseUnitCreateDto** | [**CourseUnitCreateDto**](CourseUnitCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCourseUnitAsync

Delete a course unit

Deletes a course unit for the specified tenant.

### Example

```bash
 deleteCourseUnitAsync  tenantId=value unitId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **unitId** | **string** |  | [default to null]
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


## getCourseUnitByIdAsync

Get course unit by ID

Retrieves a specific course unit by its ID.

### Example

```bash
 getCourseUnitByIdAsync unitId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unitId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CourseUnitDto**](CourseUnitDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseUnitsAsync

Get all course units

Retrieves all course units for the specified tenant.

### Example

```bash
 getCourseUnitsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseUnitDto]**](CourseUnitDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseUnitsCountAsync

Get course units count

Returns the count of course units for the specified tenant.

### Example

```bash
 getCourseUnitsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchCourseUnitAsync

Patch a course unit

Partially updates a course unit for the specified tenant.

### Example

```bash
 patchCourseUnitAsync  tenantId=value unitId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **unitId** | **string** |  | [default to null]
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


## updateCourseUnitAsync

Update a course unit

Updates an existing course unit for the specified tenant.

### Example

```bash
 updateCourseUnitAsync  tenantId=value unitId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **unitId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseUnitUpdateDto** | [**CourseUnitUpdateDto**](CourseUnitUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

