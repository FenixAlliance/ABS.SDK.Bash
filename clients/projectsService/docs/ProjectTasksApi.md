# ProjectTasksApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProjectTaskAsync**](ProjectTasksApi.md#createProjectTaskAsync) | **POST** /api/v2/ProjectsService/ProjectTasks | Create a project task
[**deleteProjectTaskAsync**](ProjectTasksApi.md#deleteProjectTaskAsync) | **DELETE** /api/v2/ProjectsService/ProjectTasks/{projectTaskId} | Delete a project task
[**getProjectTaskByIdAsync**](ProjectTasksApi.md#getProjectTaskByIdAsync) | **GET** /api/v2/ProjectsService/ProjectTasks/{projectTaskId} | Get project task by ID
[**getProjectTasksAsync**](ProjectTasksApi.md#getProjectTasksAsync) | **GET** /api/v2/ProjectsService/ProjectTasks | Get all project tasks
[**getProjectTasksCountAsync**](ProjectTasksApi.md#getProjectTasksCountAsync) | **GET** /api/v2/ProjectsService/ProjectTasks/Count | Get project tasks count
[**patchProjectTaskAsync**](ProjectTasksApi.md#patchProjectTaskAsync) | **PATCH** /api/v2/ProjectsService/ProjectTasks/{projectTaskId} | Patch a project task
[**updateProjectTaskAsync**](ProjectTasksApi.md#updateProjectTaskAsync) | **PUT** /api/v2/ProjectsService/ProjectTasks/{projectTaskId} | Update a project task



## createProjectTaskAsync

Create a project task

Creates a new project task.

### Example

```bash
 createProjectTaskAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **projectTaskCreateDto** | [**ProjectTaskCreateDto**](ProjectTaskCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteProjectTaskAsync

Delete a project task

Deletes a project task.

### Example

```bash
 deleteProjectTaskAsync  tenantId=value projectTaskId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **projectTaskId** | **string** |  | [default to null]
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


## getProjectTaskByIdAsync

Get project task by ID

Retrieves a specific project task.

### Example

```bash
 getProjectTaskByIdAsync  tenantId=value projectTaskId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **projectTaskId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ProjectTaskDtoEnvelope**](ProjectTaskDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getProjectTasksAsync

Get all project tasks

Retrieves all project tasks for the specified tenant.

### Example

```bash
 getProjectTasksAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **projectTaskDtoCollectionQueryParameters** | [**ProjectTaskDtoCollectionQueryParameters**](ProjectTaskDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**ProjectTaskDtoListEnvelope**](ProjectTaskDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getProjectTasksCountAsync

Get project tasks count

Returns the count of project tasks for the specified tenant.

### Example

```bash
 getProjectTasksCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **projectTaskDtoCollectionQueryParameters** | [**ProjectTaskDtoCollectionQueryParameters**](ProjectTaskDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchProjectTaskAsync

Patch a project task

Partially updates an existing project task.

### Example

```bash
 patchProjectTaskAsync  tenantId=value projectTaskId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **projectTaskId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **patchOperation** | [**array[PatchOperation]**](PatchOperation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateProjectTaskAsync

Update a project task

Updates an existing project task.

### Example

```bash
 updateProjectTaskAsync  tenantId=value projectTaskId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **projectTaskId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **projectTaskUpdateDto** | [**ProjectTaskUpdateDto**](ProjectTaskUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

