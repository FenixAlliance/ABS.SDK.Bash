# LicenseAttributesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLicenseAttributeAsync**](LicenseAttributesApi.md#createLicenseAttributeAsync) | **POST** /api/v2/LicensingService/LicenseAttributes | Create a new license attribute
[**deleteLicenseAttributeAsync**](LicenseAttributesApi.md#deleteLicenseAttributeAsync) | **DELETE** /api/v2/LicensingService/LicenseAttributes/{id} | Delete a license attribute
[**getLicenseAttributeByIdAsync**](LicenseAttributesApi.md#getLicenseAttributeByIdAsync) | **GET** /api/v2/LicensingService/LicenseAttributes/{id} | Get license attribute by ID
[**getLicenseAttributesAsync**](LicenseAttributesApi.md#getLicenseAttributesAsync) | **GET** /api/v2/LicensingService/LicenseAttributes | Get all license attributes
[**getLicenseAttributesCountAsync**](LicenseAttributesApi.md#getLicenseAttributesCountAsync) | **GET** /api/v2/LicensingService/LicenseAttributes/Count | Get license attributes count
[**patchLicenseAttributeAsync**](LicenseAttributesApi.md#patchLicenseAttributeAsync) | **PATCH** /api/v2/LicensingService/LicenseAttributes/{id} | Patch a license attribute
[**updateLicenseAttributeAsync**](LicenseAttributesApi.md#updateLicenseAttributeAsync) | **PUT** /api/v2/LicensingService/LicenseAttributes/{id} | Update a license attribute



## createLicenseAttributeAsync

Create a new license attribute

Creates a new license attribute for the specified tenant.

### Example

```bash
 createLicenseAttributeAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **licenseAttributeCreateDto** | [**LicenseAttributeCreateDto**](LicenseAttributeCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteLicenseAttributeAsync

Delete a license attribute

Deletes a license attribute for the specified tenant.

### Example

```bash
 deleteLicenseAttributeAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getLicenseAttributeByIdAsync

Get license attribute by ID

Retrieves a specific license attribute by its identifier.

### Example

```bash
 getLicenseAttributeByIdAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**LicenseAttributeDto**](LicenseAttributeDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getLicenseAttributesAsync

Get all license attributes

Retrieves all license attributes for the specified tenant.

### Example

```bash
 getLicenseAttributesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **licenseAttributeDtoCollectionQueryParameters** | [**LicenseAttributeDtoCollectionQueryParameters**](LicenseAttributeDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**LicenseAttributeDtoListEnvelope**](LicenseAttributeDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getLicenseAttributesCountAsync

Get license attributes count

Returns the count of license attributes for the specified tenant.

### Example

```bash
 getLicenseAttributesCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **licenseAttributeDtoCollectionQueryParameters** | [**LicenseAttributeDtoCollectionQueryParameters**](LicenseAttributeDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchLicenseAttributeAsync

Patch a license attribute

Patch a license attribute for the specified tenant.

### Example

```bash
 patchLicenseAttributeAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **patchOperation** | [**array[PatchOperation]**](PatchOperation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateLicenseAttributeAsync

Update a license attribute

Updates an existing license attribute for the specified tenant.

### Example

```bash
 updateLicenseAttributeAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **licenseAttributeUpdateDto** | [**LicenseAttributeUpdateDto**](LicenseAttributeUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

