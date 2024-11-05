# PaymentsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2PaymentsServicePaymentsGet**](PaymentsApi.md#apiV2PaymentsServicePaymentsGet) | **GET** /api/v2/PaymentsService/Payments | 
[**apiV2PaymentsServicePaymentsPaymentIdDelete**](PaymentsApi.md#apiV2PaymentsServicePaymentsPaymentIdDelete) | **DELETE** /api/v2/PaymentsService/Payments/{paymentId} | 
[**apiV2PaymentsServicePaymentsPaymentIdDetailsGet**](PaymentsApi.md#apiV2PaymentsServicePaymentsPaymentIdDetailsGet) | **GET** /api/v2/PaymentsService/Payments/{paymentId}/Details | 
[**apiV2PaymentsServicePaymentsPaymentIdGet**](PaymentsApi.md#apiV2PaymentsServicePaymentsPaymentIdGet) | **GET** /api/v2/PaymentsService/Payments/{paymentId} | 
[**apiV2PaymentsServicePaymentsPaymentIdPut**](PaymentsApi.md#apiV2PaymentsServicePaymentsPaymentIdPut) | **PUT** /api/v2/PaymentsService/Payments/{paymentId} | 
[**apiV2PaymentsServicePaymentsPost**](PaymentsApi.md#apiV2PaymentsServicePaymentsPost) | **POST** /api/v2/PaymentsService/Payments | 



## apiV2PaymentsServicePaymentsGet



### Example

```bash
 apiV2PaymentsServicePaymentsGet  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**PaymentDtoListEnvelope**](PaymentDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2PaymentsServicePaymentsPaymentIdDelete



### Example

```bash
 apiV2PaymentsServicePaymentsPaymentIdDelete  tenantId=value paymentId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **paymentId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2PaymentsServicePaymentsPaymentIdDetailsGet



### Example

```bash
 apiV2PaymentsServicePaymentsPaymentIdDetailsGet paymentId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **string** |  | [default to null]

### Return type

[**PaymentDtoListEnvelope**](PaymentDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2PaymentsServicePaymentsPaymentIdGet



### Example

```bash
 apiV2PaymentsServicePaymentsPaymentIdGet paymentId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentId** | **string** |  | [default to null]

### Return type

[**PaymentDtoListEnvelope**](PaymentDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2PaymentsServicePaymentsPaymentIdPut



### Example

```bash
 apiV2PaymentsServicePaymentsPaymentIdPut  tenantId=value paymentId=value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2PaymentsServicePaymentsPost



### Example

```bash
 apiV2PaymentsServicePaymentsPost  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **paymentCreateDto** | [**PaymentCreateDto**](PaymentCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

