# ActivityRecordsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getActivityRecordsCountAsync**](ActivityRecordsApi.md#getActivityRecordsCountAsync) | **GET** /api/v2/ActivitiesService/ActivityRecords/Count | Count activity records



## getActivityRecordsCountAsync

Count activity records

Returns the tenant-wide count of activity records across all feeds owned by the tenant.

### Example

```bash
 getActivityRecordsCountAsync  tenantId=value  api-version=value x-api-version:value
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

