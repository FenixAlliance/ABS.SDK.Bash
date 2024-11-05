# PricesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2PricingServicePricesItemIdFinalPriceGet**](PricesApi.md#apiV2PricingServicePricesItemIdFinalPriceGet) | **GET** /api/v2/PricingService/Prices/{itemId}/FinalPrice | 
[**apiV2PricingServicePricesItemIdPriceGet**](PricesApi.md#apiV2PricingServicePricesItemIdPriceGet) | **GET** /api/v2/PricingService/Prices/{itemId}/Price | 
[**apiV2PricingServicePricesItemIdTotalSavingsGet**](PricesApi.md#apiV2PricingServicePricesItemIdTotalSavingsGet) | **GET** /api/v2/PricingService/Prices/{itemId}/TotalSavings | 
[**apiV2PricingServicePricesItemIdTotalTaxesGet**](PricesApi.md#apiV2PricingServicePricesItemIdTotalTaxesGet) | **GET** /api/v2/PricingService/Prices/{itemId}/TotalTaxes | 



## apiV2PricingServicePricesItemIdFinalPriceGet



### Example

```bash
 apiV2PricingServicePricesItemIdFinalPriceGet itemId=value  currencyId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemId** | **string** |  | [default to null]
 **currencyId** | **string** |  | [optional] [default to USD.USA]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**MoneyEnvelope**](MoneyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2PricingServicePricesItemIdPriceGet



### Example

```bash
 apiV2PricingServicePricesItemIdPriceGet itemId=value  priceListId=value  discountsListId=value  currencyId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemId** | **string** |  | [default to null]
 **priceListId** | **string** |  | [optional] [default to null]
 **discountsListId** | **string** |  | [optional] [default to null]
 **currencyId** | **string** |  | [optional] [default to USD.USA]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**PriceCalculationDtoEnvelope**](PriceCalculationDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2PricingServicePricesItemIdTotalSavingsGet



### Example

```bash
 apiV2PricingServicePricesItemIdTotalSavingsGet itemId=value  currencyId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemId** | **string** |  | [default to null]
 **currencyId** | **string** |  | [optional] [default to USD.USA]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**MoneyEnvelope**](MoneyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2PricingServicePricesItemIdTotalTaxesGet



### Example

```bash
 apiV2PricingServicePricesItemIdTotalTaxesGet itemId=value  currencyId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemId** | **string** |  | [default to null]
 **currencyId** | **string** |  | [optional] [default to USD.USA]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**MoneyEnvelope**](MoneyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

