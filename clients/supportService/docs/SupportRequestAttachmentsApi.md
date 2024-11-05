# SupportRequestAttachmentsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2SupportServiceSupportRequestAttachmentsCountGet**](SupportRequestAttachmentsApi.md#apiV2SupportServiceSupportRequestAttachmentsCountGet) | **GET** /api/v2/SupportService/SupportRequestAttachments/Count | 
[**apiV2SupportServiceSupportRequestAttachmentsGet**](SupportRequestAttachmentsApi.md#apiV2SupportServiceSupportRequestAttachmentsGet) | **GET** /api/v2/SupportService/SupportRequestAttachments | 
[**apiV2SupportServiceSupportRequestAttachmentsPost**](SupportRequestAttachmentsApi.md#apiV2SupportServiceSupportRequestAttachmentsPost) | **POST** /api/v2/SupportService/SupportRequestAttachments | 
[**apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete**](SupportRequestAttachmentsApi.md#apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete) | **DELETE** /api/v2/SupportService/SupportRequestAttachments/{supportRequestAttachmentId} | 
[**apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet**](SupportRequestAttachmentsApi.md#apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet) | **GET** /api/v2/SupportService/SupportRequestAttachments/{supportRequestAttachmentId} | 
[**apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut**](SupportRequestAttachmentsApi.md#apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut) | **PUT** /api/v2/SupportService/SupportRequestAttachments/{supportRequestAttachmentId} | 



## apiV2SupportServiceSupportRequestAttachmentsCountGet



### Example

```bash
 apiV2SupportServiceSupportRequestAttachmentsCountGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
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


## apiV2SupportServiceSupportRequestAttachmentsGet



### Example

```bash
 apiV2SupportServiceSupportRequestAttachmentsGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportRequestAttachmentDtoListEnvelope**](SupportRequestAttachmentDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SupportServiceSupportRequestAttachmentsPost



### Example

```bash
 apiV2SupportServiceSupportRequestAttachmentsPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportRequestAttachmentCreateDto** | [**SupportRequestAttachmentCreateDto**](SupportRequestAttachmentCreateDto.md) |  |
 **tenantId** | **string** |  | [optional] [default to null]
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


## apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete



### Example

```bash
 apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete supportRequestAttachmentId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportRequestAttachmentId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
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


## apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet



### Example

```bash
 apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet supportRequestAttachmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportRequestAttachmentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportRequestAttachmentDtoEnvelope**](SupportRequestAttachmentDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut



### Example

```bash
 apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut supportRequestAttachmentId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportRequestAttachmentId** | **string** |  | [default to null]
 **supportRequestAttachmentUpdateDto** | [**SupportRequestAttachmentUpdateDto**](SupportRequestAttachmentUpdateDto.md) |  |
 **tenantId** | **string** |  | [optional] [default to null]
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

