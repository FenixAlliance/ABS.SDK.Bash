# NonFungibleTokensApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNonFungibleTokenAsync**](NonFungibleTokensApi.md#createNonFungibleTokenAsync) | **POST** /api/v2/BlockchainsService/NonFungibleTokens | Create a new NFT
[**deleteNonFungibleTokenAsync**](NonFungibleTokensApi.md#deleteNonFungibleTokenAsync) | **DELETE** /api/v2/BlockchainsService/NonFungibleTokens/{id} | Delete an NFT
[**getNonFungibleTokenByIdAsync**](NonFungibleTokensApi.md#getNonFungibleTokenByIdAsync) | **GET** /api/v2/BlockchainsService/NonFungibleTokens/{id} | Get NFT by ID
[**getNonFungibleTokensAsync**](NonFungibleTokensApi.md#getNonFungibleTokensAsync) | **GET** /api/v2/BlockchainsService/NonFungibleTokens | Get all non-fungible tokens
[**getNonFungibleTokensCountAsync**](NonFungibleTokensApi.md#getNonFungibleTokensCountAsync) | **GET** /api/v2/BlockchainsService/NonFungibleTokens/Count | Get NFTs count
[**patchNonFungibleTokenAsync**](NonFungibleTokensApi.md#patchNonFungibleTokenAsync) | **PATCH** /api/v2/BlockchainsService/NonFungibleTokens/{id} | Patch a non-fungible token
[**updateNonFungibleTokenAsync**](NonFungibleTokensApi.md#updateNonFungibleTokenAsync) | **PUT** /api/v2/BlockchainsService/NonFungibleTokens/{id} | Update an NFT



## createNonFungibleTokenAsync

Create a new NFT

Creates a new non-fungible token for the specified tenant.

### Example

```bash
 createNonFungibleTokenAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **nonFungibleTokenCreateDto** | [**NonFungibleTokenCreateDto**](NonFungibleTokenCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteNonFungibleTokenAsync

Delete an NFT

Deletes a non-fungible token for the specified tenant.

### Example

```bash
 deleteNonFungibleTokenAsync  tenantId=value id=value  api-version=value x-api-version:value
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


## getNonFungibleTokenByIdAsync

Get NFT by ID

Retrieves a specific non-fungible token by its identifier.

### Example

```bash
 getNonFungibleTokenByIdAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**NonFungibleTokenDto**](NonFungibleTokenDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getNonFungibleTokensAsync

Get all non-fungible tokens

Retrieves all NFTs for the specified tenant.

### Example

```bash
 getNonFungibleTokensAsync  tenantId=value  oDataQueryOptions=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **oDataQueryOptions** | [**NonFungibleTokenDtoODataQueryOptions**](.md) |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**NonFungibleTokenDtoListEnvelope**](NonFungibleTokenDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getNonFungibleTokensCountAsync

Get NFTs count

Returns the count of NFTs for the specified tenant.

### Example

```bash
 getNonFungibleTokensCountAsync  tenantId=value  oDataQueryOptions=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **oDataQueryOptions** | [**NonFungibleTokenDtoODataQueryOptions**](.md) |  | [optional] [default to null]
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


## patchNonFungibleTokenAsync

Patch a non-fungible token

Patch a non-fungible token

### Example

```bash
 patchNonFungibleTokenAsync  tenantId=value id=value  api-version=value x-api-version:value
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


## updateNonFungibleTokenAsync

Update an NFT

Updates an existing non-fungible token for the specified tenant.

### Example

```bash
 updateNonFungibleTokenAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **nonFungibleTokenUpdateDto** | [**NonFungibleTokenUpdateDto**](NonFungibleTokenUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

