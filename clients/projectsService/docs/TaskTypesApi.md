# TaskTypesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ProjectsServiceTaskTypesPost**](TaskTypesApi.md#apiV2ProjectsServiceTaskTypesPost) | **POST** /api/v2/ProjectsService/TaskTypes | 
[**apiV2ProjectsServiceTaskTypesTaskTypeIdDelete**](TaskTypesApi.md#apiV2ProjectsServiceTaskTypesTaskTypeIdDelete) | **DELETE** /api/v2/ProjectsService/TaskTypes/{taskTypeId} | 
[**apiV2ProjectsServiceTaskTypesTaskTypeIdGet**](TaskTypesApi.md#apiV2ProjectsServiceTaskTypesTaskTypeIdGet) | **GET** /api/v2/ProjectsService/TaskTypes/{taskTypeId} | 
[**apiV2ProjectsServiceTaskTypesTaskTypeIdPut**](TaskTypesApi.md#apiV2ProjectsServiceTaskTypesTaskTypeIdPut) | **PUT** /api/v2/ProjectsService/TaskTypes/{taskTypeId} | 



## apiV2ProjectsServiceTaskTypesPost



### Example

```bash
 apiV2ProjectsServiceTaskTypesPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **taskTypeCreateDto** | [**TaskTypeCreateDto**](TaskTypeCreateDto.md) |  | [optional]

### Return type

[**TaskTypeDto**](TaskTypeDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceTaskTypesTaskTypeIdDelete



### Example

```bash
 apiV2ProjectsServiceTaskTypesTaskTypeIdDelete taskTypeId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskTypeId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TaskTypeDto**](TaskTypeDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceTaskTypesTaskTypeIdGet



### Example

```bash
 apiV2ProjectsServiceTaskTypesTaskTypeIdGet taskTypeId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskTypeId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TaskTypeDto**](TaskTypeDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceTaskTypesTaskTypeIdPut



### Example

```bash
 apiV2ProjectsServiceTaskTypesTaskTypeIdPut taskTypeId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskTypeId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **taskTypeUpdateDto** | [**TaskTypeUpdateDto**](TaskTypeUpdateDto.md) |  | [optional]

### Return type

[**TaskTypeDto**](TaskTypeDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

