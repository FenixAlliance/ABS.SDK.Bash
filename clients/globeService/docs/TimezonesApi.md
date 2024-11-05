# TimezonesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2GlobeServiceTimezonesGet**](TimezonesApi.md#apiV2GlobeServiceTimezonesGet) | **GET** /api/v2/GlobeService/Timezones | 
[**apiV2GlobeServiceTimezonesTimeZoneIdGet**](TimezonesApi.md#apiV2GlobeServiceTimezonesTimeZoneIdGet) | **GET** /api/v2/GlobeService/Timezones/{timeZoneId} | 



## apiV2GlobeServiceTimezonesGet



### Example

```bash
 apiV2GlobeServiceTimezonesGet  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TimezoneDtoListEnvelope**](TimezoneDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2GlobeServiceTimezonesTimeZoneIdGet



### Example

```bash
 apiV2GlobeServiceTimezonesTimeZoneIdGet timeZoneId=value  api-version=value x-api-version:value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

