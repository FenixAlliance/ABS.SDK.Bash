# ProjectsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProjectAsync**](ProjectsApi.md#createProjectAsync) | **POST** /api/v2/ProjectsService/Projects | Creates a new project
[**createProjectPeriodAsync**](ProjectsApi.md#createProjectPeriodAsync) | **POST** /api/v2/ProjectsService/Projects/{projectId}/Periods | Creates a project period
[**createTaskForProjectAsync**](ProjectsApi.md#createTaskForProjectAsync) | **POST** /api/v2/ProjectsService/Projects/{projectId}/Tasks | Creates a project task
[**deleteProjectAsync**](ProjectsApi.md#deleteProjectAsync) | **DELETE** /api/v2/ProjectsService/Projects/{projectId} | Deletes a project
[**deleteProjectPeriodAsync**](ProjectsApi.md#deleteProjectPeriodAsync) | **DELETE** /api/v2/ProjectsService/Projects/{projectId}/Periods/{projectPeriodId} | Deletes a project period
[**deleteTaskForProjectAsync**](ProjectsApi.md#deleteTaskForProjectAsync) | **DELETE** /api/v2/ProjectsService/Projects/{projectId}/Tasks/{projectTaskId} | Deletes a project task
[**getProjectByIdAsync**](ProjectsApi.md#getProjectByIdAsync) | **GET** /api/v2/ProjectsService/Projects/{projectId} | Gets a project by ID
[**getProjectPeriodsAsync**](ProjectsApi.md#getProjectPeriodsAsync) | **GET** /api/v2/ProjectsService/Projects/{projectId}/Periods | Retrieves project periods
[**getProjectTaskCategoriesAsync**](ProjectsApi.md#getProjectTaskCategoriesAsync) | **GET** /api/v2/ProjectsService/Projects/{projectId}/TaskCategories | Retrieves project task categories
[**getProjectTaskCategoriesCountAsync**](ProjectsApi.md#getProjectTaskCategoriesCountAsync) | **GET** /api/v2/ProjectsService/Projects/{projectId}/TaskCategories/Count | Counts project task categories
[**getProjectTimeLogsCountAsync**](ProjectsApi.md#getProjectTimeLogsCountAsync) | **GET** /api/v2/ProjectsService/Projects/{projectId}/TimeLogs/Count | Counts project time logs
[**getProjectsByTenantIdAsync**](ProjectsApi.md#getProjectsByTenantIdAsync) | **GET** /api/v2/ProjectsService/Projects | Retrieves all projects
[**getProjectsCountByTenantIdAsync**](ProjectsApi.md#getProjectsCountByTenantIdAsync) | **GET** /api/v2/ProjectsService/Projects/Count | Counts projects
[**getTasksForProjectAsync**](ProjectsApi.md#getTasksForProjectAsync) | **GET** /api/v2/ProjectsService/Projects/{projectId}/Tasks | Retrieves project tasks
[**getTasksForProjectCountAsync**](ProjectsApi.md#getTasksForProjectCountAsync) | **GET** /api/v2/ProjectsService/Projects/{projectId}/Tasks/Count | Counts project tasks
[**getTimeLogsForProjectAsync**](ProjectsApi.md#getTimeLogsForProjectAsync) | **GET** /api/v2/ProjectsService/Projects/{projectId}/TimeLogs | Retrieves project time logs
[**patchProjectAsync**](ProjectsApi.md#patchProjectAsync) | **PATCH** /api/v2/ProjectsService/Projects/{projectId} | Patches a project
[**patchProjectPeriodAsync**](ProjectsApi.md#patchProjectPeriodAsync) | **PATCH** /api/v2/ProjectsService/Projects/{projectId}/Periods/{projectPeriodId} | Patches a project period
[**patchTaskForProjectAsync**](ProjectsApi.md#patchTaskForProjectAsync) | **PATCH** /api/v2/ProjectsService/Projects/{projectId}/Tasks/{projectTaskId} | Patches a project task
[**updateProjectAsync**](ProjectsApi.md#updateProjectAsync) | **PUT** /api/v2/ProjectsService/Projects/{projectId} | Updates a project
[**updateProjectPeriodAsync**](ProjectsApi.md#updateProjectPeriodAsync) | **PUT** /api/v2/ProjectsService/Projects/{projectId}/Periods/{projectPeriodId} | Updates a project period
[**updateTaskForProjectAsync**](ProjectsApi.md#updateTaskForProjectAsync) | **PUT** /api/v2/ProjectsService/Projects/{projectId}/Tasks/{projectTaskId} | Updates a project task



## createProjectAsync

Creates a new project

Creates a new project for the current tenant.

### Example

```bash
 createProjectAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **projectCreateDto** | [**ProjectCreateDto**](ProjectCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createProjectPeriodAsync

Creates a project period

Creates a new period for the specified project.

### Example

```bash
 createProjectPeriodAsync projectId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **projectPeriodCreateDto** | [**ProjectPeriodCreateDto**](ProjectPeriodCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createTaskForProjectAsync

Creates a project task

Creates a new task for the specified project.

### Example

```bash
 createTaskForProjectAsync projectId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **projectTaskCreateDto** | [**ProjectTaskCreateDto**](ProjectTaskCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteProjectAsync

Deletes a project

Deletes the specified project.

### Example

```bash
 deleteProjectAsync projectId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteProjectPeriodAsync

Deletes a project period

Deletes the specified period from a project.

### Example

```bash
 deleteProjectPeriodAsync projectId=value projectPeriodId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **projectPeriodId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteTaskForProjectAsync

Deletes a project task

Deletes the specified task from a project.

### Example

```bash
 deleteTaskForProjectAsync  tenantId=value projectId=value projectTaskId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **projectId** | **string** |  | [default to null]
 **projectTaskId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getProjectByIdAsync

Gets a project by ID

Retrieves the details of a project using its unique identifier.

### Example

```bash
 getProjectByIdAsync projectId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]

### Return type

[**ProjectDtoEnvelope**](ProjectDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getProjectPeriodsAsync

Retrieves project periods

Gets all periods for a specific project.

### Example

```bash
 getProjectPeriodsAsync projectId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]

### Return type

[**ProjectPeriodDtoListEnvelope**](ProjectPeriodDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getProjectTaskCategoriesAsync

Retrieves project task categories

Gets all task categories for a specific project with OData support.

### Example

```bash
 getProjectTaskCategoriesAsync projectId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **taskCategoryDtoCollectionQueryParameters** | [**TaskCategoryDtoCollectionQueryParameters**](TaskCategoryDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**TaskCategoryDtoListEnvelope**](TaskCategoryDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getProjectTaskCategoriesCountAsync

Counts project task categories

Gets the count of task categories for a specific project.

### Example

```bash
 getProjectTaskCategoriesCountAsync projectId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **taskCategoryDtoCollectionQueryParameters** | [**TaskCategoryDtoCollectionQueryParameters**](TaskCategoryDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getProjectTimeLogsCountAsync

Counts project time logs

Gets the count of time log entries for a specific project.

### Example

```bash
 getProjectTimeLogsCountAsync projectId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **projectTimeLogDtoCollectionQueryParameters** | [**ProjectTimeLogDtoCollectionQueryParameters**](ProjectTimeLogDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getProjectsByTenantIdAsync

Retrieves all projects

Gets all projects for the current tenant with OData support.

### Example

```bash
 getProjectsByTenantIdAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **projectDtoCollectionQueryParameters** | [**ProjectDtoCollectionQueryParameters**](ProjectDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**ProjectDtoListEnvelope**](ProjectDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getProjectsCountByTenantIdAsync

Counts projects

Gets the count of projects for the current tenant.

### Example

```bash
 getProjectsCountByTenantIdAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **projectDtoCollectionQueryParameters** | [**ProjectDtoCollectionQueryParameters**](ProjectDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTasksForProjectAsync

Retrieves project tasks

Gets all tasks for a specific project with OData support.

### Example

```bash
 getTasksForProjectAsync projectId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **projectTaskDtoCollectionQueryParameters** | [**ProjectTaskDtoCollectionQueryParameters**](ProjectTaskDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**ProjectTaskDtoListEnvelope**](ProjectTaskDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTasksForProjectCountAsync

Counts project tasks

Gets the count of tasks for a specific project.

### Example

```bash
 getTasksForProjectCountAsync projectId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **projectTaskDtoCollectionQueryParameters** | [**ProjectTaskDtoCollectionQueryParameters**](ProjectTaskDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTimeLogsForProjectAsync

Retrieves project time logs

Gets all time log entries for a specific project with OData support.

### Example

```bash
 getTimeLogsForProjectAsync projectId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **projectTimeLogDtoCollectionQueryParameters** | [**ProjectTimeLogDtoCollectionQueryParameters**](ProjectTimeLogDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**ProjectTimeLogDtoListEnvelope**](ProjectTimeLogDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchProjectAsync

Patches a project

Partially updates the specified project.

### Example

```bash
 patchProjectAsync projectId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **patchOperation** | [**array[PatchOperation]**](PatchOperation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchProjectPeriodAsync

Patches a project period

Partially updates the specified period for a project.

### Example

```bash
 patchProjectPeriodAsync projectId=value projectPeriodId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **projectPeriodId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **patchOperation** | [**array[PatchOperation]**](PatchOperation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchTaskForProjectAsync

Patches a project task

Partially updates the specified task in a project.

### Example

```bash
 patchTaskForProjectAsync projectId=value projectTaskId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **projectTaskId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **patchOperation** | [**array[PatchOperation]**](PatchOperation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateProjectAsync

Updates a project

Updates the specified project.

### Example

```bash
 updateProjectAsync projectId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **projectUpdateDto** | [**ProjectUpdateDto**](ProjectUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateProjectPeriodAsync

Updates a project period

Updates the specified period for a project.

### Example

```bash
 updateProjectPeriodAsync projectId=value projectPeriodId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **projectPeriodId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **projectPeriodUpdateDto** | [**ProjectPeriodUpdateDto**](ProjectPeriodUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateTaskForProjectAsync

Updates a project task

Updates the specified task in a project.

### Example

```bash
 updateTaskForProjectAsync projectId=value projectTaskId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **string** |  | [default to null]
 **projectTaskId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **projectTaskUpdateDto** | [**ProjectTaskUpdateDto**](ProjectTaskUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

