# OverviewApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSystemOverview**](OverviewApi.md#getSystemOverview) | **GET** /api/v2/SystemService/Overview | Get system overview information



## getSystemOverview

Get system overview information

Returns runtime, memory, and entity count information for the system

### Example

```bash
 getSystemOverview  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SystemOverviewDtoEnvelope**](SystemOverviewDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

