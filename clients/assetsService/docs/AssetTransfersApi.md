# AssetTransfersApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAssetTransferAsync**](AssetTransfersApi.md#createAssetTransferAsync) | **POST** /api/v2/AssetsService/AssetTransfers | Creates a new asset transfer
[**deleteAssetTransferAsync**](AssetTransfersApi.md#deleteAssetTransferAsync) | **DELETE** /api/v2/AssetsService/AssetTransfers/{transferId} | Deletes an asset transfer
[**getAssetTransferAsync**](AssetTransfersApi.md#getAssetTransferAsync) | **GET** /api/v2/AssetsService/AssetTransfers/{transferId} | Gets a single asset transfer by ID
[**getAssetTransfersAsync**](AssetTransfersApi.md#getAssetTransfersAsync) | **GET** /api/v2/AssetsService/AssetTransfers | Gets a list of asset transfers
[**getAssetTransfersCountAsync**](AssetTransfersApi.md#getAssetTransfersCountAsync) | **GET** /api/v2/AssetsService/AssetTransfers/Count | Gets the count of asset transfers
[**patchAssetTransferAsync**](AssetTransfersApi.md#patchAssetTransferAsync) | **PATCH** /api/v2/AssetsService/AssetTransfers/{transferId} | Partially updates an existing asset transfer
[**updateAssetTransferAsync**](AssetTransfersApi.md#updateAssetTransferAsync) | **PUT** /api/v2/AssetsService/AssetTransfers/{transferId} | Updates an existing asset transfer



## createAssetTransferAsync

Creates a new asset transfer

Creates a new asset transfer for the authenticated tenant.

### Example

```bash
 createAssetTransferAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **assetTransferCreateDto** | [**AssetTransferCreateDto**](AssetTransferCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteAssetTransferAsync

Deletes an asset transfer

Deletes an asset transfer for the authenticated tenant.

### Example

```bash
 deleteAssetTransferAsync  tenantId=value transferId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **transferId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetTransferAsync

Gets a single asset transfer by ID

Retrieves a specific asset transfer by its ID for the authenticated tenant.

### Example

```bash
 getAssetTransferAsync  tenantId=value transferId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **transferId** | **string** |  | [default to null]

### Return type

[**AssetTransferDtoEnvelope**](AssetTransferDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetTransfersAsync

Gets a list of asset transfers

Retrieves all asset transfers for the authenticated tenant.

### Example

```bash
 getAssetTransfersAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**AssetTransferDtoListEnvelope**](AssetTransferDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAssetTransfersCountAsync

Gets the count of asset transfers

Returns the total number of asset transfers for the authenticated tenant.

### Example

```bash
 getAssetTransfersCountAsync  tenantId=value
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


## patchAssetTransferAsync

Partially updates an existing asset transfer

Applies a JSON Patch document to an existing asset transfer for the authenticated tenant.

### Example

```bash
 patchAssetTransferAsync  tenantId=value transferId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **transferId** | **string** |  | [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateAssetTransferAsync

Updates an existing asset transfer

Updates an existing asset transfer for the authenticated tenant.

### Example

```bash
 updateAssetTransferAsync  tenantId=value transferId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
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

