# ServiceLevelAgreementsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createServiceLevelAgreementAsync**](ServiceLevelAgreementsApi.md#createServiceLevelAgreementAsync) | **POST** /api/v2/ServicesService/ServiceLevelAgreements | Create a service level agreement
[**deleteServiceLevelAgreementAsync**](ServiceLevelAgreementsApi.md#deleteServiceLevelAgreementAsync) | **DELETE** /api/v2/ServicesService/ServiceLevelAgreements/{serviceLevelAgreementId} | Delete a service level agreement
[**getServiceLevelAgreementByIdAsync**](ServiceLevelAgreementsApi.md#getServiceLevelAgreementByIdAsync) | **GET** /api/v2/ServicesService/ServiceLevelAgreements/{serviceLevelAgreementId} | Get a service level agreement by ID
[**getServiceLevelAgreementsAsync**](ServiceLevelAgreementsApi.md#getServiceLevelAgreementsAsync) | **GET** /api/v2/ServicesService/ServiceLevelAgreements | Get all service level agreements
[**getServiceLevelAgreementsCountAsync**](ServiceLevelAgreementsApi.md#getServiceLevelAgreementsCountAsync) | **GET** /api/v2/ServicesService/ServiceLevelAgreements/Count | Get service level agreements count
[**patchServiceLevelAgreementAsync**](ServiceLevelAgreementsApi.md#patchServiceLevelAgreementAsync) | **PATCH** /api/v2/ServicesService/ServiceLevelAgreements/{serviceLevelAgreementId} | Patch a service level agreement
[**updateServiceLevelAgreementAsync**](ServiceLevelAgreementsApi.md#updateServiceLevelAgreementAsync) | **PUT** /api/v2/ServicesService/ServiceLevelAgreements/{serviceLevelAgreementId} | Update a service level agreement



## createServiceLevelAgreementAsync

Create a service level agreement

Creates a new service level agreement for the specified tenant.

### Example

```bash
 createServiceLevelAgreementAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **serviceLevelAgreementCreateDto** | [**ServiceLevelAgreementCreateDto**](ServiceLevelAgreementCreateDto.md) |  | [optional]

### Return type

[**Envelope**](Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteServiceLevelAgreementAsync

Delete a service level agreement

Deletes a service level agreement by its identifier.

### Example

```bash
 deleteServiceLevelAgreementAsync  tenantId=value serviceLevelAgreementId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **serviceLevelAgreementId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**Envelope**](Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getServiceLevelAgreementByIdAsync

Get a service level agreement by ID

Retrieves a service level agreement by its identifier.

### Example

```bash
 getServiceLevelAgreementByIdAsync  tenantId=value serviceLevelAgreementId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **serviceLevelAgreementId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ServiceLevelAgreementDtoEnvelope**](ServiceLevelAgreementDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getServiceLevelAgreementsAsync

Get all service level agreements

Retrieves all service level agreements for the specified tenant.

### Example

```bash
 getServiceLevelAgreementsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ServiceLevelAgreementDtoIReadOnlyListEnvelope**](ServiceLevelAgreementDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getServiceLevelAgreementsCountAsync

Get service level agreements count

Returns the count of service level agreements for the specified tenant.

### Example

```bash
 getServiceLevelAgreementsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchServiceLevelAgreementAsync

Patch a service level agreement

Partially updates an existing service level agreement using a JSON Patch document.

### Example

```bash
 patchServiceLevelAgreementAsync  tenantId=value serviceLevelAgreementId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **serviceLevelAgreementId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  | [optional]

### Return type

[**Envelope**](Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateServiceLevelAgreementAsync

Update a service level agreement

Updates an existing service level agreement.

### Example

```bash
 updateServiceLevelAgreementAsync  tenantId=value serviceLevelAgreementId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **serviceLevelAgreementId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **serviceLevelAgreementUpdateDto** | [**ServiceLevelAgreementUpdateDto**](ServiceLevelAgreementUpdateDto.md) |  | [optional]

### Return type

[**Envelope**](Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

