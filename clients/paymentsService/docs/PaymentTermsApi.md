# PaymentTermsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPaymentTermAsync**](PaymentTermsApi.md#createPaymentTermAsync) | **POST** /api/v2/PaymentsService/PaymentTerms | Creates a new payment term
[**deletePaymentTermAsync**](PaymentTermsApi.md#deletePaymentTermAsync) | **DELETE** /api/v2/PaymentsService/PaymentTerms/{paymentTermId} | Deletes a payment term
[**getPaymentTermDetailsAsync**](PaymentTermsApi.md#getPaymentTermDetailsAsync) | **GET** /api/v2/PaymentsService/PaymentTerms/{paymentTermId} | Gets a payment term by ID
[**getPaymentTermsAsync**](PaymentTermsApi.md#getPaymentTermsAsync) | **GET** /api/v2/PaymentsService/PaymentTerms | Retrieves all payment terms
[**getPaymentTermsCountAsync**](PaymentTermsApi.md#getPaymentTermsCountAsync) | **GET** /api/v2/PaymentsService/PaymentTerms/Count | Counts payment terms
[**patchPaymentTermAsync**](PaymentTermsApi.md#patchPaymentTermAsync) | **PATCH** /api/v2/PaymentsService/PaymentTerms/{paymentTermId} | Patch a payment term
[**updatePaymentTermAsync**](PaymentTermsApi.md#updatePaymentTermAsync) | **PUT** /api/v2/PaymentsService/PaymentTerms/{paymentTermId} | Updates a payment term



## createPaymentTermAsync

Creates a new payment term

Creates a new payment term for the current tenant.

### Example

```bash
 createPaymentTermAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **paymentTermCreateDto** | [**PaymentTermCreateDto**](PaymentTermCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deletePaymentTermAsync

Deletes a payment term

Deletes the specified payment term.

### Example

```bash
 deletePaymentTermAsync  tenantId=value paymentTermId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **paymentTermId** | **string** |  | [default to null]
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


## getPaymentTermDetailsAsync

Gets a payment term by ID

Retrieves the details of a payment term using its unique ID.

### Example

```bash
 getPaymentTermDetailsAsync  tenantId=value paymentTermId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **paymentTermId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**PaymentTermDtoEnvelope**](PaymentTermDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPaymentTermsAsync

Retrieves all payment terms

Gets all payment terms for the current tenant with OData support.

### Example

```bash
 getPaymentTermsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**PaymentTermDtoIReadOnlyListEnvelope**](PaymentTermDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPaymentTermsCountAsync

Counts payment terms

Gets the count of payment terms for the current tenant.

### Example

```bash
 getPaymentTermsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchPaymentTermAsync

Patch a payment term

Patch a payment term

### Example

```bash
 patchPaymentTermAsync  tenantId=value paymentTermId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **paymentTermId** | **string** |  | [default to null]
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


## updatePaymentTermAsync

Updates a payment term

Updates the specified payment term.

### Example

```bash
 updatePaymentTermAsync  tenantId=value paymentTermId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **paymentTermId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **paymentTermUpdateDto** | [**PaymentTermUpdateDto**](PaymentTermUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

