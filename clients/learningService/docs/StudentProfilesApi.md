# StudentProfilesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2LearningServiceStudentProfilesCountGet**](StudentProfilesApi.md#apiV2LearningServiceStudentProfilesCountGet) | **GET** /api/v2/LearningService/StudentProfiles/Count | 
[**apiV2LearningServiceStudentProfilesGet**](StudentProfilesApi.md#apiV2LearningServiceStudentProfilesGet) | **GET** /api/v2/LearningService/StudentProfiles | 
[**apiV2LearningServiceStudentProfilesPost**](StudentProfilesApi.md#apiV2LearningServiceStudentProfilesPost) | **POST** /api/v2/LearningService/StudentProfiles | 
[**apiV2LearningServiceStudentProfilesStudentProfileIdAverageGet**](StudentProfilesApi.md#apiV2LearningServiceStudentProfilesStudentProfileIdAverageGet) | **GET** /api/v2/LearningService/StudentProfiles/{studentProfileId}/Average | 
[**apiV2LearningServiceStudentProfilesStudentProfileIdDelete**](StudentProfilesApi.md#apiV2LearningServiceStudentProfilesStudentProfileIdDelete) | **DELETE** /api/v2/LearningService/StudentProfiles/{studentProfileId} | 
[**apiV2LearningServiceStudentProfilesStudentProfileIdGet**](StudentProfilesApi.md#apiV2LearningServiceStudentProfilesStudentProfileIdGet) | **GET** /api/v2/LearningService/StudentProfiles/{studentProfileId} | 
[**apiV2LearningServiceStudentProfilesStudentProfileIdHoursCompletedGet**](StudentProfilesApi.md#apiV2LearningServiceStudentProfilesStudentProfileIdHoursCompletedGet) | **GET** /api/v2/LearningService/StudentProfiles/{studentProfileId}/HoursCompleted | 
[**apiV2LearningServiceStudentProfilesStudentProfileIdPut**](StudentProfilesApi.md#apiV2LearningServiceStudentProfilesStudentProfileIdPut) | **PUT** /api/v2/LearningService/StudentProfiles/{studentProfileId} | 



## apiV2LearningServiceStudentProfilesCountGet



### Example

```bash
 apiV2LearningServiceStudentProfilesCountGet  tenantId=value  api-version=value x-api-version:value
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


## apiV2LearningServiceStudentProfilesGet



### Example

```bash
 apiV2LearningServiceStudentProfilesGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[StudentProfileDto]**](StudentProfileDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2LearningServiceStudentProfilesPost



### Example

```bash
 apiV2LearningServiceStudentProfilesPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **studentProfileCreateDto** | [**StudentProfileCreateDto**](StudentProfileCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2LearningServiceStudentProfilesStudentProfileIdAverageGet



### Example

```bash
 apiV2LearningServiceStudentProfilesStudentProfileIdAverageGet  tenantId=value studentProfileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **studentProfileId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**AverageDto**](AverageDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2LearningServiceStudentProfilesStudentProfileIdDelete



### Example

```bash
 apiV2LearningServiceStudentProfilesStudentProfileIdDelete  tenantId=value studentProfileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **studentProfileId** | **string** |  | [default to null]
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


## apiV2LearningServiceStudentProfilesStudentProfileIdGet



### Example

```bash
 apiV2LearningServiceStudentProfilesStudentProfileIdGet  tenantId=value studentProfileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **studentProfileId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**StudentProfileDto**](StudentProfileDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2LearningServiceStudentProfilesStudentProfileIdHoursCompletedGet



### Example

```bash
 apiV2LearningServiceStudentProfilesStudentProfileIdHoursCompletedGet  tenantId=value studentProfileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **studentProfileId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CountDto**](CountDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2LearningServiceStudentProfilesStudentProfileIdPut



### Example

```bash
 apiV2LearningServiceStudentProfilesStudentProfileIdPut  tenantId=value studentProfileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **studentProfileId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **studentProfileUpdateDto** | [**StudentProfileUpdateDto**](StudentProfileUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

