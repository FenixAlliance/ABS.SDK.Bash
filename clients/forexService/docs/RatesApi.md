# RatesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ForexServiceRatesHistoryCurrencyIdGet**](RatesApi.md#apiV2ForexServiceRatesHistoryCurrencyIdGet) | **GET** /api/v2/ForexService/Rates/History/{currencyId} | 
[**apiV2ForexServiceRatesHistoryGet**](RatesApi.md#apiV2ForexServiceRatesHistoryGet) | **GET** /api/v2/ForexService/Rates/History | 
[**apiV2ForexServiceRatesLatestCurrencyIdGet**](RatesApi.md#apiV2ForexServiceRatesLatestCurrencyIdGet) | **GET** /api/v2/ForexService/Rates/Latest/{currencyId} | 
[**apiV2ForexServiceRatesLatestGet**](RatesApi.md#apiV2ForexServiceRatesLatestGet) | **GET** /api/v2/ForexService/Rates/Latest | 



## apiV2ForexServiceRatesHistoryCurrencyIdGet



### Example

```bash
 apiV2ForexServiceRatesHistoryCurrencyIdGet currencyId=value  date=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currencyId** | **string** |  | [default to null]
 **date** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ExchangeRateEnvelope**](ExchangeRateEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ForexServiceRatesHistoryGet



### Example

```bash
 apiV2ForexServiceRatesHistoryGet  date=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ForexRatesDtoEnvelope**](ForexRatesDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ForexServiceRatesLatestCurrencyIdGet



### Example

```bash
 apiV2ForexServiceRatesLatestCurrencyIdGet currencyId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currencyId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ExchangeRateEnvelope**](ExchangeRateEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ForexServiceRatesLatestGet



### Example

```bash
 apiV2ForexServiceRatesLatestGet  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ForexRatesDtoEnvelope**](ForexRatesDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

