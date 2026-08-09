# FilesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFileAsync**](FilesApi.md#createFileAsync) | **POST** /api/v2/StorageService/Files | 
[**deleteFileAsync**](FilesApi.md#deleteFileAsync) | **DELETE** /api/v2/StorageService/Files/{fileId} | 
[**downloadFileAsync**](FilesApi.md#downloadFileAsync) | **GET** /api/v2/StorageService/Files/{fileId}/Raw | 
[**getFileAsync**](FilesApi.md#getFileAsync) | **GET** /api/v2/StorageService/Files/{fileId} | 
[**getFileThumbnailAsync**](FilesApi.md#getFileThumbnailAsync) | **GET** /api/v2/StorageService/Files/{fileId}/Thumbnail | 
[**getFilesAsync**](FilesApi.md#getFilesAsync) | **GET** /api/v2/StorageService/Files | 
[**getFilesCountAsync**](FilesApi.md#getFilesCountAsync) | **GET** /api/v2/StorageService/Files/Count | 
[**updateFileAsync**](FilesApi.md#updateFileAsync) | **PUT** /api/v2/StorageService/Files/{fileId} | 



## createFileAsync



### Example

```bash
 createFileAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **file** | **binary** |  | [optional] [default to null]
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
 **publicAccessType** | **string** |  | [optional] [default to null]
 **purpose** | **string** |  | [optional] [default to null]
 **socialProfileIdPeriodvalue** | **string** |  | [optional] [default to null]
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
- **Accept**: application/json, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteFileAsync



### Example

```bash
 deleteFileAsync fileId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## downloadFileAsync



### Example

```bash
 downloadFileAsync fileId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**binary**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getFileAsync



### Example

```bash
 getFileAsync fileId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**FileUploadDtoEnvelope**](FileUploadDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getFileThumbnailAsync



### Example

```bash
 getFileThumbnailAsync fileId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**binary**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getFilesAsync



### Example

```bash
 getFilesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **top** | **integer** |  | [optional] [default to null]
 **skip** | **integer** |  | [optional] [default to null]
 **count** | **boolean** |  | [optional] [default to null]
 **filter** | **string** |  | [optional] [default to null]
 **orderBy** | **string** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **_select** | **string** |  | [optional] [default to null]
 **expand** | **string** |  | [optional] [default to null]
 **isEmpty** | **boolean** |  | [optional] [default to null]

### Return type

[**FileUploadDtoEnvelope**](FileUploadDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getFilesCountAsync



### Example

```bash
 getFilesCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **top** | **integer** |  | [optional] [default to null]
 **skip** | **integer** |  | [optional] [default to null]
 **count** | **boolean** |  | [optional] [default to null]
 **filter** | **string** |  | [optional] [default to null]
 **orderBy** | **string** |  | [optional] [default to null]
 **search** | **string** |  | [optional] [default to null]
 **_select** | **string** |  | [optional] [default to null]
 **expand** | **string** |  | [optional] [default to null]
 **isEmpty** | **boolean** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateFileAsync



### Example

```bash
 updateFileAsync fileId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **file** | **binary** |  | [optional] [default to null]
 **notes** | **string** |  | [optional] [default to null]
 **metadata** | **string** |  | [optional] [default to null]
 **title** | **string** |  | [optional] [default to null]
 **author** | **string** |  | [optional] [default to null]
 **isFolder** | **boolean** |  | [optional] [default to null]
 **fileName** | **string** |  | [optional] [default to null]
 **abstract** | **string** |  | [optional] [default to null]
 **keyWords** | **string** |  | [optional] [default to null]
 **validResponse** | **boolean** |  | [optional] [default to null]
 **parentFileUploadID** | **string** |  | [optional] [default to null]
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

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

