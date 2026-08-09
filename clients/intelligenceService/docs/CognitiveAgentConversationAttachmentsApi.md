# CognitiveAgentConversationAttachmentsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**uploadCognitiveAgentConversationAttachmentAsync**](CognitiveAgentConversationAttachmentsApi.md#uploadCognitiveAgentConversationAttachmentAsync) | **POST** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{conversationId}/Attachments | Upload an attachment to a cognitive agent conversation



## uploadCognitiveAgentConversationAttachmentAsync

Upload an attachment to a cognitive agent conversation

Uploads a file into the acting user's OWN conversation attachment store, scanned and catalogued through the storage spine. A conversation the caller does not own returns 404. The response carries the new file's id, name, content type and length; the chat UI passes that id as an AttachmentFileIds entry when it sends the referencing user turn.

### Example

```bash
 uploadCognitiveAgentConversationAttachmentAsync  tenantId=value agentId=value conversationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **agentId** | **string** |  | [default to null]
 **conversationId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **file** | **binary** |  | [optional] [default to null]

### Return type

[**ConversationAttachmentUploadResultDtoEnvelope**](ConversationAttachmentUploadResultDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

