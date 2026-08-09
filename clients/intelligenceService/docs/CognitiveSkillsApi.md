# CognitiveSkillsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCognitiveSkillAsync**](CognitiveSkillsApi.md#createCognitiveSkillAsync) | **POST** /api/v2/IntelligenceService/CognitiveSkills | Create a new cognitive skill
[**deleteCognitiveSkillAsync**](CognitiveSkillsApi.md#deleteCognitiveSkillAsync) | **DELETE** /api/v2/IntelligenceService/CognitiveSkills/{id} | Delete a cognitive skill
[**getCognitiveSkillByIdAsync**](CognitiveSkillsApi.md#getCognitiveSkillByIdAsync) | **GET** /api/v2/IntelligenceService/CognitiveSkills/{id} | Get cognitive skill by ID
[**getCognitiveSkillsAsync**](CognitiveSkillsApi.md#getCognitiveSkillsAsync) | **GET** /api/v2/IntelligenceService/CognitiveSkills | Get all cognitive skills
[**getCognitiveSkillsCountAsync**](CognitiveSkillsApi.md#getCognitiveSkillsCountAsync) | **GET** /api/v2/IntelligenceService/CognitiveSkills/Count | Get cognitive skills count
[**updateCognitiveSkillAsync**](CognitiveSkillsApi.md#updateCognitiveSkillAsync) | **PUT** /api/v2/IntelligenceService/CognitiveSkills/{id} | Update a cognitive skill



## createCognitiveSkillAsync

Create a new cognitive skill

Creates a new reusable cognitive skill for the specified tenant.

### Example

```bash
 createCognitiveSkillAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveSkillCreateDto** | [**CognitiveSkillCreateDto**](CognitiveSkillCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCognitiveSkillAsync

Delete a cognitive skill

Deletes a reusable cognitive skill for the specified tenant.

### Example

```bash
 deleteCognitiveSkillAsync  tenantId=value id=value  api-version=value x-api-version:value
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


## getCognitiveSkillByIdAsync

Get cognitive skill by ID

Retrieves a specific reusable cognitive skill by its identifier.

### Example

```bash
 getCognitiveSkillByIdAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CognitiveSkillDtoEnvelope**](CognitiveSkillDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCognitiveSkillsAsync

Get all cognitive skills

Retrieves all reusable cognitive skills for the specified tenant.

### Example

```bash
 getCognitiveSkillsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveSkillDtoCollectionQueryParameters** | [**CognitiveSkillDtoCollectionQueryParameters**](CognitiveSkillDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**CognitiveSkillDtoListEnvelope**](CognitiveSkillDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCognitiveSkillsCountAsync

Get cognitive skills count

Returns the count of reusable cognitive skills for the specified tenant.

### Example

```bash
 getCognitiveSkillsCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveSkillDtoCollectionQueryParameters** | [**CognitiveSkillDtoCollectionQueryParameters**](CognitiveSkillDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateCognitiveSkillAsync

Update a cognitive skill

Updates an existing reusable cognitive skill for the specified tenant.

### Example

```bash
 updateCognitiveSkillAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **cognitiveSkillUpdateDto** | [**CognitiveSkillUpdateDto**](CognitiveSkillUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

