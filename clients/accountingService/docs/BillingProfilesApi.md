# BillingProfilesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBillingProfileAsync**](BillingProfilesApi.md#createBillingProfileAsync) | **POST** /api/v2/AccountingService/BillingProfiles | Creates a new billing profile
[**deleteBillingProfileAsync**](BillingProfilesApi.md#deleteBillingProfileAsync) | **DELETE** /api/v2/AccountingService/BillingProfiles/{billingProfileId} | Deletes a billing profile
[**getBillingProfileByIdAsync**](BillingProfilesApi.md#getBillingProfileByIdAsync) | **GET** /api/v2/AccountingService/BillingProfiles/{billingProfileId} | Gets a billing profile by id
[**getBillingProfilesAsync**](BillingProfilesApi.md#getBillingProfilesAsync) | **GET** /api/v2/AccountingService/BillingProfiles | Gets all billing profiles
[**getBillingProfilesCountAsync**](BillingProfilesApi.md#getBillingProfilesCountAsync) | **GET** /api/v2/AccountingService/BillingProfiles/Count | Gets the count of billing profiles
[**patchBillingProfileAsync**](BillingProfilesApi.md#patchBillingProfileAsync) | **PATCH** /api/v2/AccountingService/BillingProfiles/{billingProfileId} | Patch a billing profile
[**updateBillingProfileAsync**](BillingProfilesApi.md#updateBillingProfileAsync) | **PUT** /api/v2/AccountingService/BillingProfiles/{billingProfileId} | Updates an existing billing profile



## createBillingProfileAsync

Creates a new billing profile

Adds a new billing profile record for the specified tenant.

### Example

```bash
 createBillingProfileAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **billingProfileCreateDto** | [**BillingProfileCreateDto**](BillingProfileCreateDto.md) |  |
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


## deleteBillingProfileAsync

Deletes a billing profile

Removes a billing profile from the system using its unique identifier.

### Example

```bash
 deleteBillingProfileAsync  tenantId=value billingProfileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **billingProfileId** | **string** |  | [default to null]
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


## getBillingProfileByIdAsync

Gets a billing profile by id

Retrieves a specific billing profile using its unique identifier.

### Example

```bash
 getBillingProfileByIdAsync  tenantId=value billingProfileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **billingProfileId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BillingProfileDtoEnvelope**](BillingProfileDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBillingProfilesAsync

Gets all billing profiles

Fetches all billing profiles for a tenant with support for OData queries.

### Example

```bash
 getBillingProfilesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BillingProfileDtoIReadOnlyListEnvelope**](BillingProfileDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBillingProfilesCountAsync

Gets the count of billing profiles

Returns the number of billing profiles for a tenant, supporting OData filtering.

### Example

```bash
 getBillingProfilesCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchBillingProfileAsync

Patch a billing profile

Partially updates a billing profile.

### Example

```bash
 patchBillingProfileAsync  tenantId=value billingProfileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **billingProfileId** | **string** |  | [default to null]
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


## updateBillingProfileAsync

Updates an existing billing profile

Modifies an existing billing profile using the provided data.

### Example

```bash
 updateBillingProfileAsync  tenantId=value billingProfileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **billingProfileId** | **string** |  | [default to null]
 **billingProfileUpdateDto** | [**BillingProfileUpdateDto**](BillingProfileUpdateDto.md) |  |
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

