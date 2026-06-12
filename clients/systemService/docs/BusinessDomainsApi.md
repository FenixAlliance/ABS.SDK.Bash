# BusinessDomainsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSystemBusinessDomain**](BusinessDomainsApi.md#deleteSystemBusinessDomain) | **DELETE** /api/v2/SystemService/BusinessDomains/{businessDomainId} | Delete a business domain
[**getSystemBusinessDomainById**](BusinessDomainsApi.md#getSystemBusinessDomainById) | **GET** /api/v2/SystemService/BusinessDomains/{businessDomainId} | Retrieve a business domain by its ID
[**getSystemBusinessDomains**](BusinessDomainsApi.md#getSystemBusinessDomains) | **GET** /api/v2/SystemService/BusinessDomains | Retrieve all business domains in the system
[**getSystemBusinessDomainsCount**](BusinessDomainsApi.md#getSystemBusinessDomainsCount) | **GET** /api/v2/SystemService/BusinessDomains/Count | Get the count of all business domains in the system
[**verifySystemBusinessDomain**](BusinessDomainsApi.md#verifySystemBusinessDomain) | **POST** /api/v2/SystemService/BusinessDomains/{businessDomainId}/Verify | Verify a business domain



## deleteSystemBusinessDomain

Delete a business domain

Removes any business domain from the system, regardless of owning tenant.

### Example

```bash
 deleteSystemBusinessDomain businessDomainId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **businessDomainId** | **string** |  | [default to null]
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


## getSystemBusinessDomainById

Retrieve a business domain by its ID

Retrieve any business domain by its ID, regardless of owning tenant.

### Example

```bash
 getSystemBusinessDomainById businessDomainId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **businessDomainId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BusinessDomainDtoEnvelope**](BusinessDomainDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSystemBusinessDomains

Retrieve all business domains in the system

Retrieve all registered business domains across every tenant (global administrators only).

### Example

```bash
 getSystemBusinessDomains  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BusinessDomainDtoListEnvelope**](BusinessDomainDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSystemBusinessDomainsCount

Get the count of all business domains in the system

Get the count of all registered business domains across every tenant.

### Example

```bash
 getSystemBusinessDomainsCount  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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


## verifySystemBusinessDomain

Verify a business domain

Checks the domain's DNS TXT records for the verification token and marks it verified.

### Example

```bash
 verifySystemBusinessDomain businessDomainId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **businessDomainId** | **string** |  | [default to null]
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

