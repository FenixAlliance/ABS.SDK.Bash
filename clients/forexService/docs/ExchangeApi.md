# ExchangeApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**exchangeAmountAsync**](ExchangeApi.md#exchangeAmountAsync) | **GET** /api/v2/ForexService/Exchange/Latest | Exchange currency at latest rates
[**exchangeAmountHistoricalAsync**](ExchangeApi.md#exchangeAmountHistoricalAsync) | **GET** /api/v2/ForexService/Exchange/History | Exchange currency at historical rates



## exchangeAmountAsync

Exchange currency at latest rates

Exchange an amount of money from one currency to another using the latest available exchange rates.

### Example

```bash
 exchangeAmountAsync  amount=value  sourceCurrencyId=value  targetCurrencyId=value
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

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## exchangeAmountHistoricalAsync

Exchange currency at historical rates

Exchange an amount of money from one currency to another using exchange rates from a specific historical date.

### Example

```bash
 exchangeAmountHistoricalAsync  amount=value  sourceCurrencyId=value  targetCurrencyId=value  date=value
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

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

