# AssetTypesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAssetType**](AssetTypesApi.md#createAssetType) | **POST** /api/v2/AssetsService/AssetTypes | Creates a new asset type
[**deleteAssetType**](AssetTypesApi.md#deleteAssetType) | **DELETE** /api/v2/AssetsService/AssetTypes/{typeId} | Deletes an asset type
[**getAssetType**](AssetTypesApi.md#getAssetType) | **GET** /api/v2/AssetsService/AssetTypes/{typeId} | Gets a specific asset type
[**getAssetTypes**](AssetTypesApi.md#getAssetTypes) | **GET** /api/v2/AssetsService/AssetTypes | Gets all asset types for the current tenant
[**getAssetTypesCount**](AssetTypesApi.md#getAssetTypesCount) | **GET** /api/v2/AssetsService/AssetTypes/count | Gets the count of asset types
[**updateAssetType**](AssetTypesApi.md#updateAssetType) | **PUT** /api/v2/AssetsService/AssetTypes/{typeId} | Updates an existing asset type



## createAssetType

Creates a new asset type

Creates a new asset type for the authenticated tenant.

### Example

```bash
 createAssetType  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetTypeCreateDto** | [**AssetTypeCreateDto**](AssetTypeCreateDto.md) |  | [optional]

### Return type

[**AssetTypeDtoEnvelope**](AssetTypeDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteAssetType

Deletes an asset type

Deletes an asset type for the authenticated tenant.

### Example

```bash
 deleteAssetType  tenantId=value typeId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **typeId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetType

Gets a specific asset type

Retrieves a specific asset type by ID.

### Example

```bash
 getAssetType  tenantId=value typeId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **typeId** | **string** |  | [default to null]

### Return type

[**AssetTypeDtoEnvelope**](AssetTypeDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetTypes

Gets all asset types for the current tenant

Retrieves all asset types for the authenticated tenant.

### Example

```bash
 getAssetTypes  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**AssetTypeDtoListEnvelope**](AssetTypeDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetTypesCount

Gets the count of asset types

Returns the total number of asset types for the authenticated tenant.

### Example

```bash
 getAssetTypesCount  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateAssetType

Updates an existing asset type

Updates an existing asset type for the authenticated tenant.

### Example

```bash
 updateAssetType  tenantId=value typeId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **typeId** | **string** |  | [default to null]
 **assetTypeUpdateDto** | [**AssetTypeUpdateDto**](AssetTypeUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

