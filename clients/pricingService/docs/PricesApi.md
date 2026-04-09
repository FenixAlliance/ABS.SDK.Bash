# PricesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFinalPrice**](PricesApi.md#getFinalPrice) | **GET** /api/v2/PricingService/Prices/{itemId}/FinalPrice | Gets the final price for an item
[**getPrice**](PricesApi.md#getPrice) | **GET** /api/v2/PricingService/Prices/{itemId}/Price | Gets the calculated price for an item
[**getTotalSavingsInUsd**](PricesApi.md#getTotalSavingsInUsd) | **GET** /api/v2/PricingService/Prices/{itemId}/TotalSavings | Gets total savings for an item
[**getTotalTaxesInUsd**](PricesApi.md#getTotalTaxesInUsd) | **GET** /api/v2/PricingService/Prices/{itemId}/TotalTaxes | Gets total taxes for an item



## getFinalPrice

Gets the final price for an item

Gets the final price for an item after all discounts and taxes in the specified currency.

### Example

```bash
 getFinalPrice itemId=value  currencyId=value  api-version=value x-api-version:value
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

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPrice

Gets the calculated price for an item

Calculates the price for an item considering price list, discount list, quantity, and currency.

### Example

```bash
 getPrice itemId=value  priceListId=value  discountsListId=value  quantity=value  currencyId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemId** | **string** |  | [default to null]
 **priceListId** | **string** |  | [optional] [default to null]
 **discountsListId** | **string** |  | [optional] [default to null]
 **quantity** | **float** |  | [optional] [default to 1]
 **currencyId** | **string** |  | [optional] [default to USD.USA]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemPriceCalculationEnvelope**](ItemPriceCalculationEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTotalSavingsInUsd

Gets total savings for an item

Gets the total savings amount for an item in the specified currency.

### Example

```bash
 getTotalSavingsInUsd itemId=value  currencyId=value  api-version=value x-api-version:value
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

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTotalTaxesInUsd

Gets total taxes for an item

Gets the total tax amount for an item in the specified currency.

### Example

```bash
 getTotalTaxesInUsd itemId=value  currencyId=value  api-version=value x-api-version:value
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

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

