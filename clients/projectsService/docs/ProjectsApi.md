# ProjectsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ProjectsServiceProjectsCountGet**](ProjectsApi.md#apiV2ProjectsServiceProjectsCountGet) | **GET** /api/v2/ProjectsService/Projects/Count | 
[**apiV2ProjectsServiceProjectsGet**](ProjectsApi.md#apiV2ProjectsServiceProjectsGet) | **GET** /api/v2/ProjectsService/Projects | 
[**apiV2ProjectsServiceProjectsPost**](ProjectsApi.md#apiV2ProjectsServiceProjectsPost) | **POST** /api/v2/ProjectsService/Projects | 
[**apiV2ProjectsServiceProjectsProjectIdDelete**](ProjectsApi.md#apiV2ProjectsServiceProjectsProjectIdDelete) | **DELETE** /api/v2/ProjectsService/Projects/{projectId} | 
[**apiV2ProjectsServiceProjectsProjectIdGet**](ProjectsApi.md#apiV2ProjectsServiceProjectsProjectIdGet) | **GET** /api/v2/ProjectsService/Projects/{projectId} | 
[**apiV2ProjectsServiceProjectsProjectIdPeriodsGet**](ProjectsApi.md#apiV2ProjectsServiceProjectsProjectIdPeriodsGet) | **GET** /api/v2/ProjectsService/Projects/{projectId}/Periods | 
[**apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete**](ProjectsApi.md#apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete) | **DELETE** /api/v2/ProjectsService/Projects/{projectId}/Periods/{projectPeriodId} | 
[**apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut**](ProjectsApi.md#apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut) | **PUT** /api/v2/ProjectsService/Projects/{projectId}/Periods/{projectPeriodId} | 
[**apiV2ProjectsServiceProjectsProjectIdPut**](ProjectsApi.md#apiV2ProjectsServiceProjectsProjectIdPut) | **PUT** /api/v2/ProjectsService/Projects/{projectId} | 
[**apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet**](ProjectsApi.md#apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet) | **GET** /api/v2/ProjectsService/Projects/{projectId}/TaskCategories/Count | 
[**apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet**](ProjectsApi.md#apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet) | **GET** /api/v2/ProjectsService/Projects/{projectId}/TaskCategories | 
[**apiV2ProjectsServiceProjectsProjectIdTasksCountGet**](ProjectsApi.md#apiV2ProjectsServiceProjectsProjectIdTasksCountGet) | **GET** /api/v2/ProjectsService/Projects/{projectId}/Tasks/Count | 
[**apiV2ProjectsServiceProjectsProjectIdTasksGet**](ProjectsApi.md#apiV2ProjectsServiceProjectsProjectIdTasksGet) | **GET** /api/v2/ProjectsService/Projects/{projectId}/Tasks | 
[**apiV2ProjectsServiceProjectsProjectIdTasksPost**](ProjectsApi.md#apiV2ProjectsServiceProjectsProjectIdTasksPost) | **POST** /api/v2/ProjectsService/Projects/{projectId}/Tasks | 
[**apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete**](ProjectsApi.md#apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete) | **DELETE** /api/v2/ProjectsService/Projects/{projectId}/Tasks/{projectTaskId} | 
[**apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut**](ProjectsApi.md#apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut) | **PUT** /api/v2/ProjectsService/Projects/{projectId}/Tasks/{projectTaskId} | 
[**apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet**](ProjectsApi.md#apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet) | **GET** /api/v2/ProjectsService/Projects/{projectId}/TimeLogs/Count | 
[**apiV2ProjectsServiceProjectsProjectIdTimeLogsGet**](ProjectsApi.md#apiV2ProjectsServiceProjectsProjectIdTimeLogsGet) | **GET** /api/v2/ProjectsService/Projects/{projectId}/TimeLogs | 



## apiV2ProjectsServiceProjectsCountGet



### Example

```bash
 apiV2ProjectsServiceProjectsCountGet  tenantId=value  api-version=value x-api-version:value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceProjectsGet



### Example

```bash
 apiV2ProjectsServiceProjectsGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ProjectDtoListEnvelope**](ProjectDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceProjectsPost



### Example

```bash
 apiV2ProjectsServiceProjectsPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **projectCreateDto** | [**ProjectCreateDto**](ProjectCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceProjectsProjectIdDelete



### Example

```bash
 apiV2ProjectsServiceProjectsProjectIdDelete projectId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceProjectsProjectIdGet



### Example

```bash
 apiV2ProjectsServiceProjectsProjectIdGet projectId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ProjectDtoEnvelope**](ProjectDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceProjectsProjectIdPeriodsGet



### Example

```bash
 apiV2ProjectsServiceProjectsProjectIdPeriodsGet projectId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **projectPeriodCreateDto** | [**ProjectPeriodCreateDto**](ProjectPeriodCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete



### Example

```bash
 apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete projectId=value projectPeriodId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **projectPeriodId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut



### Example

```bash
 apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut projectId=value projectPeriodId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **projectPeriodId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **projectPeriodUpdateDto** | [**ProjectPeriodUpdateDto**](ProjectPeriodUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceProjectsProjectIdPut



### Example

```bash
 apiV2ProjectsServiceProjectsProjectIdPut projectId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **projectUpdateDto** | [**ProjectUpdateDto**](ProjectUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet



### Example

```bash
 apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet projectId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet



### Example

```bash
 apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet projectId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TaskCategoryDtoListEnvelope**](TaskCategoryDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceProjectsProjectIdTasksCountGet



### Example

```bash
 apiV2ProjectsServiceProjectsProjectIdTasksCountGet projectId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceProjectsProjectIdTasksGet



### Example

```bash
 apiV2ProjectsServiceProjectsProjectIdTasksGet projectId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ProjectTaskDtoListEnvelope**](ProjectTaskDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceProjectsProjectIdTasksPost



### Example

```bash
 apiV2ProjectsServiceProjectsProjectIdTasksPost projectId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **projectTaskCreateDto** | [**ProjectTaskCreateDto**](ProjectTaskCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete



### Example

```bash
 apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete  tenantId=value projectId=value projectTaskId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **projectId** | **string** |  | [default to null]
 **projectTaskId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut



### Example

```bash
 apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut projectId=value projectTaskId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **projectTaskId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **projectTaskUpdateDto** | [**ProjectTaskUpdateDto**](ProjectTaskUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet



### Example

```bash
 apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet projectId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceProjectsProjectIdTimeLogsGet



### Example

```bash
 apiV2ProjectsServiceProjectsProjectIdTimeLogsGet projectId=value  tenantId=value  api-version=value x-api-version:value
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

