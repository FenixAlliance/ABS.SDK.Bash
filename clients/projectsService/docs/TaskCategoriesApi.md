# TaskCategoriesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countTenantTaskCategoriesAsync**](TaskCategoriesApi.md#countTenantTaskCategoriesAsync) | **GET** /api/v2/ProjectsService/TaskCategories/Count | Counts task categories
[**createTaskCategoryAsync**](TaskCategoriesApi.md#createTaskCategoryAsync) | **POST** /api/v2/ProjectsService/TaskCategories | Creates a new task category
[**deleteTaskCategoryAsync**](TaskCategoriesApi.md#deleteTaskCategoryAsync) | **DELETE** /api/v2/ProjectsService/TaskCategories/{taskCategoryId} | Deletes a task category
[**getTaskCategoryByIdAsync**](TaskCategoriesApi.md#getTaskCategoryByIdAsync) | **GET** /api/v2/ProjectsService/TaskCategories/{taskCategoryId} | Gets a task category by ID
[**getTaskCategoryTaskTypesAsync**](TaskCategoriesApi.md#getTaskCategoryTaskTypesAsync) | **GET** /api/v2/ProjectsService/TaskCategories/{taskCategoryId}/Types | Retrieves task types for a category
[**getTenantTaskCategoriesAsync**](TaskCategoriesApi.md#getTenantTaskCategoriesAsync) | **GET** /api/v2/ProjectsService/TaskCategories | Retrieves all task categories
[**updateTaskCategoryAsync**](TaskCategoriesApi.md#updateTaskCategoryAsync) | **PUT** /api/v2/ProjectsService/TaskCategories/{taskCategoryId} | Updates a task category



## countTenantTaskCategoriesAsync

Counts task categories

Gets the count of task categories for the current tenant.

### Example

```bash
 countTenantTaskCategoriesAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createTaskCategoryAsync

Creates a new task category

Creates a new task category for the current tenant.

### Example

```bash
 createTaskCategoryAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **taskCategoryCreateDto** | [**TaskCategoryCreateDto**](TaskCategoryCreateDto.md) |  | [optional]

### Return type

[**TaskCategoryDto**](TaskCategoryDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteTaskCategoryAsync

Deletes a task category

Deletes the specified task category.

### Example

```bash
 deleteTaskCategoryAsync taskCategoryId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskCategoryId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]

### Return type

[**TaskCategoryDto**](TaskCategoryDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTaskCategoryByIdAsync

Gets a task category by ID

Retrieves the details of a task category using its unique identifier.

### Example

```bash
 getTaskCategoryByIdAsync taskCategoryId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskCategoryId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]

### Return type

[**TaskCategoryDto**](TaskCategoryDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTaskCategoryTaskTypesAsync

Retrieves task types for a category

Gets all task types belonging to the specified task category.

### Example

```bash
 getTaskCategoryTaskTypesAsync taskCategoryId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskCategoryId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]

### Return type

[**TaskCategoryDto**](TaskCategoryDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTenantTaskCategoriesAsync

Retrieves all task categories

Gets all task categories for the current tenant with OData support.

### Example

```bash
 getTenantTaskCategoriesAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**TaskCategoryDtoListEnvelope**](TaskCategoryDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateTaskCategoryAsync

Updates a task category

Updates the specified task category.

### Example

```bash
 updateTaskCategoryAsync taskCategoryId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskCategoryId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **taskCategoryUpdateDto** | [**TaskCategoryUpdateDto**](TaskCategoryUpdateDto.md) |  | [optional]

### Return type

[**TaskCategoryDto**](TaskCategoryDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

