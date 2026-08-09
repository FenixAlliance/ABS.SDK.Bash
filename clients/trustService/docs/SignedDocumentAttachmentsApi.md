# SignedDocumentAttachmentsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSignedDocumentAttachmentAsync**](SignedDocumentAttachmentsApi.md#createSignedDocumentAttachmentAsync) | **POST** /api/v2/TrustService/SignedDocumentAttachments | Create a new signed document attachment
[**deleteSignedDocumentAttachmentAsync**](SignedDocumentAttachmentsApi.md#deleteSignedDocumentAttachmentAsync) | **DELETE** /api/v2/TrustService/SignedDocumentAttachments/{id} | Delete a signed document attachment
[**getSignedDocumentAttachmentByIdAsync**](SignedDocumentAttachmentsApi.md#getSignedDocumentAttachmentByIdAsync) | **GET** /api/v2/TrustService/SignedDocumentAttachments/{id} | Get signed document attachment by ID
[**getSignedDocumentAttachmentsAsync**](SignedDocumentAttachmentsApi.md#getSignedDocumentAttachmentsAsync) | **GET** /api/v2/TrustService/SignedDocumentAttachments | Get all signed document attachments
[**getSignedDocumentAttachmentsCountAsync**](SignedDocumentAttachmentsApi.md#getSignedDocumentAttachmentsCountAsync) | **GET** /api/v2/TrustService/SignedDocumentAttachments/Count | Get signed document attachments count
[**patchSignedDocumentAttachmentAsync**](SignedDocumentAttachmentsApi.md#patchSignedDocumentAttachmentAsync) | **PATCH** /api/v2/TrustService/SignedDocumentAttachments/{id} | Patch a signed document attachment
[**updateSignedDocumentAttachmentAsync**](SignedDocumentAttachmentsApi.md#updateSignedDocumentAttachmentAsync) | **PUT** /api/v2/TrustService/SignedDocumentAttachments/{id} | Update a signed document attachment



## createSignedDocumentAttachmentAsync

Create a new signed document attachment

Links an already-stored file to a SignedDocument (metadata + Storage pointer; no bytes).

### Example

```bash
 createSignedDocumentAttachmentAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **signedDocumentAttachmentCreateDto** | [**SignedDocumentAttachmentCreateDto**](SignedDocumentAttachmentCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteSignedDocumentAttachmentAsync

Delete a signed document attachment

Deletes a signed document attachment link for the specified tenant.

### Example

```bash
 deleteSignedDocumentAttachmentAsync  tenantId=value id=value  api-version=value x-api-version:value
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


## getSignedDocumentAttachmentByIdAsync

Get signed document attachment by ID

Retrieves a specific signed document attachment by its identifier.

### Example

```bash
 getSignedDocumentAttachmentByIdAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SignedDocumentAttachmentDto**](SignedDocumentAttachmentDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSignedDocumentAttachmentsAsync

Get all signed document attachments

Retrieves all signed document attachments for the specified tenant.

### Example

```bash
 getSignedDocumentAttachmentsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **signedDocumentAttachmentDtoCollectionQueryParameters** | [**SignedDocumentAttachmentDtoCollectionQueryParameters**](SignedDocumentAttachmentDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**SignedDocumentAttachmentDtoListEnvelope**](SignedDocumentAttachmentDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSignedDocumentAttachmentsCountAsync

Get signed document attachments count

Returns the count of signed document attachments for the specified tenant.

### Example

```bash
 getSignedDocumentAttachmentsCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **signedDocumentAttachmentDtoCollectionQueryParameters** | [**SignedDocumentAttachmentDtoCollectionQueryParameters**](SignedDocumentAttachmentDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchSignedDocumentAttachmentAsync

Patch a signed document attachment

Patch a signed document attachment

### Example

```bash
 patchSignedDocumentAttachmentAsync  tenantId=value id=value  api-version=value x-api-version:value
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


## updateSignedDocumentAttachmentAsync

Update a signed document attachment

Updates signed document attachment metadata for the specified tenant.

### Example

```bash
 updateSignedDocumentAttachmentAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **signedDocumentAttachmentUpdateDto** | [**SignedDocumentAttachmentUpdateDto**](SignedDocumentAttachmentUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

