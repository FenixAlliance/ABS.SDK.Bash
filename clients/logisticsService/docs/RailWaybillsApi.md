# RailWaybillsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**addRailWaybillLineAsync**](RailWaybillsApi.md#addRailWaybillLineAsync) | **POST** /api/v2/LogisticsService/RailWaybills/{waybillId}/Lines | Add a line to rail waybill
[**cancelRailWaybillAsync**](RailWaybillsApi.md#cancelRailWaybillAsync) | **POST** /api/v2/LogisticsService/RailWaybills/{waybillId}/Cancel | Cancel a rail waybill
[**createRailWaybillAsync**](RailWaybillsApi.md#createRailWaybillAsync) | **POST** /api/v2/LogisticsService/RailWaybills | Create a rail waybill
[**deleteRailWaybillAsync**](RailWaybillsApi.md#deleteRailWaybillAsync) | **DELETE** /api/v2/LogisticsService/RailWaybills/{waybillId} | Delete a rail waybill
[**getRailWaybillByIdAsync**](RailWaybillsApi.md#getRailWaybillByIdAsync) | **GET** /api/v2/LogisticsService/RailWaybills/{waybillId} | Get rail waybill by ID
[**getRailWaybillLinesAsync**](RailWaybillsApi.md#getRailWaybillLinesAsync) | **GET** /api/v2/LogisticsService/RailWaybills/{waybillId}/Lines | Get rail waybill lines
[**getRailWaybillLinesCountAsync**](RailWaybillsApi.md#getRailWaybillLinesCountAsync) | **GET** /api/v2/LogisticsService/RailWaybills/{waybillId}/Lines/Count | Get rail waybill lines count
[**getRailWaybillsAsync**](RailWaybillsApi.md#getRailWaybillsAsync) | **GET** /api/v2/LogisticsService/RailWaybills | Get all rail waybills
[**getRailWaybillsCountAsync**](RailWaybillsApi.md#getRailWaybillsCountAsync) | **GET** /api/v2/LogisticsService/RailWaybills/Count | Get rail waybills count
[**issueRailWaybillAsync**](RailWaybillsApi.md#issueRailWaybillAsync) | **POST** /api/v2/LogisticsService/RailWaybills/{waybillId}/Issue | Issue a rail waybill
[**markRailWaybillDeliveredAsync**](RailWaybillsApi.md#markRailWaybillDeliveredAsync) | **POST** /api/v2/LogisticsService/RailWaybills/{waybillId}/MarkDelivered | Mark rail waybill delivered
[**markRailWaybillInTransitAsync**](RailWaybillsApi.md#markRailWaybillInTransitAsync) | **POST** /api/v2/LogisticsService/RailWaybills/{waybillId}/MarkInTransit | Mark rail waybill in transit
[**patchRailWaybillAsync**](RailWaybillsApi.md#patchRailWaybillAsync) | **PATCH** /api/v2/LogisticsService/RailWaybills/{waybillId} | Patch a rail waybill
[**patchRailWaybillLineAsync**](RailWaybillsApi.md#patchRailWaybillLineAsync) | **PATCH** /api/v2/LogisticsService/RailWaybills/{waybillId}/Lines/{lineId} | Patch a rail waybill line
[**removeRailWaybillLineAsync**](RailWaybillsApi.md#removeRailWaybillLineAsync) | **DELETE** /api/v2/LogisticsService/RailWaybills/{waybillId}/Lines/{lineId} | Remove a rail waybill line
[**updateRailWaybillAsync**](RailWaybillsApi.md#updateRailWaybillAsync) | **PUT** /api/v2/LogisticsService/RailWaybills/{waybillId} | Update a rail waybill
[**updateRailWaybillLineAsync**](RailWaybillsApi.md#updateRailWaybillLineAsync) | **PUT** /api/v2/LogisticsService/RailWaybills/{waybillId}/Lines/{lineId} | Update a rail waybill line



## addRailWaybillLineAsync

Add a line to rail waybill

Adds a new line to a rail waybill.

### Example

```bash
 addRailWaybillLineAsync  tenantId=value waybillId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **waybillId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **waybillLineCreateDto** | [**WaybillLineCreateDto**](WaybillLineCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## cancelRailWaybillAsync

Cancel a rail waybill

Cancels a rail waybill.

### Example

```bash
 cancelRailWaybillAsync  tenantId=value waybillId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **waybillId** | **string** |  | [default to null]
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


## createRailWaybillAsync

Create a rail waybill

Creates a new rail waybill for the specified tenant.

### Example

```bash
 createRailWaybillAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **railWaybillCreateDto** | [**RailWaybillCreateDto**](RailWaybillCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteRailWaybillAsync

Delete a rail waybill

Deletes a rail waybill.

### Example

```bash
 deleteRailWaybillAsync  tenantId=value waybillId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **waybillId** | **string** |  | [default to null]
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


## getRailWaybillByIdAsync

Get rail waybill by ID

Retrieves a specific rail waybill by its identifier.

### Example

```bash
 getRailWaybillByIdAsync  tenantId=value waybillId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **waybillId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**RailWaybillDtoEnvelope**](RailWaybillDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getRailWaybillLinesAsync

Get rail waybill lines

Retrieves all lines for a specific rail waybill.

### Example

```bash
 getRailWaybillLinesAsync  tenantId=value waybillId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **waybillId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WaybillLineDtoListEnvelope**](WaybillLineDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getRailWaybillLinesCountAsync

Get rail waybill lines count

Returns the count of lines for a specific rail waybill.

### Example

```bash
 getRailWaybillLinesCountAsync  tenantId=value waybillId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **waybillId** | **string** |  | [default to null]
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


## getRailWaybillsAsync

Get all rail waybills

Retrieves all rail waybills for the specified tenant.

### Example

```bash
 getRailWaybillsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**RailWaybillDtoListEnvelope**](RailWaybillDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getRailWaybillsCountAsync

Get rail waybills count

Returns the count of rail waybills for the specified tenant.

### Example

```bash
 getRailWaybillsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## issueRailWaybillAsync

Issue a rail waybill

Issues a rail waybill.

### Example

```bash
 issueRailWaybillAsync  tenantId=value waybillId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **waybillId** | **string** |  | [default to null]
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


## markRailWaybillDeliveredAsync

Mark rail waybill delivered

Marks a rail waybill as delivered.

### Example

```bash
 markRailWaybillDeliveredAsync  tenantId=value waybillId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **waybillId** | **string** |  | [default to null]
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


## markRailWaybillInTransitAsync

Mark rail waybill in transit

Marks a rail waybill as in transit.

### Example

```bash
 markRailWaybillInTransitAsync  tenantId=value waybillId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **waybillId** | **string** |  | [default to null]
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


## patchRailWaybillAsync

Patch a rail waybill

Partially updates an existing rail waybill using a JSON Patch document.

### Example

```bash
 patchRailWaybillAsync  tenantId=value waybillId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **waybillId** | **string** |  | [default to null]
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


## patchRailWaybillLineAsync

Patch a rail waybill line

Partially updates a line on a rail waybill using a JSON Patch document.

### Example

```bash
 patchRailWaybillLineAsync  tenantId=value waybillId=value lineId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **waybillId** | **string** |  | [default to null]
 **lineId** | **string** |  | [default to null]
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


## removeRailWaybillLineAsync

Remove a rail waybill line

Removes a line from a rail waybill.

### Example

```bash
 removeRailWaybillLineAsync  tenantId=value waybillId=value lineId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **waybillId** | **string** |  | [default to null]
 **lineId** | **string** |  | [default to null]
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


## updateRailWaybillAsync

Update a rail waybill

Updates an existing rail waybill.

### Example

```bash
 updateRailWaybillAsync  tenantId=value waybillId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **waybillId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **railWaybillUpdateDto** | [**RailWaybillUpdateDto**](RailWaybillUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateRailWaybillLineAsync

Update a rail waybill line

Updates an existing line on a rail waybill.

### Example

```bash
 updateRailWaybillLineAsync  tenantId=value waybillId=value lineId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **waybillId** | **string** |  | [default to null]
 **lineId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **waybillLineUpdateDto** | [**WaybillLineUpdateDto**](WaybillLineUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

