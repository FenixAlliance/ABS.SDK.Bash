# IndustriesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTenantIndustry**](IndustriesApi.md#createTenantIndustry) | **POST** /api/v2/TenantsService/Industries | Create a new tenant industry
[**deleteTenantIndustry**](IndustriesApi.md#deleteTenantIndustry) | **DELETE** /api/v2/TenantsService/Industries/{tenantIndustryId} | Delete a tenant industry
[**getTenantIndustries**](IndustriesApi.md#getTenantIndustries) | **GET** /api/v2/TenantsService/Industries | Retrieve a list of tenant industries
[**getTenantIndustriesCount**](IndustriesApi.md#getTenantIndustriesCount) | **GET** /api/v2/TenantsService/Industries/Count | Get the count of tenant industries
[**getTenantIndustryById**](IndustriesApi.md#getTenantIndustryById) | **GET** /api/v2/TenantsService/Industries/{tenantIndustryId} | Retrieve a single tenant industry by its ID
[**patchTenantIndustryAsync**](IndustriesApi.md#patchTenantIndustryAsync) | **PATCH** /api/v2/TenantsService/Industries/{tenantIndustryId} | Patch a tenant industry
[**updateTenantIndustry**](IndustriesApi.md#updateTenantIndustry) | **PUT** /api/v2/TenantsService/Industries/{tenantIndustryId} | Update a tenant industry



## createTenantIndustry

Create a new tenant industry

Create a new tenant industry

### Example

```bash
 createTenantIndustry  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **tenantIndustryCreateDto** | [**TenantIndustryCreateDto**](TenantIndustryCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteTenantIndustry

Delete a tenant industry

Delete a tenant industry

### Example

```bash
 deleteTenantIndustry  tenantId=value tenantIndustryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **tenantIndustryId** | **string** |  | [default to null]
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


## getTenantIndustries

Retrieve a list of tenant industries

Retrieve a list of tenant industries

### Example

```bash
 getTenantIndustries  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TenantIndustryDtoListEnvelope**](TenantIndustryDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTenantIndustriesCount

Get the count of tenant industries

Get the count of tenant industries

### Example

```bash
 getTenantIndustriesCount  tenantId=value  api-version=value x-api-version:value
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


## getTenantIndustryById

Retrieve a single tenant industry by its ID

Retrieve a single tenant industry by its ID

### Example

```bash
 getTenantIndustryById  tenantId=value tenantIndustryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **tenantIndustryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TenantIndustryDtoEnvelope**](TenantIndustryDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchTenantIndustryAsync

Patch a tenant industry

Patch a tenant industry

### Example

```bash
 patchTenantIndustryAsync  tenantId=value tenantIndustryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **tenantIndustryId** | **string** |  | [default to null]
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


## updateTenantIndustry

Update a tenant industry

Update a tenant industry

### Example

```bash
 updateTenantIndustry  tenantId=value tenantIndustryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **tenantIndustryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **tenantIndustryUpdateDto** | [**TenantIndustryUpdateDto**](TenantIndustryUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

