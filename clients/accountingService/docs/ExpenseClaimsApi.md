# ExpenseClaimsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createExpenseClaim**](ExpenseClaimsApi.md#createExpenseClaim) | **POST** /api/v2/AccountingService/ExpenseClaims | Create an expense claim
[**deleteExpenseClaim**](ExpenseClaimsApi.md#deleteExpenseClaim) | **DELETE** /api/v2/AccountingService/ExpenseClaims/{expenseClaimId} | Delete an expense claim
[**getExpenseClaim**](ExpenseClaimsApi.md#getExpenseClaim) | **GET** /api/v2/AccountingService/ExpenseClaims/{expenseClaimId} | Get an expense claim by id
[**getExpenseClaims**](ExpenseClaimsApi.md#getExpenseClaims) | **GET** /api/v2/AccountingService/ExpenseClaims | Get all expense claims for a tenant
[**getExpenseClaimsCount**](ExpenseClaimsApi.md#getExpenseClaimsCount) | **GET** /api/v2/AccountingService/ExpenseClaims/Count | Get the count of expense claims for a tenant
[**patchExpenseClaim**](ExpenseClaimsApi.md#patchExpenseClaim) | **PATCH** /api/v2/AccountingService/ExpenseClaims/{expenseClaimId} | Patch an expense claim
[**updateExpenseClaim**](ExpenseClaimsApi.md#updateExpenseClaim) | **PUT** /api/v2/AccountingService/ExpenseClaims/{expenseClaimId} | Update an expense claim



## createExpenseClaim

Create an expense claim

Creates a new expense claim.

### Example

```bash
 createExpenseClaim  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **expenseClaimCreateDto** | [**ExpenseClaimCreateDto**](ExpenseClaimCreateDto.md) |  |
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


## deleteExpenseClaim

Delete an expense claim

Deletes an expense claim.

### Example

```bash
 deleteExpenseClaim  tenantId=value expenseClaimId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **expenseClaimId** | **string** |  | [default to null]
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


## getExpenseClaim

Get an expense claim by id

Retrieves an expense claim by its identifier.

### Example

```bash
 getExpenseClaim  tenantId=value expenseClaimId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **expenseClaimId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ExpenseClaimDtoEnvelope**](ExpenseClaimDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getExpenseClaims

Get all expense claims for a tenant

Retrieves all expense claims for the specified tenant using OData query options.

### Example

```bash
 getExpenseClaims  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ExpenseClaimDtoListEnvelope**](ExpenseClaimDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getExpenseClaimsCount

Get the count of expense claims for a tenant

Retrieves the count of expense claims for the specified tenant using OData query options.

### Example

```bash
 getExpenseClaimsCount  tenantId=value  api-version=value x-api-version:value
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


## patchExpenseClaim

Patch an expense claim

Partially updates an existing expense claim.

### Example

```bash
 patchExpenseClaim  tenantId=value expenseClaimId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **expenseClaimId** | **string** |  | [default to null]
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


## updateExpenseClaim

Update an expense claim

Updates an existing expense claim.

### Example

```bash
 updateExpenseClaim  tenantId=value expenseClaimId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **expenseClaimId** | **string** |  | [default to null]
 **expenseClaimUpdateDto** | [**ExpenseClaimUpdateDto**](ExpenseClaimUpdateDto.md) |  |
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

