# InvoicesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**aggregateInvoiceDiscounts**](InvoicesApi.md#aggregateInvoiceDiscounts) | **POST** /api/v2/InvoicingService/Invoices/DiscountsAggregate | Aggregate invoice discounts.
[**aggregateInvoiceGlobalSurcharges**](InvoicesApi.md#aggregateInvoiceGlobalSurcharges) | **POST** /api/v2/InvoicingService/Invoices/GlobalSurchargesAggregate | Aggregate invoice global surcharges.
[**aggregateInvoiceTaxBases**](InvoicesApi.md#aggregateInvoiceTaxBases) | **POST** /api/v2/InvoicingService/Invoices/TaxBasesAggregate | Aggregate invoice tax bases.
[**aggregateInvoiceTaxes**](InvoicesApi.md#aggregateInvoiceTaxes) | **POST** /api/v2/InvoicingService/Invoices/TaxesAggregate | Aggregate invoice taxes.
[**aggregateInvoiceTotals**](InvoicesApi.md#aggregateInvoiceTotals) | **POST** /api/v2/InvoicingService/Invoices/TotalsAggregate | Aggregate invoice totals.
[**calculateInvoice**](InvoicesApi.md#calculateInvoice) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId}/Calculate | Calculate an invoice.
[**calculateInvoiceLine**](InvoicesApi.md#calculateInvoiceLine) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Calculate | Calculate an invoice line.
[**createInvoice**](InvoicesApi.md#createInvoice) | **POST** /api/v2/InvoicingService/Invoices | Create a new invoice.
[**createInvoiceAdjustment**](InvoicesApi.md#createInvoiceAdjustment) | **POST** /api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments | Create a new invoice adjustment.
[**createInvoiceLine**](InvoicesApi.md#createInvoiceLine) | **POST** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines | Create a new invoice line.
[**createInvoiceLineTax**](InvoicesApi.md#createInvoiceLineTax) | **POST** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Taxes | Create a new tax for an invoice line.
[**createInvoiceReference**](InvoicesApi.md#createInvoiceReference) | **POST** /api/v2/InvoicingService/Invoices/{invoiceId}/References | Create a new invoice reference.
[**deleteInvoice**](InvoicesApi.md#deleteInvoice) | **DELETE** /api/v2/InvoicingService/Invoices/{invoiceId} | Delete an invoice.
[**deleteInvoiceAdjustment**](InvoicesApi.md#deleteInvoiceAdjustment) | **DELETE** /api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments/{invoiceAdjustmentId} | Delete an invoice adjustment.
[**deleteInvoiceLine**](InvoicesApi.md#deleteInvoiceLine) | **DELETE** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId} | Delete an invoice line.
[**deleteInvoiceLineTax**](InvoicesApi.md#deleteInvoiceLineTax) | **DELETE** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Taxes/{invoiceLineTaxId} | Delete a tax from an invoice line.
[**deleteInvoiceReference**](InvoicesApi.md#deleteInvoiceReference) | **DELETE** /api/v2/InvoicingService/Invoices/{invoiceId}/References/{invoiceReferenceId} | Delete an invoice reference.
[**getExtendedInvoice**](InvoicesApi.md#getExtendedInvoice) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Extended | Get an extended invoice by ID.
[**getExtendedInvoices**](InvoicesApi.md#getExtendedInvoices) | **GET** /api/v2/InvoicingService/Invoices/Extended | Get a list of extended invoices.
[**getExtendedInvoicesCount**](InvoicesApi.md#getExtendedInvoicesCount) | **GET** /api/v2/InvoicingService/Invoices/Extended/Count | Get the count of extended invoices.
[**getInvoice**](InvoicesApi.md#getInvoice) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId} | Get an invoice by ID.
[**getInvoiceAdjustment**](InvoicesApi.md#getInvoiceAdjustment) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments/{invoiceAdjustmentId} | Get an invoice adjustment by ID.
[**getInvoiceAdjustments**](InvoicesApi.md#getInvoiceAdjustments) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments | Get invoice adjustments.
[**getInvoiceAdjustmentsCount**](InvoicesApi.md#getInvoiceAdjustmentsCount) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments/Count | Get the count of invoice adjustments.
[**getInvoiceLine**](InvoicesApi.md#getInvoiceLine) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId} | Get an invoice line by ID.
[**getInvoiceLineTaxes**](InvoicesApi.md#getInvoiceLineTaxes) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Taxes | Get taxes for an invoice line.
[**getInvoiceLineTaxesCount**](InvoicesApi.md#getInvoiceLineTaxesCount) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Taxes/Count | Get the count of taxes for an invoice line.
[**getInvoiceLines**](InvoicesApi.md#getInvoiceLines) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines | Get invoice lines.
[**getInvoiceLinesCount**](InvoicesApi.md#getInvoiceLinesCount) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/Count | Get the count of invoice lines.
[**getInvoicePayments**](InvoicesApi.md#getInvoicePayments) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Payments | Get payments for an invoice.
[**getInvoicePaymentsCount**](InvoicesApi.md#getInvoicePaymentsCount) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Payments/Count | Get the count of payments for an invoice.
[**getInvoiceReference**](InvoicesApi.md#getInvoiceReference) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/References/{invoiceReferenceId} | Get an invoice reference by ID.
[**getInvoiceReferences**](InvoicesApi.md#getInvoiceReferences) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/References | Get invoice references.
[**getInvoiceReferencesCount**](InvoicesApi.md#getInvoiceReferencesCount) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/References/Count | Get the count of invoice references.
[**getInvoices**](InvoicesApi.md#getInvoices) | **GET** /api/v2/InvoicingService/Invoices | Get a list of invoices.
[**getInvoicesCount**](InvoicesApi.md#getInvoicesCount) | **GET** /api/v2/InvoicingService/Invoices/Count | Get the count of invoices.
[**previewInvoiceEmail**](InvoicesApi.md#previewInvoiceEmail) | **POST** /api/v2/InvoicingService/Invoices/{invoiceId}/Emails/Preview | Preview the rendered email for an invoice.
[**sendInvoiceEmail**](InvoicesApi.md#sendInvoiceEmail) | **POST** /api/v2/InvoicingService/Invoices/{invoiceId}/Emails/Send | Send an invoice transactional email to recipients.
[**updateInvoice**](InvoicesApi.md#updateInvoice) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId} | Update an invoice.
[**updateInvoiceAdjustment**](InvoicesApi.md#updateInvoiceAdjustment) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments/{invoiceAdjustmentId} | Update an invoice adjustment.
[**updateInvoiceLine**](InvoicesApi.md#updateInvoiceLine) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId} | Update an invoice line.
[**updateInvoiceLineTax**](InvoicesApi.md#updateInvoiceLineTax) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Taxes/{invoiceLineTaxId} | Update a tax for an invoice line.
[**updateInvoiceReference**](InvoicesApi.md#updateInvoiceReference) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId}/References/{invoiceReferenceId} | Update an invoice reference.



## aggregateInvoiceDiscounts

Aggregate invoice discounts.

Aggregates the discounts for the specified invoices.

### Example

```bash
 aggregateInvoiceDiscounts  currencyId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**array[string]**](string.md) |  |
 **currencyId** | **string** |  | [optional] [default to null]

### Return type

[**MoneyEnvelope**](MoneyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## aggregateInvoiceGlobalSurcharges

Aggregate invoice global surcharges.

Aggregates the global surcharges for the specified invoices.

### Example

```bash
 aggregateInvoiceGlobalSurcharges  currencyId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**array[string]**](string.md) |  |
 **currencyId** | **string** |  | [optional] [default to null]

### Return type

[**MoneyEnvelope**](MoneyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## aggregateInvoiceTaxBases

Aggregate invoice tax bases.

Aggregates the tax bases for the specified invoices.

### Example

```bash
 aggregateInvoiceTaxBases  currencyId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**array[string]**](string.md) |  |
 **currencyId** | **string** |  | [optional] [default to null]

### Return type

[**MoneyEnvelope**](MoneyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## aggregateInvoiceTaxes

Aggregate invoice taxes.

Aggregates the taxes for the specified invoices.

### Example

```bash
 aggregateInvoiceTaxes  currencyId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**array[string]**](string.md) |  |
 **currencyId** | **string** |  | [optional] [default to null]

### Return type

[**MoneyEnvelope**](MoneyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## aggregateInvoiceTotals

Aggregate invoice totals.

Aggregates the totals for the specified invoices.

### Example

```bash
 aggregateInvoiceTotals  currencyId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**array[string]**](string.md) |  |
 **currencyId** | **string** |  | [optional] [default to null]

### Return type

[**MoneyEnvelope**](MoneyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## calculateInvoice

Calculate an invoice.

Calculates the totals and taxes for the specified invoice.

### Example

```bash
 calculateInvoice  tenantId=value invoiceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## calculateInvoiceLine

Calculate an invoice line.

Calculates the totals and taxes for the specified invoice line.

### Example

```bash
 calculateInvoiceLine  tenantId=value invoiceId=value invoiceLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **invoiceLineId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createInvoice

Create a new invoice.

Creates a new invoice for the specified tenant.

### Example

```bash
 createInvoice  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceCreateDto** | [**InvoiceCreateDto**](InvoiceCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createInvoiceAdjustment

Create a new invoice adjustment.

Creates a new adjustment for the specified invoice.

### Example

```bash
 createInvoiceAdjustment  tenantId=value invoiceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **invoiceAdjustmentCreateDto** | [**InvoiceAdjustmentCreateDto**](InvoiceAdjustmentCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createInvoiceLine

Create a new invoice line.

Creates a new invoice line for the specified invoice.

### Example

```bash
 createInvoiceLine  tenantId=value invoiceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **invoiceLineCreateDto** | [**InvoiceLineCreateDto**](InvoiceLineCreateDto.md) |  | [optional]

### Return type

[**InvoiceLineDtoIReadOnlyListEnvelope**](InvoiceLineDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createInvoiceLineTax

Create a new tax for an invoice line.

Creates a new tax entry for the specified invoice line.

### Example

```bash
 createInvoiceLineTax  tenantId=value invoiceId=value invoiceLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **invoiceLineId** | **string** |  | [default to null]
 **invoiceLineAppliedTaxCreateDto** | [**InvoiceLineAppliedTaxCreateDto**](InvoiceLineAppliedTaxCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createInvoiceReference

Create a new invoice reference.

Creates a new reference for the specified invoice.

### Example

```bash
 createInvoiceReference  tenantId=value invoiceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **invoiceReferenceCreateDto** | [**InvoiceReferenceCreateDto**](InvoiceReferenceCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteInvoice

Delete an invoice.

Deletes the specified invoice for the tenant.

### Example

```bash
 deleteInvoice  tenantId=value invoiceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteInvoiceAdjustment

Delete an invoice adjustment.

Deletes the specified adjustment from the invoice.

### Example

```bash
 deleteInvoiceAdjustment  tenantId=value invoiceId=value invoiceAdjustmentId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **invoiceAdjustmentId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteInvoiceLine

Delete an invoice line.

Deletes the specified invoice line.

### Example

```bash
 deleteInvoiceLine  tenantId=value invoiceId=value invoiceLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **invoiceLineId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteInvoiceLineTax

Delete a tax from an invoice line.

Deletes the specified tax entry from the invoice line.

### Example

```bash
 deleteInvoiceLineTax  tenantId=value invoiceId=value invoiceLineId=value invoiceLineTaxId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **invoiceLineId** | **string** |  | [default to null]
 **invoiceLineTaxId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteInvoiceReference

Delete an invoice reference.

Deletes the specified reference from the invoice.

### Example

```bash
 deleteInvoiceReference  tenantId=value invoiceId=value invoiceReferenceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **invoiceReferenceId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getExtendedInvoice

Get an extended invoice by ID.

Retrieves the extended invoice details for the specified invoice ID.

### Example

```bash
 getExtendedInvoice  tenantId=value invoiceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]

### Return type

[**InvoiceDtoEnvelope**](InvoiceDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getExtendedInvoices

Get a list of extended invoices.

Retrieves a list of extended invoice details for the specified tenant.

### Example

```bash
 getExtendedInvoices  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**ExtendedInvoiceDtoListEnvelope**](ExtendedInvoiceDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getExtendedInvoicesCount

Get the count of extended invoices.

Retrieves the total count of extended invoices for the specified tenant.

### Example

```bash
 getExtendedInvoicesCount  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInvoice

Get an invoice by ID.

Retrieves the invoice details for the specified invoice ID.

### Example

```bash
 getInvoice  tenantId=value invoiceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]

### Return type

[**InvoiceDtoEnvelope**](InvoiceDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInvoiceAdjustment

Get an invoice adjustment by ID.

Retrieves the adjustment details for the specified invoice adjustment ID.

### Example

```bash
 getInvoiceAdjustment  tenantId=value invoiceId=value invoiceAdjustmentId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **invoiceAdjustmentId** | **string** |  | [default to null]

### Return type

[**InvoiceAdjustmentDtoEnvelope**](InvoiceAdjustmentDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInvoiceAdjustments

Get invoice adjustments.

Retrieves the adjustments for the specified invoice.

### Example

```bash
 getInvoiceAdjustments  tenantId=value invoiceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]

### Return type

[**InvoiceAdjustmentDtoIReadOnlyListEnvelope**](InvoiceAdjustmentDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInvoiceAdjustmentsCount

Get the count of invoice adjustments.

Retrieves the total count of adjustments for the specified invoice.

### Example

```bash
 getInvoiceAdjustmentsCount  tenantId=value invoiceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInvoiceLine

Get an invoice line by ID.

Retrieves the invoice line details for the specified invoice line ID.

### Example

```bash
 getInvoiceLine  tenantId=value invoiceId=value invoiceLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **invoiceLineId** | **string** |  | [default to null]

### Return type

[**InvoiceLineDtoEnvelope**](InvoiceLineDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInvoiceLineTaxes

Get taxes for an invoice line.

Retrieves the taxes applied to the specified invoice line.

### Example

```bash
 getInvoiceLineTaxes  tenantId=value invoiceId=value invoiceLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **invoiceLineId** | **string** |  | [default to null]

### Return type

[**InvoiceLineAppliedTaxDtoIReadOnlyListEnvelope**](InvoiceLineAppliedTaxDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInvoiceLineTaxesCount

Get the count of taxes for an invoice line.

Retrieves the total count of taxes applied to the specified invoice line.

### Example

```bash
 getInvoiceLineTaxesCount  tenantId=value invoiceId=value invoiceLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **invoiceLineId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInvoiceLines

Get invoice lines.

Retrieves the invoice lines for the specified invoice.

### Example

```bash
 getInvoiceLines  tenantId=value invoiceId=value  itemId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **itemId** | **string** |  | [optional] [default to null]

### Return type

[**InvoiceLineDtoListEnvelope**](InvoiceLineDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInvoiceLinesCount

Get the count of invoice lines.

Retrieves the total count of invoice lines for the specified invoice.

### Example

```bash
 getInvoiceLinesCount  tenantId=value invoiceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInvoicePayments

Get payments for an invoice.

Retrieves the list of payments related to the specified invoice.

### Example

```bash
 getInvoicePayments invoiceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceId** | **string** |  | [default to null]

### Return type

[**PaymentDtoIReadOnlyListEnvelope**](PaymentDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInvoicePaymentsCount

Get the count of payments for an invoice.

Retrieves the total count of payments for the specified invoice.

### Example

```bash
 getInvoicePaymentsCount invoiceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInvoiceReference

Get an invoice reference by ID.

Retrieves the reference details for the specified invoice reference ID.

### Example

```bash
 getInvoiceReference  tenantId=value invoiceId=value invoiceReferenceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **invoiceReferenceId** | **string** |  | [default to null]

### Return type

[**InvoiceReferenceDtoEnvelope**](InvoiceReferenceDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInvoiceReferences

Get invoice references.

Retrieves the references for the specified invoice.

### Example

```bash
 getInvoiceReferences  tenantId=value invoiceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]

### Return type

[**InvoiceReferenceDtoIReadOnlyListEnvelope**](InvoiceReferenceDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInvoiceReferencesCount

Get the count of invoice references.

Retrieves the total count of references for the specified invoice.

### Example

```bash
 getInvoiceReferencesCount  tenantId=value invoiceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInvoices

Get a list of invoices.

Retrieves a list of invoices for the specified tenant.

### Example

```bash
 getInvoices  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**InvoiceDtoListEnvelope**](InvoiceDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInvoicesCount

Get the count of invoices.

Retrieves the total count of invoices for the specified tenant.

### Example

```bash
 getInvoicesCount  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## previewInvoiceEmail

Preview the rendered email for an invoice.

This action is only available for users with the 'send_email' permission.

### Example

```bash
 previewInvoiceEmail invoiceId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **emailDispatchRequest** | [**EmailDispatchRequest**](EmailDispatchRequest.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sendInvoiceEmail

Send an invoice transactional email to recipients.

This action is only available for users with the 'send_email' permission.

### Example

```bash
 sendInvoiceEmail  tenantId=value invoiceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **emailDispatchRequest** | [**EmailDispatchRequest**](EmailDispatchRequest.md) |  | [optional]

### Return type

[**Envelope**](Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateInvoice

Update an invoice.

Updates the specified invoice for the tenant.

### Example

```bash
 updateInvoice  tenantId=value invoiceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **invoiceUpdateDto** | [**InvoiceUpdateDto**](InvoiceUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateInvoiceAdjustment

Update an invoice adjustment.

Updates the specified adjustment for the invoice.

### Example

```bash
 updateInvoiceAdjustment  tenantId=value invoiceId=value invoiceAdjustmentId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **invoiceAdjustmentId** | **string** |  | [default to null]
 **invoiceAdjustmentUpdateDto** | [**InvoiceAdjustmentUpdateDto**](InvoiceAdjustmentUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateInvoiceLine

Update an invoice line.

Updates the specified invoice line.

### Example

```bash
 updateInvoiceLine  tenantId=value invoiceId=value invoiceLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **invoiceLineId** | **string** |  | [default to null]
 **invoiceLineUpdateDto** | [**InvoiceLineUpdateDto**](InvoiceLineUpdateDto.md) |  | [optional]

### Return type

[**InvoiceLineDtoEnvelope**](InvoiceLineDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateInvoiceLineTax

Update a tax for an invoice line.

Updates the specified tax entry for the invoice line.

### Example

```bash
 updateInvoiceLineTax  tenantId=value invoiceId=value invoiceLineId=value invoiceLineTaxId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **invoiceLineId** | **string** |  | [default to null]
 **invoiceLineTaxId** | **string** |  | [default to null]
 **invoiceLineAppliedTaxUpdateDto** | [**InvoiceLineAppliedTaxUpdateDto**](InvoiceLineAppliedTaxUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateInvoiceReference

Update an invoice reference.

Updates the specified reference for the invoice.

### Example

```bash
 updateInvoiceReference  tenantId=value invoiceId=value invoiceReferenceId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **invoiceId** | **string** |  | [default to null]
 **invoiceReferenceId** | **string** |  | [default to null]
 **invoiceReferenceUpdateDto** | [**InvoiceReferenceUpdateDto**](InvoiceReferenceUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

