# SyncApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**syncCurrentHolderToCurrentTenantCrm**](SyncApi.md#syncCurrentHolderToCurrentTenantCrm) | **POST** /api/v2/CrmService/Sync | Sync the current user into the current tenant&#39;s contact list
[**syncCurrentHolderToTenantCrm**](SyncApi.md#syncCurrentHolderToTenantCrm) | **POST** /api/v2/CrmService/Sync/Me | Sync the current user into a tenant&#39;s contact list
[**syncHolderToTenantCrmAsync**](SyncApi.md#syncHolderToTenantCrmAsync) | **POST** /api/v2/CrmService/Sync/User | Sync a user into a tenant&#39;s contact list
[**syncTenantToTenantCrm**](SyncApi.md#syncTenantToTenantCrm) | **POST** /api/v2/CrmService/Sync/Tenant | Sync a tenant into another tenant&#39;s contact list



## syncCurrentHolderToCurrentTenantCrm

Sync the current user into the current tenant's contact list

Synchronizes the currently authenticated user into the current tenant's CRM contact list.

### Example

```bash
 syncCurrentHolderToCurrentTenantCrm  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**Envelope**](Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## syncCurrentHolderToTenantCrm

Sync the current user into a tenant's contact list

Synchronizes the currently authenticated user into the specified tenant's CRM contact list.

### Example

```bash
 syncCurrentHolderToTenantCrm  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**Envelope**](Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## syncHolderToTenantCrmAsync

Sync a user into a tenant's contact list

Synchronizes a specified user into the tenant's CRM contact list.

### Example

```bash
 syncHolderToTenantCrmAsync  tenantId=value  relatedUserId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **relatedUserId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**Envelope**](Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## syncTenantToTenantCrm

Sync a tenant into another tenant's contact list

Synchronizes a tenant into another tenant's CRM contact list.

### Example

```bash
 syncTenantToTenantCrm  tenantId=value  relatedTenantId=value  api-version=value x-api-version:value
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

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

