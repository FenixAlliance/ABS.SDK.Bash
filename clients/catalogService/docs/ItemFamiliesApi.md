# ItemFamiliesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createItemFamilyAsync**](ItemFamiliesApi.md#createItemFamilyAsync) | **POST** /api/v2/CatalogService/ItemFamilies | Create a new item family
[**deleteItemFamilyAsync**](ItemFamiliesApi.md#deleteItemFamilyAsync) | **DELETE** /api/v2/CatalogService/ItemFamilies/{itemFamilyId} | Delete an item family
[**getItemFamiliesAsync**](ItemFamiliesApi.md#getItemFamiliesAsync) | **GET** /api/v2/CatalogService/ItemFamilies | Get all item families
[**getItemFamiliesCountAsync**](ItemFamiliesApi.md#getItemFamiliesCountAsync) | **GET** /api/v2/CatalogService/ItemFamilies/Count | Get item families count
[**getItemFamilyByIdAsync**](ItemFamiliesApi.md#getItemFamilyByIdAsync) | **GET** /api/v2/CatalogService/ItemFamilies/{itemFamilyId} | Get item family by ID
[**patchItemFamilyAsync**](ItemFamiliesApi.md#patchItemFamilyAsync) | **PATCH** /api/v2/CatalogService/ItemFamilies/{itemFamilyId} | Patch an item family
[**updateItemFamilyAsync**](ItemFamiliesApi.md#updateItemFamilyAsync) | **PUT** /api/v2/CatalogService/ItemFamilies/{itemFamilyId} | Update an item family



## createItemFamilyAsync

Create a new item family

Creates a new item family for the specified tenant.

### Example

```bash
 createItemFamilyAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemFamilyCreateDto** | [**ItemFamilyCreateDto**](ItemFamilyCreateDto.md) |  | [optional]

### Return type

[**ItemFamilyDtoEnvelope**](ItemFamilyDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteItemFamilyAsync

Delete an item family

Deletes an item family for the specified tenant.

### Example

```bash
 deleteItemFamilyAsync  tenantId=value itemFamilyId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemFamilyId** | **string** |  | [default to null]
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


## getItemFamiliesAsync

Get all item families

Retrieves all item families for the specified tenant using OData query options.

### Example

```bash
 getItemFamiliesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemFamilyDtoListEnvelope**](ItemFamilyDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemFamiliesCountAsync

Get item families count

Returns the count of item families for the specified tenant.

### Example

```bash
 getItemFamiliesCountAsync  tenantId=value  api-version=value x-api-version:value
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


## getItemFamilyByIdAsync

Get item family by ID

Retrieves a specific item family by its ID.

### Example

```bash
 getItemFamilyByIdAsync itemFamilyId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemFamilyId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemFamilyDtoEnvelope**](ItemFamilyDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchItemFamilyAsync

Patch an item family

Partially updates an existing item family for the specified tenant using a JSON Patch document.

### Example

```bash
 patchItemFamilyAsync  tenantId=value itemFamilyId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemFamilyId** | **string** |  | [default to null]
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


## updateItemFamilyAsync

Update an item family

Updates an existing item family for the specified tenant.

### Example

```bash
 updateItemFamilyAsync  tenantId=value itemFamilyId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemFamilyId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemFamilyUpdateDto** | [**ItemFamilyUpdateDto**](ItemFamilyUpdateDto.md) |  | [optional]

### Return type

[**ItemFamilyDtoEnvelope**](ItemFamilyDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

