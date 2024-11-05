# SupportTicketPrioritiesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2SupportServiceSupportTicketPrioritiesCountGet**](SupportTicketPrioritiesApi.md#apiV2SupportServiceSupportTicketPrioritiesCountGet) | **GET** /api/v2/SupportService/SupportTicketPriorities/Count | 
[**apiV2SupportServiceSupportTicketPrioritiesGet**](SupportTicketPrioritiesApi.md#apiV2SupportServiceSupportTicketPrioritiesGet) | **GET** /api/v2/SupportService/SupportTicketPriorities | 
[**apiV2SupportServiceSupportTicketPrioritiesPost**](SupportTicketPrioritiesApi.md#apiV2SupportServiceSupportTicketPrioritiesPost) | **POST** /api/v2/SupportService/SupportTicketPriorities | 
[**apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete**](SupportTicketPrioritiesApi.md#apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete) | **DELETE** /api/v2/SupportService/SupportTicketPriorities/{supportTicketPriorityId} | 
[**apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet**](SupportTicketPrioritiesApi.md#apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet) | **GET** /api/v2/SupportService/SupportTicketPriorities/{supportTicketPriorityId} | 
[**apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut**](SupportTicketPrioritiesApi.md#apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut) | **PUT** /api/v2/SupportService/SupportTicketPriorities/{supportTicketPriorityId} | 



## apiV2SupportServiceSupportTicketPrioritiesCountGet



### Example

```bash
 apiV2SupportServiceSupportTicketPrioritiesCountGet  tenantId=value  api-version=value x-api-version:value
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


## apiV2SupportServiceSupportTicketPrioritiesGet



### Example

```bash
 apiV2SupportServiceSupportTicketPrioritiesGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportTicketPriorityDtoListEnvelope**](SupportTicketPriorityDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SupportServiceSupportTicketPrioritiesPost



### Example

```bash
 apiV2SupportServiceSupportTicketPrioritiesPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportTicketPriorityCreateDto** | [**SupportTicketPriorityCreateDto**](SupportTicketPriorityCreateDto.md) |  |
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


## apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete



### Example

```bash
 apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete supportTicketPriorityId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportTicketPriorityId** | **string** |  | [default to null]
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


## apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet



### Example

```bash
 apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet supportTicketPriorityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportTicketPriorityId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportTicketPriorityDtoEnvelope**](SupportTicketPriorityDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut



### Example

```bash
 apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut supportTicketPriorityId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportTicketPriorityId** | **string** |  | [default to null]
 **supportTicketPriorityUpdateDto** | [**SupportTicketPriorityUpdateDto**](SupportTicketPriorityUpdateDto.md) |  |
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

