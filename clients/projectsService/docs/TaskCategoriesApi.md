# TaskCategoriesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ProjectsServiceTaskCategoriesGet**](TaskCategoriesApi.md#apiV2ProjectsServiceTaskCategoriesGet) | **GET** /api/v2/ProjectsService/TaskCategories | 
[**apiV2ProjectsServiceTaskCategoriesPost**](TaskCategoriesApi.md#apiV2ProjectsServiceTaskCategoriesPost) | **POST** /api/v2/ProjectsService/TaskCategories | 
[**apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete**](TaskCategoriesApi.md#apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete) | **DELETE** /api/v2/ProjectsService/TaskCategories/{taskCategoryId} | 
[**apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet**](TaskCategoriesApi.md#apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet) | **GET** /api/v2/ProjectsService/TaskCategories/{taskCategoryId} | 
[**apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut**](TaskCategoriesApi.md#apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut) | **PUT** /api/v2/ProjectsService/TaskCategories/{taskCategoryId} | 
[**apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet**](TaskCategoriesApi.md#apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet) | **GET** /api/v2/ProjectsService/TaskCategories/{taskCategoryId}/Types | 



## apiV2ProjectsServiceTaskCategoriesGet



### Example

```bash
 apiV2ProjectsServiceTaskCategoriesGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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


## apiV2ProjectsServiceTaskCategoriesPost



### Example

```bash
 apiV2ProjectsServiceTaskCategoriesPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **taskCategoryCreateDto** | [**TaskCategoryCreateDto**](TaskCategoryCreateDto.md) |  | [optional]

### Return type

[**TaskCategoryDto**](TaskCategoryDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete



### Example

```bash
 apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete taskCategoryId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskCategoryId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TaskCategoryDto**](TaskCategoryDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet



### Example

```bash
 apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet taskCategoryId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskCategoryId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TaskCategoryDto**](TaskCategoryDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut



### Example

```bash
 apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut taskCategoryId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskCategoryId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **taskCategoryUpdateDto** | [**TaskCategoryUpdateDto**](TaskCategoryUpdateDto.md) |  | [optional]

### Return type

[**TaskCategoryDto**](TaskCategoryDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet



### Example

```bash
 apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet taskCategoryId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskCategoryId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TaskCategoryDto**](TaskCategoryDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

