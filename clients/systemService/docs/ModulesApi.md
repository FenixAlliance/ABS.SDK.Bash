# ModulesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllModules**](ModulesApi.md#getAllModules) | **GET** /api/v2/StudioService/Modules | Get all modules available on this suite server instance.
[**getAvailableModules**](ModulesApi.md#getAvailableModules) | **GET** /api/v2/StudioService/Modules/Data | Get all modules available to a tenant user.



## getAllModules

Get all modules available on this suite server instance.

### Example

```bash
 getAllModules  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**StudioModuleListEnvelope**](StudioModuleListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAvailableModules

Get all modules available to a tenant user.

### Example

```bash
 getAvailableModules  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ModuleListEnvelope**](ModuleListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

