# TimeIntervalsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTimeIntervalAsync**](TimeIntervalsApi.md#createTimeIntervalAsync) | **POST** /api/v2/HrmsService/TimeIntervals | Create a time interval
[**deleteTimeIntervalAsync**](TimeIntervalsApi.md#deleteTimeIntervalAsync) | **DELETE** /api/v2/HrmsService/TimeIntervals/{timeIntervalId} | Delete a time interval
[**getTimeIntervalByIdAsync**](TimeIntervalsApi.md#getTimeIntervalByIdAsync) | **GET** /api/v2/HrmsService/TimeIntervals/{timeIntervalId} | Get time interval by ID
[**getTimeIntervalsAsync**](TimeIntervalsApi.md#getTimeIntervalsAsync) | **GET** /api/v2/HrmsService/TimeIntervals | Get time intervals
[**getTimeIntervalsCountAsync**](TimeIntervalsApi.md#getTimeIntervalsCountAsync) | **GET** /api/v2/HrmsService/TimeIntervals/Count | Count time intervals
[**patchTimeIntervalAsync**](TimeIntervalsApi.md#patchTimeIntervalAsync) | **PATCH** /api/v2/HrmsService/TimeIntervals/{timeIntervalId} | Patch a time interval
[**updateTimeIntervalAsync**](TimeIntervalsApi.md#updateTimeIntervalAsync) | **PUT** /api/v2/HrmsService/TimeIntervals/{timeIntervalId} | Update a time interval



## createTimeIntervalAsync

Create a time interval

Creates a new time interval for the specified tenant.

### Example

```bash
 createTimeIntervalAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **timeIntervalCreateDto** | [**TimeIntervalCreateDto**](TimeIntervalCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteTimeIntervalAsync

Delete a time interval

Deletes a time interval for the specified tenant.

### Example

```bash
 deleteTimeIntervalAsync  tenantId=value timeIntervalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **timeIntervalId** | **string** |  | [default to null]
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


## getTimeIntervalByIdAsync

Get time interval by ID

Retrieves a specific time interval by its identifier.

### Example

```bash
 getTimeIntervalByIdAsync  tenantId=value timeIntervalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **timeIntervalId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TimeIntervalDtoEnvelope**](TimeIntervalDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTimeIntervalsAsync

Get time intervals

Retrieves time intervals for the specified tenant.

### Example

```bash
 getTimeIntervalsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TimeIntervalDtoListEnvelope**](TimeIntervalDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTimeIntervalsCountAsync

Count time intervals

Counts time intervals for the specified tenant.

### Example

```bash
 getTimeIntervalsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchTimeIntervalAsync

Patch a time interval

Partially updates an existing time interval for the specified tenant.

### Example

```bash
 patchTimeIntervalAsync  tenantId=value timeIntervalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **timeIntervalId** | **string** |  | [default to null]
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


## updateTimeIntervalAsync

Update a time interval

Updates an existing time interval for the specified tenant.

### Example

```bash
 updateTimeIntervalAsync  tenantId=value timeIntervalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **timeIntervalId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **timeIntervalUpdateDto** | [**TimeIntervalUpdateDto**](TimeIntervalUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

