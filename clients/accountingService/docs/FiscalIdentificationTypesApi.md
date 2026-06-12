# FiscalIdentificationTypesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFiscalIdentificationType**](FiscalIdentificationTypesApi.md#createFiscalIdentificationType) | **POST** /api/v2/AccountingService/Fiscals/Authorities/IdentificationTypes | Create a fiscal identification type
[**deleteFiscalIdentificationType**](FiscalIdentificationTypesApi.md#deleteFiscalIdentificationType) | **DELETE** /api/v2/AccountingService/Fiscals/Authorities/IdentificationTypes/{identificationTypeId} | Delete a fiscal identification type
[**getFiscalIdentificationType**](FiscalIdentificationTypesApi.md#getFiscalIdentificationType) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{fiscalAuthorityId}/IdentificationTypes/{identificationTypeId} | Get fiscal identification type by ID
[**getFiscalIdentificationTypes**](FiscalIdentificationTypesApi.md#getFiscalIdentificationTypes) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{authorityId}/IdentificationTypes | Get fiscal identification types for an authority
[**getFiscalIdentificationTypesCount**](FiscalIdentificationTypesApi.md#getFiscalIdentificationTypesCount) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{authorityId}/IdentificationTypes/Count | Get fiscal identification types count
[**patchFiscalIdentificationTypeAsync**](FiscalIdentificationTypesApi.md#patchFiscalIdentificationTypeAsync) | **PATCH** /api/v2/AccountingService/Fiscals/Authorities/IdentificationTypes/{identificationTypeId} | Patch a fiscal identification type
[**updateFiscalIdentificationType**](FiscalIdentificationTypesApi.md#updateFiscalIdentificationType) | **PUT** /api/v2/AccountingService/Fiscals/Authorities/IdentificationTypes/{identificationTypeId} | Update a fiscal identification type



## createFiscalIdentificationType

Create a fiscal identification type

Creates a new fiscal identification type for a fiscal authority.

### Example

```bash
 createFiscalIdentificationType  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **fiscalIdentificationTypeCreateDto** | [**FiscalIdentificationTypeCreateDto**](FiscalIdentificationTypeCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteFiscalIdentificationType

Delete a fiscal identification type

Deletes a fiscal identification type identified by its unique identifier.

### Example

```bash
 deleteFiscalIdentificationType  tenantId=value identificationTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **identificationTypeId** | **string** |  | [default to null]
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


## getFiscalIdentificationType

Get fiscal identification type by ID

Retrieves a specific fiscal identification type by its unique identifier.

### Example

```bash
 getFiscalIdentificationType  tenantId=value fiscalAuthorityId=value identificationTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **fiscalAuthorityId** | **string** |  | [default to null]
 **identificationTypeId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**FiscalIdentificationTypeDtoEnvelope**](FiscalIdentificationTypeDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getFiscalIdentificationTypes

Get fiscal identification types for an authority

Retrieves all fiscal identification types for the specified fiscal authority.

### Example

```bash
 getFiscalIdentificationTypes  tenantId=value authorityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **authorityId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**FiscalIdentificationTypeDtoListEnvelope**](FiscalIdentificationTypeDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getFiscalIdentificationTypesCount

Get fiscal identification types count

Returns the total count of fiscal identification types for the specified fiscal authority.

### Example

```bash
 getFiscalIdentificationTypesCount  tenantId=value authorityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **authorityId** | **string** |  | [default to null]
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


## patchFiscalIdentificationTypeAsync

Patch a fiscal identification type

Partially updates a fiscal identification type.

### Example

```bash
 patchFiscalIdentificationTypeAsync  tenantId=value identificationTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **identificationTypeId** | **string** |  | [default to null]
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


## updateFiscalIdentificationType

Update a fiscal identification type

Updates an existing fiscal identification type identified by its unique identifier.

### Example

```bash
 updateFiscalIdentificationType  tenantId=value identificationTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **identificationTypeId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **fiscalIdentificationTypeUpdateDto** | [**FiscalIdentificationTypeUpdateDto**](FiscalIdentificationTypeUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

