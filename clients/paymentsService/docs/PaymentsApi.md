# PaymentsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPaymentAsync**](PaymentsApi.md#createPaymentAsync) | **POST** /api/v2/PaymentsService/Payments | Creates a new payment
[**deletePaymentAsync**](PaymentsApi.md#deletePaymentAsync) | **DELETE** /api/v2/PaymentsService/Payments/{paymentId} | Deletes a payment
[**getPaymentAsync**](PaymentsApi.md#getPaymentAsync) | **GET** /api/v2/PaymentsService/Payments/{paymentId}/Details | Gets a payment by ID (deprecated)
[**getPaymentAsyncV2**](PaymentsApi.md#getPaymentAsyncV2) | **GET** /api/v2/PaymentsService/Payments/{paymentId} | Gets a payment by ID
[**getPaymentsAsync**](PaymentsApi.md#getPaymentsAsync) | **GET** /api/v2/PaymentsService/Payments | Retrieves all payments
[**updatePaymentAsync**](PaymentsApi.md#updatePaymentAsync) | **PUT** /api/v2/PaymentsService/Payments/{paymentId} | Updates a payment



## createPaymentAsync

Creates a new payment

Creates a new payment for the current tenant.

### Example

```bash
 createPaymentAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **paymentCreateDto** | [**PaymentCreateDto**](PaymentCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deletePaymentAsync

Deletes a payment

Deletes the specified payment.

### Example

```bash
 deletePaymentAsync  tenantId=value paymentId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **paymentId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPaymentAsync

Gets a payment by ID (deprecated)

Retrieves a payment using the deprecated /Details route. Use GET {paymentId} instead.

### Example

```bash
 getPaymentAsync paymentId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **string** |  | [default to null]

### Return type

[**PaymentDtoListEnvelope**](PaymentDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPaymentAsyncV2

Gets a payment by ID

Retrieves the details of a payment using its unique identifier.

### Example

```bash
 getPaymentAsyncV2 paymentId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **string** |  | [default to null]

### Return type

[**PaymentDtoListEnvelope**](PaymentDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPaymentsAsync

Retrieves all payments

Gets all payments for the current tenant with OData support.

### Example

```bash
 getPaymentsAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**PaymentDtoListEnvelope**](PaymentDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updatePaymentAsync

Updates a payment

Updates the specified payment.

### Example

```bash
 updatePaymentAsync  tenantId=value paymentId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **paymentId** | **string** |  | [default to null]
 **paymentUpdateDto** | [**PaymentUpdateDto**](PaymentUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

