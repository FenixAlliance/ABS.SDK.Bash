# TrainingProgramsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTrainingProgramAsync**](TrainingProgramsApi.md#createTrainingProgramAsync) | **POST** /api/v2/HrmsService/TrainingPrograms | Create a training program
[**deleteTrainingProgramAsync**](TrainingProgramsApi.md#deleteTrainingProgramAsync) | **DELETE** /api/v2/HrmsService/TrainingPrograms/{programId} | Delete a training program
[**getTrainingProgramByIdAsync**](TrainingProgramsApi.md#getTrainingProgramByIdAsync) | **GET** /api/v2/HrmsService/TrainingPrograms/{programId} | Get training program by ID
[**getTrainingProgramsAsync**](TrainingProgramsApi.md#getTrainingProgramsAsync) | **GET** /api/v2/HrmsService/TrainingPrograms | Get training programs
[**getTrainingProgramsCountAsync**](TrainingProgramsApi.md#getTrainingProgramsCountAsync) | **GET** /api/v2/HrmsService/TrainingPrograms/Count | Count training programs
[**updateTrainingProgramAsync**](TrainingProgramsApi.md#updateTrainingProgramAsync) | **PUT** /api/v2/HrmsService/TrainingPrograms/{programId} | Update a training program



## createTrainingProgramAsync

Create a training program

Creates a new training program for the specified tenant.

### Example

```bash
 createTrainingProgramAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **trainingProgramCreateDto** | [**TrainingProgramCreateDto**](TrainingProgramCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteTrainingProgramAsync

Delete a training program

Deletes a training program for the specified tenant.

### Example

```bash
 deleteTrainingProgramAsync  tenantId=value programId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **programId** | **string** |  | [default to null]
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


## getTrainingProgramByIdAsync

Get training program by ID

Retrieves a specific training program by its identifier.

### Example

```bash
 getTrainingProgramByIdAsync  tenantId=value programId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **programId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TrainingProgramDtoEnvelope**](TrainingProgramDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTrainingProgramsAsync

Get training programs

Retrieves training programs for the specified tenant.

### Example

```bash
 getTrainingProgramsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TrainingProgramDtoListEnvelope**](TrainingProgramDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTrainingProgramsCountAsync

Count training programs

Counts training programs for the specified tenant.

### Example

```bash
 getTrainingProgramsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## updateTrainingProgramAsync

Update a training program

Updates an existing training program for the specified tenant.

### Example

```bash
 updateTrainingProgramAsync  tenantId=value programId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **programId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **trainingProgramUpdateDto** | [**TrainingProgramUpdateDto**](TrainingProgramUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

