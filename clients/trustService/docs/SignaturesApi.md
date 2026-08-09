# SignaturesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSignatureByIdAsync**](SignaturesApi.md#getSignatureByIdAsync) | **GET** /api/v2/TrustService/Signatures/{id} | Get signature by ID
[**getSignaturesAsync**](SignaturesApi.md#getSignaturesAsync) | **GET** /api/v2/TrustService/Signatures | Get all signatures
[**getSignaturesCountAsync**](SignaturesApi.md#getSignaturesCountAsync) | **GET** /api/v2/TrustService/Signatures/Count | Get signatures count



## getSignatureByIdAsync

Get signature by ID

Retrieves a specific signature by its identifier.

### Example

```bash
 getSignatureByIdAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SignatureDto**](SignatureDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSignaturesAsync

Get all signatures

Retrieves all signatures for the specified tenant.

### Example

```bash
 getSignaturesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **signatureDtoCollectionQueryParameters** | [**SignatureDtoCollectionQueryParameters**](SignatureDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**SignatureDtoListEnvelope**](SignatureDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSignaturesCountAsync

Get signatures count

Returns the count of signatures for the specified tenant.

### Example

```bash
 getSignaturesCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **signatureDtoCollectionQueryParameters** | [**SignatureDtoCollectionQueryParameters**](SignatureDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

