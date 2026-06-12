# InvoiceEnumerationRangesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInvoiceEnumerationRangeAsync**](InvoiceEnumerationRangesApi.md#createInvoiceEnumerationRangeAsync) | **POST** /api/v2/AccountingService/InvoiceEnumerationRanges | Create a new invoice enumeration range
[**deleteInvoiceEnumerationRangeAsync**](InvoiceEnumerationRangesApi.md#deleteInvoiceEnumerationRangeAsync) | **DELETE** /api/v2/AccountingService/InvoiceEnumerationRanges/{rangeId} | Delete an invoice enumeration range
[**getInvoiceEnumerationRangeDetailsAsync**](InvoiceEnumerationRangesApi.md#getInvoiceEnumerationRangeDetailsAsync) | **GET** /api/v2/AccountingService/InvoiceEnumerationRanges/{rangeId} | Get invoice enumeration range by ID
[**getInvoiceEnumerationRangesAsync**](InvoiceEnumerationRangesApi.md#getInvoiceEnumerationRangesAsync) | **GET** /api/v2/AccountingService/InvoiceEnumerationRanges | Get all invoice enumeration ranges
[**patchInvoiceEnumerationRangeAsync**](InvoiceEnumerationRangesApi.md#patchInvoiceEnumerationRangeAsync) | **PATCH** /api/v2/AccountingService/InvoiceEnumerationRanges/{rangeId} | Patch an invoice enumeration range
[**updateInvoiceEnumerationRangeAsync**](InvoiceEnumerationRangesApi.md#updateInvoiceEnumerationRangeAsync) | **PUT** /api/v2/AccountingService/InvoiceEnumerationRanges/{rangeId} | Update an invoice enumeration range



## createInvoiceEnumerationRangeAsync

Create a new invoice enumeration range

Creates a new invoice enumeration range for the tenant.

### Example

```bash
 createInvoiceEnumerationRangeAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **invoiceEnumerationRangeCreateDto** | [**InvoiceEnumerationRangeCreateDto**](InvoiceEnumerationRangeCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteInvoiceEnumerationRangeAsync

Delete an invoice enumeration range

Deletes an invoice enumeration range by its identifier.

### Example

```bash
 deleteInvoiceEnumerationRangeAsync  tenantId=value rangeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **rangeId** | **string** |  | [default to null]
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


## getInvoiceEnumerationRangeDetailsAsync

Get invoice enumeration range by ID

Retrieves the details of a specific invoice enumeration range.

### Example

```bash
 getInvoiceEnumerationRangeDetailsAsync  tenantId=value rangeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **rangeId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**InvoiceEnumerationRangeDtoEnvelope**](InvoiceEnumerationRangeDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInvoiceEnumerationRangesAsync

Get all invoice enumeration ranges

Retrieves all invoice enumeration ranges for the specified tenant.

### Example

```bash
 getInvoiceEnumerationRangesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**InvoiceEnumerationRangeDtoListEnvelope**](InvoiceEnumerationRangeDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchInvoiceEnumerationRangeAsync

Patch an invoice enumeration range

Partially updates an invoice enumeration range.

### Example

```bash
 patchInvoiceEnumerationRangeAsync  tenantId=value rangeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **rangeId** | **string** |  | [default to null]
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


## updateInvoiceEnumerationRangeAsync

Update an invoice enumeration range

Updates an existing invoice enumeration range with the provided data.

### Example

```bash
 updateInvoiceEnumerationRangeAsync  tenantId=value rangeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **rangeId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **invoiceEnumerationRangeUpdateDto** | [**InvoiceEnumerationRangeUpdateDto**](InvoiceEnumerationRangeUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

