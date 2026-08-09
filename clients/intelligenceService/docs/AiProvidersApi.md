# AiProvidersApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAiProvidersAsync**](AiProvidersApi.md#getAiProvidersAsync) | **GET** /api/v2/IntelligenceService/AiProviders | Get the available AI providers



## getAiProvidersAsync

Get the available AI providers

Returns every AI provider key this instance has a registered adapter for. The set is a property of the deployment, so it is not tenant-scoped; what varies per tenant is the credential for a provider, which is never returned here.

### Example

```bash
 getAiProvidersAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**AiProviderDtoListEnvelope**](AiProviderDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

