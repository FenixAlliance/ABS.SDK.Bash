# TeamRecordsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTenantTeamRecord**](TeamRecordsApi.md#createTenantTeamRecord) | **POST** /api/v2/TenantsService/TeamRecords | Create a new tenant team record
[**deleteTenantTeamRecord**](TeamRecordsApi.md#deleteTenantTeamRecord) | **DELETE** /api/v2/TenantsService/TeamRecords/{tenantTeamRecordId} | Delete a tenant team record
[**getTenantTeamRecordById**](TeamRecordsApi.md#getTenantTeamRecordById) | **GET** /api/v2/TenantsService/TeamRecords/{tenantTeamRecordId} | Retrieve a single tenant team record by its ID
[**getTenantTeamRecords**](TeamRecordsApi.md#getTenantTeamRecords) | **GET** /api/v2/TenantsService/TeamRecords | Retrieve a list of tenant team records
[**getTenantTeamRecordsCount**](TeamRecordsApi.md#getTenantTeamRecordsCount) | **GET** /api/v2/TenantsService/TeamRecords/Count | Get the count of tenant team records
[**patchTenantTeamRecord**](TeamRecordsApi.md#patchTenantTeamRecord) | **PATCH** /api/v2/TenantsService/TeamRecords/{tenantTeamRecordId} | Patch a tenant team record
[**updateTenantTeamRecord**](TeamRecordsApi.md#updateTenantTeamRecord) | **PUT** /api/v2/TenantsService/TeamRecords/{tenantTeamRecordId} | Update a tenant team record



## createTenantTeamRecord

Create a new tenant team record

Create a new tenant team record

### Example

```bash
 createTenantTeamRecord  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **tenantTeamRecordCreateDto** | [**TenantTeamRecordCreateDto**](TenantTeamRecordCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteTenantTeamRecord

Delete a tenant team record

Delete a tenant team record

### Example

```bash
 deleteTenantTeamRecord  tenantId=value tenantTeamRecordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **tenantTeamRecordId** | **string** |  | [default to null]
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


## getTenantTeamRecordById

Retrieve a single tenant team record by its ID

Retrieve a single tenant team record by its ID

### Example

```bash
 getTenantTeamRecordById  tenantId=value tenantTeamRecordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **tenantTeamRecordId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TenantTeamRecordDtoEnvelope**](TenantTeamRecordDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTenantTeamRecords

Retrieve a list of tenant team records

Retrieve a list of tenant team records

### Example

```bash
 getTenantTeamRecords  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TenantTeamRecordDtoListEnvelope**](TenantTeamRecordDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTenantTeamRecordsCount

Get the count of tenant team records

Get the count of tenant team records

### Example

```bash
 getTenantTeamRecordsCount  tenantId=value  api-version=value x-api-version:value
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


## patchTenantTeamRecord

Patch a tenant team record

Patch a tenant team record

### Example

```bash
 patchTenantTeamRecord  tenantId=value tenantTeamRecordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **tenantTeamRecordId** | **string** |  | [default to null]
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


## updateTenantTeamRecord

Update a tenant team record

Update a tenant team record

### Example

```bash
 updateTenantTeamRecord  tenantId=value tenantTeamRecordId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **tenantTeamRecordId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **tenantTeamRecordUpdateDto** | [**TenantTeamRecordUpdateDto**](TenantTeamRecordUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

