# StockApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getContactsAsync**](StockApi.md#getContactsAsync) | **GET** /api/v2/LogisticsService/Stock | Get all stock-related contacts



## getContactsAsync

Get all stock-related contacts

Retrieves all business-owned contacts related to stock and logistics for the specified tenant.

### Example

```bash
 getContactsAsync  tenantId=value  api-version=value x-api-version:value
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

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

