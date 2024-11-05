# ExchangeApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2ForexServiceExchangeHistoryGet**](ExchangeApi.md#apiV2ForexServiceExchangeHistoryGet) | **GET** /api/v2/ForexService/Exchange/History | 
[**apiV2ForexServiceExchangeLatestGet**](ExchangeApi.md#apiV2ForexServiceExchangeLatestGet) | **GET** /api/v2/ForexService/Exchange/Latest | 



## apiV2ForexServiceExchangeHistoryGet



### Example

```bash
 apiV2ForexServiceExchangeHistoryGet  amount=value  sourceCurrencyId=value  targetCurrencyId=value  date=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **amount** | **float** |  | [default to null]
 **sourceCurrencyId** | **string** |  | [default to null]
 **targetCurrencyId** | **string** |  | [default to null]
 **date** | **string** |  | [default to null]

### Return type

[**MoneyEnvelope**](MoneyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2ForexServiceExchangeLatestGet



### Example

```bash
 apiV2ForexServiceExchangeLatestGet  amount=value  sourceCurrencyId=value  targetCurrencyId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **amount** | **float** |  | [default to null]
 **sourceCurrencyId** | **string** |  | [default to null]
 **targetCurrencyId** | **string** |  | [default to null]

### Return type

[**MoneyEnvelope**](MoneyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

