# PayrollsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPayrollAsync**](PayrollsApi.md#createPayrollAsync) | **POST** /api/v2/HrmsService/Payrolls | Create a payroll
[**deletePayrollAsync**](PayrollsApi.md#deletePayrollAsync) | **DELETE** /api/v2/HrmsService/Payrolls/{payrollId} | Delete a payroll
[**getPayrollByIdAsync**](PayrollsApi.md#getPayrollByIdAsync) | **GET** /api/v2/HrmsService/Payrolls/{payrollId} | Get payroll by ID
[**getPayrollsAsync**](PayrollsApi.md#getPayrollsAsync) | **GET** /api/v2/HrmsService/Payrolls | Get payrolls
[**getPayrollsCountAsync**](PayrollsApi.md#getPayrollsCountAsync) | **GET** /api/v2/HrmsService/Payrolls/Count | Count payrolls
[**updatePayrollAsync**](PayrollsApi.md#updatePayrollAsync) | **PUT** /api/v2/HrmsService/Payrolls/{payrollId} | Update a payroll



## createPayrollAsync

Create a payroll

Creates a new payroll for the specified tenant.

### Example

```bash
 createPayrollAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **payrollCreateDto** | [**PayrollCreateDto**](PayrollCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deletePayrollAsync

Delete a payroll

Deletes a payroll for the specified tenant.

### Example

```bash
 deletePayrollAsync  tenantId=value payrollId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **payrollId** | **string** |  | [default to null]
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


## getPayrollByIdAsync

Get payroll by ID

Retrieves a specific payroll by its identifier.

### Example

```bash
 getPayrollByIdAsync  tenantId=value payrollId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **payrollId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**PayrollDtoEnvelope**](PayrollDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPayrollsAsync

Get payrolls

Retrieves payrolls for the specified tenant.

### Example

```bash
 getPayrollsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**PayrollDtoListEnvelope**](PayrollDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPayrollsCountAsync

Count payrolls

Counts payrolls for the specified tenant.

### Example

```bash
 getPayrollsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## updatePayrollAsync

Update a payroll

Updates an existing payroll for the specified tenant.

### Example

```bash
 updatePayrollAsync  tenantId=value payrollId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **payrollId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **payrollUpdateDto** | [**PayrollUpdateDto**](PayrollUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

