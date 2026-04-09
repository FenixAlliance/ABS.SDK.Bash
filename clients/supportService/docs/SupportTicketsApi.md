# SupportTicketsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSupportTicketAsync**](SupportTicketsApi.md#createSupportTicketAsync) | **POST** /api/v2/SupportService/SupportTickets | Create a new support ticket
[**deleteSupportTicketAsync**](SupportTicketsApi.md#deleteSupportTicketAsync) | **DELETE** /api/v2/SupportService/SupportTickets/{supportTicketId} | Delete a support ticket
[**deleteSupportTicketConversationAsync**](SupportTicketsApi.md#deleteSupportTicketConversationAsync) | **DELETE** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations/{supportTicketConversationId} | Delete a conversation from a support ticket
[**getSupportTicketAsync**](SupportTicketsApi.md#getSupportTicketAsync) | **GET** /api/v2/SupportService/SupportTickets/{supportTicketId} | Retrieve a support ticket by ID
[**getSupportTicketConversationAsync**](SupportTicketsApi.md#getSupportTicketConversationAsync) | **GET** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations/{supportTicketConversationId} | Retrieve a specific conversation for a support ticket
[**getSupportTicketConversationMessagesAsync**](SupportTicketsApi.md#getSupportTicketConversationMessagesAsync) | **GET** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations/{supportTicketConversationId}/Messages | Retrieve messages for a support ticket conversation
[**getSupportTicketConversationsAsync**](SupportTicketsApi.md#getSupportTicketConversationsAsync) | **GET** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations | Retrieve conversations for a support ticket
[**getSupportTicketsAsync**](SupportTicketsApi.md#getSupportTicketsAsync) | **GET** /api/v2/SupportService/SupportTickets | Retrieve a list of support tickets
[**getSupportTicketsCountAsync**](SupportTicketsApi.md#getSupportTicketsCountAsync) | **GET** /api/v2/SupportService/SupportTickets/Count | Get the count of support tickets
[**relateSupportTicketToConversationAsync**](SupportTicketsApi.md#relateSupportTicketToConversationAsync) | **POST** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations | Create a conversation for a support ticket
[**updateSupportTicketAsync**](SupportTicketsApi.md#updateSupportTicketAsync) | **PUT** /api/v2/SupportService/SupportTickets/{supportTicketId} | Update a support ticket



## createSupportTicketAsync

Create a new support ticket

Creates a new support ticket for the specified tenant.

### Example

```bash
 createSupportTicketAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **supportTicketCreateDto** | [**SupportTicketCreateDto**](SupportTicketCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteSupportTicketAsync

Delete a support ticket

Deletes a support ticket by its unique identifier.

### Example

```bash
 deleteSupportTicketAsync  tenantId=value supportTicketId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportTicketId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteSupportTicketConversationAsync

Delete a conversation from a support ticket

Deletes a specific conversation from a support ticket.

### Example

```bash
 deleteSupportTicketConversationAsync  tenantId=value supportTicketId=value supportTicketConversationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportTicketId** | **string** |  | [default to null]
 **supportTicketConversationId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSupportTicketAsync

Retrieve a support ticket by ID

Retrieves a single support ticket by its unique identifier.

### Example

```bash
 getSupportTicketAsync  tenantId=value supportTicketId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportTicketId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportTicketDtoEnvelope**](SupportTicketDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSupportTicketConversationAsync

Retrieve a specific conversation for a support ticket

Retrieves a single conversation by its ID for a specific support ticket.

### Example

```bash
 getSupportTicketConversationAsync  tenantId=value supportTicketId=value supportTicketConversationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportTicketId** | **string** |  | [default to null]
 **supportTicketConversationId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportTicketConversationDtoEnvelope**](SupportTicketConversationDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSupportTicketConversationMessagesAsync

Retrieve messages for a support ticket conversation

Retrieves the list of messages within a specific conversation of a support ticket.

### Example

```bash
 getSupportTicketConversationMessagesAsync  tenantId=value supportTicketId=value supportTicketConversationId=value  pageNumber=value  pageSize=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportTicketId** | **string** |  | [default to null]
 **supportTicketConversationId** | **string** |  | [default to null]
 **pageNumber** | **integer** |  | [optional] [default to null]
 **pageSize** | **integer** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**PrivateMessageDtoListEnvelope**](PrivateMessageDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSupportTicketConversationsAsync

Retrieve conversations for a support ticket

Retrieves the list of conversations associated with a specific support ticket.

### Example

```bash
 getSupportTicketConversationsAsync  tenantId=value supportTicketId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportTicketId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportTicketConversationDtoListEnvelope**](SupportTicketConversationDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSupportTicketsAsync

Retrieve a list of support tickets

Retrieves a list of support tickets for the specified tenant with OData query support.

### Example

```bash
 getSupportTicketsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportTicketDtoListEnvelope**](SupportTicketDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSupportTicketsCountAsync

Get the count of support tickets

Returns the total count of support tickets for the specified tenant with OData query support.

### Example

```bash
 getSupportTicketsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## relateSupportTicketToConversationAsync

Create a conversation for a support ticket

Creates a new conversation and associates it with the specified support ticket.

### Example

```bash
 relateSupportTicketToConversationAsync  tenantId=value supportTicketId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportTicketId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **supportTicketConversationCreateDto** | [**SupportTicketConversationCreateDto**](SupportTicketConversationCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateSupportTicketAsync

Update a support ticket

Updates an existing support ticket by its unique identifier.

### Example

```bash
 updateSupportTicketAsync  tenantId=value supportTicketId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportTicketId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **supportTicketUpdateDto** | [**SupportTicketUpdateDto**](SupportTicketUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

