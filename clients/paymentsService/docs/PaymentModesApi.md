# PaymentModesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPaymentModeAsync**](PaymentModesApi.md#createPaymentModeAsync) | **POST** /api/v2/PaymentsService/PaymentModes | Creates a new payment mode
[**deletePaymentModeAsync**](PaymentModesApi.md#deletePaymentModeAsync) | **DELETE** /api/v2/PaymentsService/PaymentModes/{paymentModeId} | Deletes a payment mode
[**getPaymentModeDetailsAsync**](PaymentModesApi.md#getPaymentModeDetailsAsync) | **GET** /api/v2/PaymentsService/PaymentModes/{paymentModeId} | Gets a payment mode by ID
[**getPaymentModesAsync**](PaymentModesApi.md#getPaymentModesAsync) | **GET** /api/v2/PaymentsService/PaymentModes | Retrieves all payment modes
[**getPaymentModesCountAsync**](PaymentModesApi.md#getPaymentModesCountAsync) | **GET** /api/v2/PaymentsService/PaymentModes/Count | Counts payment modes
[**patchPaymentModeAsync**](PaymentModesApi.md#patchPaymentModeAsync) | **PATCH** /api/v2/PaymentsService/PaymentModes/{paymentModeId} | Patch a payment mode
[**updatePaymentModeAsync**](PaymentModesApi.md#updatePaymentModeAsync) | **PUT** /api/v2/PaymentsService/PaymentModes/{paymentModeId} | Updates a payment mode



## createPaymentModeAsync

Creates a new payment mode

Creates a new payment mode for the current tenant.

### Example

```bash
 createPaymentModeAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **paymentModeCreateDto** | [**PaymentModeCreateDto**](PaymentModeCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deletePaymentModeAsync

Deletes a payment mode

Deletes the specified payment mode.

### Example

```bash
 deletePaymentModeAsync  tenantId=value paymentModeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **paymentModeId** | **string** |  | [default to null]
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


## getPaymentModeDetailsAsync

Gets a payment mode by ID

Retrieves the details of a payment mode using its unique ID.

### Example

```bash
 getPaymentModeDetailsAsync  tenantId=value paymentModeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **paymentModeId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**PaymentModeDtoEnvelope**](PaymentModeDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPaymentModesAsync

Retrieves all payment modes

Gets all payment modes for the current tenant with OData support.

### Example

```bash
 getPaymentModesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**PaymentModeDtoIReadOnlyListEnvelope**](PaymentModeDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPaymentModesCountAsync

Counts payment modes

Gets the count of payment modes for the current tenant.

### Example

```bash
 getPaymentModesCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchPaymentModeAsync

Patch a payment mode

Patch a payment mode

### Example

```bash
 patchPaymentModeAsync  tenantId=value paymentModeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **paymentModeId** | **string** |  | [default to null]
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


## updatePaymentModeAsync

Updates a payment mode

Updates the specified payment mode.

### Example

```bash
 updatePaymentModeAsync  tenantId=value paymentModeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **paymentModeId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **paymentModeUpdateDto** | [**PaymentModeUpdateDto**](PaymentModeUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

