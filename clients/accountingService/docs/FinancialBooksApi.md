# FinancialBooksApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFinancialBookAsync**](FinancialBooksApi.md#createFinancialBookAsync) | **POST** /api/v2/AccountingService/FinancialBooks | Creates a new financial book
[**deleteFinancialBookAsync**](FinancialBooksApi.md#deleteFinancialBookAsync) | **DELETE** /api/v2/AccountingService/FinancialBooks/{financialBookId} | Deletes an existing financial book
[**getFinancialBookDetailsAsync**](FinancialBooksApi.md#getFinancialBookDetailsAsync) | **GET** /api/v2/AccountingService/FinancialBooks/{financialBookId} | Gets the details of a specific financial book
[**getFinancialBooksAsync**](FinancialBooksApi.md#getFinancialBooksAsync) | **GET** /api/v2/AccountingService/FinancialBooks | Get all financial books for a tenant
[**getFinancialBooksCountAsync**](FinancialBooksApi.md#getFinancialBooksCountAsync) | **GET** /api/v2/AccountingService/FinancialBooks/Count | Get the count of financial books
[**patchFinancialBookAsync**](FinancialBooksApi.md#patchFinancialBookAsync) | **PATCH** /api/v2/AccountingService/FinancialBooks/{financialBookId} | Patch a financial book
[**updateFinancialBookAsync**](FinancialBooksApi.md#updateFinancialBookAsync) | **PUT** /api/v2/AccountingService/FinancialBooks/{financialBookId} | Updates an existing financial book



## createFinancialBookAsync

Creates a new financial book

Creates a new financial book.

### Example

```bash
 createFinancialBookAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **financialBookCreateDto** | [**FinancialBookCreateDto**](FinancialBookCreateDto.md) |  |
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteFinancialBookAsync

Deletes an existing financial book

Deletes an existing financial book.

### Example

```bash
 deleteFinancialBookAsync  tenantId=value financialBookId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **financialBookId** | **string** |  | [default to null]
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


## getFinancialBookDetailsAsync

Gets the details of a specific financial book

Gets the details of a specific financial book.

### Example

```bash
 getFinancialBookDetailsAsync  tenantId=value financialBookId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **financialBookId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**FinancialBookDtoEnvelope**](FinancialBookDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getFinancialBooksAsync

Get all financial books for a tenant

Retrieves all financial books for the specified tenant using OData query options.

### Example

```bash
 getFinancialBooksAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**FinancialBookDtoListEnvelope**](FinancialBookDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getFinancialBooksCountAsync

Get the count of financial books

Get the count of financial books.

### Example

```bash
 getFinancialBooksCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchFinancialBookAsync

Patch a financial book

Partially updates a financial book.

### Example

```bash
 patchFinancialBookAsync  tenantId=value financialBookId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **financialBookId** | **string** |  | [default to null]
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


## updateFinancialBookAsync

Updates an existing financial book

Updates an existing financial book.

### Example

```bash
 updateFinancialBookAsync  tenantId=value financialBookId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **financialBookId** | **string** |  | [default to null]
 **financialBookUpdateDto** | [**FinancialBookUpdateDto**](FinancialBookUpdateDto.md) |  |
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

