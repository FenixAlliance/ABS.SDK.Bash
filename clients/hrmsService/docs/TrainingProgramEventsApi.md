# TrainingProgramEventsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTrainingProgramEventAsync**](TrainingProgramEventsApi.md#createTrainingProgramEventAsync) | **POST** /api/v2/HrmsService/TrainingProgramEvents | Create a training program event
[**deleteTrainingProgramEventAsync**](TrainingProgramEventsApi.md#deleteTrainingProgramEventAsync) | **DELETE** /api/v2/HrmsService/TrainingProgramEvents/{eventId} | Delete a training program event
[**getTrainingProgramEventByIdAsync**](TrainingProgramEventsApi.md#getTrainingProgramEventByIdAsync) | **GET** /api/v2/HrmsService/TrainingProgramEvents/{eventId} | Get training program event by ID
[**getTrainingProgramEventsAsync**](TrainingProgramEventsApi.md#getTrainingProgramEventsAsync) | **GET** /api/v2/HrmsService/TrainingProgramEvents | Get training program events
[**getTrainingProgramEventsCountAsync**](TrainingProgramEventsApi.md#getTrainingProgramEventsCountAsync) | **GET** /api/v2/HrmsService/TrainingProgramEvents/Count | Count training program events
[**patchTrainingProgramEventAsync**](TrainingProgramEventsApi.md#patchTrainingProgramEventAsync) | **PATCH** /api/v2/HrmsService/TrainingProgramEvents/{eventId} | Patch a training program event
[**updateTrainingProgramEventAsync**](TrainingProgramEventsApi.md#updateTrainingProgramEventAsync) | **PUT** /api/v2/HrmsService/TrainingProgramEvents/{eventId} | Update a training program event



## createTrainingProgramEventAsync

Create a training program event

Creates a new training program event for the specified tenant.

### Example

```bash
 createTrainingProgramEventAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **trainingProgramEventCreateDto** | [**TrainingProgramEventCreateDto**](TrainingProgramEventCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteTrainingProgramEventAsync

Delete a training program event

Deletes a training program event for the specified tenant.

### Example

```bash
 deleteTrainingProgramEventAsync  tenantId=value eventId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **eventId** | **string** |  | [default to null]
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


## getTrainingProgramEventByIdAsync

Get training program event by ID

Retrieves a specific training program event by its identifier.

### Example

```bash
 getTrainingProgramEventByIdAsync  tenantId=value eventId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **eventId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TrainingProgramEventDtoEnvelope**](TrainingProgramEventDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTrainingProgramEventsAsync

Get training program events

Retrieves training program events for the specified tenant.

### Example

```bash
 getTrainingProgramEventsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TrainingProgramEventDtoListEnvelope**](TrainingProgramEventDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTrainingProgramEventsCountAsync

Count training program events

Counts training program events for the specified tenant.

### Example

```bash
 getTrainingProgramEventsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchTrainingProgramEventAsync

Patch a training program event

Partially updates an existing training program event for the specified tenant.

### Example

```bash
 patchTrainingProgramEventAsync  tenantId=value eventId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **eventId** | **string** |  | [default to null]
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


## updateTrainingProgramEventAsync

Update a training program event

Updates an existing training program event for the specified tenant.

### Example

```bash
 updateTrainingProgramEventAsync  tenantId=value eventId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **eventId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **trainingProgramEventUpdateDto** | [**TrainingProgramEventUpdateDto**](TrainingProgramEventUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

