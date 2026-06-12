# FiscalAuthoritiesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFiscalAuthority**](FiscalAuthoritiesApi.md#createFiscalAuthority) | **POST** /api/v2/AccountingService/Fiscals/Authorities | Create a fiscal authority
[**deleteFiscalAuthority**](FiscalAuthoritiesApi.md#deleteFiscalAuthority) | **DELETE** /api/v2/AccountingService/Fiscals/Authorities/{authorityId} | Delete a fiscal authority
[**getFiscalAuthorities**](FiscalAuthoritiesApi.md#getFiscalAuthorities) | **GET** /api/v2/AccountingService/Fiscals/Authorities | Get fiscal authorities
[**getFiscalAuthoritiesCount**](FiscalAuthoritiesApi.md#getFiscalAuthoritiesCount) | **GET** /api/v2/AccountingService/Fiscals/Authorities/Count | Get fiscal authorities count
[**getFiscalAuthority**](FiscalAuthoritiesApi.md#getFiscalAuthority) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{authorityId} | Get fiscal authority by ID
[**patchFiscalAuthorityAsync**](FiscalAuthoritiesApi.md#patchFiscalAuthorityAsync) | **PATCH** /api/v2/AccountingService/Fiscals/Authorities/{authorityId} | Patch a fiscal authority
[**updateFiscalAuthority**](FiscalAuthoritiesApi.md#updateFiscalAuthority) | **PUT** /api/v2/AccountingService/Fiscals/Authorities/{authorityId} | Update a fiscal authority



## createFiscalAuthority

Create a fiscal authority

Creates a new fiscal authority for the specified tenant.

### Example

```bash
 createFiscalAuthority  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **fiscalAuthorityCreateDto** | [**FiscalAuthorityCreateDto**](FiscalAuthorityCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteFiscalAuthority

Delete a fiscal authority

Deletes a fiscal authority identified by its unique identifier.

### Example

```bash
 deleteFiscalAuthority  tenantId=value authorityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **authorityId** | **string** |  | [default to null]
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


## getFiscalAuthorities

Get fiscal authorities

Retrieves all fiscal authorities for the specified tenant using OData query options.

### Example

```bash
 getFiscalAuthorities  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**FiscalAuthorityDtoListEnvelope**](FiscalAuthorityDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getFiscalAuthoritiesCount

Get fiscal authorities count

Returns the total count of fiscal authorities for the specified tenant.

### Example

```bash
 getFiscalAuthoritiesCount  tenantId=value  api-version=value x-api-version:value
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


## getFiscalAuthority

Get fiscal authority by ID

Retrieves a specific fiscal authority by its unique identifier.

### Example

```bash
 getFiscalAuthority  tenantId=value authorityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **authorityId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**FiscalAuthorityDtoEnvelope**](FiscalAuthorityDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchFiscalAuthorityAsync

Patch a fiscal authority

Partially updates a fiscal authority.

### Example

```bash
 patchFiscalAuthorityAsync  tenantId=value authorityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **authorityId** | **string** |  | [default to null]
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


## updateFiscalAuthority

Update a fiscal authority

Updates an existing fiscal authority identified by its unique identifier.

### Example

```bash
 updateFiscalAuthority  tenantId=value authorityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **authorityId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **fiscalAuthorityUpdateDto** | [**FiscalAuthorityUpdateDto**](FiscalAuthorityUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

