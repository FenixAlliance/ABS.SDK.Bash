# ContactRelationsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createContactRelationAsync**](ContactRelationsApi.md#createContactRelationAsync) | **POST** /api/v2/CrmService/ContactRelations | Create a new contact relation
[**deleteContactRelationAsync**](ContactRelationsApi.md#deleteContactRelationAsync) | **DELETE** /api/v2/CrmService/ContactRelations/{id} | Delete a contact relation
[**getContactRelationByIdAsync**](ContactRelationsApi.md#getContactRelationByIdAsync) | **GET** /api/v2/CrmService/ContactRelations/{id} | Get contact relation by ID
[**getContactRelationsAsync**](ContactRelationsApi.md#getContactRelationsAsync) | **GET** /api/v2/CrmService/ContactRelations | Get all contact relations
[**getContactRelationsCountAsync**](ContactRelationsApi.md#getContactRelationsCountAsync) | **GET** /api/v2/CrmService/ContactRelations/Count | Get contact relations count
[**patchContactRelationAsync**](ContactRelationsApi.md#patchContactRelationAsync) | **PATCH** /api/v2/CrmService/ContactRelations/{id} | Patch a contact relation
[**updateContactRelationAsync**](ContactRelationsApi.md#updateContactRelationAsync) | **PUT** /api/v2/CrmService/ContactRelations/{id} | Update a contact relation



## createContactRelationAsync

Create a new contact relation

Creates a new contact relation for the specified tenant.

### Example

```bash
 createContactRelationAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **contactRelationCreateDto** | [**ContactRelationCreateDto**](ContactRelationCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteContactRelationAsync

Delete a contact relation

Deletes a contact relation for the specified tenant.

### Example

```bash
 deleteContactRelationAsync  tenantId=value id=value  api-version=value x-api-version:value
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


## getContactRelationByIdAsync

Get contact relation by ID

Retrieves a specific contact relation by its identifier.

### Example

```bash
 getContactRelationByIdAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ContactRelationDto**](ContactRelationDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getContactRelationsAsync

Get all contact relations

Retrieves all contact relations for the specified tenant.

### Example

```bash
 getContactRelationsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **contactRelationDtoCollectionQueryParameters** | [**ContactRelationDtoCollectionQueryParameters**](ContactRelationDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**ContactRelationDtoListEnvelope**](ContactRelationDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getContactRelationsCountAsync

Get contact relations count

Returns the count of contact relations for the specified tenant.

### Example

```bash
 getContactRelationsCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **contactRelationDtoCollectionQueryParameters** | [**ContactRelationDtoCollectionQueryParameters**](ContactRelationDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchContactRelationAsync

Patch a contact relation

Patch a contact relation

### Example

```bash
 patchContactRelationAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **patchOperation** | [**array[PatchOperation]**](PatchOperation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateContactRelationAsync

Update a contact relation

Updates an existing contact relation for the specified tenant.

### Example

```bash
 updateContactRelationAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **contactRelationUpdateDto** | [**ContactRelationUpdateDto**](ContactRelationUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

