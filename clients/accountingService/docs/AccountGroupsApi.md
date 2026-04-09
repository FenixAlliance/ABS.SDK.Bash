# AccountGroupsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAccountGroup**](AccountGroupsApi.md#createAccountGroup) | **POST** /api/v2/AccountingService/AccountGroups | Creates a new account group
[**deleteAccountGroup**](AccountGroupsApi.md#deleteAccountGroup) | **DELETE** /api/v2/AccountingService/AccountGroups/{accountGroupId} | Deletes an existing account group
[**getAccountGroup**](AccountGroupsApi.md#getAccountGroup) | **GET** /api/v2/AccountingService/AccountGroups/{accountGroupId} | Gets the current tenant account group
[**getAccountGroups**](AccountGroupsApi.md#getAccountGroups) | **GET** /api/v2/AccountingService/AccountGroups | Gets the current tenant account groups
[**getAccountGroupsCountAsync**](AccountGroupsApi.md#getAccountGroupsCountAsync) | **GET** /api/v2/AccountingService/AccountGroups/Count | Gets the current tenant accounts count
[**updateAccountGroup**](AccountGroupsApi.md#updateAccountGroup) | **PUT** /api/v2/AccountingService/AccountGroups/{accountGroupId} | Updates an existing account group



## createAccountGroup

Creates a new account group

Creates a new account group.

### Example

```bash
 createAccountGroup  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **accountGroupCreateDto** | [**AccountGroupCreateDto**](AccountGroupCreateDto.md) |  | [optional]

### Return type

[**AccountGroupDtoEnvelope**](AccountGroupDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteAccountGroup

Deletes an existing account group

Deletes an existing account group.

### Example

```bash
 deleteAccountGroup  tenantId=value accountGroupId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **accountGroupId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAccountGroup

Gets the current tenant account group

Get the currently acting tenant account group.

### Example

```bash
 getAccountGroup  tenantId=value accountGroupId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **accountGroupId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**AccountGroupDtoEnvelope**](AccountGroupDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAccountGroups

Gets the current tenant account groups

Get the currently acting tenant account groups.

### Example

```bash
 getAccountGroups  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**AccountGroupDtoListEnvelope**](AccountGroupDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAccountGroupsCountAsync

Gets the current tenant accounts count

Get the currently acting tenant accounts count.

### Example

```bash
 getAccountGroupsCountAsync  tenantId=value  api-version=value x-api-version:value
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

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateAccountGroup

Updates an existing account group

Updates an existing account group.

### Example

```bash
 updateAccountGroup  tenantId=value accountGroupId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **accountGroupId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **accountGroupUpdateDto** | [**AccountGroupUpdateDto**](AccountGroupUpdateDto.md) |  | [optional]

### Return type

[**AccountGroupDtoEnvelope**](AccountGroupDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

