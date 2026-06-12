# ItemBrandsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createItemBrandAsync**](ItemBrandsApi.md#createItemBrandAsync) | **POST** /api/v2/CatalogService/ItemBrands | Create a new item brand
[**deleteItemBrandAsync**](ItemBrandsApi.md#deleteItemBrandAsync) | **DELETE** /api/v2/CatalogService/ItemBrands/{itemBrandId} | Delete an item brand
[**getItemBrandByIdAsync**](ItemBrandsApi.md#getItemBrandByIdAsync) | **GET** /api/v2/CatalogService/ItemBrands/{itemBrandId} | Get item brand by ID
[**getItemBrandsAsync**](ItemBrandsApi.md#getItemBrandsAsync) | **GET** /api/v2/CatalogService/ItemBrands | Get all item brands
[**patchItemBrandAsync**](ItemBrandsApi.md#patchItemBrandAsync) | **PATCH** /api/v2/CatalogService/ItemBrands/{itemBrandId} | Patch an item brand
[**updateItemBrandAsync**](ItemBrandsApi.md#updateItemBrandAsync) | **PUT** /api/v2/CatalogService/ItemBrands/{itemBrandId} | Update an item brand



## createItemBrandAsync

Create a new item brand

Creates a new item brand for the specified tenant.

### Example

```bash
 createItemBrandAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemBrandCreateDto** | [**ItemBrandCreateDto**](ItemBrandCreateDto.md) |  | [optional]

### Return type

[**ItemBrandDtoEnvelope**](ItemBrandDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteItemBrandAsync

Delete an item brand

Deletes an item brand for the specified tenant.

### Example

```bash
 deleteItemBrandAsync  tenantId=value itemBrandId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemBrandId** | **string** |  | [default to null]
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


## getItemBrandByIdAsync

Get item brand by ID

Retrieves a specific item brand by its ID.

### Example

```bash
 getItemBrandByIdAsync itemBrandId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemBrandId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemBrandDtoEnvelope**](ItemBrandDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemBrandsAsync

Get all item brands

Retrieves all item brands for the specified tenant using OData query options.

### Example

```bash
 getItemBrandsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemBrandDtoListEnvelope**](ItemBrandDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchItemBrandAsync

Patch an item brand

Partially updates an existing item brand for the specified tenant.

### Example

```bash
 patchItemBrandAsync  tenantId=value itemBrandId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemBrandId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateItemBrandAsync

Update an item brand

Updates an existing item brand for the specified tenant.

### Example

```bash
 updateItemBrandAsync  tenantId=value itemBrandId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemBrandId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemBrandUpdateDto** | [**ItemBrandUpdateDto**](ItemBrandUpdateDto.md) |  | [optional]

### Return type

[**ItemBrandDtoEnvelope**](ItemBrandDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

