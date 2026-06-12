# InstructorProfilesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2LearningServiceInstructorProfilesCountGet**](InstructorProfilesApi.md#apiV2LearningServiceInstructorProfilesCountGet) | **GET** /api/v2/LearningService/InstructorProfiles/Count | 
[**apiV2LearningServiceInstructorProfilesGet**](InstructorProfilesApi.md#apiV2LearningServiceInstructorProfilesGet) | **GET** /api/v2/LearningService/InstructorProfiles | 
[**apiV2LearningServiceInstructorProfilesInstructorProfileIdDelete**](InstructorProfilesApi.md#apiV2LearningServiceInstructorProfilesInstructorProfileIdDelete) | **DELETE** /api/v2/LearningService/InstructorProfiles/{instructorProfileId} | 
[**apiV2LearningServiceInstructorProfilesInstructorProfileIdGet**](InstructorProfilesApi.md#apiV2LearningServiceInstructorProfilesInstructorProfileIdGet) | **GET** /api/v2/LearningService/InstructorProfiles/{instructorProfileId} | 
[**apiV2LearningServiceInstructorProfilesInstructorProfileIdPatch**](InstructorProfilesApi.md#apiV2LearningServiceInstructorProfilesInstructorProfileIdPatch) | **PATCH** /api/v2/LearningService/InstructorProfiles/{instructorProfileId} | 
[**apiV2LearningServiceInstructorProfilesInstructorProfileIdPut**](InstructorProfilesApi.md#apiV2LearningServiceInstructorProfilesInstructorProfileIdPut) | **PUT** /api/v2/LearningService/InstructorProfiles/{instructorProfileId} | 
[**apiV2LearningServiceInstructorProfilesPost**](InstructorProfilesApi.md#apiV2LearningServiceInstructorProfilesPost) | **POST** /api/v2/LearningService/InstructorProfiles | 



## apiV2LearningServiceInstructorProfilesCountGet



### Example

```bash
 apiV2LearningServiceInstructorProfilesCountGet  tenantId=value  api-version=value x-api-version:value
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


## apiV2LearningServiceInstructorProfilesGet



### Example

```bash
 apiV2LearningServiceInstructorProfilesGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[InstructorProfileDto]**](InstructorProfileDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2LearningServiceInstructorProfilesInstructorProfileIdDelete



### Example

```bash
 apiV2LearningServiceInstructorProfilesInstructorProfileIdDelete  tenantId=value instructorProfileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **instructorProfileId** | **string** |  | [default to null]
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


## apiV2LearningServiceInstructorProfilesInstructorProfileIdGet



### Example

```bash
 apiV2LearningServiceInstructorProfilesInstructorProfileIdGet  tenantId=value instructorProfileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **instructorProfileId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**InstructorProfileDto**](InstructorProfileDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2LearningServiceInstructorProfilesInstructorProfileIdPatch



### Example

```bash
 apiV2LearningServiceInstructorProfilesInstructorProfileIdPatch  tenantId=value instructorProfileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **instructorProfileId** | **string** |  | [default to null]
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


## apiV2LearningServiceInstructorProfilesInstructorProfileIdPut



### Example

```bash
 apiV2LearningServiceInstructorProfilesInstructorProfileIdPut  tenantId=value instructorProfileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **instructorProfileId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **instructorProfileUpdateDto** | [**InstructorProfileUpdateDto**](InstructorProfileUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2LearningServiceInstructorProfilesPost



### Example

```bash
 apiV2LearningServiceInstructorProfilesPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **instructorProfileCreateDto** | [**InstructorProfileCreateDto**](InstructorProfileCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

