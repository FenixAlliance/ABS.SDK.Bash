# ResourceApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMessage**](ResourceApi.md#getMessage) | **GET** /api/v2/IdentityService/Resource/message | Get authenticated resource message



## getMessage

Get authenticated resource message

Returns a message confirming the authenticated user's identity. Requires the 'abs_api' scope.

### Example

```bash
 getMessage  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

