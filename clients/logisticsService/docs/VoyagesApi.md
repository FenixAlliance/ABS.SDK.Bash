# VoyagesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelVoyageAsync**](VoyagesApi.md#cancelVoyageAsync) | **POST** /api/v2/LogisticsService/Voyages/{voyageId}/Cancel | Cancel a voyage
[**completeVoyageAsync**](VoyagesApi.md#completeVoyageAsync) | **POST** /api/v2/LogisticsService/Voyages/{voyageId}/Complete | Complete a voyage
[**createVoyageAsync**](VoyagesApi.md#createVoyageAsync) | **POST** /api/v2/LogisticsService/Voyages | Create a voyage
[**createVoyagePortCallAsync**](VoyagesApi.md#createVoyagePortCallAsync) | **POST** /api/v2/LogisticsService/Voyages/{voyageId}/PortCalls | Create a port call
[**deleteVoyageAsync**](VoyagesApi.md#deleteVoyageAsync) | **DELETE** /api/v2/LogisticsService/Voyages/{voyageId} | Delete a voyage
[**deleteVoyagePortCallAsync**](VoyagesApi.md#deleteVoyagePortCallAsync) | **DELETE** /api/v2/LogisticsService/Voyages/{voyageId}/PortCalls/{portCallId} | Delete a port call
[**getVoyageByIdAsync**](VoyagesApi.md#getVoyageByIdAsync) | **GET** /api/v2/LogisticsService/Voyages/{voyageId} | Get voyage by ID
[**getVoyagePortCallsAsync**](VoyagesApi.md#getVoyagePortCallsAsync) | **GET** /api/v2/LogisticsService/Voyages/{voyageId}/PortCalls | Get voyage port calls
[**getVoyagePortCallsCountAsync**](VoyagesApi.md#getVoyagePortCallsCountAsync) | **GET** /api/v2/LogisticsService/Voyages/{voyageId}/PortCalls/Count | Get voyage port calls count
[**getVoyagesAsync**](VoyagesApi.md#getVoyagesAsync) | **GET** /api/v2/LogisticsService/Voyages | Get all voyages
[**getVoyagesCountAsync**](VoyagesApi.md#getVoyagesCountAsync) | **GET** /api/v2/LogisticsService/Voyages/Count | Get voyages count
[**patchVoyageAsync**](VoyagesApi.md#patchVoyageAsync) | **PATCH** /api/v2/LogisticsService/Voyages/{voyageId} | Patch a voyage
[**patchVoyagePortCallAsync**](VoyagesApi.md#patchVoyagePortCallAsync) | **PATCH** /api/v2/LogisticsService/Voyages/{voyageId}/PortCalls/{portCallId} | Patch a voyage port call
[**startVoyageAsync**](VoyagesApi.md#startVoyageAsync) | **POST** /api/v2/LogisticsService/Voyages/{voyageId}/Start | Start a voyage
[**updateVoyageAsync**](VoyagesApi.md#updateVoyageAsync) | **PUT** /api/v2/LogisticsService/Voyages/{voyageId} | Update a voyage
[**updateVoyagePortCallAsync**](VoyagesApi.md#updateVoyagePortCallAsync) | **PUT** /api/v2/LogisticsService/Voyages/{voyageId}/PortCalls/{portCallId} | Update a port call



## cancelVoyageAsync

Cancel a voyage

Cancels a voyage.

### Example

```bash
 cancelVoyageAsync  tenantId=value voyageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **voyageId** | **string** |  | [default to null]
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


## completeVoyageAsync

Complete a voyage

Marks a voyage as completed.

### Example

```bash
 completeVoyageAsync  tenantId=value voyageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **voyageId** | **string** |  | [default to null]
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


## createVoyageAsync

Create a voyage

Creates a new voyage for the specified tenant.

### Example

```bash
 createVoyageAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **voyageCreateDto** | [**VoyageCreateDto**](VoyageCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createVoyagePortCallAsync

Create a port call

Creates a new port call for a voyage.

### Example

```bash
 createVoyagePortCallAsync  tenantId=value voyageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **voyageId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **voyagePortCallCreateDto** | [**VoyagePortCallCreateDto**](VoyagePortCallCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteVoyageAsync

Delete a voyage

Deletes a voyage.

### Example

```bash
 deleteVoyageAsync  tenantId=value voyageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **voyageId** | **string** |  | [default to null]
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


## deleteVoyagePortCallAsync

Delete a port call

Deletes a port call.

### Example

```bash
 deleteVoyagePortCallAsync  tenantId=value voyageId=value portCallId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **voyageId** | **string** |  | [default to null]
 **portCallId** | **string** |  | [default to null]
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


## getVoyageByIdAsync

Get voyage by ID

Retrieves a specific voyage by its identifier.

### Example

```bash
 getVoyageByIdAsync  tenantId=value voyageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **voyageId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**VoyageDtoEnvelope**](VoyageDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getVoyagePortCallsAsync

Get voyage port calls

Retrieves all port calls for a specific voyage.

### Example

```bash
 getVoyagePortCallsAsync  tenantId=value voyageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **voyageId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**VoyagePortCallDtoListEnvelope**](VoyagePortCallDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getVoyagePortCallsCountAsync

Get voyage port calls count

Returns the count of port calls for a specific voyage.

### Example

```bash
 getVoyagePortCallsCountAsync  tenantId=value voyageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **voyageId** | **string** |  | [default to null]
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


## getVoyagesAsync

Get all voyages

Retrieves all voyages for the specified tenant.

### Example

```bash
 getVoyagesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**VoyageDtoListEnvelope**](VoyageDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getVoyagesCountAsync

Get voyages count

Returns the count of voyages for the specified tenant.

### Example

```bash
 getVoyagesCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchVoyageAsync

Patch a voyage

Partially updates an existing voyage using JSON Patch.

### Example

```bash
 patchVoyageAsync  tenantId=value voyageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **voyageId** | **string** |  | [default to null]
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


## patchVoyagePortCallAsync

Patch a voyage port call

Partially updates an existing voyage port call using JSON Patch.

### Example

```bash
 patchVoyagePortCallAsync  tenantId=value voyageId=value portCallId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **voyageId** | **string** |  | [default to null]
 **portCallId** | **string** |  | [default to null]
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


## startVoyageAsync

Start a voyage

Starts a voyage.

### Example

```bash
 startVoyageAsync  tenantId=value voyageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **voyageId** | **string** |  | [default to null]
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


## updateVoyageAsync

Update a voyage

Updates an existing voyage.

### Example

```bash
 updateVoyageAsync  tenantId=value voyageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **voyageId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **voyageUpdateDto** | [**VoyageUpdateDto**](VoyageUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateVoyagePortCallAsync

Update a port call

Updates an existing port call.

### Example

```bash
 updateVoyagePortCallAsync  tenantId=value voyageId=value portCallId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **voyageId** | **string** |  | [default to null]
 **portCallId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **voyagePortCallUpdateDto** | [**VoyagePortCallUpdateDto**](VoyagePortCallUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

