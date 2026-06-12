# MaintenanceVisitsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMaintenanceVisitAsync**](MaintenanceVisitsApi.md#createMaintenanceVisitAsync) | **POST** /api/v2/SupportService/MaintenanceVisits | Create a maintenance visit
[**deleteMaintenanceVisitAsync**](MaintenanceVisitsApi.md#deleteMaintenanceVisitAsync) | **DELETE** /api/v2/SupportService/MaintenanceVisits/{maintenanceVisitId} | Delete a maintenance visit
[**getMaintenanceVisitAsync**](MaintenanceVisitsApi.md#getMaintenanceVisitAsync) | **GET** /api/v2/SupportService/MaintenanceVisits/{maintenanceVisitId} | Retrieve a maintenance visit by ID
[**getMaintenanceVisitsAsync**](MaintenanceVisitsApi.md#getMaintenanceVisitsAsync) | **GET** /api/v2/SupportService/MaintenanceVisits | Retrieve maintenance visits
[**getMaintenanceVisitsCountAsync**](MaintenanceVisitsApi.md#getMaintenanceVisitsCountAsync) | **GET** /api/v2/SupportService/MaintenanceVisits/Count | Get maintenance visits count
[**patchMaintenanceVisitAsync**](MaintenanceVisitsApi.md#patchMaintenanceVisitAsync) | **PATCH** /api/v2/SupportService/MaintenanceVisits/{maintenanceVisitId} | Patch a maintenance visit
[**updateMaintenanceVisitAsync**](MaintenanceVisitsApi.md#updateMaintenanceVisitAsync) | **PUT** /api/v2/SupportService/MaintenanceVisits/{maintenanceVisitId} | Update a maintenance visit



## createMaintenanceVisitAsync

Create a maintenance visit

### Example

```bash
 createMaintenanceVisitAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **maintenanceVisitCreateDto** | [**MaintenanceVisitCreateDto**](MaintenanceVisitCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteMaintenanceVisitAsync

Delete a maintenance visit

### Example

```bash
 deleteMaintenanceVisitAsync  tenantId=value maintenanceVisitId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **maintenanceVisitId** | **string** |  | [default to null]
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


## getMaintenanceVisitAsync

Retrieve a maintenance visit by ID

### Example

```bash
 getMaintenanceVisitAsync  tenantId=value maintenanceVisitId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **maintenanceVisitId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**MaintenanceVisitDtoEnvelope**](MaintenanceVisitDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getMaintenanceVisitsAsync

Retrieve maintenance visits

### Example

```bash
 getMaintenanceVisitsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**MaintenanceVisitDtoListEnvelope**](MaintenanceVisitDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getMaintenanceVisitsCountAsync

Get maintenance visits count

### Example

```bash
 getMaintenanceVisitsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchMaintenanceVisitAsync

Patch a maintenance visit

Partially updates an existing maintenance visit by its unique identifier.

### Example

```bash
 patchMaintenanceVisitAsync  tenantId=value maintenanceVisitId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **maintenanceVisitId** | **string** |  | [default to null]
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


## updateMaintenanceVisitAsync

Update a maintenance visit

### Example

```bash
 updateMaintenanceVisitAsync  tenantId=value maintenanceVisitId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **maintenanceVisitId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **body** | **map** |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

