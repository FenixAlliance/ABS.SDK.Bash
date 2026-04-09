# EmailSignaturesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmailSignatureAsync**](EmailSignaturesApi.md#createEmailSignatureAsync) | **POST** /api/v2/MarketingService/EmailSignatures | Create an email signature
[**deleteEmailSignatureAsync**](EmailSignaturesApi.md#deleteEmailSignatureAsync) | **DELETE** /api/v2/MarketingService/EmailSignatures/{emailsignatureId} | Delete an email signature
[**getEmailSignatureDetailsAsync**](EmailSignaturesApi.md#getEmailSignatureDetailsAsync) | **GET** /api/v2/MarketingService/EmailSignatures/{emailsignatureId} | Get email signature by ID
[**getEmailSignaturesCountAsync**](EmailSignaturesApi.md#getEmailSignaturesCountAsync) | **GET** /api/v2/MarketingService/EmailSignatures/Count | Get email signatures count
[**getEmailSignaturesODataAsync**](EmailSignaturesApi.md#getEmailSignaturesODataAsync) | **GET** /api/v2/MarketingService/EmailSignatures | Get email signatures
[**updateEmailSignatureAsync**](EmailSignaturesApi.md#updateEmailSignatureAsync) | **PUT** /api/v2/MarketingService/EmailSignatures/{emailsignatureId} | Update an email signature



## createEmailSignatureAsync

Create an email signature

Creates a new email signature for the specified tenant.

### Example

```bash
 createEmailSignatureAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **emailSignatureCreateDto** | [**EmailSignatureCreateDto**](EmailSignatureCreateDto.md) |  |
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteEmailSignatureAsync

Delete an email signature

Deletes an email signature by its ID.

### Example

```bash
 deleteEmailSignatureAsync  tenantId=value emailsignatureId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **emailsignatureId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getEmailSignatureDetailsAsync

Get email signature by ID

Retrieves the details of a specific email signature by its ID.

### Example

```bash
 getEmailSignatureDetailsAsync  tenantId=value emailsignatureId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **emailsignatureId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmailSignatureDtoEnvelope**](EmailSignatureDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getEmailSignaturesCountAsync

Get email signatures count

Returns the count of email signatures for the specified tenant using OData query options.

### Example

```bash
 getEmailSignaturesCountAsync  tenantId=value  api-version=value x-api-version:value
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


## getEmailSignaturesODataAsync

Get email signatures

Retrieves a collection of email signatures for the specified tenant using OData query options.

### Example

```bash
 getEmailSignaturesODataAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmailSignatureDtoListEnvelope**](EmailSignatureDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateEmailSignatureAsync

Update an email signature

Updates an existing email signature by its ID.

### Example

```bash
 updateEmailSignatureAsync  tenantId=value emailsignatureId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **emailsignatureId** | **string** |  | [default to null]
 **emailSignatureUpdateDto** | [**EmailSignatureUpdateDto**](EmailSignatureUpdateDto.md) |  |
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

