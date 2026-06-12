# TruckDriversApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**activateTruckDriverAsync**](TruckDriversApi.md#activateTruckDriverAsync) | **POST** /api/v2/LogisticsService/TruckDrivers/{driverId}/Activate | Activate a truck driver
[**createTruckDriverAsync**](TruckDriversApi.md#createTruckDriverAsync) | **POST** /api/v2/LogisticsService/TruckDrivers | Create a truck driver
[**deactivateTruckDriverAsync**](TruckDriversApi.md#deactivateTruckDriverAsync) | **POST** /api/v2/LogisticsService/TruckDrivers/{driverId}/Deactivate | Deactivate a truck driver
[**deleteTruckDriverAsync**](TruckDriversApi.md#deleteTruckDriverAsync) | **DELETE** /api/v2/LogisticsService/TruckDrivers/{driverId} | Delete a truck driver
[**getTruckDriverByIdAsync**](TruckDriversApi.md#getTruckDriverByIdAsync) | **GET** /api/v2/LogisticsService/TruckDrivers/{driverId} | Get truck driver by ID
[**getTruckDriversAsync**](TruckDriversApi.md#getTruckDriversAsync) | **GET** /api/v2/LogisticsService/TruckDrivers | Get all truck drivers
[**getTruckDriversCountAsync**](TruckDriversApi.md#getTruckDriversCountAsync) | **GET** /api/v2/LogisticsService/TruckDrivers/Count | Get truck drivers count
[**patchTruckDriverAsync**](TruckDriversApi.md#patchTruckDriverAsync) | **PATCH** /api/v2/LogisticsService/TruckDrivers/{driverId} | Patch a truck driver
[**updateTruckDriverAsync**](TruckDriversApi.md#updateTruckDriverAsync) | **PUT** /api/v2/LogisticsService/TruckDrivers/{driverId} | Update a truck driver



## activateTruckDriverAsync

Activate a truck driver

Activates a truck driver.

### Example

```bash
 activateTruckDriverAsync  tenantId=value driverId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **driverId** | **string** |  | [default to null]
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


## createTruckDriverAsync

Create a truck driver

Creates a new truck driver for the specified tenant.

### Example

```bash
 createTruckDriverAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **truckDriverCreateDto** | [**TruckDriverCreateDto**](TruckDriverCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deactivateTruckDriverAsync

Deactivate a truck driver

Deactivates a truck driver.

### Example

```bash
 deactivateTruckDriverAsync  tenantId=value driverId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **driverId** | **string** |  | [default to null]
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


## deleteTruckDriverAsync

Delete a truck driver

Deletes a truck driver.

### Example

```bash
 deleteTruckDriverAsync  tenantId=value driverId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **driverId** | **string** |  | [default to null]
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


## getTruckDriverByIdAsync

Get truck driver by ID

Retrieves a specific truck driver by its identifier.

### Example

```bash
 getTruckDriverByIdAsync  tenantId=value driverId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **driverId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TruckDriverDtoEnvelope**](TruckDriverDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTruckDriversAsync

Get all truck drivers

Retrieves all truck drivers for the specified tenant.

### Example

```bash
 getTruckDriversAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TruckDriverDtoListEnvelope**](TruckDriverDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTruckDriversCountAsync

Get truck drivers count

Returns the count of truck drivers for the specified tenant.

### Example

```bash
 getTruckDriversCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchTruckDriverAsync

Patch a truck driver

Partially updates an existing truck driver using JSON Patch.

### Example

```bash
 patchTruckDriverAsync  tenantId=value driverId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **driverId** | **string** |  | [default to null]
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


## updateTruckDriverAsync

Update a truck driver

Updates an existing truck driver.

### Example

```bash
 updateTruckDriverAsync  tenantId=value driverId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **driverId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **truckDriverUpdateDto** | [**TruckDriverUpdateDto**](TruckDriverUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

