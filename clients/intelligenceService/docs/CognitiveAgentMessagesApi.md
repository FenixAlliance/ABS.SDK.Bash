# CognitiveAgentMessagesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCognitiveAgentMessageByIdAsync**](CognitiveAgentMessagesApi.md#getCognitiveAgentMessageByIdAsync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{conversationId}/Messages/{id} | Get a cognitive agent conversation message by ID
[**getCognitiveAgentMessagesAsync**](CognitiveAgentMessagesApi.md#getCognitiveAgentMessagesAsync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{conversationId}/Messages | Get all messages for a cognitive agent conversation
[**getCognitiveAgentMessagesCountAsync**](CognitiveAgentMessagesApi.md#getCognitiveAgentMessagesCountAsync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{conversationId}/Messages/Count | Get message count for a cognitive agent conversation



## getCognitiveAgentMessageByIdAsync

Get a cognitive agent conversation message by ID

Retrieves a specific durable message of a conversation by its identifier.

### Example

```bash
 getCognitiveAgentMessageByIdAsync  tenantId=value agentId=value conversationId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **agentId** | **string** |  | [default to null]
 **conversationId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CognitiveAgentMessageDtoEnvelope**](CognitiveAgentMessageDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCognitiveAgentMessagesAsync

Get all messages for a cognitive agent conversation

Retrieves all durable messages for the specified conversation, agent and tenant.

### Example

```bash
 getCognitiveAgentMessagesAsync  tenantId=value agentId=value conversationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **agentId** | **string** |  | [default to null]
 **conversationId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveAgentMessageDtoCollectionQueryParameters** | [**CognitiveAgentMessageDtoCollectionQueryParameters**](CognitiveAgentMessageDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**CognitiveAgentMessageDtoListEnvelope**](CognitiveAgentMessageDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCognitiveAgentMessagesCountAsync

Get message count for a cognitive agent conversation

Returns the count of durable messages for the specified conversation, agent and tenant.

### Example

```bash
 getCognitiveAgentMessagesCountAsync  tenantId=value agentId=value conversationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **agentId** | **string** |  | [default to null]
 **conversationId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveAgentMessageDtoCollectionQueryParameters** | [**CognitiveAgentMessageDtoCollectionQueryParameters**](CognitiveAgentMessageDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

