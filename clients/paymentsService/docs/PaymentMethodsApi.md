# PaymentMethodsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPaymentMethodAsync**](PaymentMethodsApi.md#createPaymentMethodAsync) | **POST** /api/v2/PaymentsService/PaymentMethods | Creates a new payment method
[**deletePaymentMethodAsync**](PaymentMethodsApi.md#deletePaymentMethodAsync) | **DELETE** /api/v2/PaymentsService/PaymentMethods/{paymentMethodId} | Deletes a payment method
[**getPaymentMethodDetailsAsync**](PaymentMethodsApi.md#getPaymentMethodDetailsAsync) | **GET** /api/v2/PaymentsService/PaymentMethods/{paymentMethodId} | Gets a payment method by ID
[**getPaymentMethodsAsync**](PaymentMethodsApi.md#getPaymentMethodsAsync) | **GET** /api/v2/PaymentsService/PaymentMethods | Retrieves all payment methods
[**getPaymentMethodsCountAsync**](PaymentMethodsApi.md#getPaymentMethodsCountAsync) | **GET** /api/v2/PaymentsService/PaymentMethods/Count | Counts payment methods
[**patchPaymentMethodAsync**](PaymentMethodsApi.md#patchPaymentMethodAsync) | **PATCH** /api/v2/PaymentsService/PaymentMethods/{paymentMethodId} | Patch a payment method
[**updatePaymentMethodAsync**](PaymentMethodsApi.md#updatePaymentMethodAsync) | **PUT** /api/v2/PaymentsService/PaymentMethods/{paymentMethodId} | Updates a payment method



## createPaymentMethodAsync

Creates a new payment method

Creates a new payment method for the current tenant.

### Example

```bash
 createPaymentMethodAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **paymentMethodCreateDto** | [**PaymentMethodCreateDto**](PaymentMethodCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deletePaymentMethodAsync

Deletes a payment method

Deletes the specified payment method.

### Example

```bash
 deletePaymentMethodAsync  tenantId=value paymentMethodId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **paymentMethodId** | **string** |  | [default to null]
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


## getPaymentMethodDetailsAsync

Gets a payment method by ID

Retrieves the details of a payment method using its unique ID.

### Example

```bash
 getPaymentMethodDetailsAsync  tenantId=value paymentMethodId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **paymentMethodId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**PaymentMethodDtoEnvelope**](PaymentMethodDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPaymentMethodsAsync

Retrieves all payment methods

Gets all payment methods for the current tenant with OData support.

### Example

```bash
 getPaymentMethodsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**PaymentMethodDtoIReadOnlyListEnvelope**](PaymentMethodDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPaymentMethodsCountAsync

Counts payment methods

Gets the count of payment methods for the current tenant.

### Example

```bash
 getPaymentMethodsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchPaymentMethodAsync

Patch a payment method

Patch a payment method

### Example

```bash
 patchPaymentMethodAsync  tenantId=value paymentMethodId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **paymentMethodId** | **string** |  | [default to null]
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


## updatePaymentMethodAsync

Updates a payment method

Updates the specified payment method.

### Example

```bash
 updatePaymentMethodAsync  tenantId=value paymentMethodId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **paymentMethodId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **paymentMethodUpdateDto** | [**PaymentMethodUpdateDto**](PaymentMethodUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

