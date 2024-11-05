# SalesLiteraturesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2DealsServiceSalesLiteraturesExtendedGet**](SalesLiteraturesApi.md#apiV2DealsServiceSalesLiteraturesExtendedGet) | **GET** /api/v2/DealsService/SalesLiteratures/Extended | 
[**apiV2DealsServiceSalesLiteraturesGet**](SalesLiteraturesApi.md#apiV2DealsServiceSalesLiteraturesGet) | **GET** /api/v2/DealsService/SalesLiteratures | 
[**apiV2DealsServiceSalesLiteraturesPost**](SalesLiteraturesApi.md#apiV2DealsServiceSalesLiteraturesPost) | **POST** /api/v2/DealsService/SalesLiteratures | 
[**apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete**](SalesLiteraturesApi.md#apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete) | **DELETE** /api/v2/DealsService/SalesLiteratures/{salesLiteratureId} | 
[**apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet**](SalesLiteraturesApi.md#apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet) | **GET** /api/v2/DealsService/SalesLiteratures/{salesLiteratureId} | 
[**apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut**](SalesLiteraturesApi.md#apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut) | **PUT** /api/v2/DealsService/SalesLiteratures/{salesLiteratureId} | 



## apiV2DealsServiceSalesLiteraturesExtendedGet



### Example

```bash
 apiV2DealsServiceSalesLiteraturesExtendedGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ExtendedSalesLiteratureDtoListEnvelope**](ExtendedSalesLiteratureDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2DealsServiceSalesLiteraturesGet



### Example

```bash
 apiV2DealsServiceSalesLiteraturesGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SalesLiteratureDtoListEnvelope**](SalesLiteratureDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2DealsServiceSalesLiteraturesPost



### Example

```bash
 apiV2DealsServiceSalesLiteraturesPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **salesLiteratureCreateDto** | [**SalesLiteratureCreateDto**](SalesLiteratureCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete



### Example

```bash
 apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete  tenantId=value salesLiteratureId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **salesLiteratureId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet



### Example

```bash
 apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet salesLiteratureId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **salesLiteratureId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SalesLiteratureDtoEnvelope**](SalesLiteratureDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut



### Example

```bash
 apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut  tenantId=value salesLiteratureId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **salesLiteratureId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **salesLiteratureUpdateDto** | [**SalesLiteratureUpdateDto**](SalesLiteratureUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

