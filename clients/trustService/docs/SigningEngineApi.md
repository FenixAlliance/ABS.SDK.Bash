# SigningEngineApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProvidersAsync**](SigningEngineApi.md#getProvidersAsync) | **GET** /api/v2/TrustService/SigningEngine/Providers | List signing providers
[**getProvidersCountAsync**](SigningEngineApi.md#getProvidersCountAsync) | **GET** /api/v2/TrustService/SigningEngine/Providers/Count | Count signing providers
[**previewAsync**](SigningEngineApi.md#previewAsync) | **POST** /api/v2/TrustService/SigningEngine/Preview | Preview signing readiness



## getProvidersAsync

List signing providers

Returns the registered alpha signing providers (Noop / Manual / External). OData-queryable.

### Example

```bash
 getProvidersAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TrustSigningProviderDescriptorDtoListEnvelope**](TrustSigningProviderDescriptorDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getProvidersCountAsync

Count signing providers

Returns the count of registered alpha signing providers. OData-queryable.

### Example

```bash
 getProvidersCountAsync  tenantId=value  api-version=value x-api-version:value
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


## previewAsync

Preview signing readiness

Side-effect-free: validates a signing request and reports whether it can proceed and with what policy.

### Example

```bash
 previewAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **trustSigningRequestDto** | [**TrustSigningRequestDto**](TrustSigningRequestDto.md) |  | [optional]

### Return type

[**TrustSigningReadinessDtoEnvelope**](TrustSigningReadinessDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

