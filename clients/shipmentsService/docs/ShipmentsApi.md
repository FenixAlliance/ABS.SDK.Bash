# ShipmentsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getShipmentsAsync**](ShipmentsApi.md#getShipmentsAsync) | **GET** /api/v2/ShipmentsService/Shipments | Retrieve a list of shipments



## getShipmentsAsync

Retrieve a list of shipments

Retrieves a list of shipments for the specified tenant.

### Example

```bash
 getShipmentsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ShipmentDtoListEnvelope**](ShipmentDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

