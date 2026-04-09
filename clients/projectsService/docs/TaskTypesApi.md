# TaskTypesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTaskTypeAsync**](TaskTypesApi.md#createTaskTypeAsync) | **POST** /api/v2/ProjectsService/TaskTypes | Creates a new task type
[**deleteTaskTypeAsync**](TaskTypesApi.md#deleteTaskTypeAsync) | **DELETE** /api/v2/ProjectsService/TaskTypes/{taskTypeId} | Deletes a task type
[**getTaskTypeByIdAsync**](TaskTypesApi.md#getTaskTypeByIdAsync) | **GET** /api/v2/ProjectsService/TaskTypes/{taskTypeId} | Gets a task type by ID
[**updateTaskTypeAsync**](TaskTypesApi.md#updateTaskTypeAsync) | **PUT** /api/v2/ProjectsService/TaskTypes/{taskTypeId} | Updates a task type



## createTaskTypeAsync

Creates a new task type

Creates a new task type for the current tenant.

### Example

```bash
 createTaskTypeAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **taskTypeCreateDto** | [**TaskTypeCreateDto**](TaskTypeCreateDto.md) |  | [optional]

### Return type

[**TaskTypeDto**](TaskTypeDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteTaskTypeAsync

Deletes a task type

Deletes the specified task type.

### Example

```bash
 deleteTaskTypeAsync taskTypeId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskTypeId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]

### Return type

[**TaskTypeDto**](TaskTypeDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTaskTypeByIdAsync

Gets a task type by ID

Retrieves the details of a task type using its unique identifier.

### Example

```bash
 getTaskTypeByIdAsync taskTypeId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskTypeId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]

### Return type

[**TaskTypeDto**](TaskTypeDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateTaskTypeAsync

Updates a task type

Updates the specified task type.

### Example

```bash
 updateTaskTypeAsync taskTypeId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskTypeId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **taskTypeUpdateDto** | [**TaskTypeUpdateDto**](TaskTypeUpdateDto.md) |  | [optional]

### Return type

[**TaskTypeDto**](TaskTypeDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

