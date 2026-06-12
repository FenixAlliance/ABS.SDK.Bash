# ItemAttributeOptionsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createItemAttributeOptionAsync**](ItemAttributeOptionsApi.md#createItemAttributeOptionAsync) | **POST** /api/v2/CatalogService/ItemAttributeOptions | Create a new item attribute option
[**deleteItemAttributeOptionAsync**](ItemAttributeOptionsApi.md#deleteItemAttributeOptionAsync) | **DELETE** /api/v2/CatalogService/ItemAttributeOptions/{itemAttributeOptionId} | Delete an item attribute option
[**getItemAttributeOptionByIdAsync**](ItemAttributeOptionsApi.md#getItemAttributeOptionByIdAsync) | **GET** /api/v2/CatalogService/ItemAttributeOptions/{itemAttributeOptionId} | Get item attribute option by ID
[**getItemAttributeOptionsAsync**](ItemAttributeOptionsApi.md#getItemAttributeOptionsAsync) | **GET** /api/v2/CatalogService/ItemAttributeOptions | Get all item attribute options
[**getItemAttributeOptionsCountAsync**](ItemAttributeOptionsApi.md#getItemAttributeOptionsCountAsync) | **GET** /api/v2/CatalogService/ItemAttributeOptions/Count | Get item attribute options count
[**patchItemAttributeOptionAsync**](ItemAttributeOptionsApi.md#patchItemAttributeOptionAsync) | **PATCH** /api/v2/CatalogService/ItemAttributeOptions/{itemAttributeOptionId} | Patch an item attribute option
[**updateItemAttributeOptionAsync**](ItemAttributeOptionsApi.md#updateItemAttributeOptionAsync) | **PUT** /api/v2/CatalogService/ItemAttributeOptions/{itemAttributeOptionId} | Update an item attribute option



## createItemAttributeOptionAsync

Create a new item attribute option

Creates a new item attribute option for the specified tenant.

### Example

```bash
 createItemAttributeOptionAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemAttributeOptionCreateDto** | [**ItemAttributeOptionCreateDto**](ItemAttributeOptionCreateDto.md) |  | [optional]

### Return type

[**ItemAttributeOptionDtoEnvelope**](ItemAttributeOptionDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteItemAttributeOptionAsync

Delete an item attribute option

Deletes an item attribute option for the specified tenant.

### Example

```bash
 deleteItemAttributeOptionAsync  tenantId=value itemAttributeOptionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemAttributeOptionId** | **string** |  | [default to null]
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


## getItemAttributeOptionByIdAsync

Get item attribute option by ID

Retrieves a specific item attribute option by its ID.

### Example

```bash
 getItemAttributeOptionByIdAsync itemAttributeOptionId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemAttributeOptionId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemAttributeOptionDtoEnvelope**](ItemAttributeOptionDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemAttributeOptionsAsync

Get all item attribute options

Retrieves all item attribute options for the specified tenant using OData query options.

### Example

```bash
 getItemAttributeOptionsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemAttributeOptionDtoListEnvelope**](ItemAttributeOptionDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemAttributeOptionsCountAsync

Get item attribute options count

Returns the count of item attribute options for the specified tenant.

### Example

```bash
 getItemAttributeOptionsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchItemAttributeOptionAsync

Patch an item attribute option

Partially updates an existing item attribute option for the specified tenant using a JSON Patch document.

### Example

```bash
 patchItemAttributeOptionAsync  tenantId=value itemAttributeOptionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemAttributeOptionId** | **string** |  | [default to null]
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


## updateItemAttributeOptionAsync

Update an item attribute option

Updates an existing item attribute option for the specified tenant.

### Example

```bash
 updateItemAttributeOptionAsync  tenantId=value itemAttributeOptionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **itemAttributeOptionId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemAttributeOptionUpdateDto** | [**ItemAttributeOptionUpdateDto**](ItemAttributeOptionUpdateDto.md) |  | [optional]

### Return type

[**ItemAttributeOptionDtoEnvelope**](ItemAttributeOptionDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

