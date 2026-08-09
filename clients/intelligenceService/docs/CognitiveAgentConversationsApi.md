# CognitiveAgentConversationsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCognitiveAgentConversationAsync**](CognitiveAgentConversationsApi.md#createCognitiveAgentConversationAsync) | **POST** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations | Create a new cognitive agent conversation
[**deleteCognitiveAgentConversationAsync**](CognitiveAgentConversationsApi.md#deleteCognitiveAgentConversationAsync) | **DELETE** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{id} | Delete a cognitive agent conversation
[**getCognitiveAgentConversationByIdAsync**](CognitiveAgentConversationsApi.md#getCognitiveAgentConversationByIdAsync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{id} | Get a cognitive agent conversation by ID
[**getCognitiveAgentConversationsAsync**](CognitiveAgentConversationsApi.md#getCognitiveAgentConversationsAsync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations | Get all conversations for a cognitive agent
[**getCognitiveAgentConversationsCountAsync**](CognitiveAgentConversationsApi.md#getCognitiveAgentConversationsCountAsync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/Count | Get conversation count for a cognitive agent
[**updateCognitiveAgentConversationAsync**](CognitiveAgentConversationsApi.md#updateCognitiveAgentConversationAsync) | **PUT** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{id} | Update a cognitive agent conversation



## createCognitiveAgentConversationAsync

Create a new cognitive agent conversation

Creates a new managed conversation for the specified cognitive agent and tenant.

### Example

```bash
 createCognitiveAgentConversationAsync  tenantId=value agentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **agentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveAgentConversationCreateDto** | [**CognitiveAgentConversationCreateDto**](CognitiveAgentConversationCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCognitiveAgentConversationAsync

Delete a cognitive agent conversation

Deletes a managed conversation for the specified cognitive agent and tenant.

### Example

```bash
 deleteCognitiveAgentConversationAsync  tenantId=value agentId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **agentId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCognitiveAgentConversationByIdAsync

Get a cognitive agent conversation by ID

Retrieves a specific managed conversation of a cognitive agent by its identifier.

### Example

```bash
 getCognitiveAgentConversationByIdAsync  tenantId=value agentId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **agentId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CognitiveAgentConversationDtoEnvelope**](CognitiveAgentConversationDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCognitiveAgentConversationsAsync

Get all conversations for a cognitive agent

Retrieves all managed conversations for the specified cognitive agent and tenant.

### Example

```bash
 getCognitiveAgentConversationsAsync  tenantId=value agentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **agentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveAgentConversationDtoCollectionQueryParameters** | [**CognitiveAgentConversationDtoCollectionQueryParameters**](CognitiveAgentConversationDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**CognitiveAgentConversationDtoListEnvelope**](CognitiveAgentConversationDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCognitiveAgentConversationsCountAsync

Get conversation count for a cognitive agent

Returns the count of managed conversations for the specified cognitive agent and tenant.

### Example

```bash
 getCognitiveAgentConversationsCountAsync  tenantId=value agentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **agentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveAgentConversationDtoCollectionQueryParameters** | [**CognitiveAgentConversationDtoCollectionQueryParameters**](CognitiveAgentConversationDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateCognitiveAgentConversationAsync

Update a cognitive agent conversation

Updates an existing managed conversation for the specified cognitive agent and tenant.

### Example

```bash
 updateCognitiveAgentConversationAsync  tenantId=value agentId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **agentId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveAgentConversationUpdateDto** | [**CognitiveAgentConversationUpdateDto**](CognitiveAgentConversationUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

