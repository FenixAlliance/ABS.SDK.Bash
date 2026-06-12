# ItemRestocksApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createItemRestockAsync**](ItemRestocksApi.md#createItemRestockAsync) | **POST** /api/v2/LogisticsService/ItemRestocks | Create an item restock
[**createItemRestockEntryAsync**](ItemRestocksApi.md#createItemRestockEntryAsync) | **POST** /api/v2/LogisticsService/ItemRestocks/{restockId}/Entries | Create a restock entry
[**deleteItemRestockAsync**](ItemRestocksApi.md#deleteItemRestockAsync) | **DELETE** /api/v2/LogisticsService/ItemRestocks/{restockId} | Delete an item restock
[**deleteItemRestockEntryAsync**](ItemRestocksApi.md#deleteItemRestockEntryAsync) | **DELETE** /api/v2/LogisticsService/ItemRestocks/{restockId}/Entries/{entryId} | Delete a restock entry
[**getItemRestockByIdAsync**](ItemRestocksApi.md#getItemRestockByIdAsync) | **GET** /api/v2/LogisticsService/ItemRestocks/{restockId} | Get item restock by ID
[**getItemRestockEntriesAsync**](ItemRestocksApi.md#getItemRestockEntriesAsync) | **GET** /api/v2/LogisticsService/ItemRestocks/{restockId}/Entries | Get restock entries
[**getItemRestockEntriesCountAsync**](ItemRestocksApi.md#getItemRestockEntriesCountAsync) | **GET** /api/v2/LogisticsService/ItemRestocks/{restockId}/Entries/Count | Get restock entries count
[**getItemRestockEntryByIdAsync**](ItemRestocksApi.md#getItemRestockEntryByIdAsync) | **GET** /api/v2/LogisticsService/ItemRestocks/{restockId}/Entries/{entryId} | Get restock entry by ID
[**getItemRestocksAsync**](ItemRestocksApi.md#getItemRestocksAsync) | **GET** /api/v2/LogisticsService/ItemRestocks | Get all item restocks
[**getItemRestocksCountAsync**](ItemRestocksApi.md#getItemRestocksCountAsync) | **GET** /api/v2/LogisticsService/ItemRestocks/Count | Get item restocks count
[**patchItemRestockAsync**](ItemRestocksApi.md#patchItemRestockAsync) | **PATCH** /api/v2/LogisticsService/ItemRestocks/{restockId} | Patch an item restock
[**patchItemRestockEntryAsync**](ItemRestocksApi.md#patchItemRestockEntryAsync) | **PATCH** /api/v2/LogisticsService/ItemRestocks/{restockId}/Entries/{entryId} | Patch a restock entry
[**updateItemRestockAsync**](ItemRestocksApi.md#updateItemRestockAsync) | **PUT** /api/v2/LogisticsService/ItemRestocks/{restockId} | Update an item restock
[**updateItemRestockEntryAsync**](ItemRestocksApi.md#updateItemRestockEntryAsync) | **PUT** /api/v2/LogisticsService/ItemRestocks/{restockId}/Entries/{entryId} | Update a restock entry



## createItemRestockAsync

Create an item restock

Creates a new item restock.

### Example

```bash
 createItemRestockAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemRestockCreateDto** | [**ItemRestockCreateDto**](ItemRestockCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createItemRestockEntryAsync

Create a restock entry

Creates a new restock entry.

### Example

```bash
 createItemRestockEntryAsync  tenantId=value restockId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **restockId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemRestockEntryCreateDto** | [**ItemRestockEntryCreateDto**](ItemRestockEntryCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteItemRestockAsync

Delete an item restock

Deletes an item restock.

### Example

```bash
 deleteItemRestockAsync  tenantId=value restockId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **restockId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteItemRestockEntryAsync

Delete a restock entry

Deletes a restock entry.

### Example

```bash
 deleteItemRestockEntryAsync  tenantId=value restockId=value entryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **restockId** | **string** |  | [default to null]
 **entryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemRestockByIdAsync

Get item restock by ID

Retrieves a specific item restock.

### Example

```bash
 getItemRestockByIdAsync  tenantId=value restockId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **restockId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemRestockDtoEnvelope**](ItemRestockDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemRestockEntriesAsync

Get restock entries

Retrieves all entries for the specified restock.

### Example

```bash
 getItemRestockEntriesAsync  tenantId=value restockId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **restockId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemRestockEntryDtoListEnvelope**](ItemRestockEntryDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemRestockEntriesCountAsync

Get restock entries count

Returns the count of restock entries.

### Example

```bash
 getItemRestockEntriesCountAsync  tenantId=value restockId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **restockId** | **string** |  | [default to null]
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


## getItemRestockEntryByIdAsync

Get restock entry by ID

Retrieves a specific restock entry.

### Example

```bash
 getItemRestockEntryByIdAsync  tenantId=value restockId=value entryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **restockId** | **string** |  | [default to null]
 **entryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemRestockEntryDtoEnvelope**](ItemRestockEntryDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemRestocksAsync

Get all item restocks

Retrieves all item restocks for the specified tenant.

### Example

```bash
 getItemRestocksAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemRestockDtoListEnvelope**](ItemRestockDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemRestocksCountAsync

Get item restocks count

Returns the count of item restocks.

### Example

```bash
 getItemRestocksCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
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


## patchItemRestockAsync

Patch an item restock

Applies a JSON Patch document to an item restock.

### Example

```bash
 patchItemRestockAsync  tenantId=value restockId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **restockId** | **string** |  | [default to null]
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


## patchItemRestockEntryAsync

Patch a restock entry

Applies a JSON Patch document to a restock entry.

### Example

```bash
 patchItemRestockEntryAsync  tenantId=value restockId=value entryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **restockId** | **string** |  | [default to null]
 **entryId** | **string** |  | [default to null]
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


## updateItemRestockAsync

Update an item restock

Updates an existing item restock.

### Example

```bash
 updateItemRestockAsync  tenantId=value restockId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **restockId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemRestockUpdateDto** | [**ItemRestockUpdateDto**](ItemRestockUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateItemRestockEntryAsync

Update a restock entry

Updates an existing restock entry.

### Example

```bash
 updateItemRestockEntryAsync  tenantId=value restockId=value entryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **restockId** | **string** |  | [default to null]
 **entryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemRestockEntryUpdateDto** | [**ItemRestockEntryUpdateDto**](ItemRestockEntryUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

