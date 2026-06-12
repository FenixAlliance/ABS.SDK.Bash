# SupplierProfilesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSupplierProfileAsync**](SupplierProfilesApi.md#createSupplierProfileAsync) | **POST** /api/v2/LogisticsService/SupplierProfiles | Create a supplier profile
[**deleteSupplierProfileAsync**](SupplierProfilesApi.md#deleteSupplierProfileAsync) | **DELETE** /api/v2/LogisticsService/SupplierProfiles/{supplierProfileId} | Delete a supplier profile
[**getSupplierProfileByIdAsync**](SupplierProfilesApi.md#getSupplierProfileByIdAsync) | **GET** /api/v2/LogisticsService/SupplierProfiles/{supplierProfileId} | Get supplier profile by ID
[**getSupplierProfilesAsync**](SupplierProfilesApi.md#getSupplierProfilesAsync) | **GET** /api/v2/LogisticsService/SupplierProfiles | Get all supplier profiles
[**getSupplierProfilesCountAsync**](SupplierProfilesApi.md#getSupplierProfilesCountAsync) | **GET** /api/v2/LogisticsService/SupplierProfiles/Count | Get supplier profiles count
[**patchSupplierProfileAsync**](SupplierProfilesApi.md#patchSupplierProfileAsync) | **PATCH** /api/v2/LogisticsService/SupplierProfiles/{supplierProfileId} | Patch a supplier profile
[**updateSupplierProfileAsync**](SupplierProfilesApi.md#updateSupplierProfileAsync) | **PUT** /api/v2/LogisticsService/SupplierProfiles/{supplierProfileId} | Update a supplier profile



## createSupplierProfileAsync

Create a supplier profile

Creates a new supplier profile for the specified tenant.

### Example

```bash
 createSupplierProfileAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **supplierProfileCreateDto** | [**SupplierProfileCreateDto**](SupplierProfileCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteSupplierProfileAsync

Delete a supplier profile

Deletes a supplier profile.

### Example

```bash
 deleteSupplierProfileAsync  tenantId=value supplierProfileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supplierProfileId** | **string** |  | [default to null]
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


## getSupplierProfileByIdAsync

Get supplier profile by ID

Retrieves a specific supplier profile by its identifier.

### Example

```bash
 getSupplierProfileByIdAsync  tenantId=value supplierProfileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supplierProfileId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupplierProfileDtoEnvelope**](SupplierProfileDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSupplierProfilesAsync

Get all supplier profiles

Retrieves all supplier profiles for the specified tenant.

### Example

```bash
 getSupplierProfilesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupplierProfileDtoListEnvelope**](SupplierProfileDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSupplierProfilesCountAsync

Get supplier profiles count

Returns the count of supplier profiles for the specified tenant.

### Example

```bash
 getSupplierProfilesCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchSupplierProfileAsync

Patch a supplier profile

Applies a JSON Patch document to a supplier profile.

### Example

```bash
 patchSupplierProfileAsync  tenantId=value supplierProfileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supplierProfileId** | **string** |  | [default to null]
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


## updateSupplierProfileAsync

Update a supplier profile

Updates an existing supplier profile.

### Example

```bash
 updateSupplierProfileAsync  tenantId=value supplierProfileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supplierProfileId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **supplierProfileUpdateDto** | [**SupplierProfileUpdateDto**](SupplierProfileUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

