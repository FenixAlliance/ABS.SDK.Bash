# TransactionsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTransaction**](TransactionsApi.md#createTransaction) | **POST** /api/v2/AccountingService/Transactions | Create a transaction
[**createTransactionCategory**](TransactionsApi.md#createTransactionCategory) | **POST** /api/v2/AccountingService/Transactions/Categories | Create a transaction category
[**deleteTransaction**](TransactionsApi.md#deleteTransaction) | **DELETE** /api/v2/AccountingService/Transactions/{transactionId} | Delete a transaction
[**deleteTransactionCategory**](TransactionsApi.md#deleteTransactionCategory) | **DELETE** /api/v2/AccountingService/Transactions/Categories/{categoryId} | Delete a transaction category
[**getTransaction**](TransactionsApi.md#getTransaction) | **GET** /api/v2/AccountingService/Transactions/{transactionId} | Get transaction by ID
[**getTransactionCategories**](TransactionsApi.md#getTransactionCategories) | **GET** /api/v2/AccountingService/Transactions/Categories | Get all transaction categories
[**getTransactionCategoriesCount**](TransactionsApi.md#getTransactionCategoriesCount) | **GET** /api/v2/AccountingService/Transactions/Categories/Count | Get transaction categories count
[**getTransactionCategory**](TransactionsApi.md#getTransactionCategory) | **GET** /api/v2/AccountingService/Transactions/Categories/{categoryId} | Get transaction category by ID
[**getTransactions**](TransactionsApi.md#getTransactions) | **GET** /api/v2/AccountingService/Transactions | Get all transactions for a tenant
[**getTransactionsCount**](TransactionsApi.md#getTransactionsCount) | **GET** /api/v2/AccountingService/Transactions/Count | Get transactions count
[**updateTransaction**](TransactionsApi.md#updateTransaction) | **PUT** /api/v2/AccountingService/Transactions/{transactionId} | Update a transaction
[**updateTransactionCategory**](TransactionsApi.md#updateTransactionCategory) | **PUT** /api/v2/AccountingService/Transactions/Categories/{categoryId} | Update a transaction category



## createTransaction

Create a transaction

Creates a new transaction for the specified tenant.

### Example

```bash
 createTransaction  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **transactionCreateDto** | [**TransactionCreateDto**](TransactionCreateDto.md) |  | [optional]

### Return type

[**TransactionDtoEnvelope**](TransactionDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createTransactionCategory

Create a transaction category

Creates a new transaction category for the specified tenant.

### Example

```bash
 createTransactionCategory  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **transactionCategoryCreateDto** | [**TransactionCategoryCreateDto**](TransactionCategoryCreateDto.md) |  | [optional]

### Return type

[**TransactionCategoryDtoEnvelope**](TransactionCategoryDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteTransaction

Delete a transaction

Deletes a transaction by its unique identifier.

### Example

```bash
 deleteTransaction  tenantId=value transactionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **transactionId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TransactionDtoEnvelope**](TransactionDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteTransactionCategory

Delete a transaction category

Deletes a transaction category by its unique identifier.

### Example

```bash
 deleteTransactionCategory  tenantId=value categoryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **categoryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TransactionCategoryDtoEnvelope**](TransactionCategoryDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTransaction

Get transaction by ID

Retrieves a specific transaction by its unique identifier.

### Example

```bash
 getTransaction  tenantId=value transactionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **transactionId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TransactionDtoEnvelope**](TransactionDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTransactionCategories

Get all transaction categories

Retrieves all transaction categories for the specified tenant.

### Example

```bash
 getTransactionCategories  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TransactionCategoryDtoListEnvelope**](TransactionCategoryDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTransactionCategoriesCount

Get transaction categories count

Returns total number of transaction categories for the tenant.

### Example

```bash
 getTransactionCategoriesCount  tenantId=value  api-version=value x-api-version:value
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


## getTransactionCategory

Get transaction category by ID

Retrieves a specific transaction category by its unique identifier.

### Example

```bash
 getTransactionCategory  tenantId=value categoryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **categoryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TransactionCategoryDtoEnvelope**](TransactionCategoryDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTransactions

Get all transactions for a tenant

Retrieves all transactions for the specified tenant using OData query options.

### Example

```bash
 getTransactions  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TransactionDtoListEnvelope**](TransactionDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTransactionsCount

Get transactions count

Returns total number of transactions for the tenant with OData filter support.

### Example

```bash
 getTransactionsCount  tenantId=value  api-version=value x-api-version:value
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


## updateTransaction

Update a transaction

Updates an existing transaction with the provided data.

### Example

```bash
 updateTransaction  tenantId=value transactionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **transactionId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **transactionUpdateDto** | [**TransactionUpdateDto**](TransactionUpdateDto.md) |  | [optional]

### Return type

[**TransactionDtoEnvelope**](TransactionDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateTransactionCategory

Update a transaction category

Updates an existing transaction category with the provided data.

### Example

```bash
 updateTransactionCategory  tenantId=value categoryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **categoryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **transactionCategoryUpdateDto** | [**TransactionCategoryUpdateDto**](TransactionCategoryUpdateDto.md) |  | [optional]

### Return type

[**TransactionCategoryDtoEnvelope**](TransactionCategoryDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

