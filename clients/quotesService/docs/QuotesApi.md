# QuotesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2QuotesServiceQuotesCountGet**](QuotesApi.md#apiV2QuotesServiceQuotesCountGet) | **GET** /api/v2/QuotesService/Quotes/Count | 
[**apiV2QuotesServiceQuotesExtendedGet**](QuotesApi.md#apiV2QuotesServiceQuotesExtendedGet) | **GET** /api/v2/QuotesService/Quotes/Extended | 
[**apiV2QuotesServiceQuotesGet**](QuotesApi.md#apiV2QuotesServiceQuotesGet) | **GET** /api/v2/QuotesService/Quotes | 
[**apiV2QuotesServiceQuotesPost**](QuotesApi.md#apiV2QuotesServiceQuotesPost) | **POST** /api/v2/QuotesService/Quotes | 
[**apiV2QuotesServiceQuotesQuoteIdCalculatePut**](QuotesApi.md#apiV2QuotesServiceQuotesQuoteIdCalculatePut) | **PUT** /api/v2/QuotesService/Quotes/{quoteId}/Calculate | 
[**apiV2QuotesServiceQuotesQuoteIdDelete**](QuotesApi.md#apiV2QuotesServiceQuotesQuoteIdDelete) | **DELETE** /api/v2/QuotesService/Quotes/{quoteId} | 
[**apiV2QuotesServiceQuotesQuoteIdLinesCountGet**](QuotesApi.md#apiV2QuotesServiceQuotesQuoteIdLinesCountGet) | **GET** /api/v2/QuotesService/Quotes/{quoteId}/Lines/Count | 
[**apiV2QuotesServiceQuotesQuoteIdLinesGet**](QuotesApi.md#apiV2QuotesServiceQuotesQuoteIdLinesGet) | **GET** /api/v2/QuotesService/Quotes/{quoteId}/Lines | 
[**apiV2QuotesServiceQuotesQuoteIdLinesPost**](QuotesApi.md#apiV2QuotesServiceQuotesQuoteIdLinesPost) | **POST** /api/v2/QuotesService/Quotes/{quoteId}/Lines | 
[**apiV2QuotesServiceQuotesQuoteIdLinesQuoteLineIdCalculatePut**](QuotesApi.md#apiV2QuotesServiceQuotesQuoteIdLinesQuoteLineIdCalculatePut) | **PUT** /api/v2/QuotesService/Quotes/{quoteId}/Lines/{quoteLineId}/Calculate | 
[**apiV2QuotesServiceQuotesQuoteIdLinesQuoteLineIdDelete**](QuotesApi.md#apiV2QuotesServiceQuotesQuoteIdLinesQuoteLineIdDelete) | **DELETE** /api/v2/QuotesService/Quotes/{quoteId}/Lines/{quoteLineId} | 
[**apiV2QuotesServiceQuotesQuoteIdLinesQuoteLineIdGet**](QuotesApi.md#apiV2QuotesServiceQuotesQuoteIdLinesQuoteLineIdGet) | **GET** /api/v2/QuotesService/Quotes/{quoteId}/Lines/{quoteLineId} | 
[**apiV2QuotesServiceQuotesQuoteIdLinesQuoteLineIdPut**](QuotesApi.md#apiV2QuotesServiceQuotesQuoteIdLinesQuoteLineIdPut) | **PUT** /api/v2/QuotesService/Quotes/{quoteId}/Lines/{quoteLineId} | 
[**apiV2QuotesServiceQuotesQuoteIdPut**](QuotesApi.md#apiV2QuotesServiceQuotesQuoteIdPut) | **PUT** /api/v2/QuotesService/Quotes/{quoteId} | 
[**getQuoteAsync**](QuotesApi.md#getQuoteAsync) | **GET** /api/v2/QuotesService/Quotes/{quoteId} | 



## apiV2QuotesServiceQuotesCountGet



### Example

```bash
 apiV2QuotesServiceQuotesCountGet  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2QuotesServiceQuotesExtendedGet



### Example

```bash
 apiV2QuotesServiceQuotesExtendedGet  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**ExtendedQuoteDtoListEnvelope**](ExtendedQuoteDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2QuotesServiceQuotesGet



### Example

```bash
 apiV2QuotesServiceQuotesGet  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**QuoteDtoListEnvelope**](QuoteDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2QuotesServiceQuotesPost



### Example

```bash
 apiV2QuotesServiceQuotesPost  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteCreateDto** | [**QuoteCreateDto**](QuoteCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2QuotesServiceQuotesQuoteIdCalculatePut



### Example

```bash
 apiV2QuotesServiceQuotesQuoteIdCalculatePut  tenantId=value quoteId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2QuotesServiceQuotesQuoteIdDelete



### Example

```bash
 apiV2QuotesServiceQuotesQuoteIdDelete quoteId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quoteId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2QuotesServiceQuotesQuoteIdLinesCountGet



### Example

```bash
 apiV2QuotesServiceQuotesQuoteIdLinesCountGet  tenantId=value quoteId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2QuotesServiceQuotesQuoteIdLinesGet



### Example

```bash
 apiV2QuotesServiceQuotesQuoteIdLinesGet  tenantId=value quoteId=value  itemId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]
 **itemId** | **string** |  | [optional] [default to null]

### Return type

[**QuoteLineDtoListEnvelope**](QuoteLineDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2QuotesServiceQuotesQuoteIdLinesPost



### Example

```bash
 apiV2QuotesServiceQuotesQuoteIdLinesPost  tenantId=value quoteId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]
 **quoteLineCreateDto** | [**QuoteLineCreateDto**](QuoteLineCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2QuotesServiceQuotesQuoteIdLinesQuoteLineIdCalculatePut



### Example

```bash
 apiV2QuotesServiceQuotesQuoteIdLinesQuoteLineIdCalculatePut  tenantId=value quoteId=value quoteLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]
 **quoteLineId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2QuotesServiceQuotesQuoteIdLinesQuoteLineIdDelete



### Example

```bash
 apiV2QuotesServiceQuotesQuoteIdLinesQuoteLineIdDelete  tenantId=value quoteId=value quoteLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]
 **quoteLineId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2QuotesServiceQuotesQuoteIdLinesQuoteLineIdGet



### Example

```bash
 apiV2QuotesServiceQuotesQuoteIdLinesQuoteLineIdGet  tenantId=value quoteId=value quoteLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]
 **quoteLineId** | **string** |  | [default to null]

### Return type

[**QuoteLineDtoEnvelope**](QuoteLineDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2QuotesServiceQuotesQuoteIdLinesQuoteLineIdPut



### Example

```bash
 apiV2QuotesServiceQuotesQuoteIdLinesQuoteLineIdPut  tenantId=value quoteId=value quoteLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]
 **quoteLineId** | **string** |  | [default to null]
 **quoteLineUpdateDto** | [**QuoteLineUpdateDto**](QuoteLineUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2QuotesServiceQuotesQuoteIdPut



### Example

```bash
 apiV2QuotesServiceQuotesQuoteIdPut  tenantId=value quoteId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]
 **quoteUpdateDto** | [**QuoteUpdateDto**](QuoteUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getQuoteAsync



### Example

```bash
 getQuoteAsync  tenantId=value quoteId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]

### Return type

[**QuoteDtoEnvelope**](QuoteDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

