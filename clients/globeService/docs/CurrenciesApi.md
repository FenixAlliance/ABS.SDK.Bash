# CurrenciesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countCurrenciesAsync**](CurrenciesApi.md#countCurrenciesAsync) | **GET** /api/v2/GlobeService/Currencies/Count | Count currencies
[**getCurrencyByIdAsync**](CurrenciesApi.md#getCurrencyByIdAsync) | **GET** /api/v2/GlobeService/Currencies/{currencyId} | Get currency by ID
[**getEnabledCurrenciesAsync**](CurrenciesApi.md#getEnabledCurrenciesAsync) | **GET** /api/v2/GlobeService/Currencies | Get all currencies



## countCurrenciesAsync

Count currencies

Returns the total number of enabled currencies, with optional OData filtering.

### Example

```bash
 countCurrenciesAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurrencyByIdAsync

Get currency by ID

Retrieves a single currency by its unique identifier.

### Example

```bash
 getCurrencyByIdAsync currencyId=value  api-version=value x-api-version:value
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

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getEnabledCurrenciesAsync

Get all currencies

Retrieves the list of all enabled currencies with optional OData pagination and filtering.

### Example

```bash
 getEnabledCurrenciesAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CurrencyDtoListEnvelope**](CurrencyDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

