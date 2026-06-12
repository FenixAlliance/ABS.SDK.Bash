# BlockchainsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBlockchainAsync**](BlockchainsApi.md#createBlockchainAsync) | **POST** /api/v2/BlockchainsService/Blockchains | Create a new blockchain
[**createBlockchainBlockAsync**](BlockchainsApi.md#createBlockchainBlockAsync) | **POST** /api/v2/BlockchainsService/Blockchains/{blockchainId}/Blocks | Add a block to a blockchain
[**deleteBlockchainAsync**](BlockchainsApi.md#deleteBlockchainAsync) | **DELETE** /api/v2/BlockchainsService/Blockchains/{id} | Delete a blockchain
[**deleteBlockchainBlockAsync**](BlockchainsApi.md#deleteBlockchainBlockAsync) | **DELETE** /api/v2/BlockchainsService/Blockchains/{blockchainId}/Blocks/{blockId} | Delete a blockchain block
[**getBlockchainBlockByIdAsync**](BlockchainsApi.md#getBlockchainBlockByIdAsync) | **GET** /api/v2/BlockchainsService/Blockchains/{blockchainId}/Blocks/{blockId} | Get a specific block
[**getBlockchainBlocksAsync**](BlockchainsApi.md#getBlockchainBlocksAsync) | **GET** /api/v2/BlockchainsService/Blockchains/{blockchainId}/Blocks | Get blocks for a blockchain
[**getBlockchainBlocksCountAsync**](BlockchainsApi.md#getBlockchainBlocksCountAsync) | **GET** /api/v2/BlockchainsService/Blockchains/{blockchainId}/Blocks/Count | Get block count for a blockchain
[**getBlockchainByIdAsync**](BlockchainsApi.md#getBlockchainByIdAsync) | **GET** /api/v2/BlockchainsService/Blockchains/{id} | Get blockchain by ID
[**getBlockchainsAsync**](BlockchainsApi.md#getBlockchainsAsync) | **GET** /api/v2/BlockchainsService/Blockchains | Get all blockchains
[**getBlockchainsCountAsync**](BlockchainsApi.md#getBlockchainsCountAsync) | **GET** /api/v2/BlockchainsService/Blockchains/Count | Get blockchains count
[**patchBlockchainAsync**](BlockchainsApi.md#patchBlockchainAsync) | **PATCH** /api/v2/BlockchainsService/Blockchains/{id} | Patch a blockchain
[**patchBlockchainBlockAsync**](BlockchainsApi.md#patchBlockchainBlockAsync) | **PATCH** /api/v2/BlockchainsService/Blockchains/{blockchainId}/Blocks/{blockId} | Patch a blockchain block
[**updateBlockchainAsync**](BlockchainsApi.md#updateBlockchainAsync) | **PUT** /api/v2/BlockchainsService/Blockchains/{id} | Update a blockchain
[**updateBlockchainBlockAsync**](BlockchainsApi.md#updateBlockchainBlockAsync) | **PUT** /api/v2/BlockchainsService/Blockchains/{blockchainId}/Blocks/{blockId} | Update a blockchain block



## createBlockchainAsync

Create a new blockchain

Creates a new blockchain for the specified tenant.

### Example

```bash
 createBlockchainAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **blockchainCreateDto** | [**BlockchainCreateDto**](BlockchainCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createBlockchainBlockAsync

Add a block to a blockchain

### Example

```bash
 createBlockchainBlockAsync  tenantId=value blockchainId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blockchainId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **blockchainBlockCreateDto** | [**BlockchainBlockCreateDto**](BlockchainBlockCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteBlockchainAsync

Delete a blockchain

Deletes a blockchain for the specified tenant.

### Example

```bash
 deleteBlockchainAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteBlockchainBlockAsync

Delete a blockchain block

### Example

```bash
 deleteBlockchainBlockAsync  tenantId=value blockchainId=value blockId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blockchainId** | **string** |  | [default to null]
 **blockId** | **string** |  | [default to null]
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


## getBlockchainBlockByIdAsync

Get a specific block

### Example

```bash
 getBlockchainBlockByIdAsync  tenantId=value blockchainId=value blockId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blockchainId** | **string** |  | [default to null]
 **blockId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BlockchainBlockDto**](BlockchainBlockDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBlockchainBlocksAsync

Get blocks for a blockchain

### Example

```bash
 getBlockchainBlocksAsync  tenantId=value blockchainId=value  oDataQueryOptions=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blockchainId** | **string** |  | [default to null]
 **oDataQueryOptions** | [**BlockchainBlockDtoODataQueryOptions**](.md) |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BlockchainBlockDtoListEnvelope**](BlockchainBlockDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBlockchainBlocksCountAsync

Get block count for a blockchain

### Example

```bash
 getBlockchainBlocksCountAsync  tenantId=value blockchainId=value  oDataQueryOptions=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blockchainId** | **string** |  | [default to null]
 **oDataQueryOptions** | [**BlockchainBlockDtoODataQueryOptions**](.md) |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBlockchainByIdAsync

Get blockchain by ID

Retrieves a specific blockchain by its identifier.

### Example

```bash
 getBlockchainByIdAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BlockchainDto**](BlockchainDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBlockchainsAsync

Get all blockchains

Retrieves all blockchains for the specified tenant.

### Example

```bash
 getBlockchainsAsync  tenantId=value  oDataQueryOptions=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **oDataQueryOptions** | [**BlockchainDtoODataQueryOptions**](.md) |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BlockchainDtoListEnvelope**](BlockchainDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBlockchainsCountAsync

Get blockchains count

Returns the count of blockchains for the specified tenant.

### Example

```bash
 getBlockchainsCountAsync  tenantId=value  oDataQueryOptions=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **oDataQueryOptions** | [**BlockchainDtoODataQueryOptions**](.md) |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchBlockchainAsync

Patch a blockchain

Patch a blockchain

### Example

```bash
 patchBlockchainAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchBlockchainBlockAsync

Patch a blockchain block

Patch a blockchain block

### Example

```bash
 patchBlockchainBlockAsync  tenantId=value blockchainId=value blockId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blockchainId** | **string** |  | [default to null]
 **blockId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateBlockchainAsync

Update a blockchain

Updates an existing blockchain for the specified tenant.

### Example

```bash
 updateBlockchainAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **blockchainUpdateDto** | [**BlockchainUpdateDto**](BlockchainUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateBlockchainBlockAsync

Update a blockchain block

### Example

```bash
 updateBlockchainBlockAsync  tenantId=value blockchainId=value blockId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **blockchainId** | **string** |  | [default to null]
 **blockId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **blockchainBlockUpdateDto** | [**BlockchainBlockUpdateDto**](BlockchainBlockUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

