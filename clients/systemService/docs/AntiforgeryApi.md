# AntiforgeryApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAndStoreTokens**](AntiforgeryApi.md#getAndStoreTokens) | **GET** /api/v2/SystemService/Antiforgery/GetAndStoreTokens | Get and store antiforgery tokens
[**isRequestValidAsync**](AntiforgeryApi.md#isRequestValidAsync) | **GET** /api/v2/SystemService/Antiforgery/IsRequestValid | Validate antiforgery request



## getAndStoreTokens

Get and store antiforgery tokens

Generates antiforgery tokens and stores them in the current HTTP context.

### Example

```bash
 getAndStoreTokens  api-version=value x-api-version:value
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


## isRequestValidAsync

Validate antiforgery request

Validates whether the current HTTP request contains a valid antiforgery token.

### Example

```bash
 isRequestValidAsync  api-version=value x-api-version:value
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

