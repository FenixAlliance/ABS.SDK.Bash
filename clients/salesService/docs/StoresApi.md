# StoresApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countStoresAsync**](StoresApi.md#countStoresAsync) | **GET** /api/v2/SalesService/Stores/Count | Get stores count
[**createStoreAsync**](StoresApi.md#createStoreAsync) | **POST** /api/v2/SalesService/Stores | Create a store
[**deleteStoreAsync**](StoresApi.md#deleteStoreAsync) | **DELETE** /api/v2/SalesService/Stores/{storeId} | Delete a store
[**getStoreAsync**](StoresApi.md#getStoreAsync) | **GET** /api/v2/SalesService/Stores/{storeId} | Get store by ID
[**getStoresAsync**](StoresApi.md#getStoresAsync) | **GET** /api/v2/SalesService/Stores | Get stores
[**patchStoreAsync**](StoresApi.md#patchStoreAsync) | **PATCH** /api/v2/SalesService/Stores/{storeId} | Patch a store
[**updateStoreAsync**](StoresApi.md#updateStoreAsync) | **PUT** /api/v2/SalesService/Stores/{storeId} | Update a store



## countStoresAsync

Get stores count

Returns the total count of stores for the specified tenant with OData filter support.

### Example

```bash
 countStoresAsync  tenantId=value
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


## createStoreAsync

Create a store

Creates a new store for the specified tenant.

### Example

```bash
 createStoreAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **storeCreateDto** | [**StoreCreateDto**](StoreCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteStoreAsync

Delete a store

Deletes an existing store by its unique identifier.

### Example

```bash
 deleteStoreAsync  tenantId=value storeId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **storeId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getStoreAsync

Get store by ID

Retrieves a single store by its unique identifier.

### Example

```bash
 getStoreAsync  tenantId=value storeId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **storeId** | **string** |  | [default to null]

### Return type

[**StoreDtoEnvelope**](StoreDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getStoresAsync

Get stores

Retrieves a list of stores for the specified tenant with OData query support.

### Example

```bash
 getStoresAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**StoreDtoListEnvelope**](StoreDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchStoreAsync

Patch a store

Partially updates an existing store using a JSON Patch document.

### Example

```bash
 patchStoreAsync  tenantId=value storeId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **storeId** | **string** |  | [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateStoreAsync

Update a store

Updates an existing store by its unique identifier.

### Example

```bash
 updateStoreAsync  tenantId=value storeId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **storeId** | **string** |  | [default to null]
 **storeUpdateDto** | [**StoreUpdateDto**](StoreUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

