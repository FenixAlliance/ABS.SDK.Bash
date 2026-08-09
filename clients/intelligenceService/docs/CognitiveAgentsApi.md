# CognitiveAgentsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCognitiveAgentAsync**](CognitiveAgentsApi.md#createCognitiveAgentAsync) | **POST** /api/v2/IntelligenceService/CognitiveAgents | Create a new cognitive agent
[**deleteCognitiveAgentAsync**](CognitiveAgentsApi.md#deleteCognitiveAgentAsync) | **DELETE** /api/v2/IntelligenceService/CognitiveAgents/{id} | Delete a cognitive agent
[**getCognitiveAgentByIdAsync**](CognitiveAgentsApi.md#getCognitiveAgentByIdAsync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{id} | Get cognitive agent by ID
[**getCognitiveAgentsAsync**](CognitiveAgentsApi.md#getCognitiveAgentsAsync) | **GET** /api/v2/IntelligenceService/CognitiveAgents | Get all cognitive agents
[**getCognitiveAgentsCountAsync**](CognitiveAgentsApi.md#getCognitiveAgentsCountAsync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/Count | Get cognitive agents count
[**updateCognitiveAgentAsync**](CognitiveAgentsApi.md#updateCognitiveAgentAsync) | **PUT** /api/v2/IntelligenceService/CognitiveAgents/{id} | Update a cognitive agent



## createCognitiveAgentAsync

Create a new cognitive agent

Creates a new managed cognitive agent for the specified tenant.

### Example

```bash
 createCognitiveAgentAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveAgentCreateDto** | [**CognitiveAgentCreateDto**](CognitiveAgentCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCognitiveAgentAsync

Delete a cognitive agent

Deletes a managed cognitive agent for the specified tenant.

### Example

```bash
 deleteCognitiveAgentAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
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


## getCognitiveAgentByIdAsync

Get cognitive agent by ID

Retrieves a specific managed cognitive agent by its identifier.

### Example

```bash
 getCognitiveAgentByIdAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CognitiveAgentDtoEnvelope**](CognitiveAgentDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCognitiveAgentsAsync

Get all cognitive agents

Retrieves all managed cognitive agents for the specified tenant.

### Example

```bash
 getCognitiveAgentsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveAgentDtoCollectionQueryParameters** | [**CognitiveAgentDtoCollectionQueryParameters**](CognitiveAgentDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**CognitiveAgentDtoListEnvelope**](CognitiveAgentDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCognitiveAgentsCountAsync

Get cognitive agents count

Returns the count of managed cognitive agents for the specified tenant.

### Example

```bash
 getCognitiveAgentsCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveAgentDtoCollectionQueryParameters** | [**CognitiveAgentDtoCollectionQueryParameters**](CognitiveAgentDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateCognitiveAgentAsync

Update a cognitive agent

Updates an existing managed cognitive agent for the specified tenant.

### Example

```bash
 updateCognitiveAgentAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveAgentUpdateDto** | [**CognitiveAgentUpdateDto**](CognitiveAgentUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

