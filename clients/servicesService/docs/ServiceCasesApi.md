# ServiceCasesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createServiceCaseAsync**](ServiceCasesApi.md#createServiceCaseAsync) | **POST** /api/v2/ServicesService/ServiceCases | Create a service case
[**deleteServiceCaseAsync**](ServiceCasesApi.md#deleteServiceCaseAsync) | **DELETE** /api/v2/ServicesService/ServiceCases/{serviceCaseId} | Delete a service case
[**getServiceCaseByIdAsync**](ServiceCasesApi.md#getServiceCaseByIdAsync) | **GET** /api/v2/ServicesService/ServiceCases/{serviceCaseId} | Get a service case by ID
[**getServiceCasesAsync**](ServiceCasesApi.md#getServiceCasesAsync) | **GET** /api/v2/ServicesService/ServiceCases | Get all service cases
[**getServiceCasesCountAsync**](ServiceCasesApi.md#getServiceCasesCountAsync) | **GET** /api/v2/ServicesService/ServiceCases/Count | Get service cases count
[**updateServiceCaseAsync**](ServiceCasesApi.md#updateServiceCaseAsync) | **PUT** /api/v2/ServicesService/ServiceCases/{serviceCaseId} | Update a service case



## createServiceCaseAsync

Create a service case

Creates a new service case for the specified tenant.

### Example

```bash
 createServiceCaseAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **serviceCaseCreateDto** | [**ServiceCaseCreateDto**](ServiceCaseCreateDto.md) |  | [optional]

### Return type

[**Envelope**](Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteServiceCaseAsync

Delete a service case

Deletes a service case by its identifier.

### Example

```bash
 deleteServiceCaseAsync  tenantId=value serviceCaseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **serviceCaseId** | **string** |  | [default to null]
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


## getServiceCaseByIdAsync

Get a service case by ID

Retrieves a service case by its identifier.

### Example

```bash
 getServiceCaseByIdAsync  tenantId=value serviceCaseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **serviceCaseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ServiceCaseDtoEnvelope**](ServiceCaseDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getServiceCasesAsync

Get all service cases

Retrieves all service cases for the specified tenant.

### Example

```bash
 getServiceCasesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ServiceCaseDtoIReadOnlyListEnvelope**](ServiceCaseDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getServiceCasesCountAsync

Get service cases count

Returns the count of service cases for the specified tenant.

### Example

```bash
 getServiceCasesCountAsync  tenantId=value  api-version=value x-api-version:value
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


## updateServiceCaseAsync

Update a service case

Updates an existing service case.

### Example

```bash
 updateServiceCaseAsync  tenantId=value serviceCaseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **serviceCaseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **serviceCaseUpdateDto** | [**ServiceCaseUpdateDto**](ServiceCaseUpdateDto.md) |  | [optional]

### Return type

[**Envelope**](Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

