# CognitiveAgentVariablesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCognitiveAgentVariableAsync**](CognitiveAgentVariablesApi.md#createCognitiveAgentVariableAsync) | **POST** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Variables | Add a variable to a cognitive agent
[**deleteCognitiveAgentVariableAsync**](CognitiveAgentVariablesApi.md#deleteCognitiveAgentVariableAsync) | **DELETE** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Variables/{id} | Remove a variable from a cognitive agent
[**getCognitiveAgentVariableByIdAsync**](CognitiveAgentVariablesApi.md#getCognitiveAgentVariableByIdAsync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Variables/{id} | Get a cognitive agent variable by ID
[**getCognitiveAgentVariablesAsync**](CognitiveAgentVariablesApi.md#getCognitiveAgentVariablesAsync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Variables | Get all variables for a cognitive agent
[**getCognitiveAgentVariablesCountAsync**](CognitiveAgentVariablesApi.md#getCognitiveAgentVariablesCountAsync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Variables/Count | Get variable count for a cognitive agent
[**updateCognitiveAgentVariableAsync**](CognitiveAgentVariablesApi.md#updateCognitiveAgentVariableAsync) | **PUT** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Variables/{id} | Update a cognitive agent variable



## createCognitiveAgentVariableAsync

Add a variable to a cognitive agent

Adds a key/value variable to the specified cognitive agent and tenant.

### Example

```bash
 createCognitiveAgentVariableAsync  tenantId=value agentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **agentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveAgentVariableCreateDto** | [**CognitiveAgentVariableCreateDto**](CognitiveAgentVariableCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCognitiveAgentVariableAsync

Remove a variable from a cognitive agent

Removes a variable from the specified cognitive agent and tenant.

### Example

```bash
 deleteCognitiveAgentVariableAsync  tenantId=value agentId=value id=value  api-version=value x-api-version:value
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


## getCognitiveAgentVariableByIdAsync

Get a cognitive agent variable by ID

Retrieves a specific variable of a cognitive agent by its identifier.

### Example

```bash
 getCognitiveAgentVariableByIdAsync  tenantId=value agentId=value id=value  api-version=value x-api-version:value
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

[**CognitiveAgentVariableDtoEnvelope**](CognitiveAgentVariableDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCognitiveAgentVariablesAsync

Get all variables for a cognitive agent

Retrieves all key/value variables for the specified cognitive agent and tenant.

### Example

```bash
 getCognitiveAgentVariablesAsync  tenantId=value agentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **agentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveAgentVariableDtoCollectionQueryParameters** | [**CognitiveAgentVariableDtoCollectionQueryParameters**](CognitiveAgentVariableDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**CognitiveAgentVariableDtoListEnvelope**](CognitiveAgentVariableDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCognitiveAgentVariablesCountAsync

Get variable count for a cognitive agent

Returns the count of variables for the specified cognitive agent and tenant.

### Example

```bash
 getCognitiveAgentVariablesCountAsync  tenantId=value agentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **agentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveAgentVariableDtoCollectionQueryParameters** | [**CognitiveAgentVariableDtoCollectionQueryParameters**](CognitiveAgentVariableDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateCognitiveAgentVariableAsync

Update a cognitive agent variable

Updates the value of a variable for the specified agent and tenant.

### Example

```bash
 updateCognitiveAgentVariableAsync  tenantId=value agentId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **agentId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveAgentVariableUpdateDto** | [**CognitiveAgentVariableUpdateDto**](CognitiveAgentVariableUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

