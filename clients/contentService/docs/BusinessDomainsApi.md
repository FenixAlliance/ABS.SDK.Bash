# BusinessDomainsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBusinessDomainAsync**](BusinessDomainsApi.md#createBusinessDomainAsync) | **POST** /api/v2/ContentService/BusinessDomains | Register a business domain
[**deleteBusinessDomainAsync**](BusinessDomainsApi.md#deleteBusinessDomainAsync) | **DELETE** /api/v2/ContentService/BusinessDomains/{businessDomainId} | Delete a business domain
[**getBusinessDomainByIdAsync**](BusinessDomainsApi.md#getBusinessDomainByIdAsync) | **GET** /api/v2/ContentService/BusinessDomains/{businessDomainId} | Get business domain by ID
[**getBusinessDomainsAsync**](BusinessDomainsApi.md#getBusinessDomainsAsync) | **GET** /api/v2/ContentService/BusinessDomains | Get business domains
[**getBusinessDomainsCountAsync**](BusinessDomainsApi.md#getBusinessDomainsCountAsync) | **GET** /api/v2/ContentService/BusinessDomains/Count | Get business domains count
[**updateBusinessDomainAsync**](BusinessDomainsApi.md#updateBusinessDomainAsync) | **PUT** /api/v2/ContentService/BusinessDomains/{businessDomainId} | Update a business domain
[**verifyBusinessDomainAsync**](BusinessDomainsApi.md#verifyBusinessDomainAsync) | **POST** /api/v2/ContentService/BusinessDomains/{businessDomainId}/Verify | Verify a business domain



## createBusinessDomainAsync

Register a business domain

Registers a new (unverified) business domain for the tenant and issues a DNS TXT verification token.

### Example

```bash
 createBusinessDomainAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **businessDomainCreateDto** | [**BusinessDomainCreateDto**](BusinessDomainCreateDto.md) |  |
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteBusinessDomainAsync

Delete a business domain

Removes a business domain from the tenant.

### Example

```bash
 deleteBusinessDomainAsync  tenantId=value businessDomainId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
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


## getBusinessDomainByIdAsync

Get business domain by ID

Retrieves a specific business domain.

### Example

```bash
 getBusinessDomainByIdAsync  tenantId=value businessDomainId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
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


## getBusinessDomainsAsync

Get business domains

Retrieves business domains for the specified tenant.

### Example

```bash
 getBusinessDomainsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
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


## getBusinessDomainsCountAsync

Get business domains count

Retrieves the count of business domains for the specified tenant.

### Example

```bash
 getBusinessDomainsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## updateBusinessDomainAsync

Update a business domain

Updates a business domain. Changing the host re-issues the verification token and clears verification.

### Example

```bash
 updateBusinessDomainAsync  tenantId=value businessDomainId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **businessDomainId** | **string** |  | [default to null]
 **businessDomainUpdateDto** | [**BusinessDomainUpdateDto**](BusinessDomainUpdateDto.md) |  |
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## verifyBusinessDomainAsync

Verify a business domain

Checks the domain's DNS TXT records for the verification token and marks the domain verified.

### Example

```bash
 verifyBusinessDomainAsync  tenantId=value businessDomainId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
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

