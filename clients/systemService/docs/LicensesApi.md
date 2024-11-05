# LicensesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiLicensingLicensesGeneratePost**](LicensesApi.md#apiLicensingLicensesGeneratePost) | **POST** /api/Licensing/Licenses/Generate | 
[**apiLicensingLicensesValidateAttributesGet**](LicensesApi.md#apiLicensingLicensesValidateAttributesGet) | **GET** /api/Licensing/Licenses/Validate/Attributes | 
[**apiLicensingLicensesValidateErrorsGet**](LicensesApi.md#apiLicensingLicensesValidateErrorsGet) | **GET** /api/Licensing/Licenses/Validate/Errors | 
[**apiLicensingLicensesValidateGet**](LicensesApi.md#apiLicensingLicensesValidateGet) | **GET** /api/Licensing/Licenses/Validate | 



## apiLicensingLicensesGeneratePost



### Example

```bash
 apiLicensingLicensesGeneratePost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **licenseKeyRequest** | [**LicenseKeyRequest**](LicenseKeyRequest.md) |  | [optional]

### Return type

[**StringEnvelope**](StringEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiLicensingLicensesValidateAttributesGet



### Example

```bash
 apiLicensingLicensesValidateAttributesGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **licenseKey** | [**LicenseKey**](LicenseKey.md) |  | [optional]

### Return type

[**LicenseAttributesListEnvelope**](LicenseAttributesListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiLicensingLicensesValidateErrorsGet



### Example

```bash
 apiLicensingLicensesValidateErrorsGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **licenseKey** | [**LicenseKey**](LicenseKey.md) |  | [optional]

### Return type

[**LicenseValidationErrorListEnvelope**](LicenseValidationErrorListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiLicensingLicensesValidateGet



### Example

```bash
 apiLicensingLicensesValidateGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **licenseKey** | [**LicenseKey**](LicenseKey.md) |  | [optional]

### Return type

[**BooleanEnvelope**](BooleanEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

