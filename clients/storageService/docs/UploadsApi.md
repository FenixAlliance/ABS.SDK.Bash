# UploadsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**saveFileAsync**](UploadsApi.md#saveFileAsync) | **POST** /api/v2/StorageService/Uploads | Upload a file



## saveFileAsync

Upload a file

Uploads a file to tenant or user storage.

### Example

```bash
 saveFileAsync  tenantId=value  api-version=value x-api-version:value
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
 **appFilePeriodcontent** | **string** |  | [optional] [default to null]
 **appFilePeriodsha256** | **string** |  | [optional] [default to null]
 **appFilePeriodcreatedAtUtc** | **string** |  | [optional] [default to null]
 **appFilePerioduserIdPeriodvalue** | **string** |  | [optional] [default to null]
 **appFilePeriodtenantIdPeriodvalue** | **string** |  | [optional] [default to null]
 **appFilePeriodenrollmentIdPeriodvalue** | **string** |  | [optional] [default to null]
 **appFilePeriodsource** | **string** |  | [optional] [default to null]
 **appFilePeriodlength** | **integer** |  | [optional] [default to null]
 **appFilePeriodname** | **string** |  | [optional] [default to null]
 **appFilePeriodfileName** | **string** |  | [optional] [default to null]
 **appFilePeriodlastModified** | **string** |  | [optional] [default to null]
 **appFilePeriodsize** | **integer** |  | [optional] [default to null]
 **appFilePeriodcontentType** | **string** |  | [optional] [default to null]
 **appFilePeriodcontentDisposition** | **string** |  | [optional] [default to null]
 **appFilePeriodheaders** | [**map[String, string]**](map.md) |  | [optional] [default to null]
 **id** | **string** |  | [optional] [default to null]
 **timestamp** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

