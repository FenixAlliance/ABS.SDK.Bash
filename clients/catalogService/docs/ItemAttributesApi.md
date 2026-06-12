# ItemAttributesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countItemAttributesAsync**](ItemAttributesApi.md#countItemAttributesAsync) | **GET** /api/v2/CatalogService/ItemAttributes/Count | Count item attributes
[**createItemAttributeAsync**](ItemAttributesApi.md#createItemAttributeAsync) | **POST** /api/v2/CatalogService/ItemAttributes | Create a new item attribute
[**deleteItemAttributeAsync**](ItemAttributesApi.md#deleteItemAttributeAsync) | **DELETE** /api/v2/CatalogService/ItemAttributes/{itemAttributeId} | Delete an item attribute
[**getItemAttributeByIdAsync**](ItemAttributesApi.md#getItemAttributeByIdAsync) | **GET** /api/v2/CatalogService/ItemAttributes/{itemAttributeId} | Get item attribute by ID
[**getItemAttributesAsync**](ItemAttributesApi.md#getItemAttributesAsync) | **GET** /api/v2/CatalogService/ItemAttributes | Get all item attributes
[**patchItemAttributeAsync**](ItemAttributesApi.md#patchItemAttributeAsync) | **PATCH** /api/v2/CatalogService/ItemAttributes/{itemAttributeId} | Patch an item attribute
[**updateItemAttributeAsync**](ItemAttributesApi.md#updateItemAttributeAsync) | **PUT** /api/v2/CatalogService/ItemAttributes/{itemAttributeId} | Update an item attribute



## countItemAttributesAsync

Count item attributes

Counts all item attributes for the specified tenant.

### Example

```bash
 countItemAttributesAsync  tenantId=value  api-version=value x-api-version:value
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


## createItemAttributeAsync

Create a new item attribute

Creates a new item attribute for the specified tenant.

### Example

```bash
 createItemAttributeAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemAttributeCreateDto** | [**ItemAttributeCreateDto**](ItemAttributeCreateDto.md) |  | [optional]

### Return type

[**ItemAttributeDtoEnvelope**](ItemAttributeDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteItemAttributeAsync

Delete an item attribute

Deletes an item attribute for the specified tenant.

### Example

```bash
 deleteItemAttributeAsync  tenantId=value itemAttributeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemAttributeId** | **string** |  | [default to null]
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


## getItemAttributeByIdAsync

Get item attribute by ID

Retrieves a specific item attribute by its ID.

### Example

```bash
 getItemAttributeByIdAsync itemAttributeId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemAttributeId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemAttributeDtoEnvelope**](ItemAttributeDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemAttributesAsync

Get all item attributes

Retrieves all item attributes for the specified tenant using OData query options.

### Example

```bash
 getItemAttributesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemAttributeDtoListEnvelope**](ItemAttributeDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchItemAttributeAsync

Patch an item attribute

Partially updates an existing item attribute for the specified tenant.

### Example

```bash
 patchItemAttributeAsync  tenantId=value itemAttributeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemAttributeId** | **string** |  | [default to null]
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


## updateItemAttributeAsync

Update an item attribute

Updates an existing item attribute for the specified tenant.

### Example

```bash
 updateItemAttributeAsync  tenantId=value itemAttributeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemAttributeId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemAttributeUpdateDto** | [**ItemAttributeUpdateDto**](ItemAttributeUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

