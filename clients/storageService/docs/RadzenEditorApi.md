# RadzenEditorApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**radzenUploadImage**](RadzenEditorApi.md#radzenUploadImage) | **POST** /api/v2/fs/radzen/tenants/{tenantId}/upload/image | Upload an editor image to tenant storage.
[**radzenUploadImageScoped**](RadzenEditorApi.md#radzenUploadImageScoped) | **POST** /api/v2/fs/radzen/tenants/{tenantId}/{recordType}/{recordId}/upload/image | Upload an editor image scoped to a record.
[**radzenUploadSingle**](RadzenEditorApi.md#radzenUploadSingle) | **POST** /api/v2/fs/radzen/tenants/{tenantId}/upload/single | Upload a single editor file to tenant storage.
[**radzenUploadSingleScoped**](RadzenEditorApi.md#radzenUploadSingleScoped) | **POST** /api/v2/fs/radzen/tenants/{tenantId}/{recordType}/{recordId}/upload/single | Upload a single editor file scoped to a record.
[**radzenUploadStream**](RadzenEditorApi.md#radzenUploadStream) | **PUT** /api/v2/fs/radzen/tenants/{tenantId}/upload/stream | Chunked editor upload (not implemented).
[**radzenUploadStreamScoped**](RadzenEditorApi.md#radzenUploadStreamScoped) | **PUT** /api/v2/fs/radzen/tenants/{tenantId}/{recordType}/{recordId}/upload/stream | Chunked editor upload scoped to a record (not implemented).
[**radzenUploadUserImage**](RadzenEditorApi.md#radzenUploadUserImage) | **POST** /api/v2/fs/radzen/users/upload/image | Upload an editor image to user storage.
[**radzenUploadUserImageScoped**](RadzenEditorApi.md#radzenUploadUserImageScoped) | **POST** /api/v2/fs/radzen/users/{recordType}/{recordId}/upload/image | Upload a user editor image scoped to a record.



## radzenUploadImage

Upload an editor image to tenant storage.

### Example

```bash
 radzenUploadImage tenantId=value  visibility=value  socialProfileId=value  purpose=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **visibility** | **string** |  | [optional] [default to null]
 **socialProfileId** | **string** |  | [optional] [default to null]
 **purpose** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **file** | **binary** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## radzenUploadImageScoped

Upload an editor image scoped to a record.

### Example

```bash
 radzenUploadImageScoped tenantId=value recordType=value recordId=value  visibility=value  socialProfileId=value  purpose=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **recordType** | **string** |  | [default to null]
 **recordId** | **string** |  | [default to null]
 **visibility** | **string** |  | [optional] [default to null]
 **socialProfileId** | **string** |  | [optional] [default to null]
 **purpose** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **file** | **binary** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## radzenUploadSingle

Upload a single editor file to tenant storage.

### Example

```bash
 radzenUploadSingle tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **file** | **binary** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## radzenUploadSingleScoped

Upload a single editor file scoped to a record.

### Example

```bash
 radzenUploadSingleScoped tenantId=value recordType=value recordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **recordType** | **string** |  | [default to null]
 **recordId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **file** | **binary** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## radzenUploadStream

Chunked editor upload (not implemented).

### Example

```bash
 radzenUploadStream tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
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


## radzenUploadStreamScoped

Chunked editor upload scoped to a record (not implemented).

### Example

```bash
 radzenUploadStreamScoped tenantId=value recordType=value recordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **recordType** | **string** |  | [default to null]
 **recordId** | **string** |  | [default to null]
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


## radzenUploadUserImage

Upload an editor image to user storage.

### Example

```bash
 radzenUploadUserImage  visibility=value  socialProfileId=value  purpose=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **visibility** | **string** |  | [optional] [default to null]
 **socialProfileId** | **string** |  | [optional] [default to null]
 **purpose** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **file** | **binary** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## radzenUploadUserImageScoped

Upload a user editor image scoped to a record.

### Example

```bash
 radzenUploadUserImageScoped recordType=value recordId=value  visibility=value  socialProfileId=value  purpose=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recordType** | **string** |  | [default to null]
 **recordId** | **string** |  | [default to null]
 **visibility** | **string** |  | [optional] [default to null]
 **socialProfileId** | **string** |  | [optional] [default to null]
 **purpose** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **file** | **binary** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

