# TaxPoliciesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAppliedTaxPolicyRecord**](TaxPoliciesApi.md#createAppliedTaxPolicyRecord) | **POST** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/AppliedTaxPolicyRecords | Create an applied tax policy record
[**createItemTaxPolicyRecord**](TaxPoliciesApi.md#createItemTaxPolicyRecord) | **POST** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/ItemTaxPolicyRecords | Create an item tax policy record
[**createTaxPolicy**](TaxPoliciesApi.md#createTaxPolicy) | **POST** /api/v2/AccountingService/TaxPolicies | Create a tax policy
[**deleteAppliedTaxPolicyRecord**](TaxPoliciesApi.md#deleteAppliedTaxPolicyRecord) | **DELETE** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/AppliedTaxPolicyRecords/{appliedTaxPolicyRecordId} | Delete an applied tax policy record
[**deleteItemTaxPolicyRecord**](TaxPoliciesApi.md#deleteItemTaxPolicyRecord) | **DELETE** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/ItemTaxPolicyRecords/{itemTaxPolicyRecordId} | Delete an item tax policy record
[**deleteTaxPolicy**](TaxPoliciesApi.md#deleteTaxPolicy) | **DELETE** /api/v2/AccountingService/TaxPolicies/{id} | Delete a tax policy
[**getAppliedTaxPolicyRecord**](TaxPoliciesApi.md#getAppliedTaxPolicyRecord) | **GET** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/AppliedTaxPolicyRecords/{appliedTaxPolicyRecordId} | Get applied tax policy record by ID
[**getAppliedTaxPolicyRecords**](TaxPoliciesApi.md#getAppliedTaxPolicyRecords) | **GET** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/AppliedTaxPolicyRecords | Get applied tax policy records
[**getAppliedTaxPolicyRecordsCount**](TaxPoliciesApi.md#getAppliedTaxPolicyRecordsCount) | **GET** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/AppliedTaxPolicyRecords/Count | Get applied tax policy records count
[**getItemTaxPolicyRecord**](TaxPoliciesApi.md#getItemTaxPolicyRecord) | **GET** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/ItemTaxPolicyRecords/{itemTaxPolicyRecordId} | Get item tax policy record by ID
[**getItemTaxPolicyRecords**](TaxPoliciesApi.md#getItemTaxPolicyRecords) | **GET** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/ItemTaxPolicyRecords | Get item tax policy records
[**getTaxPolicies**](TaxPoliciesApi.md#getTaxPolicies) | **GET** /api/v2/AccountingService/TaxPolicies | Get all tax policies for a tenant
[**getTaxPoliciesByAuthority**](TaxPoliciesApi.md#getTaxPoliciesByAuthority) | **GET** /api/v2/AccountingService/TaxPolicies/ByAuthority/{authorityId} | Get tax policies by fiscal authority
[**getTaxPoliciesCount**](TaxPoliciesApi.md#getTaxPoliciesCount) | **GET** /api/v2/AccountingService/TaxPolicies/Count | Get tax policies count
[**getTaxPolicy**](TaxPoliciesApi.md#getTaxPolicy) | **GET** /api/v2/AccountingService/TaxPolicies/{id} | Get tax policy by ID
[**patchAppliedTaxPolicyRecord**](TaxPoliciesApi.md#patchAppliedTaxPolicyRecord) | **PATCH** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/AppliedTaxPolicyRecords/{appliedTaxPolicyRecordId} | Patch an applied tax policy record
[**patchItemTaxPolicyRecord**](TaxPoliciesApi.md#patchItemTaxPolicyRecord) | **PATCH** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/ItemTaxPolicyRecords/{itemTaxPolicyRecordId} | Patch an item tax policy record
[**patchTaxPolicy**](TaxPoliciesApi.md#patchTaxPolicy) | **PATCH** /api/v2/AccountingService/TaxPolicies/{id} | Patch a tax policy
[**updateAppliedTaxPolicyRecord**](TaxPoliciesApi.md#updateAppliedTaxPolicyRecord) | **PUT** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/AppliedTaxPolicyRecords/{appliedTaxPolicyRecordId} | Update an applied tax policy record
[**updateItemTaxPolicyRecord**](TaxPoliciesApi.md#updateItemTaxPolicyRecord) | **PUT** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/ItemTaxPolicyRecords/{itemTaxPolicyRecordId} | Update an item tax policy record
[**updateTaxPolicy**](TaxPoliciesApi.md#updateTaxPolicy) | **PUT** /api/v2/AccountingService/TaxPolicies/{id} | Update a tax policy



## createAppliedTaxPolicyRecord

Create an applied tax policy record

Creates a new applied tax policy record for the specified tax policy.

### Example

```bash
 createAppliedTaxPolicyRecord  tenantId=value taxPolicyId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **taxPolicyId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **appliedTaxPolicyRecordCreateDto** | [**AppliedTaxPolicyRecordCreateDto**](AppliedTaxPolicyRecordCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createItemTaxPolicyRecord

Create an item tax policy record

Creates a new item tax policy record for the specified tax policy.

### Example

```bash
 createItemTaxPolicyRecord  tenantId=value taxPolicyId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **taxPolicyId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemTaxPolicyRecordCreateDto** | [**ItemTaxPolicyRecordCreateDto**](ItemTaxPolicyRecordCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createTaxPolicy

Create a tax policy

Creates a new tax policy for the specified tenant.

### Example

```bash
 createTaxPolicy  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **taxPolicyCreateDto** | [**TaxPolicyCreateDto**](TaxPolicyCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteAppliedTaxPolicyRecord

Delete an applied tax policy record

Deletes an applied tax policy record identified by its unique identifier.

### Example

```bash
 deleteAppliedTaxPolicyRecord  tenantId=value taxPolicyId=value appliedTaxPolicyRecordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **taxPolicyId** | **string** |  | [default to null]
 **appliedTaxPolicyRecordId** | **string** |  | [default to null]
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


## deleteItemTaxPolicyRecord

Delete an item tax policy record

Deletes an item tax policy record identified by its unique identifier.

### Example

```bash
 deleteItemTaxPolicyRecord  tenantId=value taxPolicyId=value itemTaxPolicyRecordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **taxPolicyId** | **string** |  | [default to null]
 **itemTaxPolicyRecordId** | **string** |  | [default to null]
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


## deleteTaxPolicy

Delete a tax policy

Deletes a tax policy identified by its unique identifier.

### Example

```bash
 deleteTaxPolicy  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
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


## getAppliedTaxPolicyRecord

Get applied tax policy record by ID

Retrieves a specific applied tax policy record by its unique identifier.

### Example

```bash
 getAppliedTaxPolicyRecord  tenantId=value taxPolicyId=value appliedTaxPolicyRecordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **taxPolicyId** | **string** |  | [default to null]
 **appliedTaxPolicyRecordId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**AppliedTaxPolicyRecordDtoEnvelope**](AppliedTaxPolicyRecordDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAppliedTaxPolicyRecords

Get applied tax policy records

Retrieves all applied tax policy records for the specified tax policy.

### Example

```bash
 getAppliedTaxPolicyRecords  tenantId=value taxPolicyId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **taxPolicyId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**AppliedTaxPolicyRecordDtoListEnvelope**](AppliedTaxPolicyRecordDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAppliedTaxPolicyRecordsCount

Get applied tax policy records count

Returns the total count of applied tax policy records for the specified tax policy.

### Example

```bash
 getAppliedTaxPolicyRecordsCount  tenantId=value taxPolicyId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **taxPolicyId** | **string** |  | [default to null]
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


## getItemTaxPolicyRecord

Get item tax policy record by ID

Retrieves a specific item tax policy record by its unique identifier.

### Example

```bash
 getItemTaxPolicyRecord  tenantId=value taxPolicyId=value itemTaxPolicyRecordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **taxPolicyId** | **string** |  | [default to null]
 **itemTaxPolicyRecordId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemTaxPolicyRecordDtoEnvelope**](ItemTaxPolicyRecordDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getItemTaxPolicyRecords

Get item tax policy records

Retrieves all item tax policy records for the specified tax policy.

### Example

```bash
 getItemTaxPolicyRecords  tenantId=value taxPolicyId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **taxPolicyId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ItemTaxPolicyRecordDtoListEnvelope**](ItemTaxPolicyRecordDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTaxPolicies

Get all tax policies for a tenant

Retrieves all tax policies for the specified tenant using OData query options.

### Example

```bash
 getTaxPolicies  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TaxPolicyDtoListEnvelope**](TaxPolicyDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTaxPoliciesByAuthority

Get tax policies by fiscal authority

Retrieves all tax policies associated with the specified fiscal authority.

### Example

```bash
 getTaxPoliciesByAuthority  tenantId=value authorityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **authorityId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TaxPolicyDtoListEnvelope**](TaxPolicyDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTaxPoliciesCount

Get tax policies count

Returns the count of tax policies for the specified tenant.

### Example

```bash
 getTaxPoliciesCount  tenantId=value  api-version=value x-api-version:value
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


## getTaxPolicy

Get tax policy by ID

Retrieves a specific tax policy by its unique identifier.

### Example

```bash
 getTaxPolicy  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TaxPolicyDtoEnvelope**](TaxPolicyDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchAppliedTaxPolicyRecord

Patch an applied tax policy record

Partially updates an existing applied tax policy record identified by its unique identifier.

### Example

```bash
 patchAppliedTaxPolicyRecord  tenantId=value taxPolicyId=value appliedTaxPolicyRecordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **taxPolicyId** | **string** |  | [default to null]
 **appliedTaxPolicyRecordId** | **string** |  | [default to null]
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


## patchItemTaxPolicyRecord

Patch an item tax policy record

Partially updates an existing item tax policy record identified by its unique identifier.

### Example

```bash
 patchItemTaxPolicyRecord  tenantId=value taxPolicyId=value itemTaxPolicyRecordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **taxPolicyId** | **string** |  | [default to null]
 **itemTaxPolicyRecordId** | **string** |  | [default to null]
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


## patchTaxPolicy

Patch a tax policy

Partially updates an existing tax policy identified by its unique identifier.

### Example

```bash
 patchTaxPolicy  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
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


## updateAppliedTaxPolicyRecord

Update an applied tax policy record

Updates an existing applied tax policy record identified by its unique identifier.

### Example

```bash
 updateAppliedTaxPolicyRecord  tenantId=value taxPolicyId=value appliedTaxPolicyRecordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **taxPolicyId** | **string** |  | [default to null]
 **appliedTaxPolicyRecordId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **appliedTaxPolicyRecordUpdateDto** | [**AppliedTaxPolicyRecordUpdateDto**](AppliedTaxPolicyRecordUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateItemTaxPolicyRecord

Update an item tax policy record

Updates an existing item tax policy record identified by its unique identifier.

### Example

```bash
 updateItemTaxPolicyRecord  tenantId=value taxPolicyId=value itemTaxPolicyRecordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **taxPolicyId** | **string** |  | [default to null]
 **itemTaxPolicyRecordId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **itemTaxPolicyRecordUpdateDto** | [**ItemTaxPolicyRecordUpdateDto**](ItemTaxPolicyRecordUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateTaxPolicy

Update a tax policy

Updates an existing tax policy identified by its unique identifier.

### Example

```bash
 updateTaxPolicy  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **taxPolicyUpdateDto** | [**TaxPolicyUpdateDto**](TaxPolicyUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

