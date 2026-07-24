# SigningProfileGraphicalRepresentationsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSigningProfileGraphicalRepresentationAsync**](SigningProfileGraphicalRepresentationsApi.md#createSigningProfileGraphicalRepresentationAsync) | **POST** /api/v2/TrustService/SigningProfileGraphicalRepresentations | Create a new signature representation
[**deleteSigningProfileGraphicalRepresentationAsync**](SigningProfileGraphicalRepresentationsApi.md#deleteSigningProfileGraphicalRepresentationAsync) | **DELETE** /api/v2/TrustService/SigningProfileGraphicalRepresentations/{id} | Delete a signature representation
[**getSigningProfileGraphicalRepresentationByIdAsync**](SigningProfileGraphicalRepresentationsApi.md#getSigningProfileGraphicalRepresentationByIdAsync) | **GET** /api/v2/TrustService/SigningProfileGraphicalRepresentations/{id} | Get signature representation by ID
[**getSigningProfileGraphicalRepresentationsAsync**](SigningProfileGraphicalRepresentationsApi.md#getSigningProfileGraphicalRepresentationsAsync) | **GET** /api/v2/TrustService/SigningProfileGraphicalRepresentations | Get all signature representations
[**getSigningProfileGraphicalRepresentationsCountAsync**](SigningProfileGraphicalRepresentationsApi.md#getSigningProfileGraphicalRepresentationsCountAsync) | **GET** /api/v2/TrustService/SigningProfileGraphicalRepresentations/Count | Get signature representations count
[**patchSigningProfileGraphicalRepresentationAsync**](SigningProfileGraphicalRepresentationsApi.md#patchSigningProfileGraphicalRepresentationAsync) | **PATCH** /api/v2/TrustService/SigningProfileGraphicalRepresentations/{id} | Patch a signature representation
[**updateSigningProfileGraphicalRepresentationAsync**](SigningProfileGraphicalRepresentationsApi.md#updateSigningProfileGraphicalRepresentationAsync) | **PUT** /api/v2/TrustService/SigningProfileGraphicalRepresentations/{id} | Update a signature representation



## createSigningProfileGraphicalRepresentationAsync

Create a new signature representation

Creates a new reusable signature representation for the specified tenant.

### Example

```bash
 createSigningProfileGraphicalRepresentationAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **signingProfileGraphicalRepresentationCreateDto** | [**SigningProfileGraphicalRepresentationCreateDto**](SigningProfileGraphicalRepresentationCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteSigningProfileGraphicalRepresentationAsync

Delete a signature representation

Deletes a signature representation for the specified tenant.

### Example

```bash
 deleteSigningProfileGraphicalRepresentationAsync  tenantId=value id=value  api-version=value x-api-version:value
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


## getSigningProfileGraphicalRepresentationByIdAsync

Get signature representation by ID

Retrieves a specific signature representation by its identifier.

### Example

```bash
 getSigningProfileGraphicalRepresentationByIdAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SigningProfileGraphicalRepresentationDto**](SigningProfileGraphicalRepresentationDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSigningProfileGraphicalRepresentationsAsync

Get all signature representations

Retrieves all reusable signature representations for the specified tenant.

### Example

```bash
 getSigningProfileGraphicalRepresentationsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SigningProfileGraphicalRepresentationDtoListEnvelope**](SigningProfileGraphicalRepresentationDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSigningProfileGraphicalRepresentationsCountAsync

Get signature representations count

Returns the count of signature representations for the specified tenant.

### Example

```bash
 getSigningProfileGraphicalRepresentationsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchSigningProfileGraphicalRepresentationAsync

Patch a signature representation

Patch a signature representation

### Example

```bash
 patchSigningProfileGraphicalRepresentationAsync  tenantId=value id=value  api-version=value x-api-version:value
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


## updateSigningProfileGraphicalRepresentationAsync

Update a signature representation

Updates an existing signature representation for the specified tenant.

### Example

```bash
 updateSigningProfileGraphicalRepresentationAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **signingProfileGraphicalRepresentationUpdateDto** | [**SigningProfileGraphicalRepresentationUpdateDto**](SigningProfileGraphicalRepresentationUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

