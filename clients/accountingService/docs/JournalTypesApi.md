# JournalTypesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createJournalTypeAsync**](JournalTypesApi.md#createJournalTypeAsync) | **POST** /api/v2/AccountingService/JournalTypes | Creates a new journal type
[**deleteJournalTypeAsync**](JournalTypesApi.md#deleteJournalTypeAsync) | **DELETE** /api/v2/AccountingService/JournalTypes/{journalTypeId} | Deletes a journal type
[**getJournalTypeDetailsAsync**](JournalTypesApi.md#getJournalTypeDetailsAsync) | **GET** /api/v2/AccountingService/JournalTypes/{journalTypeId} | Retrieves a journal type by ID
[**getJournalTypesAsync**](JournalTypesApi.md#getJournalTypesAsync) | **GET** /api/v2/AccountingService/JournalTypes | Retrieves all journal types
[**getJournalTypesCountAsync**](JournalTypesApi.md#getJournalTypesCountAsync) | **GET** /api/v2/AccountingService/JournalTypes/Count | Counts journal types
[**patchJournalTypeAsync**](JournalTypesApi.md#patchJournalTypeAsync) | **PATCH** /api/v2/AccountingService/JournalTypes/{journalTypeId} | Patch a journal type
[**updateJournalTypeAsync**](JournalTypesApi.md#updateJournalTypeAsync) | **PUT** /api/v2/AccountingService/JournalTypes/{journalTypeId} | Updates an existing journal type



## createJournalTypeAsync

Creates a new journal type

Adds a new journal type to the tenant's catalog.

### Example

```bash
 createJournalTypeAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **journalTypeCreateDto** | [**JournalTypeCreateDto**](JournalTypeCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteJournalTypeAsync

Deletes a journal type

Removes a journal type from the tenant's configuration.

### Example

```bash
 deleteJournalTypeAsync  tenantId=value journalTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **journalTypeId** | **string** |  | [default to null]
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


## getJournalTypeDetailsAsync

Retrieves a journal type by ID

Fetches the journal type matching the specified ID.

### Example

```bash
 getJournalTypeDetailsAsync  tenantId=value journalTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **journalTypeId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**JournalTypeDtoEnvelope**](JournalTypeDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getJournalTypesAsync

Retrieves all journal types

Fetches all journal types for the current tenant with OData support.

### Example

```bash
 getJournalTypesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**JournalTypeDtoIReadOnlyListEnvelope**](JournalTypeDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getJournalTypesCountAsync

Counts journal types

Returns the total number of journal types available for the tenant.

### Example

```bash
 getJournalTypesCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchJournalTypeAsync

Patch a journal type

Partially updates a journal type.

### Example

```bash
 patchJournalTypeAsync  tenantId=value journalTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **journalTypeId** | **string** |  | [default to null]
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


## updateJournalTypeAsync

Updates an existing journal type

Modifies the details of a specific journal type.

### Example

```bash
 updateJournalTypeAsync  tenantId=value journalTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **journalTypeId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **journalTypeUpdateDto** | [**JournalTypeUpdateDto**](JournalTypeUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

