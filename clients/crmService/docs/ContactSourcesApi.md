# ContactSourcesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createContactSourceAsync**](ContactSourcesApi.md#createContactSourceAsync) | **POST** /api/v2/CrmService/ContactSources | Create a new contact source
[**deleteContactSourceAsync**](ContactSourcesApi.md#deleteContactSourceAsync) | **DELETE** /api/v2/CrmService/ContactSources/{id} | Delete a contact source
[**getContactSourceByIdAsync**](ContactSourcesApi.md#getContactSourceByIdAsync) | **GET** /api/v2/CrmService/ContactSources/{id} | Get contact source by ID
[**getContactSourcesAsync**](ContactSourcesApi.md#getContactSourcesAsync) | **GET** /api/v2/CrmService/ContactSources | Get all contact sources
[**getContactSourcesCountAsync**](ContactSourcesApi.md#getContactSourcesCountAsync) | **GET** /api/v2/CrmService/ContactSources/Count | Get contact sources count
[**patchContactSourceAsync**](ContactSourcesApi.md#patchContactSourceAsync) | **PATCH** /api/v2/CrmService/ContactSources/{id} | Patch a contact source
[**updateContactSourceAsync**](ContactSourcesApi.md#updateContactSourceAsync) | **PUT** /api/v2/CrmService/ContactSources/{id} | Update a contact source



## createContactSourceAsync

Create a new contact source

Creates a new contact source for the specified tenant.

### Example

```bash
 createContactSourceAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **contactSourceCreateDto** | [**ContactSourceCreateDto**](ContactSourceCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteContactSourceAsync

Delete a contact source

Deletes a contact source for the specified tenant.

### Example

```bash
 deleteContactSourceAsync  tenantId=value id=value  api-version=value x-api-version:value
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


## getContactSourceByIdAsync

Get contact source by ID

Retrieves a specific contact source by its identifier.

### Example

```bash
 getContactSourceByIdAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ContactSourceDto**](ContactSourceDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getContactSourcesAsync

Get all contact sources

Retrieves all contact sources for the specified tenant.

### Example

```bash
 getContactSourcesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **contactSourceDtoCollectionQueryParameters** | [**ContactSourceDtoCollectionQueryParameters**](ContactSourceDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**ContactSourceDtoListEnvelope**](ContactSourceDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getContactSourcesCountAsync

Get contact sources count

Returns the count of contact sources for the specified tenant.

### Example

```bash
 getContactSourcesCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **contactSourceDtoCollectionQueryParameters** | [**ContactSourceDtoCollectionQueryParameters**](ContactSourceDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchContactSourceAsync

Patch a contact source

Patch a contact source

### Example

```bash
 patchContactSourceAsync  tenantId=value id=value  api-version=value x-api-version:value
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


## updateContactSourceAsync

Update a contact source

Updates an existing contact source for the specified tenant.

### Example

```bash
 updateContactSourceAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **contactSourceUpdateDto** | [**ContactSourceUpdateDto**](ContactSourceUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

