# WebhooksApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getWebhookRequestsAsync**](WebhooksApi.md#getWebhookRequestsAsync) | **GET** /api/v2/SecurityService/Webhooks | Get all webhook requests
[**getWebhookRequestsCountAsync**](WebhooksApi.md#getWebhookRequestsCountAsync) | **GET** /api/v2/SecurityService/Webhooks/Count | Get webhook requests count



## getWebhookRequestsAsync

Get all webhook requests

Retrieves all webhook requests for the specified tenant.

### Example

```bash
 getWebhookRequestsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WebhookRequestDtoListEnvelope**](WebhookRequestDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getWebhookRequestsCountAsync

Get webhook requests count

Retrieves the count of webhook requests for the specified tenant.

### Example

```bash
 getWebhookRequestsCountAsync  tenantId=value  api-version=value x-api-version:value
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

