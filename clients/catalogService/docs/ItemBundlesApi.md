# ItemBundlesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createItemBundleAsync**](ItemBundlesApi.md#createItemBundleAsync) | **POST** /api/v2/CatalogService/ItemBundles | Create a new item bundle
[**deleteItemBundleAsync**](ItemBundlesApi.md#deleteItemBundleAsync) | **DELETE** /api/v2/CatalogService/ItemBundles/{itemBundleId} | Delete an item bundle
[**getItemBundleByIdAsync**](ItemBundlesApi.md#getItemBundleByIdAsync) | **GET** /api/v2/CatalogService/ItemBundles/{itemBundleId} | Get item bundle by ID
[**getItemBundlesAsync**](ItemBundlesApi.md#getItemBundlesAsync) | **GET** /api/v2/CatalogService/ItemBundles | Get all item bundles
[**getItemBundlesCountAsync**](ItemBundlesApi.md#getItemBundlesCountAsync) | **GET** /api/v2/CatalogService/ItemBundles/Count | Get item bundles count
[**patchItemBundleAsync**](ItemBundlesApi.md#patchItemBundleAsync) | **PATCH** /api/v2/CatalogService/ItemBundles/{itemBundleId} | Patch an item bundle
[**updateItemBundleAsync**](ItemBundlesApi.md#updateItemBundleAsync) | **PUT** /api/v2/CatalogService/ItemBundles/{itemBundleId} | Update an item bundle



## createItemBundleAsync

Create a new item bundle

Creates a new item bundle for the specified tenant.

### Example

```bash
 createItemBundleAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemBundleCreateDto** | [**ItemBundleCreateDto**](ItemBundleCreateDto.md) |  | [optional]

### Return type

[**ItemBundleDtoEnvelope**](ItemBundleDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteItemBundleAsync

Delete an item bundle

Deletes an item bundle for the specified tenant.

### Example

```bash
 deleteItemBundleAsync  tenantId=value itemBundleId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemBundleId** | **string** |  | [default to null]
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


## getItemBundleByIdAsync

Get item bundle by ID

Retrieves a specific item bundle by its ID.

### Example

```bash
 getItemBundleByIdAsync itemBundleId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemBundleId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemBundleDtoEnvelope**](ItemBundleDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemBundlesAsync

Get all item bundles

Retrieves all item bundles for the specified tenant using OData query options.

### Example

```bash
 getItemBundlesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemBundleDtoListEnvelope**](ItemBundleDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemBundlesCountAsync

Get item bundles count

Returns the count of item bundles for the specified tenant.

### Example

```bash
 getItemBundlesCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
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


## patchItemBundleAsync

Patch an item bundle

Partially updates an existing item bundle for the specified tenant using a JSON Patch document.

### Example

```bash
 patchItemBundleAsync  tenantId=value itemBundleId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemBundleId** | **string** |  | [default to null]
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


## updateItemBundleAsync

Update an item bundle

Updates an existing item bundle for the specified tenant.

### Example

```bash
 updateItemBundleAsync  tenantId=value itemBundleId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemBundleId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemBundleUpdateDto** | [**ItemBundleUpdateDto**](ItemBundleUpdateDto.md) |  | [optional]

### Return type

[**ItemBundleDtoEnvelope**](ItemBundleDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

