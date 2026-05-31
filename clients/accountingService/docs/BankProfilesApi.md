# BankProfilesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBankProfiles**](BankProfilesApi.md#getBankProfiles) | **GET** /api/v2/AccountingService/BankProfiles | Get all bank profiles for a tenant
[**getBankProfilesCount**](BankProfilesApi.md#getBankProfilesCount) | **GET** /api/v2/AccountingService/BankProfiles/Count | Get bank profiles count



## getBankProfiles

Get all bank profiles for a tenant

Retrieves all bank profiles for the specified tenant using OData query options.

### Example

```bash
 getBankProfiles  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BankProfileDtoListEnvelope**](BankProfileDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBankProfilesCount

Get bank profiles count

Returns the count of bank profiles for the specified tenant.

### Example

```bash
 getBankProfilesCount  tenantId=value  api-version=value x-api-version:value
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

