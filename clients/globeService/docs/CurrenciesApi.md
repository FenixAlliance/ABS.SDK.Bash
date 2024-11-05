# CurrenciesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2GlobeServiceCurrenciesCurrencyIdGet**](CurrenciesApi.md#apiV2GlobeServiceCurrenciesCurrencyIdGet) | **GET** /api/v2/GlobeService/Currencies/{currencyId} | 
[**apiV2GlobeServiceCurrenciesGet**](CurrenciesApi.md#apiV2GlobeServiceCurrenciesGet) | **GET** /api/v2/GlobeService/Currencies | 



## apiV2GlobeServiceCurrenciesCurrencyIdGet



### Example

```bash
 apiV2GlobeServiceCurrenciesCurrencyIdGet currencyId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currencyId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CurrencyDtoEnvelope**](CurrencyDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2GlobeServiceCurrenciesGet



### Example

```bash
 apiV2GlobeServiceCurrenciesGet  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CurrencyDtoListEnvelope**](CurrencyDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

