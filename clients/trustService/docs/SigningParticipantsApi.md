# SigningParticipantsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSigningParticipantByIdAsync**](SigningParticipantsApi.md#getSigningParticipantByIdAsync) | **GET** /api/v2/TrustService/SigningParticipants/{id} | Get signing participant by ID
[**getSigningParticipantsAsync**](SigningParticipantsApi.md#getSigningParticipantsAsync) | **GET** /api/v2/TrustService/SigningParticipants | Get all signing participants
[**getSigningParticipantsCountAsync**](SigningParticipantsApi.md#getSigningParticipantsCountAsync) | **GET** /api/v2/TrustService/SigningParticipants/Count | Get signing participants count
[**markViewedAsync**](SigningParticipantsApi.md#markViewedAsync) | **POST** /api/v2/TrustService/SigningParticipants/{id}/viewed | Mark a participant as having viewed the request
[**recordOutcomeAsync**](SigningParticipantsApi.md#recordOutcomeAsync) | **POST** /api/v2/TrustService/SigningParticipants/{id}/outcome | Record a manual/external participant outcome



## getSigningParticipantByIdAsync

Get signing participant by ID

### Example

```bash
 getSigningParticipantByIdAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SigningParticipantDto**](SigningParticipantDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSigningParticipantsAsync

Get all signing participants

### Example

```bash
 getSigningParticipantsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **signingParticipantDtoCollectionQueryParameters** | [**SigningParticipantDtoCollectionQueryParameters**](SigningParticipantDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**SigningParticipantDtoListEnvelope**](SigningParticipantDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSigningParticipantsCountAsync

Get signing participants count

### Example

```bash
 getSigningParticipantsCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **signingParticipantDtoCollectionQueryParameters** | [**SigningParticipantDtoCollectionQueryParameters**](SigningParticipantDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## markViewedAsync

Mark a participant as having viewed the request

### Example

```bash
 markViewedAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## recordOutcomeAsync

Record a manual/external participant outcome

### Example

```bash
 recordOutcomeAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **recordSigningParticipantOutcomeDto** | [**RecordSigningParticipantOutcomeDto**](RecordSigningParticipantOutcomeDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

