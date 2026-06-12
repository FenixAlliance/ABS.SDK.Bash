# AccountingPeriodsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAccountingPeriod**](AccountingPeriodsApi.md#createAccountingPeriod) | **POST** /api/v2/AccountingService/AccountingPeriods | Creates a new accounting period
[**deleteAccountingPeriod**](AccountingPeriodsApi.md#deleteAccountingPeriod) | **DELETE** /api/v2/AccountingService/AccountingPeriods/{accountingPeriodId} | Deletes an existing accounting period
[**getAccountingPeriod**](AccountingPeriodsApi.md#getAccountingPeriod) | **GET** /api/v2/AccountingService/AccountingPeriods/{accountingPeriodId} | Gets the current tenant accounting period
[**getAccountingPeriods**](AccountingPeriodsApi.md#getAccountingPeriods) | **GET** /api/v2/AccountingService/AccountingPeriods | Get all accounting periods for a tenant
[**getAccountingPeriodsCountAsync**](AccountingPeriodsApi.md#getAccountingPeriodsCountAsync) | **GET** /api/v2/AccountingService/AccountingPeriods/Count | Gets the current tenant accounting periods count
[**patchAccountingPeriodAsync**](AccountingPeriodsApi.md#patchAccountingPeriodAsync) | **PATCH** /api/v2/AccountingService/AccountingPeriods/{accountingPeriodId} | Patch an accounting period
[**updateAccountingPeriod**](AccountingPeriodsApi.md#updateAccountingPeriod) | **PUT** /api/v2/AccountingService/AccountingPeriods/{accountingPeriodId} | Updates an existing accounting period



## createAccountingPeriod

Creates a new accounting period

Creates a new accounting period.

### Example

```bash
 createAccountingPeriod  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **accountingPeriodCreateDto** | [**AccountingPeriodCreateDto**](AccountingPeriodCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteAccountingPeriod

Deletes an existing accounting period

Deletes an existing accounting period.

### Example

```bash
 deleteAccountingPeriod  tenantId=value accountingPeriodId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **accountingPeriodId** | **string** |  | [default to null]
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


## getAccountingPeriod

Gets the current tenant accounting period

Get the currently acting tenant accounting period.

### Example

```bash
 getAccountingPeriod  tenantId=value accountingPeriodId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **accountingPeriodId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**AccountingPeriodDtoEnvelope**](AccountingPeriodDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAccountingPeriods

Get all accounting periods for a tenant

Retrieves all accounting periods for the specified tenant using OData query options.

### Example

```bash
 getAccountingPeriods  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**AccountingPeriodDtoListEnvelope**](AccountingPeriodDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAccountingPeriodsCountAsync

Gets the current tenant accounting periods count

Get the currently acting tenant accounting periods count.

### Example

```bash
 getAccountingPeriodsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchAccountingPeriodAsync

Patch an accounting period

Partially updates an accounting period.

### Example

```bash
 patchAccountingPeriodAsync  tenantId=value accountingPeriodId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **accountingPeriodId** | **string** |  | [default to null]
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


## updateAccountingPeriod

Updates an existing accounting period

Updates an existing accounting period.

### Example

```bash
 updateAccountingPeriod  tenantId=value accountingPeriodId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **accountingPeriodId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **accountingPeriodUpdateDto** | [**AccountingPeriodUpdateDto**](AccountingPeriodUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

