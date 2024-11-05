# SupportRequestsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2SupportServiceSupportRequestsCountGet**](SupportRequestsApi.md#apiV2SupportServiceSupportRequestsCountGet) | **GET** /api/v2/SupportService/SupportRequests/Count | 
[**apiV2SupportServiceSupportRequestsGet**](SupportRequestsApi.md#apiV2SupportServiceSupportRequestsGet) | **GET** /api/v2/SupportService/SupportRequests | 
[**apiV2SupportServiceSupportRequestsPost**](SupportRequestsApi.md#apiV2SupportServiceSupportRequestsPost) | **POST** /api/v2/SupportService/SupportRequests | 
[**apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet**](SupportRequestsApi.md#apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet) | **GET** /api/v2/SupportService/SupportRequests/{supportRequestId}/Attachments/{attachmentId} | 
[**apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet**](SupportRequestsApi.md#apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet) | **GET** /api/v2/SupportService/SupportRequests/{supportRequestId}/Attachments/Count | 
[**apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet**](SupportRequestsApi.md#apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet) | **GET** /api/v2/SupportService/SupportRequests/{supportRequestId}/Attachments | 
[**apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost**](SupportRequestsApi.md#apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost) | **POST** /api/v2/SupportService/SupportRequests/{supportRequestId}/Attachments | 
[**apiV2SupportServiceSupportRequestsSupportRequestIdDelete**](SupportRequestsApi.md#apiV2SupportServiceSupportRequestsSupportRequestIdDelete) | **DELETE** /api/v2/SupportService/SupportRequests/{supportRequestId} | 
[**apiV2SupportServiceSupportRequestsSupportRequestIdGet**](SupportRequestsApi.md#apiV2SupportServiceSupportRequestsSupportRequestIdGet) | **GET** /api/v2/SupportService/SupportRequests/{supportRequestId} | 
[**apiV2SupportServiceSupportRequestsSupportRequestIdPut**](SupportRequestsApi.md#apiV2SupportServiceSupportRequestsSupportRequestIdPut) | **PUT** /api/v2/SupportService/SupportRequests/{supportRequestId} | 
[**apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet**](SupportRequestsApi.md#apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet) | **GET** /api/v2/SupportService/SupportRequests/{supportRequestId}/Tickets | 



## apiV2SupportServiceSupportRequestsCountGet



### Example

```bash
 apiV2SupportServiceSupportRequestsCountGet  tenantId=value  api-version=value x-api-version:value
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


## apiV2SupportServiceSupportRequestsGet



### Example

```bash
 apiV2SupportServiceSupportRequestsGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportRequestDtoListEnvelope**](SupportRequestDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SupportServiceSupportRequestsPost



### Example

```bash
 apiV2SupportServiceSupportRequestsPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportRequestCreateDto** | [**SupportRequestCreateDto**](SupportRequestCreateDto.md) |  |
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


## apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet



### Example

```bash
 apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet supportRequestId=value attachmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportRequestId** | **string** |  | [default to null]
 **attachmentId** | **string** |  | [default to null]
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


## apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet



### Example

```bash
 apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet supportRequestId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportRequestId** | **string** |  | [default to null]
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


## apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet



### Example

```bash
 apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet supportRequestId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportRequestId** | **string** |  | [default to null]
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


## apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost



### Example

```bash
 apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost supportRequestId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportRequestId** | **string** |  | [default to null]
 **supportRequestAttachmentCreateDto** | [**SupportRequestAttachmentCreateDto**](SupportRequestAttachmentCreateDto.md) |  |
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


## apiV2SupportServiceSupportRequestsSupportRequestIdDelete



### Example

```bash
 apiV2SupportServiceSupportRequestsSupportRequestIdDelete supportRequestId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportRequestId** | **string** |  | [default to null]
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


## apiV2SupportServiceSupportRequestsSupportRequestIdGet



### Example

```bash
 apiV2SupportServiceSupportRequestsSupportRequestIdGet supportRequestId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportRequestId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportRequestDtoEnvelope**](SupportRequestDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SupportServiceSupportRequestsSupportRequestIdPut



### Example

```bash
 apiV2SupportServiceSupportRequestsSupportRequestIdPut supportRequestId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportRequestId** | **string** |  | [default to null]
 **supportRequestUpdateDto** | [**SupportRequestUpdateDto**](SupportRequestUpdateDto.md) |  |
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


## apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet



### Example

```bash
 apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet supportRequestId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportRequestId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportTicketDtoListEnvelope**](SupportTicketDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

