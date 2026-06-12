# BillableLineTaxesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBillableLineTax**](BillableLineTaxesApi.md#createBillableLineTax) | **POST** /api/v2/AccountingService/BillableLines/{billableLineId}/Taxes | Create a new tax for a billable line.
[**deleteBillableLineTax**](BillableLineTaxesApi.md#deleteBillableLineTax) | **DELETE** /api/v2/AccountingService/BillableLines/{billableLineId}/Taxes/{taxId} | Delete a tax from a billable line.
[**getBillableLineTaxes**](BillableLineTaxesApi.md#getBillableLineTaxes) | **GET** /api/v2/AccountingService/BillableLines/{billableLineId}/Taxes | Get taxes for a billable line.
[**getBillableLineTaxesCount**](BillableLineTaxesApi.md#getBillableLineTaxesCount) | **GET** /api/v2/AccountingService/BillableLines/{billableLineId}/Taxes/Count | Get the count of taxes for a billable line.
[**patchBillableLineTaxAsync**](BillableLineTaxesApi.md#patchBillableLineTaxAsync) | **PATCH** /api/v2/AccountingService/BillableLines/{billableLineId}/Taxes/{taxId} | Patch a billable line tax
[**updateBillableLineTax**](BillableLineTaxesApi.md#updateBillableLineTax) | **PUT** /api/v2/AccountingService/BillableLines/{billableLineId}/Taxes/{taxId} | Update a tax for a billable line.



## createBillableLineTax

Create a new tax for a billable line.

Creates a new tax entry for the specified billable line.

### Example

```bash
 createBillableLineTax  tenantId=value billableLineId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **billableLineId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **appliedItemTaxRecordCreateDto** | [**AppliedItemTaxRecordCreateDto**](AppliedItemTaxRecordCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteBillableLineTax

Delete a tax from a billable line.

Deletes the specified tax entry from the billable line.

### Example

```bash
 deleteBillableLineTax  tenantId=value billableLineId=value taxId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **billableLineId** | **string** |  | [default to null]
 **taxId** | **string** |  | [default to null]
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


## getBillableLineTaxes

Get taxes for a billable line.

Retrieves the taxes applied to the specified billable line.

### Example

```bash
 getBillableLineTaxes  tenantId=value billableLineId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **billableLineId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**AppliedItemTaxRecordDtoIReadOnlyListEnvelope**](AppliedItemTaxRecordDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBillableLineTaxesCount

Get the count of taxes for a billable line.

Retrieves the total count of taxes applied to the specified billable line.

### Example

```bash
 getBillableLineTaxesCount  tenantId=value billableLineId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **billableLineId** | **string** |  | [default to null]
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


## patchBillableLineTaxAsync

Patch a billable line tax

Partially updates a billable line tax.

### Example

```bash
 patchBillableLineTaxAsync  tenantId=value billableLineId=value taxId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **billableLineId** | **string** |  | [default to null]
 **taxId** | **string** |  | [default to null]
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


## updateBillableLineTax

Update a tax for a billable line.

Updates the specified tax entry for the billable line.

### Example

```bash
 updateBillableLineTax  tenantId=value billableLineId=value taxId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **billableLineId** | **string** |  | [default to null]
 **taxId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **appliedItemTaxRecordUpdateDto** | [**AppliedItemTaxRecordUpdateDto**](AppliedItemTaxRecordUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

