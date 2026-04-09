# SecurityCertificatesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSecurityCertificatesAsync**](SecurityCertificatesApi.md#getSecurityCertificatesAsync) | **GET** /api/v2/SecurityService/SecurityCertificates | Get security certificates
[**getSecurityCertificatesCountAsync**](SecurityCertificatesApi.md#getSecurityCertificatesCountAsync) | **GET** /api/v2/SecurityService/SecurityCertificates/Count | Get security certificates count



## getSecurityCertificatesAsync

Get security certificates

Retrieves security certificates for the specified tenant.

### Example

```bash
 getSecurityCertificatesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SecurityCertificateDtoListEnvelope**](SecurityCertificateDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSecurityCertificatesCountAsync

Get security certificates count

Retrieves the count of security certificates for the specified tenant.

### Example

```bash
 getSecurityCertificatesCountAsync  tenantId=value  api-version=value x-api-version:value
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

