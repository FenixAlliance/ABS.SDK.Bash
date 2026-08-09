# CognitiveAgentSkillsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCognitiveAgentSkillAsync**](CognitiveAgentSkillsApi.md#createCognitiveAgentSkillAsync) | **POST** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Skills | Assign a skill to a cognitive agent
[**deleteCognitiveAgentSkillAsync**](CognitiveAgentSkillsApi.md#deleteCognitiveAgentSkillAsync) | **DELETE** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Skills/{id} | Remove a skill assignment from a cognitive agent
[**getCognitiveAgentSkillByIdAsync**](CognitiveAgentSkillsApi.md#getCognitiveAgentSkillByIdAsync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Skills/{id} | Get a cognitive agent skill assignment by ID
[**getCognitiveAgentSkillsAsync**](CognitiveAgentSkillsApi.md#getCognitiveAgentSkillsAsync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Skills | Get all skill assignments for a cognitive agent
[**getCognitiveAgentSkillsCountAsync**](CognitiveAgentSkillsApi.md#getCognitiveAgentSkillsCountAsync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Skills/Count | Get skill assignment count for a cognitive agent
[**updateCognitiveAgentSkillAsync**](CognitiveAgentSkillsApi.md#updateCognitiveAgentSkillAsync) | **PUT** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Skills/{id} | Update a cognitive agent skill assignment



## createCognitiveAgentSkillAsync

Assign a skill to a cognitive agent

Assigns a reusable catalog skill to the specified cognitive agent and tenant.

### Example

```bash
 createCognitiveAgentSkillAsync  tenantId=value agentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **agentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveAgentSkillCreateDto** | [**CognitiveAgentSkillCreateDto**](CognitiveAgentSkillCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCognitiveAgentSkillAsync

Remove a skill assignment from a cognitive agent

Removes a skill assignment from the specified cognitive agent and tenant.

### Example

```bash
 deleteCognitiveAgentSkillAsync  tenantId=value agentId=value id=value  api-version=value x-api-version:value
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


## getCognitiveAgentSkillByIdAsync

Get a cognitive agent skill assignment by ID

Retrieves a specific skill assignment of a cognitive agent by its identifier.

### Example

```bash
 getCognitiveAgentSkillByIdAsync  tenantId=value agentId=value id=value  api-version=value x-api-version:value
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

[**CognitiveAgentSkillDtoEnvelope**](CognitiveAgentSkillDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCognitiveAgentSkillsAsync

Get all skill assignments for a cognitive agent

Retrieves all skill assignments for the specified cognitive agent and tenant.

### Example

```bash
 getCognitiveAgentSkillsAsync  tenantId=value agentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **agentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveAgentSkillDtoCollectionQueryParameters** | [**CognitiveAgentSkillDtoCollectionQueryParameters**](CognitiveAgentSkillDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**CognitiveAgentSkillDtoListEnvelope**](CognitiveAgentSkillDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCognitiveAgentSkillsCountAsync

Get skill assignment count for a cognitive agent

Returns the count of skill assignments for the specified cognitive agent and tenant.

### Example

```bash
 getCognitiveAgentSkillsCountAsync  tenantId=value agentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **agentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveAgentSkillDtoCollectionQueryParameters** | [**CognitiveAgentSkillDtoCollectionQueryParameters**](CognitiveAgentSkillDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateCognitiveAgentSkillAsync

Update a cognitive agent skill assignment

Updates the per-assignment overrides of a skill assignment for the specified agent and tenant.

### Example

```bash
 updateCognitiveAgentSkillAsync  tenantId=value agentId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **agentId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveAgentSkillUpdateDto** | [**CognitiveAgentSkillUpdateDto**](CognitiveAgentSkillUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

