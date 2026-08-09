# SigningProfilesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSigningProfileAsync**](SigningProfilesApi.md#createSigningProfileAsync) | **POST** /api/v2/TrustService/SigningProfiles | Create a new signing profile
[**deleteSigningProfileAsync**](SigningProfilesApi.md#deleteSigningProfileAsync) | **DELETE** /api/v2/TrustService/SigningProfiles/{id} | Delete a signing profile
[**getSigningProfileByIdAsync**](SigningProfilesApi.md#getSigningProfileByIdAsync) | **GET** /api/v2/TrustService/SigningProfiles/{id} | Get signing profile by ID
[**getSigningProfilesAsync**](SigningProfilesApi.md#getSigningProfilesAsync) | **GET** /api/v2/TrustService/SigningProfiles | Get all signing profiles
[**getSigningProfilesCountAsync**](SigningProfilesApi.md#getSigningProfilesCountAsync) | **GET** /api/v2/TrustService/SigningProfiles/Count | Get signing profiles count
[**patchSigningProfileAsync**](SigningProfilesApi.md#patchSigningProfileAsync) | **PATCH** /api/v2/TrustService/SigningProfiles/{id} | Patch a signing profile
[**updateSigningProfileAsync**](SigningProfilesApi.md#updateSigningProfileAsync) | **PUT** /api/v2/TrustService/SigningProfiles/{id} | Update a signing profile



## createSigningProfileAsync

Create a new signing profile

Creates a new signing profile for the specified tenant (supports inline contact creation).

### Example

```bash
 createSigningProfileAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **signingProfileCreateDto** | [**SigningProfileCreateDto**](SigningProfileCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteSigningProfileAsync

Delete a signing profile

Deletes a signing profile for the specified tenant.

### Example

```bash
 deleteSigningProfileAsync  tenantId=value id=value  api-version=value x-api-version:value
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


## getSigningProfileByIdAsync

Get signing profile by ID

Retrieves a specific signing profile by its identifier.

### Example

```bash
 getSigningProfileByIdAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SigningProfileDto**](SigningProfileDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSigningProfilesAsync

Get all signing profiles

Retrieves all signing profiles for the specified tenant.

### Example

```bash
 getSigningProfilesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **signingProfileDtoCollectionQueryParameters** | [**SigningProfileDtoCollectionQueryParameters**](SigningProfileDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**SigningProfileDtoListEnvelope**](SigningProfileDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSigningProfilesCountAsync

Get signing profiles count

Returns the count of signing profiles for the specified tenant.

### Example

```bash
 getSigningProfilesCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **signingProfileDtoCollectionQueryParameters** | [**SigningProfileDtoCollectionQueryParameters**](SigningProfileDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchSigningProfileAsync

Patch a signing profile

Patch a signing profile

### Example

```bash
 patchSigningProfileAsync  tenantId=value id=value  api-version=value x-api-version:value
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


## updateSigningProfileAsync

Update a signing profile

Updates an existing signing profile for the specified tenant.

### Example

```bash
 updateSigningProfileAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **signingProfileUpdateDto** | [**SigningProfileUpdateDto**](SigningProfileUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

