# ProjectTimeLogsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2TimeTrackerServiceProjectTimeLogsByResponsibleContactGet**](ProjectTimeLogsApi.md#apiV2TimeTrackerServiceProjectTimeLogsByResponsibleContactGet) | **GET** /api/v2/TimeTrackerService/ProjectTimeLogs/ByResponsibleContact | 
[**apiV2TimeTrackerServiceProjectTimeLogsCreatedByContactGet**](ProjectTimeLogsApi.md#apiV2TimeTrackerServiceProjectTimeLogsCreatedByContactGet) | **GET** /api/v2/TimeTrackerService/ProjectTimeLogs/CreatedByContact | 
[**apiV2TimeTrackerServiceProjectTimeLogsForProjectProjectIdGet**](ProjectTimeLogsApi.md#apiV2TimeTrackerServiceProjectTimeLogsForProjectProjectIdGet) | **GET** /api/v2/TimeTrackerService/ProjectTimeLogs/ForProject/{projectId} | 
[**apiV2TimeTrackerServiceProjectTimeLogsGet**](ProjectTimeLogsApi.md#apiV2TimeTrackerServiceProjectTimeLogsGet) | **GET** /api/v2/TimeTrackerService/ProjectTimeLogs | 
[**apiV2TimeTrackerServiceProjectTimeLogsPost**](ProjectTimeLogsApi.md#apiV2TimeTrackerServiceProjectTimeLogsPost) | **POST** /api/v2/TimeTrackerService/ProjectTimeLogs | 
[**apiV2TimeTrackerServiceProjectTimeLogsTimeLogIdDelete**](ProjectTimeLogsApi.md#apiV2TimeTrackerServiceProjectTimeLogsTimeLogIdDelete) | **DELETE** /api/v2/TimeTrackerService/ProjectTimeLogs/{timeLogId} | 
[**apiV2TimeTrackerServiceProjectTimeLogsTimeLogIdGet**](ProjectTimeLogsApi.md#apiV2TimeTrackerServiceProjectTimeLogsTimeLogIdGet) | **GET** /api/v2/TimeTrackerService/ProjectTimeLogs/{timeLogId} | 
[**apiV2TimeTrackerServiceProjectTimeLogsTimeLogIdPut**](ProjectTimeLogsApi.md#apiV2TimeTrackerServiceProjectTimeLogsTimeLogIdPut) | **PUT** /api/v2/TimeTrackerService/ProjectTimeLogs/{timeLogId} | 



## apiV2TimeTrackerServiceProjectTimeLogsByResponsibleContactGet



### Example

```bash
 apiV2TimeTrackerServiceProjectTimeLogsByResponsibleContactGet  contactId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ProjectTimeLogDtoListEnvelope**](ProjectTimeLogDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2TimeTrackerServiceProjectTimeLogsCreatedByContactGet



### Example

```bash
 apiV2TimeTrackerServiceProjectTimeLogsCreatedByContactGet  contactId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ProjectTimeLogDtoListEnvelope**](ProjectTimeLogDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2TimeTrackerServiceProjectTimeLogsForProjectProjectIdGet



### Example

```bash
 apiV2TimeTrackerServiceProjectTimeLogsForProjectProjectIdGet projectId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ProjectTimeLogDtoListEnvelope**](ProjectTimeLogDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2TimeTrackerServiceProjectTimeLogsGet



### Example

```bash
 apiV2TimeTrackerServiceProjectTimeLogsGet  tenantId=value  projectPeriodId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **projectPeriodId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ProjectTimeLogDtoListEnvelope**](ProjectTimeLogDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2TimeTrackerServiceProjectTimeLogsPost



### Example

```bash
 apiV2TimeTrackerServiceProjectTimeLogsPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **projectTimeLogCreateDto** | [**ProjectTimeLogCreateDto**](ProjectTimeLogCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2TimeTrackerServiceProjectTimeLogsTimeLogIdDelete



### Example

```bash
 apiV2TimeTrackerServiceProjectTimeLogsTimeLogIdDelete  tenantId=value timeLogId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **timeLogId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2TimeTrackerServiceProjectTimeLogsTimeLogIdGet



### Example

```bash
 apiV2TimeTrackerServiceProjectTimeLogsTimeLogIdGet timeLogId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeLogId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ProjectTimeLogDtoEnvelope**](ProjectTimeLogDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2TimeTrackerServiceProjectTimeLogsTimeLogIdPut



### Example

```bash
 apiV2TimeTrackerServiceProjectTimeLogsTimeLogIdPut timeLogId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeLogId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **projectTimeLogUpdateDto** | [**ProjectTimeLogUpdateDto**](ProjectTimeLogUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

