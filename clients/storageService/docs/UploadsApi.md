# UploadsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2StorageServiceUploadsPost**](UploadsApi.md#apiV2StorageServiceUploadsPost) | **POST** /api/v2/StorageService/Uploads | 



## apiV2StorageServiceUploadsPost



### Example

```bash
 apiV2StorageServiceUploadsPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **notes** | **string** |  | [optional] [default to null]
 **title** | **string** |  | [optional] [default to null]
 **author** | **string** |  | [optional] [default to null]
 **isFolder** | **boolean** |  | [optional] [default to null]
 **fileName** | **string** |  | [optional] [default to null]
 **abstract** | **string** |  | [optional] [default to null]
 **keyWords** | **string** |  | [optional] [default to null]
 **validResponse** | **boolean** |  | [optional] [default to null]
 **parentFileUploadId** | **string** |  | [optional] [default to null]
 **filePath** | **string** |  | [optional] [default to null]
 **file** | **binary** |  | [optional] [default to null]
 **iD** | **string** |  | [optional] [default to null]
 **timestamp** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

