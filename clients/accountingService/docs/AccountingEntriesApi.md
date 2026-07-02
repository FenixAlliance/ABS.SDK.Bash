# AccountingEntriesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCreditsSumAsync**](AccountingEntriesApi.md#getCreditsSumAsync) | **GET** /api/v2/AccountingService/AccountingEntries/Credits/Sum | Sum tenant accounting-entry credits
[**getDebitsSumAsync**](AccountingEntriesApi.md#getDebitsSumAsync) | **GET** /api/v2/AccountingService/AccountingEntries/Debits/Sum | Sum tenant accounting-entry debits



## getCreditsSumAsync

Sum tenant accounting-entry credits

Returns SUM(AccountingEntry.Credit) for the tenant, filtered by the supplied OData date range.

### Example

```bash
 getCreditsSumAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**DecimalEnvelope**](DecimalEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDebitsSumAsync

Sum tenant accounting-entry debits

Returns SUM(AccountingEntry.Debit) for the tenant, filtered by the supplied OData date range.

### Example

```bash
 getDebitsSumAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**DecimalEnvelope**](DecimalEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

