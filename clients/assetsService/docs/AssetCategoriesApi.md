# AssetCategoriesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAssetCategory**](AssetCategoriesApi.md#createAssetCategory) | **POST** /api/v2/AssetsService/AssetCategories | Creates a new asset category
[**deleteAssetCategory**](AssetCategoriesApi.md#deleteAssetCategory) | **DELETE** /api/v2/AssetsService/AssetCategories/{categoryId} | Deletes an asset category
[**getAssetCategories**](AssetCategoriesApi.md#getAssetCategories) | **GET** /api/v2/AssetsService/AssetCategories | Gets all asset categories for the current tenant
[**getAssetCategoriesCount**](AssetCategoriesApi.md#getAssetCategoriesCount) | **GET** /api/v2/AssetsService/AssetCategories/count | Gets the count of asset categories
[**getAssetCategory**](AssetCategoriesApi.md#getAssetCategory) | **GET** /api/v2/AssetsService/AssetCategories/{categoryId} | Gets a specific asset category
[**patchAssetCategory**](AssetCategoriesApi.md#patchAssetCategory) | **PATCH** /api/v2/AssetsService/AssetCategories/{categoryId} | Partially updates an existing asset category
[**updateAssetCategory**](AssetCategoriesApi.md#updateAssetCategory) | **PUT** /api/v2/AssetsService/AssetCategories/{categoryId} | Updates an existing asset category



## createAssetCategory

Creates a new asset category

Creates a new asset category for the authenticated tenant.

### Example

```bash
 createAssetCategory  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetCategoryCreateDto** | [**AssetCategoryCreateDto**](AssetCategoryCreateDto.md) |  | [optional]

### Return type

[**AssetCategoryDtoEnvelope**](AssetCategoryDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteAssetCategory

Deletes an asset category

Deletes an asset category for the authenticated tenant.

### Example

```bash
 deleteAssetCategory  tenantId=value categoryId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **categoryId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetCategories

Gets all asset categories for the current tenant

Retrieves all asset categories for the authenticated tenant.

### Example

```bash
 getAssetCategories  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**AssetCategoryDtoListEnvelope**](AssetCategoryDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetCategoriesCount

Gets the count of asset categories

Returns the total number of asset categories for the authenticated tenant.

### Example

```bash
 getAssetCategoriesCount  tenantId=value
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


## getAssetCategory

Gets a specific asset category

Retrieves a specific asset category by ID.

### Example

```bash
 getAssetCategory  tenantId=value categoryId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **categoryId** | **string** |  | [default to null]

### Return type

[**AssetCategoryDtoEnvelope**](AssetCategoryDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchAssetCategory

Partially updates an existing asset category

Applies a JSON Patch document to an existing asset category for the authenticated tenant.

### Example

```bash
 patchAssetCategory  tenantId=value categoryId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **categoryId** | **string** |  | [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateAssetCategory

Updates an existing asset category

Updates an existing asset category for the authenticated tenant.

### Example

```bash
 updateAssetCategory  tenantId=value categoryId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **categoryId** | **string** |  | [default to null]
 **assetCategoryUpdateDto** | [**AssetCategoryUpdateDto**](AssetCategoryUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

