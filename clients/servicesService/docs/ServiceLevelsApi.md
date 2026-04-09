# ServiceLevelsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countAllServiceLevelsAsync**](ServiceLevelsApi.md#countAllServiceLevelsAsync) | **GET** /api/v2/ServicesService/ServiceLevels/Count | Get all service levels count
[**createServiceLevelAsync**](ServiceLevelsApi.md#createServiceLevelAsync) | **POST** /api/v2/ServicesService/Services/{serviceId}/ServiceLevels | Create a service level
[**deleteServiceLevelAsync**](ServiceLevelsApi.md#deleteServiceLevelAsync) | **DELETE** /api/v2/ServicesService/Services/{serviceId}/ServiceLevels/{serviceLevelId} | Delete a service level
[**getAllServiceLevelsAsync**](ServiceLevelsApi.md#getAllServiceLevelsAsync) | **GET** /api/v2/ServicesService/ServiceLevels | Get all service levels
[**getServiceLevelByIdAsync**](ServiceLevelsApi.md#getServiceLevelByIdAsync) | **GET** /api/v2/ServicesService/Services/{serviceId}/ServiceLevels/{serviceLevelId} | Get a service level by ID
[**getServiceLevelsAsync**](ServiceLevelsApi.md#getServiceLevelsAsync) | **GET** /api/v2/ServicesService/Services/{serviceId}/ServiceLevels | Get all service levels
[**getServiceLevelsCountAsync**](ServiceLevelsApi.md#getServiceLevelsCountAsync) | **GET** /api/v2/ServicesService/Services/{serviceId}/ServiceLevels/Count | Get service levels count
[**updateServiceLevelAsync**](ServiceLevelsApi.md#updateServiceLevelAsync) | **PUT** /api/v2/ServicesService/Services/{serviceId}/ServiceLevels/{serviceLevelId} | Update a service level



## countAllServiceLevelsAsync

Get all service levels count

Returns the count of all service levels for the specified tenant.

### Example

```bash
 countAllServiceLevelsAsync  tenantId=value  api-version=value x-api-version:value
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


## createServiceLevelAsync

Create a service level

Creates a new service level for the specified service.

### Example

```bash
 createServiceLevelAsync  tenantId=value serviceId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **serviceId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **serviceLevelCreateDto** | [**ServiceLevelCreateDto**](ServiceLevelCreateDto.md) |  | [optional]

### Return type

[**Envelope**](Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteServiceLevelAsync

Delete a service level

Deletes a service level by its identifier.

### Example

```bash
 deleteServiceLevelAsync  tenantId=value serviceId=value serviceLevelId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **serviceId** | **string** |  | [default to null]
 **serviceLevelId** | **string** |  | [default to null]
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


## getAllServiceLevelsAsync

Get all service levels

Retrieves all service levels for the specified tenant.

### Example

```bash
 getAllServiceLevelsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ServiceLevelDtoIReadOnlyListEnvelope**](ServiceLevelDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getServiceLevelByIdAsync

Get a service level by ID

Retrieves a service level by its identifier.

### Example

```bash
 getServiceLevelByIdAsync  tenantId=value serviceId=value serviceLevelId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **serviceId** | **string** |  | [default to null]
 **serviceLevelId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ServiceLevelDtoEnvelope**](ServiceLevelDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getServiceLevelsAsync

Get all service levels

Retrieves all service levels for the specified service.

### Example

```bash
 getServiceLevelsAsync  tenantId=value serviceId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **serviceId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ServiceLevelDtoIReadOnlyListEnvelope**](ServiceLevelDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getServiceLevelsCountAsync

Get service levels count

Returns the count of service levels for the specified service.

### Example

```bash
 getServiceLevelsCountAsync  tenantId=value serviceId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **serviceId** | **string** |  | [default to null]
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


## updateServiceLevelAsync

Update a service level

Updates an existing service level.

### Example

```bash
 updateServiceLevelAsync  tenantId=value serviceId=value serviceLevelId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **serviceId** | **string** |  | [default to null]
 **serviceLevelId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **serviceLevelUpdateDto** | [**ServiceLevelUpdateDto**](ServiceLevelUpdateDto.md) |  | [optional]

### Return type

[**Envelope**](Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

