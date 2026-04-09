# LocationsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLocationAsync**](LocationsApi.md#createLocationAsync) | **POST** /api/v2/LocationsService/Locations | Create Location
[**createWalletLocationAsync**](LocationsApi.md#createWalletLocationAsync) | **POST** /api/v2/LocationsService/Locations/wallet/{walletId} | Create Wallet Location
[**deleteLocationAsync**](LocationsApi.md#deleteLocationAsync) | **DELETE** /api/v2/LocationsService/Locations/{locationId} | Delete Location
[**deleteWalletLocationAsync**](LocationsApi.md#deleteWalletLocationAsync) | **DELETE** /api/v2/LocationsService/Locations/wallet/{walletId}/{locationId} | Delete Wallet Location
[**getLocationAsync**](LocationsApi.md#getLocationAsync) | **GET** /api/v2/LocationsService/Locations/{locationId} | Get Location
[**getLocationsAsync**](LocationsApi.md#getLocationsAsync) | **GET** /api/v2/LocationsService/Locations | Get Locations
[**getLocationsCountAsync**](LocationsApi.md#getLocationsCountAsync) | **GET** /api/v2/LocationsService/Locations/count | Get Locations Count
[**getWalletLocationAsync**](LocationsApi.md#getWalletLocationAsync) | **GET** /api/v2/LocationsService/Locations/wallet/{walletId}/{locationId} | Get Wallet Location
[**getWalletLocationsAsync**](LocationsApi.md#getWalletLocationsAsync) | **GET** /api/v2/LocationsService/Locations/wallet/{walletId} | Get Wallet Locations
[**getWalletLocationsCountAsync**](LocationsApi.md#getWalletLocationsCountAsync) | **GET** /api/v2/LocationsService/Locations/wallet/{walletId}/count | Get Wallet Locations Count
[**updateLocationAsync**](LocationsApi.md#updateLocationAsync) | **PUT** /api/v2/LocationsService/Locations/{locationId} | Update Location
[**updateWalletLocationAsync**](LocationsApi.md#updateWalletLocationAsync) | **PUT** /api/v2/LocationsService/Locations/wallet/{walletId}/{locationId} | Update Wallet Location



## createLocationAsync

Create Location

Create a new location.

### Example

```bash
 createLocationAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **locationCreateDto** | [**LocationCreateDto**](LocationCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createWalletLocationAsync

Create Wallet Location

Create a new location for a specific wallet.

### Example

```bash
 createWalletLocationAsync walletId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **walletId** | **string** |  | [default to null]
 **locationCreateDto** | [**LocationCreateDto**](LocationCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteLocationAsync

Delete Location

Delete a specific location by ID.

### Example

```bash
 deleteLocationAsync  tenantId=value locationId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **locationId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteWalletLocationAsync

Delete Wallet Location

Delete a specific location of a wallet.

### Example

```bash
 deleteWalletLocationAsync walletId=value locationId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **walletId** | **string** |  | [default to null]
 **locationId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getLocationAsync

Get Location

Get details of a specific location by ID.

### Example

```bash
 getLocationAsync  tenantId=value locationId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **locationId** | **string** |  | [default to null]

### Return type

[**LocationDtoEnvelope**](LocationDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getLocationsAsync

Get Locations

Get all locations with OData query support.

### Example

```bash
 getLocationsAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**LocationDtoIReadOnlyListEnvelope**](LocationDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getLocationsCountAsync

Get Locations Count

Get the count of locations with OData query support.

### Example

```bash
 getLocationsCountAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getWalletLocationAsync

Get Wallet Location

Get a specific location of a wallet by ID.

### Example

```bash
 getWalletLocationAsync walletId=value locationId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **walletId** | **string** |  | [default to null]
 **locationId** | **string** |  | [default to null]

### Return type

[**LocationDtoEnvelope**](LocationDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getWalletLocationsAsync

Get Wallet Locations

Get locations for a specific wallet by ID.

### Example

```bash
 getWalletLocationsAsync walletId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **walletId** | **string** |  | [default to null]

### Return type

[**LocationDtoIReadOnlyListEnvelope**](LocationDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getWalletLocationsCountAsync

Get Wallet Locations Count

Get the count of locations for a specific wallet by ID.

### Example

```bash
 getWalletLocationsCountAsync walletId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **walletId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateLocationAsync

Update Location

Update a specific location by ID.

### Example

```bash
 updateLocationAsync  tenantId=value locationId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **locationId** | **string** |  | [default to null]
 **locationUpdateDto** | [**LocationUpdateDto**](LocationUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateWalletLocationAsync

Update Wallet Location

Update a specific location of a wallet.

### Example

```bash
 updateWalletLocationAsync walletId=value locationId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **walletId** | **string** |  | [default to null]
 **locationId** | **string** |  | [default to null]
 **locationUpdateDto** | [**LocationUpdateDto**](LocationUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

