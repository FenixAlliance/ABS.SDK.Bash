# PostingExecutionsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countPostingExecutionsAsync**](PostingExecutionsApi.md#countPostingExecutionsAsync) | **GET** /api/v2/AccountingService/PostingExecutions/Count | Count posting executions
[**getPostingExecutionsAsync**](PostingExecutionsApi.md#getPostingExecutionsAsync) | **GET** /api/v2/AccountingService/PostingExecutions | List posting executions



## countPostingExecutionsAsync

Count posting executions

Returns the count of the tenant's posting-inbox executions under the same OData shaping as the list read (e.g. $filter=Status eq 'Rejected' to count rejected intents). Requires journals_read.

### Example

```bash
 countPostingExecutionsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **postingExecutionDtoCollectionQueryParameters** | [**PostingExecutionDtoCollectionQueryParameters**](PostingExecutionDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPostingExecutionsAsync

List posting executions

Lists the tenant's posting-inbox executions (the durable evidence of every posting intent). Use OData to scope to a state — e.g. $filter=Status eq 'Rejected' for rejected intents, or Status eq 'PendingMapping'/'PendingPeriod'/'PendingRate' for the retryable pending set — and to page/order. Requires journals_read.

### Example

```bash
 getPostingExecutionsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **postingExecutionDtoCollectionQueryParameters** | [**PostingExecutionDtoCollectionQueryParameters**](PostingExecutionDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**PostingExecutionDtoIReadOnlyListEnvelope**](PostingExecutionDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

