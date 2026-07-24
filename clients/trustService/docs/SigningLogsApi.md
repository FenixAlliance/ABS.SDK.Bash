# SigningLogsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSigningLogByIdAsync**](SigningLogsApi.md#getSigningLogByIdAsync) | **GET** /api/v2/TrustService/SigningLogs/{id} | Get signing log by ID
[**getSigningLogsAsync**](SigningLogsApi.md#getSigningLogsAsync) | **GET** /api/v2/TrustService/SigningLogs | Get all signing logs
[**getSigningLogsCountAsync**](SigningLogsApi.md#getSigningLogsCountAsync) | **GET** /api/v2/TrustService/SigningLogs/Count | Get signing logs count



## getSigningLogByIdAsync

Get signing log by ID

Retrieves a specific signing log by its identifier.

### Example

```bash
 getSigningLogByIdAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SigningLogDto**](SigningLogDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSigningLogsAsync

Get all signing logs

Retrieves all signing logs for the specified tenant.

### Example

```bash
 getSigningLogsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SigningLogDtoListEnvelope**](SigningLogDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSigningLogsCountAsync

Get signing logs count

Returns the count of signing logs for the specified tenant.

### Example

```bash
 getSigningLogsCountAsync  tenantId=value  api-version=value x-api-version:value
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

