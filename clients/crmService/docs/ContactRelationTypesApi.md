# ContactRelationTypesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createContactRelationTypeAsync**](ContactRelationTypesApi.md#createContactRelationTypeAsync) | **POST** /api/v2/CrmService/ContactRelationTypes | Create a new contact relation type
[**deleteContactRelationTypeAsync**](ContactRelationTypesApi.md#deleteContactRelationTypeAsync) | **DELETE** /api/v2/CrmService/ContactRelationTypes/{id} | Delete a contact relation type
[**getContactRelationTypeByIdAsync**](ContactRelationTypesApi.md#getContactRelationTypeByIdAsync) | **GET** /api/v2/CrmService/ContactRelationTypes/{id} | Get contact relation type by ID
[**getContactRelationTypesAsync**](ContactRelationTypesApi.md#getContactRelationTypesAsync) | **GET** /api/v2/CrmService/ContactRelationTypes | Get all contact relation types
[**getContactRelationTypesCountAsync**](ContactRelationTypesApi.md#getContactRelationTypesCountAsync) | **GET** /api/v2/CrmService/ContactRelationTypes/Count | Get contact relation types count
[**patchContactRelationTypeAsync**](ContactRelationTypesApi.md#patchContactRelationTypeAsync) | **PATCH** /api/v2/CrmService/ContactRelationTypes/{id} | Patch a contact relation type
[**updateContactRelationTypeAsync**](ContactRelationTypesApi.md#updateContactRelationTypeAsync) | **PUT** /api/v2/CrmService/ContactRelationTypes/{id} | Update a contact relation type



## createContactRelationTypeAsync

Create a new contact relation type

Creates a new contact relation type for the specified tenant.

### Example

```bash
 createContactRelationTypeAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **contactRelationTypeCreateDto** | [**ContactRelationTypeCreateDto**](ContactRelationTypeCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteContactRelationTypeAsync

Delete a contact relation type

Deletes a contact relation type for the specified tenant.

### Example

```bash
 deleteContactRelationTypeAsync  tenantId=value id=value  api-version=value x-api-version:value
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


## getContactRelationTypeByIdAsync

Get contact relation type by ID

Retrieves a specific contact relation type by its identifier.

### Example

```bash
 getContactRelationTypeByIdAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ContactRelationTypeDto**](ContactRelationTypeDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getContactRelationTypesAsync

Get all contact relation types

Retrieves all contact relation types for the specified tenant.

### Example

```bash
 getContactRelationTypesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ContactRelationTypeDtoListEnvelope**](ContactRelationTypeDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getContactRelationTypesCountAsync

Get contact relation types count

Returns the count of contact relation types for the specified tenant.

### Example

```bash
 getContactRelationTypesCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchContactRelationTypeAsync

Patch a contact relation type

Patch a contact relation type

### Example

```bash
 patchContactRelationTypeAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateContactRelationTypeAsync

Update a contact relation type

Updates an existing contact relation type for the specified tenant.

### Example

```bash
 updateContactRelationTypeAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **contactRelationTypeUpdateDto** | [**ContactRelationTypeUpdateDto**](ContactRelationTypeUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

