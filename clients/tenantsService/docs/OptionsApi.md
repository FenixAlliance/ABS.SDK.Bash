# OptionsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTenantOption**](OptionsApi.md#createTenantOption) | **POST** /api/v2/TenantsService/Options | Create a new tenant option
[**deleteTenantOption**](OptionsApi.md#deleteTenantOption) | **DELETE** /api/v2/TenantsService/Options/{optionId} | Delete a tenant option
[**getTenantOptionById**](OptionsApi.md#getTenantOptionById) | **GET** /api/v2/TenantsService/Options/{optionId} | Retrieve a single tenant option by its ID
[**getTenantOptionByKey**](OptionsApi.md#getTenantOptionByKey) | **GET** /api/v2/TenantsService/Options/Key/{key} | Retrieve a single tenant option by its key
[**getTenantOptions**](OptionsApi.md#getTenantOptions) | **GET** /api/v2/TenantsService/Options | Retrieve a list of tenant options
[**getTenantOptionsCount**](OptionsApi.md#getTenantOptionsCount) | **GET** /api/v2/TenantsService/Options/Count | Get the count of tenant options
[**patchTenantOption**](OptionsApi.md#patchTenantOption) | **PATCH** /api/v2/TenantsService/Options/{optionId} | Patch a tenant option
[**updateTenantOption**](OptionsApi.md#updateTenantOption) | **PUT** /api/v2/TenantsService/Options/{optionId} | Update a tenant option
[**upsertTenantOption**](OptionsApi.md#upsertTenantOption) | **PUT** /api/v2/TenantsService/Options/Upsert/{key} | Create or update a tenant option by key



## createTenantOption

Create a new tenant option

Create a new tenant option

### Example

```bash
 createTenantOption  tenantId=value  key=value  portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **key** | **string** |  | [default to null]
 **portalId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **optionCreateDto** | [**OptionCreateDto**](OptionCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteTenantOption

Delete a tenant option

Delete a tenant option

### Example

```bash
 deleteTenantOption  tenantId=value optionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **optionId** | **string** |  | [default to null]
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


## getTenantOptionById

Retrieve a single tenant option by its ID

Retrieve a single tenant option by its ID

### Example

```bash
 getTenantOptionById  tenantId=value optionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **optionId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**OptionDtoEnvelope**](OptionDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTenantOptionByKey

Retrieve a single tenant option by its key

Retrieve a single tenant option by its key

### Example

```bash
 getTenantOptionByKey  tenantId=value key=value  portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **key** | **string** |  | [default to null]
 **portalId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**OptionDtoEnvelope**](OptionDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTenantOptions

Retrieve a list of tenant options

Retrieve a list of tenant options

### Example

```bash
 getTenantOptions  tenantId=value  portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **portalId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**OptionDtoListEnvelope**](OptionDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTenantOptionsCount

Get the count of tenant options

Get the count of tenant options

### Example

```bash
 getTenantOptionsCount  tenantId=value  portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **portalId** | **string** |  | [optional] [default to null]
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


## patchTenantOption

Patch a tenant option

Patch a tenant option

### Example

```bash
 patchTenantOption  tenantId=value optionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **optionId** | **string** |  | [default to null]
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


## updateTenantOption

Update a tenant option

Update a tenant option

### Example

```bash
 updateTenantOption  tenantId=value optionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **optionId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **optionUpdateDto** | [**OptionUpdateDto**](OptionUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## upsertTenantOption

Create or update a tenant option by key

Create or update a tenant option by key

### Example

```bash
 upsertTenantOption  tenantId=value key=value  portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **key** | **string** |  | [default to null]
 **portalId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **optionUpdateDto** | [**OptionUpdateDto**](OptionUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

