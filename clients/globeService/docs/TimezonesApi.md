# TimezonesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countTimezonesAsync**](TimezonesApi.md#countTimezonesAsync) | **GET** /api/v2/GlobeService/Timezones/Count | Count timezones
[**getTimeZoneByIdAsync**](TimezonesApi.md#getTimeZoneByIdAsync) | **GET** /api/v2/GlobeService/Timezones/{timeZoneId} | Get timezone by ID
[**getTimeZonesAsync**](TimezonesApi.md#getTimeZonesAsync) | **GET** /api/v2/GlobeService/Timezones | Get all timezones



## countTimezonesAsync

Count timezones

Returns the total number of supported timezones, with optional OData filtering.

### Example

```bash
 countTimezonesAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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


## getTimeZoneByIdAsync

Get timezone by ID

Retrieves a single timezone by its unique identifier.

### Example

```bash
 getTimeZoneByIdAsync timeZoneId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeZoneId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TimezoneDtoEnvelope**](TimezoneDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTimeZonesAsync

Get all timezones

Retrieves the list of all supported timezones with optional OData pagination and filtering.

### Example

```bash
 getTimeZonesAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TimezoneDtoListEnvelope**](TimezoneDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

