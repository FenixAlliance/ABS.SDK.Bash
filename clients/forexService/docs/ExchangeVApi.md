# ExchangeVApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ForexServiceExchangeHistoryGet**](ExchangeVApi.md#apiV3ForexServiceExchangeHistoryGet) | **GET** /api/v3/ForexService/Exchange/History | 
[**apiV3ForexServiceExchangeLatestGet**](ExchangeVApi.md#apiV3ForexServiceExchangeLatestGet) | **GET** /api/v3/ForexService/Exchange/Latest | 



## apiV3ForexServiceExchangeHistoryGet



### Example

```bash
 apiV3ForexServiceExchangeHistoryGet  amount=value  sourceCurrencyId=value  targetCurrencyId=value  date=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **amount** | **float** |  | [default to null]
 **sourceCurrencyId** | **string** |  | [default to null]
 **targetCurrencyId** | **string** |  | [default to null]
 **date** | **string** |  | [default to null]

### Return type

[**ExchangeRateEnvelope**](ExchangeRateEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV3ForexServiceExchangeLatestGet



### Example

```bash
 apiV3ForexServiceExchangeLatestGet  amount=value  sourceCurrencyId=value  targetCurrencyId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **amount** | **float** |  | [default to null]
 **sourceCurrencyId** | **string** |  | [default to null]
 **targetCurrencyId** | **string** |  | [default to null]

### Return type

[**ExchangeRateEnvelope**](ExchangeRateEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

