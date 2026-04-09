# InventoryApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getInventoryDetailsAsync**](InventoryApi.md#getInventoryDetailsAsync) | **GET** /api/v2/InventoryService/Inventory/{stockItemId}/Details | Get inventory details for a stock item



## getInventoryDetailsAsync

Get inventory details for a stock item

Retrieves the inventory details for a specific stock item by its ID.

### Example

```bash
 getInventoryDetailsAsync stockItemId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stockItemId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

