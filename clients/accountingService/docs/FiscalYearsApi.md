# FiscalYearsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFiscalYearAsync**](FiscalYearsApi.md#createFiscalYearAsync) | **POST** /api/v2/AccountingService/FiscalYears | Create fiscal year
[**deleteFiscalYearAsync**](FiscalYearsApi.md#deleteFiscalYearAsync) | **DELETE** /api/v2/AccountingService/FiscalYears/{fiscalYearId} | Delete fiscal year
[**getFiscalYearDetailsAsync**](FiscalYearsApi.md#getFiscalYearDetailsAsync) | **GET** /api/v2/AccountingService/FiscalYears/{fiscalYearId} | Get fiscal year by ID
[**getFiscalYearsAsync**](FiscalYearsApi.md#getFiscalYearsAsync) | **GET** /api/v2/AccountingService/FiscalYears | Get all fiscal years
[**getFiscalYearsCountAsync**](FiscalYearsApi.md#getFiscalYearsCountAsync) | **GET** /api/v2/AccountingService/FiscalYears/Count | Count fiscal years
[**updateFiscalYearAsync**](FiscalYearsApi.md#updateFiscalYearAsync) | **PUT** /api/v2/AccountingService/FiscalYears/{fiscalYearId} | Update fiscal year



## createFiscalYearAsync

Create fiscal year

Creates a new fiscal year entry for a tenant.

### Example

```bash
 createFiscalYearAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **fiscalYearCreateDto** | [**FiscalYearCreateDto**](FiscalYearCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteFiscalYearAsync

Delete fiscal year

Deletes a fiscal year identified by its ID.

### Example

```bash
 deleteFiscalYearAsync  tenantId=value fiscalYearId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **fiscalYearId** | **string** |  | [default to null]
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


## getFiscalYearDetailsAsync

Get fiscal year by ID

Gets details for a specific fiscal year.

### Example

```bash
 getFiscalYearDetailsAsync  tenantId=value fiscalYearId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **fiscalYearId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**FiscalYearDtoEnvelope**](FiscalYearDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getFiscalYearsAsync

Get all fiscal years

Retrieves a list of fiscal years for the specified tenant.

### Example

```bash
 getFiscalYearsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**FiscalYearDtoIReadOnlyListEnvelope**](FiscalYearDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getFiscalYearsCountAsync

Count fiscal years

Returns the number of fiscal years for a tenant.

### Example

```bash
 getFiscalYearsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## updateFiscalYearAsync

Update fiscal year

Updates an existing fiscal year identified by its ID.

### Example

```bash
 updateFiscalYearAsync  tenantId=value fiscalYearId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **fiscalYearId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **fiscalYearUpdateDto** | [**FiscalYearUpdateDto**](FiscalYearUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

