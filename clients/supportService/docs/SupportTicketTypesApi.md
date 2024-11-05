# SupportTicketTypesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2SupportServiceSupportTicketTypesCountGet**](SupportTicketTypesApi.md#apiV2SupportServiceSupportTicketTypesCountGet) | **GET** /api/v2/SupportService/SupportTicketTypes/Count | 
[**apiV2SupportServiceSupportTicketTypesGet**](SupportTicketTypesApi.md#apiV2SupportServiceSupportTicketTypesGet) | **GET** /api/v2/SupportService/SupportTicketTypes | 
[**apiV2SupportServiceSupportTicketTypesPost**](SupportTicketTypesApi.md#apiV2SupportServiceSupportTicketTypesPost) | **POST** /api/v2/SupportService/SupportTicketTypes | 
[**apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete**](SupportTicketTypesApi.md#apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete) | **DELETE** /api/v2/SupportService/SupportTicketTypes/{supportTicketTypeId} | 
[**apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet**](SupportTicketTypesApi.md#apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet) | **GET** /api/v2/SupportService/SupportTicketTypes/{supportTicketTypeId} | 
[**apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut**](SupportTicketTypesApi.md#apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut) | **PUT** /api/v2/SupportService/SupportTicketTypes/{supportTicketTypeId} | 



## apiV2SupportServiceSupportTicketTypesCountGet



### Example

```bash
 apiV2SupportServiceSupportTicketTypesCountGet  tenantId=value  api-version=value x-api-version:value
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


## apiV2SupportServiceSupportTicketTypesGet



### Example

```bash
 apiV2SupportServiceSupportTicketTypesGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportTicketTypeDtoListEnvelope**](SupportTicketTypeDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SupportServiceSupportTicketTypesPost



### Example

```bash
 apiV2SupportServiceSupportTicketTypesPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportTicketTypeCreateDto** | [**SupportTicketTypeCreateDto**](SupportTicketTypeCreateDto.md) |  |
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


## apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete



### Example

```bash
 apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete supportTicketTypeId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportTicketTypeId** | **string** |  | [default to null]
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


## apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet



### Example

```bash
 apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet supportTicketTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportTicketTypeId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportTicketTypeDtoEnvelope**](SupportTicketTypeDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut



### Example

```bash
 apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut supportTicketTypeId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportTicketTypeId** | **string** |  | [default to null]
 **supportTicketTypeUpdateDto** | [**SupportTicketTypeUpdateDto**](SupportTicketTypeUpdateDto.md) |  |
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

