# NewsletterSubscriptionsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getNewsletterSubscriptionsCountAsync**](NewsletterSubscriptionsApi.md#getNewsletterSubscriptionsCountAsync) | **GET** /api/v2/MarketingService/NewsletterSubscriptions/Count | Get newsletter subscriptions count



## getNewsletterSubscriptionsCountAsync

Get newsletter subscriptions count

Returns the count of newsletter subscriptions for the specified tenant using OData query options.

### Example

```bash
 getNewsletterSubscriptionsCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
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

