# ItemTypesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countItemTypesAsync**](ItemTypesApi.md#countItemTypesAsync) | **GET** /api/v2/CatalogService/ItemTypes/Count | Count item types
[**createItemTypeAsync**](ItemTypesApi.md#createItemTypeAsync) | **POST** /api/v2/CatalogService/ItemTypes | Create a new item type
[**deleteItemTypeAsync**](ItemTypesApi.md#deleteItemTypeAsync) | **DELETE** /api/v2/CatalogService/ItemTypes/{itemTypeID} | Delete an item type
[**getItemTypeByIdAsync**](ItemTypesApi.md#getItemTypeByIdAsync) | **GET** /api/v2/CatalogService/ItemTypes/{itemTypeID} | Get item type by ID
[**getItemTypesAsync**](ItemTypesApi.md#getItemTypesAsync) | **GET** /api/v2/CatalogService/ItemTypes | Get all item types
[**updateItemTypeAsync**](ItemTypesApi.md#updateItemTypeAsync) | **PUT** /api/v2/CatalogService/ItemTypes/{itemTypeID} | Update an item type



## countItemTypesAsync

Count item types

Counts all item types for the specified tenant.

### Example

```bash
 countItemTypesAsync  tenantId=value  api-version=value x-api-version:value
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


## createItemTypeAsync

Create a new item type

Creates a new item type for the specified tenant.

### Example

```bash
 createItemTypeAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemTypeCreateDto** | [**ItemTypeCreateDto**](ItemTypeCreateDto.md) |  | [optional]

### Return type

[**ItemTypeDtoEnvelope**](ItemTypeDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteItemTypeAsync

Delete an item type

Deletes an item type for the specified tenant.

### Example

```bash
 deleteItemTypeAsync  tenantId=value itemTypeID=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemTypeID** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemTypeDtoEnvelope**](ItemTypeDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemTypeByIdAsync

Get item type by ID

Retrieves a specific item type by its ID.

### Example

```bash
 getItemTypeByIdAsync itemTypeID=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemTypeID** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemTypeDtoEnvelope**](ItemTypeDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemTypesAsync

Get all item types

Retrieves all item types for the specified tenant using OData query options.

### Example

```bash
 getItemTypesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemTypeDtoListEnvelope**](ItemTypeDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateItemTypeAsync

Update an item type

Updates an existing item type for the specified tenant.

### Example

```bash
 updateItemTypeAsync  tenantId=value itemTypeID=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemTypeID** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemTypeUpdateDto** | [**ItemTypeUpdateDto**](ItemTypeUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

