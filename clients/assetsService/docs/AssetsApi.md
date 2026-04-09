# AssetsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAsset**](AssetsApi.md#createAsset) | **POST** /api/v2/AssetsService/Assets | Creates a new asset
[**createAssetAssetCategory**](AssetsApi.md#createAssetAssetCategory) | **POST** /api/v2/AssetsService/Assets/Categories | Creates a new asset category
[**createAssetDepreciationRecord**](AssetsApi.md#createAssetDepreciationRecord) | **POST** /api/v2/AssetsService/Assets/{assetId}/DepreciationRecords | Creates a new depreciation record for an asset
[**createAssetRepair**](AssetsApi.md#createAssetRepair) | **POST** /api/v2/AssetsService/Assets/{assetId}/Repairs | Creates a new repair for an asset
[**createAssetTransfer**](AssetsApi.md#createAssetTransfer) | **POST** /api/v2/AssetsService/Assets/{assetId}/Transfers | Creates a new transfer for an asset
[**createAssetValueAmend**](AssetsApi.md#createAssetValueAmend) | **POST** /api/v2/AssetsService/Assets/{assetId}/ValueAmends | Creates a new value amendment for an asset
[**deleteAsset**](AssetsApi.md#deleteAsset) | **DELETE** /api/v2/AssetsService/Assets/{assetId} | Deletes an existing asset
[**deleteAssetAssetCategory**](AssetsApi.md#deleteAssetAssetCategory) | **DELETE** /api/v2/AssetsService/Assets/Categories/{categoryId} | Deletes an existing asset category
[**deleteAssetDepreciationRecord**](AssetsApi.md#deleteAssetDepreciationRecord) | **DELETE** /api/v2/AssetsService/Assets/{assetId}/DepreciationRecords/{recordId} | Deletes a depreciation record for an asset
[**deleteAssetRepair**](AssetsApi.md#deleteAssetRepair) | **DELETE** /api/v2/AssetsService/Assets/{assetId}/Repairs/{repairId} | Deletes a repair for an asset
[**deleteAssetTransfer**](AssetsApi.md#deleteAssetTransfer) | **DELETE** /api/v2/AssetsService/Assets/{assetId}/Transfers/{transferId} | Deletes a transfer for an asset
[**deleteAssetValueAmend**](AssetsApi.md#deleteAssetValueAmend) | **DELETE** /api/v2/AssetsService/Assets/{assetId}/ValueAmends/{amendId} | Deletes a value amendment for an asset
[**getAsset**](AssetsApi.md#getAsset) | **GET** /api/v2/AssetsService/Assets/{assetId} | Gets a specific asset by ID
[**getAssetAssetCategories**](AssetsApi.md#getAssetAssetCategories) | **GET** /api/v2/AssetsService/Assets/Categories | Gets all asset categories
[**getAssetAssetCategoriesCount**](AssetsApi.md#getAssetAssetCategoriesCount) | **GET** /api/v2/AssetsService/Assets/Categories/count | Gets the count of asset categories
[**getAssetAssetCategory**](AssetsApi.md#getAssetAssetCategory) | **GET** /api/v2/AssetsService/Assets/Categories/{categoryId} | Gets a specific asset category
[**getAssetDepreciationRecord**](AssetsApi.md#getAssetDepreciationRecord) | **GET** /api/v2/AssetsService/Assets/{assetId}/DepreciationRecords/{recordId} | Gets a specific depreciation record for an asset
[**getAssetDepreciationRecords**](AssetsApi.md#getAssetDepreciationRecords) | **GET** /api/v2/AssetsService/Assets/{assetId}/DepreciationRecords | Gets depreciation records for a specific asset
[**getAssetDepreciationRecordsCount**](AssetsApi.md#getAssetDepreciationRecordsCount) | **GET** /api/v2/AssetsService/Assets/{assetId}/DepreciationRecords/Count | Gets count of depreciation records for a specific asset
[**getAssetRepair**](AssetsApi.md#getAssetRepair) | **GET** /api/v2/AssetsService/Assets/{assetId}/Repairs/{repairId} | Gets a specific repair for an asset
[**getAssetRepairs**](AssetsApi.md#getAssetRepairs) | **GET** /api/v2/AssetsService/Assets/{assetId}/Repairs | Gets repairs for a specific asset
[**getAssetRepairsCount**](AssetsApi.md#getAssetRepairsCount) | **GET** /api/v2/AssetsService/Assets/{assetId}/Repairs/Count | Gets count of repairs for a specific asset
[**getAssetTransfer**](AssetsApi.md#getAssetTransfer) | **GET** /api/v2/AssetsService/Assets/{assetId}/Transfers/{transferId} | Gets a specific transfer for an asset
[**getAssetTransfers**](AssetsApi.md#getAssetTransfers) | **GET** /api/v2/AssetsService/Assets/{assetId}/Transfers | Gets transfers for a specific asset
[**getAssetTransfersCount**](AssetsApi.md#getAssetTransfersCount) | **GET** /api/v2/AssetsService/Assets/{assetId}/Transfers/Count | Gets count of transfers for a specific asset
[**getAssetValueAmend**](AssetsApi.md#getAssetValueAmend) | **GET** /api/v2/AssetsService/Assets/{assetId}/ValueAmends/{amendId} | Gets a specific value amendment for an asset
[**getAssetValueAmends**](AssetsApi.md#getAssetValueAmends) | **GET** /api/v2/AssetsService/Assets/{assetId}/ValueAmends | Gets value amendments for a specific asset
[**getAssetValueAmendsCount**](AssetsApi.md#getAssetValueAmendsCount) | **GET** /api/v2/AssetsService/Assets/{assetId}/ValueAmends/Count | Gets count of value amendments for a specific asset
[**getAssets**](AssetsApi.md#getAssets) | **GET** /api/v2/AssetsService/Assets | Gets all assets for the current tenant
[**getAssetsCount**](AssetsApi.md#getAssetsCount) | **GET** /api/v2/AssetsService/Assets/count | Gets the count of assets
[**updateAsset**](AssetsApi.md#updateAsset) | **PUT** /api/v2/AssetsService/Assets/{assetId} | Updates an existing asset
[**updateAssetAssetCategory**](AssetsApi.md#updateAssetAssetCategory) | **PUT** /api/v2/AssetsService/Assets/Categories/{categoryId} | Updates an existing asset category
[**updateAssetDepreciationRecord**](AssetsApi.md#updateAssetDepreciationRecord) | **PUT** /api/v2/AssetsService/Assets/{assetId}/DepreciationRecords/{recordId} | Updates a depreciation record for an asset
[**updateAssetRepair**](AssetsApi.md#updateAssetRepair) | **PUT** /api/v2/AssetsService/Assets/{assetId}/Repairs/{repairId} | Updates a repair for an asset
[**updateAssetTransfer**](AssetsApi.md#updateAssetTransfer) | **PUT** /api/v2/AssetsService/Assets/{assetId}/Transfers/{transferId} | Updates a transfer for an asset
[**updateAssetValueAmend**](AssetsApi.md#updateAssetValueAmend) | **PUT** /api/v2/AssetsService/Assets/{assetId}/ValueAmends/{amendId} | Updates a value amendment for an asset



## createAsset

Creates a new asset

Creates a new asset for the authenticated tenant.

### Example

```bash
 createAsset  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetCreateDto** | [**AssetCreateDto**](AssetCreateDto.md) |  | [optional]

### Return type

[**AssetDtoEnvelope**](AssetDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createAssetAssetCategory

Creates a new asset category

Creates a new asset category for the authenticated tenant.

### Example

```bash
 createAssetAssetCategory  tenantId=value
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


## createAssetDepreciationRecord

Creates a new depreciation record for an asset

Creates a new depreciation record for the specified asset.

### Example

```bash
 createAssetDepreciationRecord  tenantId=value assetId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]
 **assetDepreciationRecordCreateDto** | [**AssetDepreciationRecordCreateDto**](AssetDepreciationRecordCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createAssetRepair

Creates a new repair for an asset

Creates a new repair record for the specified asset.

### Example

```bash
 createAssetRepair  tenantId=value assetId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]
 **assetRepairCreateDto** | [**AssetRepairCreateDto**](AssetRepairCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createAssetTransfer

Creates a new transfer for an asset

Creates a new transfer record for the specified asset.

### Example

```bash
 createAssetTransfer  tenantId=value assetId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]
 **assetTransferCreateDto** | [**AssetTransferCreateDto**](AssetTransferCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createAssetValueAmend

Creates a new value amendment for an asset

Creates a new value amendment record for the specified asset.

### Example

```bash
 createAssetValueAmend  tenantId=value assetId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]
 **assetValueAmendCreateDto** | [**AssetValueAmendCreateDto**](AssetValueAmendCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteAsset

Deletes an existing asset

Deletes an existing asset for the authenticated tenant.

### Example

```bash
 deleteAsset  tenantId=value assetId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteAssetAssetCategory

Deletes an existing asset category

Deletes an existing asset category for the authenticated tenant.

### Example

```bash
 deleteAssetAssetCategory  tenantId=value categoryId=value
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


## deleteAssetDepreciationRecord

Deletes a depreciation record for an asset

Deletes a depreciation record for the specified asset.

### Example

```bash
 deleteAssetDepreciationRecord  tenantId=value assetId=value recordId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]
 **recordId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteAssetRepair

Deletes a repair for an asset

Deletes a repair record for the specified asset.

### Example

```bash
 deleteAssetRepair  tenantId=value assetId=value repairId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]
 **repairId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteAssetTransfer

Deletes a transfer for an asset

Deletes a transfer record for the specified asset.

### Example

```bash
 deleteAssetTransfer  tenantId=value assetId=value transferId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]
 **transferId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteAssetValueAmend

Deletes a value amendment for an asset

Deletes a value amendment record for the specified asset.

### Example

```bash
 deleteAssetValueAmend  tenantId=value assetId=value amendId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]
 **amendId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAsset

Gets a specific asset by ID

Retrieves a specific asset for the authenticated tenant.

### Example

```bash
 getAsset  tenantId=value assetId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]

### Return type

[**AssetDtoEnvelope**](AssetDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetAssetCategories

Gets all asset categories

Retrieves all asset categories for the authenticated tenant.

### Example

```bash
 getAssetAssetCategories  tenantId=value
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


## getAssetAssetCategoriesCount

Gets the count of asset categories

Returns the total number of asset categories for the authenticated tenant.

### Example

```bash
 getAssetAssetCategoriesCount  tenantId=value
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


## getAssetAssetCategory

Gets a specific asset category

Retrieves a specific asset category for the authenticated tenant.

### Example

```bash
 getAssetAssetCategory  tenantId=value categoryId=value
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


## getAssetDepreciationRecord

Gets a specific depreciation record for an asset

Retrieves a specific depreciation record by ID for the specified asset.

### Example

```bash
 getAssetDepreciationRecord  tenantId=value assetId=value recordId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]
 **recordId** | **string** |  | [default to null]

### Return type

[**AssetDepreciationRecordDtoEnvelope**](AssetDepreciationRecordDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetDepreciationRecords

Gets depreciation records for a specific asset

Retrieves all depreciation records for the specified asset.

### Example

```bash
 getAssetDepreciationRecords  tenantId=value assetId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]

### Return type

[**AssetDepreciationRecordDtoListEnvelope**](AssetDepreciationRecordDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetDepreciationRecordsCount

Gets count of depreciation records for a specific asset

Returns the total number of depreciation records for the specified asset.

### Example

```bash
 getAssetDepreciationRecordsCount  tenantId=value assetId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetRepair

Gets a specific repair for an asset

Retrieves a specific repair record by ID for the specified asset.

### Example

```bash
 getAssetRepair  tenantId=value assetId=value repairId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]
 **repairId** | **string** |  | [default to null]

### Return type

[**AssetRepairDtoEnvelope**](AssetRepairDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetRepairs

Gets repairs for a specific asset

Retrieves all repair records for the specified asset.

### Example

```bash
 getAssetRepairs  tenantId=value assetId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]

### Return type

[**AssetRepairDtoListEnvelope**](AssetRepairDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetRepairsCount

Gets count of repairs for a specific asset

Returns the total number of repair records for the specified asset.

### Example

```bash
 getAssetRepairsCount  tenantId=value assetId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetTransfer

Gets a specific transfer for an asset

Retrieves a specific transfer record by ID for the specified asset.

### Example

```bash
 getAssetTransfer  tenantId=value assetId=value transferId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]
 **transferId** | **string** |  | [default to null]

### Return type

[**AssetTransferDtoEnvelope**](AssetTransferDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetTransfers

Gets transfers for a specific asset

Retrieves all transfer records for the specified asset.

### Example

```bash
 getAssetTransfers  tenantId=value assetId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]

### Return type

[**AssetTransferDtoListEnvelope**](AssetTransferDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetTransfersCount

Gets count of transfers for a specific asset

Returns the total number of transfer records for the specified asset.

### Example

```bash
 getAssetTransfersCount  tenantId=value assetId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetValueAmend

Gets a specific value amendment for an asset

Retrieves a specific value amendment record by ID for the specified asset.

### Example

```bash
 getAssetValueAmend  tenantId=value assetId=value amendId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]
 **amendId** | **string** |  | [default to null]

### Return type

[**AssetValueAmendDtoEnvelope**](AssetValueAmendDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetValueAmends

Gets value amendments for a specific asset

Retrieves all value amendment records for the specified asset.

### Example

```bash
 getAssetValueAmends  tenantId=value assetId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]

### Return type

[**AssetValueAmendDtoListEnvelope**](AssetValueAmendDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetValueAmendsCount

Gets count of value amendments for a specific asset

Returns the total number of value amendment records for the specified asset.

### Example

```bash
 getAssetValueAmendsCount  tenantId=value assetId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssets

Gets all assets for the current tenant

Retrieves all assets for the authenticated tenant with optional filtering.

### Example

```bash
 getAssets  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**AssetDtoListEnvelope**](AssetDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetsCount

Gets the count of assets

Returns the total number of assets for the authenticated tenant.

### Example

```bash
 getAssetsCount  tenantId=value
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


## updateAsset

Updates an existing asset

Updates an existing asset for the authenticated tenant.

### Example

```bash
 updateAsset  tenantId=value assetId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]
 **assetUpdateDto** | [**AssetUpdateDto**](AssetUpdateDto.md) |  | [optional]

### Return type

[**AssetDtoEnvelope**](AssetDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateAssetAssetCategory

Updates an existing asset category

Updates an existing asset category for the authenticated tenant.

### Example

```bash
 updateAssetAssetCategory  tenantId=value categoryId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **categoryId** | **string** |  | [default to null]
 **assetCategoryUpdateDto** | [**AssetCategoryUpdateDto**](AssetCategoryUpdateDto.md) |  | [optional]

### Return type

[**AssetCategoryDtoEnvelope**](AssetCategoryDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateAssetDepreciationRecord

Updates a depreciation record for an asset

Updates an existing depreciation record for the specified asset.

### Example

```bash
 updateAssetDepreciationRecord  tenantId=value assetId=value recordId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]
 **recordId** | **string** |  | [default to null]
 **assetDepreciationRecordUpdateDto** | [**AssetDepreciationRecordUpdateDto**](AssetDepreciationRecordUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateAssetRepair

Updates a repair for an asset

Updates an existing repair record for the specified asset.

### Example

```bash
 updateAssetRepair  tenantId=value assetId=value repairId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]
 **repairId** | **string** |  | [default to null]
 **assetRepairUpdateDto** | [**AssetRepairUpdateDto**](AssetRepairUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateAssetTransfer

Updates a transfer for an asset

Updates an existing transfer record for the specified asset.

### Example

```bash
 updateAssetTransfer  tenantId=value assetId=value transferId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]
 **transferId** | **string** |  | [default to null]
 **assetTransferUpdateDto** | [**AssetTransferUpdateDto**](AssetTransferUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateAssetValueAmend

Updates a value amendment for an asset

Updates an existing value amendment record for the specified asset.

### Example

```bash
 updateAssetValueAmend  tenantId=value assetId=value amendId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetId** | **string** |  | [default to null]
 **amendId** | **string** |  | [default to null]
 **assetValueAmendUpdateDto** | [**AssetValueAmendUpdateDto**](AssetValueAmendUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

