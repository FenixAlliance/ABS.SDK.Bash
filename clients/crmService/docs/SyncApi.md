# SyncApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2CrmServiceSyncMePost**](SyncApi.md#apiV2CrmServiceSyncMePost) | **POST** /api/v2/CrmService/Sync/Me | 
[**apiV2CrmServiceSyncPost**](SyncApi.md#apiV2CrmServiceSyncPost) | **POST** /api/v2/CrmService/Sync | 
[**apiV2CrmServiceSyncTenantPost**](SyncApi.md#apiV2CrmServiceSyncTenantPost) | **POST** /api/v2/CrmService/Sync/Tenant | 
[**apiV2CrmServiceSyncUserPost**](SyncApi.md#apiV2CrmServiceSyncUserPost) | **POST** /api/v2/CrmService/Sync/User | 



## apiV2CrmServiceSyncMePost



### Example

```bash
 apiV2CrmServiceSyncMePost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ContactDtoListEnvelope**](ContactDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2CrmServiceSyncPost



### Example

```bash
 apiV2CrmServiceSyncPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ContactDtoListEnvelope**](ContactDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2CrmServiceSyncTenantPost



### Example

```bash
 apiV2CrmServiceSyncTenantPost  tenantId=value  relatedTenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **relatedTenantId** | **string** |  | [default to null]
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


## apiV2CrmServiceSyncUserPost



### Example

```bash
 apiV2CrmServiceSyncUserPost  tenantId=value  relatedUserId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **relatedUserId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ContactDtoListEnvelope**](ContactDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

