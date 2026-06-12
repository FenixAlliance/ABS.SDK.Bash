# FiscalResponsibilitiesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFiscalResponsibility**](FiscalResponsibilitiesApi.md#createFiscalResponsibility) | **POST** /api/v2/AccountingService/Fiscals/Authorities/FiscalResponsibilities | Create a fiscal responsibility
[**deleteFiscalResponsibility**](FiscalResponsibilitiesApi.md#deleteFiscalResponsibility) | **DELETE** /api/v2/AccountingService/Fiscals/Authorities/FiscalResponsibilities/{fiscalResponsibilityId} | Delete a fiscal responsibility
[**getFiscalResponsibilities**](FiscalResponsibilitiesApi.md#getFiscalResponsibilities) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{authorityId}/FiscalResponsibilities | Get fiscal responsibilities for an authority
[**getFiscalResponsibilitiesCount**](FiscalResponsibilitiesApi.md#getFiscalResponsibilitiesCount) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{fiscalAuthorityId}/FiscalResponsibilities/Count | Get fiscal responsibilities count
[**getFiscalResponsibility**](FiscalResponsibilitiesApi.md#getFiscalResponsibility) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{fiscalAuthorityId}/FiscalResponsibilities/{fiscalResponsibilityId} | Get fiscal responsibility by ID
[**patchFiscalResponsibilityAsync**](FiscalResponsibilitiesApi.md#patchFiscalResponsibilityAsync) | **PATCH** /api/v2/AccountingService/Fiscals/Authorities/FiscalResponsibilities/{fiscalResponsibilityId} | Patch a fiscal responsibility
[**updateFiscalResponsibility**](FiscalResponsibilitiesApi.md#updateFiscalResponsibility) | **PUT** /api/v2/AccountingService/Fiscals/Authorities/FiscalResponsibilities/{fiscalResponsibilityId} | Update a fiscal responsibility



## createFiscalResponsibility

Create a fiscal responsibility

Creates a new fiscal responsibility for a fiscal authority.

### Example

```bash
 createFiscalResponsibility  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **fiscalResponsibilityCreateDto** | [**FiscalResponsibilityCreateDto**](FiscalResponsibilityCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteFiscalResponsibility

Delete a fiscal responsibility

Deletes a fiscal responsibility identified by its unique identifier.

### Example

```bash
 deleteFiscalResponsibility  tenantId=value fiscalResponsibilityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **fiscalResponsibilityId** | **string** |  | [default to null]
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


## getFiscalResponsibilities

Get fiscal responsibilities for an authority

Retrieves all fiscal responsibilities for the specified fiscal authority.

### Example

```bash
 getFiscalResponsibilities  tenantId=value  fiscalAuthorityId=value authorityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **fiscalAuthorityId** | **string** |  | [default to null]
 **authorityId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**FiscalResponsibilityDtoListEnvelope**](FiscalResponsibilityDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getFiscalResponsibilitiesCount

Get fiscal responsibilities count

Returns the total count of fiscal responsibilities for the specified fiscal authority.

### Example

```bash
 getFiscalResponsibilitiesCount  tenantId=value fiscalAuthorityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **fiscalAuthorityId** | **string** |  | [default to null]
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


## getFiscalResponsibility

Get fiscal responsibility by ID

Retrieves a specific fiscal responsibility by its unique identifier.

### Example

```bash
 getFiscalResponsibility  tenantId=value fiscalAuthorityId=value fiscalResponsibilityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **fiscalAuthorityId** | **string** |  | [default to null]
 **fiscalResponsibilityId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**FiscalResponsibilityDtoEnvelope**](FiscalResponsibilityDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchFiscalResponsibilityAsync

Patch a fiscal responsibility

Partially updates a fiscal responsibility.

### Example

```bash
 patchFiscalResponsibilityAsync  tenantId=value fiscalResponsibilityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **fiscalResponsibilityId** | **string** |  | [default to null]
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


## updateFiscalResponsibility

Update a fiscal responsibility

Updates an existing fiscal responsibility identified by its unique identifier.

### Example

```bash
 updateFiscalResponsibility  tenantId=value fiscalResponsibilityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **fiscalResponsibilityId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **fiscalResponsibilityUpdateDto** | [**FiscalResponsibilityUpdateDto**](FiscalResponsibilityUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

