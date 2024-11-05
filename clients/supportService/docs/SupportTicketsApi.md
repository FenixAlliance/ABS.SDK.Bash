# SupportTicketsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2SupportServiceSupportTicketsCountGet**](SupportTicketsApi.md#apiV2SupportServiceSupportTicketsCountGet) | **GET** /api/v2/SupportService/SupportTickets/Count | 
[**apiV2SupportServiceSupportTicketsGet**](SupportTicketsApi.md#apiV2SupportServiceSupportTicketsGet) | **GET** /api/v2/SupportService/SupportTickets | 
[**apiV2SupportServiceSupportTicketsPost**](SupportTicketsApi.md#apiV2SupportServiceSupportTicketsPost) | **POST** /api/v2/SupportService/SupportTickets | 
[**apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet**](SupportTicketsApi.md#apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet) | **GET** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations | 
[**apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost**](SupportTicketsApi.md#apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost) | **POST** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations | 
[**apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete**](SupportTicketsApi.md#apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete) | **DELETE** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations/{supportTicketConversationId} | 
[**apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet**](SupportTicketsApi.md#apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet) | **GET** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations/{supportTicketConversationId} | 
[**apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet**](SupportTicketsApi.md#apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet) | **GET** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations/{supportTicketConversationId}/Messages | 
[**apiV2SupportServiceSupportTicketsSupportTicketIdDelete**](SupportTicketsApi.md#apiV2SupportServiceSupportTicketsSupportTicketIdDelete) | **DELETE** /api/v2/SupportService/SupportTickets/{supportTicketId} | 
[**apiV2SupportServiceSupportTicketsSupportTicketIdGet**](SupportTicketsApi.md#apiV2SupportServiceSupportTicketsSupportTicketIdGet) | **GET** /api/v2/SupportService/SupportTickets/{supportTicketId} | 
[**apiV2SupportServiceSupportTicketsSupportTicketIdPut**](SupportTicketsApi.md#apiV2SupportServiceSupportTicketsSupportTicketIdPut) | **PUT** /api/v2/SupportService/SupportTickets/{supportTicketId} | 



## apiV2SupportServiceSupportTicketsCountGet



### Example

```bash
 apiV2SupportServiceSupportTicketsCountGet  tenantId=value  api-version=value x-api-version:value
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


## apiV2SupportServiceSupportTicketsGet



### Example

```bash
 apiV2SupportServiceSupportTicketsGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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


## apiV2SupportServiceSupportTicketsPost



### Example

```bash
 apiV2SupportServiceSupportTicketsPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportTicketCreateDto** | [**SupportTicketCreateDto**](SupportTicketCreateDto.md) |  |
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


## apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet



### Example

```bash
 apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet supportTicketId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportTicketId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportTicketConversationDtoListEnvelope**](SupportTicketConversationDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost



### Example

```bash
 apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost supportTicketId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportTicketId** | **string** |  | [default to null]
 **supportTicketConversationCreateDto** | [**SupportTicketConversationCreateDto**](SupportTicketConversationCreateDto.md) |  |
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


## apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete



### Example

```bash
 apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete supportTicketId=value supportTicketConversationId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportTicketId** | **string** |  | [default to null]
 **supportTicketConversationId** | **string** |  | [default to null]
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


## apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet



### Example

```bash
 apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet supportTicketId=value supportTicketConversationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportTicketId** | **string** |  | [default to null]
 **supportTicketConversationId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportTicketConversationDtoEnvelope**](SupportTicketConversationDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet



### Example

```bash
 apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet supportTicketConversationId=value supportTicketId=value  pageNumber=value  pageSize=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportTicketConversationId** | **string** |  | [default to null]
 **supportTicketId** | **string** |  | [default to null]
 **pageNumber** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**PrivateMessageDtoListEnvelope**](PrivateMessageDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SupportServiceSupportTicketsSupportTicketIdDelete



### Example

```bash
 apiV2SupportServiceSupportTicketsSupportTicketIdDelete supportTicketId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportTicketId** | **string** |  | [default to null]
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


## apiV2SupportServiceSupportTicketsSupportTicketIdGet



### Example

```bash
 apiV2SupportServiceSupportTicketsSupportTicketIdGet supportTicketId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportTicketId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportTicketDtoEnvelope**](SupportTicketDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SupportServiceSupportTicketsSupportTicketIdPut



### Example

```bash
 apiV2SupportServiceSupportTicketsSupportTicketIdPut supportTicketId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportTicketId** | **string** |  | [default to null]
 **supportTicketUpdateDto** | [**SupportTicketUpdateDto**](SupportTicketUpdateDto.md) |  |
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

