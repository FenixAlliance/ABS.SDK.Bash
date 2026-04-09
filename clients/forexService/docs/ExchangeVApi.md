# ExchangeVApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**exchangeAmountHistoricalV3Async**](ExchangeVApi.md#exchangeAmountHistoricalV3Async) | **GET** /api/v3/ForexService/Exchange/History | Exchange currency at historical rates (v3)
[**exchangeAmountV3Async**](ExchangeVApi.md#exchangeAmountV3Async) | **GET** /api/v3/ForexService/Exchange/Latest | Exchange currency at latest rates (v3)



## exchangeAmountHistoricalV3Async

Exchange currency at historical rates (v3)

Exchange an amount of money from one currency to another using exchange rates from a specific historical date. Returns the full ExchangeRate details.

### Example

```bash
 exchangeAmountHistoricalV3Async  amount=value  sourceCurrencyId=value  targetCurrencyId=value  date=value
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

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## exchangeAmountV3Async

Exchange currency at latest rates (v3)

Exchange an amount of money from one currency to another using the latest available exchange rates. Returns the full ExchangeRate details.

### Example

```bash
 exchangeAmountV3Async  amount=value  sourceCurrencyId=value  targetCurrencyId=value
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

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

