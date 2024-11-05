# EmailTemplatesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2MarketingServiceEmailTemplatesCountGet**](EmailTemplatesApi.md#apiV2MarketingServiceEmailTemplatesCountGet) | **GET** /api/v2/MarketingService/EmailTemplates/Count | 
[**apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete**](EmailTemplatesApi.md#apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete) | **DELETE** /api/v2/MarketingService/EmailTemplates/{emailTemplateId} | 
[**apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet**](EmailTemplatesApi.md#apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet) | **GET** /api/v2/MarketingService/EmailTemplates/{emailTemplateId} | 
[**apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut**](EmailTemplatesApi.md#apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut) | **PUT** /api/v2/MarketingService/EmailTemplates/{emailTemplateId} | 
[**apiV2MarketingServiceEmailTemplatesGet**](EmailTemplatesApi.md#apiV2MarketingServiceEmailTemplatesGet) | **GET** /api/v2/MarketingService/EmailTemplates | 
[**apiV2MarketingServiceEmailTemplatesPost**](EmailTemplatesApi.md#apiV2MarketingServiceEmailTemplatesPost) | **POST** /api/v2/MarketingService/EmailTemplates | 



## apiV2MarketingServiceEmailTemplatesCountGet



### Example

```bash
 apiV2MarketingServiceEmailTemplatesCountGet  tenantId=value  api-version=value x-api-version:value
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


## apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete



### Example

```bash
 apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete  tenantId=value emailTemplateId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **emailTemplateId** | **string** |  | [default to null]
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


## apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet



### Example

```bash
 apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet  tenantId=value  emailTemplatesId=value emailTemplateId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **emailTemplatesId** | **string** |  | [default to null]
 **emailTemplateId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmailTemplateDtoEnvelope**](EmailTemplateDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut



### Example

```bash
 apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut  tenantId=value emailTemplateId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **emailTemplateId** | **string** |  | [default to null]
 **emailTemplateUpdateDto** | [**EmailTemplateUpdateDto**](EmailTemplateUpdateDto.md) |  |
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


## apiV2MarketingServiceEmailTemplatesGet



### Example

```bash
 apiV2MarketingServiceEmailTemplatesGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmailTemplateDtoListEnvelope**](EmailTemplateDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2MarketingServiceEmailTemplatesPost



### Example

```bash
 apiV2MarketingServiceEmailTemplatesPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **emailTemplateCreateDto** | [**EmailTemplateCreateDto**](EmailTemplateCreateDto.md) |  |
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

