# ReportsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTrialBalanceAsync**](ReportsApi.md#getTrialBalanceAsync) | **GET** /api/v2/AccountingService/Reports/TrialBalance | Trial balance for a fiscal period



## getTrialBalanceAsync

Trial balance for a fiscal period

Returns the per-account posted debit/credit totals for the given fiscal period (optionally scoped to a single financial book), plus grand totals and the Σdebits == Σcredits balanced flag. Amounts are normalized to the target currency (default USD) from the stored USD reporting amounts.

### Example

```bash
 getTrialBalanceAsync  tenantId=value  fiscalPeriodId=value  financialBookId=value  currencyId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **fiscalPeriodId** | **string** |  | [default to null]
 **financialBookId** | **string** |  | [optional] [default to null]
 **currencyId** | **string** |  | [optional] [default to USD.USA]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TrialBalanceDtoEnvelope**](TrialBalanceDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

