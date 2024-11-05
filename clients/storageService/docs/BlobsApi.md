# BlobsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBlobAsync**](BlobsApi.md#getBlobAsync) | **GET** /api/v2/StorageService/Blobs/Single | 
[**getBlobsAsync**](BlobsApi.md#getBlobsAsync) | **GET** /api/v2/StorageService/Blobs | 



## getBlobAsync



### Example

```bash
 getBlobAsync  tenantId=value  filePath=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **filePath** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BlobEnvelope**](BlobEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBlobsAsync



### Example

```bash
 getBlobsAsync  tenantId=value  folderPath=value  browseFilter=value  filePrefix=value  recurse=value  maxResults=value  includeAttributes=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **folderPath** | **string** |  | [optional] [default to null]
 **browseFilter** | **string** |  | [optional] [default to null]
 **filePrefix** | **string** |  | [optional] [default to null]
 **recurse** | **boolean** |  | [optional] [default to null]
 **maxResults** | **integer** |  | [optional] [default to null]
 **includeAttributes** | **boolean** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BlobEnvelope**](BlobEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

