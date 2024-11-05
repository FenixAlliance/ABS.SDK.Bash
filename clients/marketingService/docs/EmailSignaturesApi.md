# EmailSignaturesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2MarketingServiceEmailSignaturesCountGet**](EmailSignaturesApi.md#apiV2MarketingServiceEmailSignaturesCountGet) | **GET** /api/v2/MarketingService/EmailSignatures/Count | 
[**apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete**](EmailSignaturesApi.md#apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete) | **DELETE** /api/v2/MarketingService/EmailSignatures/{emailsignatureId} | 
[**apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet**](EmailSignaturesApi.md#apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet) | **GET** /api/v2/MarketingService/EmailSignatures/{emailsignatureId} | 
[**apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut**](EmailSignaturesApi.md#apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut) | **PUT** /api/v2/MarketingService/EmailSignatures/{emailsignatureId} | 
[**apiV2MarketingServiceEmailSignaturesGet**](EmailSignaturesApi.md#apiV2MarketingServiceEmailSignaturesGet) | **GET** /api/v2/MarketingService/EmailSignatures | 
[**apiV2MarketingServiceEmailSignaturesPost**](EmailSignaturesApi.md#apiV2MarketingServiceEmailSignaturesPost) | **POST** /api/v2/MarketingService/EmailSignatures | 



## apiV2MarketingServiceEmailSignaturesCountGet



### Example

```bash
 apiV2MarketingServiceEmailSignaturesCountGet  tenantId=value  api-version=value x-api-version:value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete



### Example

```bash
 apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete  tenantId=value emailsignatureId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **emailsignatureId** | **string** |  | [default to null]
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


## apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet



### Example

```bash
 apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet  tenantId=value emailsignatureId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **emailsignatureId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmailSignatureDtoEnvelope**](EmailSignatureDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut



### Example

```bash
 apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut  tenantId=value emailsignatureId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **emailsignatureId** | **string** |  | [default to null]
 **emailSignatureUpdateDto** | [**EmailSignatureUpdateDto**](EmailSignatureUpdateDto.md) |  |
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2MarketingServiceEmailSignaturesGet



### Example

```bash
 apiV2MarketingServiceEmailSignaturesGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmailSignatureDtoListEnvelope**](EmailSignatureDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2MarketingServiceEmailSignaturesPost



### Example

```bash
 apiV2MarketingServiceEmailSignaturesPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **emailSignatureCreateDto** | [**EmailSignatureCreateDto**](EmailSignatureCreateDto.md) |  |
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

