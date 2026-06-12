# ShippingZonesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createShippingZoneAsync**](ShippingZonesApi.md#createShippingZoneAsync) | **POST** /api/v2/ShipmentsService/ShippingZones | Create a shipping zone
[**deleteShippingZoneAsync**](ShippingZonesApi.md#deleteShippingZoneAsync) | **DELETE** /api/v2/ShipmentsService/ShippingZones/{zoneId} | Delete a shipping zone
[**getShippingZoneByIdAsync**](ShippingZonesApi.md#getShippingZoneByIdAsync) | **GET** /api/v2/ShipmentsService/ShippingZones/{zoneId} | Get shipping zone by ID
[**getShippingZonesAsync**](ShippingZonesApi.md#getShippingZonesAsync) | **GET** /api/v2/ShipmentsService/ShippingZones | Get all shipping zones
[**getShippingZonesCountAsync**](ShippingZonesApi.md#getShippingZonesCountAsync) | **GET** /api/v2/ShipmentsService/ShippingZones/Count | Get shipping zones count
[**patchShippingZoneAsync**](ShippingZonesApi.md#patchShippingZoneAsync) | **PATCH** /api/v2/ShipmentsService/ShippingZones/{zoneId} | Patch a shipping zone
[**updateShippingZoneAsync**](ShippingZonesApi.md#updateShippingZoneAsync) | **PUT** /api/v2/ShipmentsService/ShippingZones/{zoneId} | Update a shipping zone



## createShippingZoneAsync

Create a shipping zone

Creates a new shipping zone.

### Example

```bash
 createShippingZoneAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **shippingZoneCreateDto** | [**ShippingZoneCreateDto**](ShippingZoneCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteShippingZoneAsync

Delete a shipping zone

Deletes a shipping zone.

### Example

```bash
 deleteShippingZoneAsync  tenantId=value zoneId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **zoneId** | **string** |  | [default to null]
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


## getShippingZoneByIdAsync

Get shipping zone by ID

Retrieves a specific shipping zone.

### Example

```bash
 getShippingZoneByIdAsync  tenantId=value zoneId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **zoneId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ShippingZoneDtoEnvelope**](ShippingZoneDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getShippingZonesAsync

Get all shipping zones

Retrieves all shipping zones for the specified tenant.

### Example

```bash
 getShippingZonesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ShippingZoneDtoListEnvelope**](ShippingZoneDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getShippingZonesCountAsync

Get shipping zones count

Returns the count of shipping zones.

### Example

```bash
 getShippingZonesCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchShippingZoneAsync

Patch a shipping zone

Partially updates an existing shipping zone using JSON Patch.

### Example

```bash
 patchShippingZoneAsync  tenantId=value zoneId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **zoneId** | **string** |  | [default to null]
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


## updateShippingZoneAsync

Update a shipping zone

Updates an existing shipping zone.

### Example

```bash
 updateShippingZoneAsync  tenantId=value zoneId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **zoneId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **shippingZoneUpdateDto** | [**ShippingZoneUpdateDto**](ShippingZoneUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

