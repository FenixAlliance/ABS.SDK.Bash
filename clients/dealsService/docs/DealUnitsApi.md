# DealUnitsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**calculateDealUnitAsync**](DealUnitsApi.md#calculateDealUnitAsync) | **PUT** /api/v2/DealsService/DealUnits/{dealUnitId}/Calculate | Calculate a deal unit
[**calculateDealUnitLineAsync**](DealUnitsApi.md#calculateDealUnitLineAsync) | **PUT** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId}/Calculate | Calculate a deal unit line
[**createDealUnitAsync**](DealUnitsApi.md#createDealUnitAsync) | **POST** /api/v2/DealsService/DealUnits | Create a deal unit
[**createGetDealUnitLinesAsync**](DealUnitsApi.md#createGetDealUnitLinesAsync) | **POST** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines | Create a deal unit line
[**deleteDealUnitAsync**](DealUnitsApi.md#deleteDealUnitAsync) | **DELETE** /api/v2/DealsService/DealUnits/{dealUnitId} | Delete a deal unit
[**deleteDealUnitPriceAsync**](DealUnitsApi.md#deleteDealUnitPriceAsync) | **DELETE** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId} | Delete a deal unit line
[**getDealUnitAsync**](DealUnitsApi.md#getDealUnitAsync) | **GET** /api/v2/DealsService/DealUnits/{dealUnitId} | Get deal unit by ID
[**getDealUnitLinesAsync**](DealUnitsApi.md#getDealUnitLinesAsync) | **GET** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines | Get deal unit lines
[**getDealUnitLinesCountAsync**](DealUnitsApi.md#getDealUnitLinesCountAsync) | **GET** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/Count | Get deal unit lines count
[**getDealUnitPriceAsync**](DealUnitsApi.md#getDealUnitPriceAsync) | **GET** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId} | Get a deal unit line by ID
[**getDealUnitsAsync**](DealUnitsApi.md#getDealUnitsAsync) | **GET** /api/v2/DealsService/DealUnits | Get deal units
[**getDealUnitsCountAsync**](DealUnitsApi.md#getDealUnitsCountAsync) | **GET** /api/v2/DealsService/DealUnits/Count | Get deal units count
[**getExtendedDealUnitAsync**](DealUnitsApi.md#getExtendedDealUnitAsync) | **GET** /api/v2/DealsService/DealUnits/{dealUnitId}/Extended | Get extended deal unit by ID
[**getExtendedDealUnitsAsync**](DealUnitsApi.md#getExtendedDealUnitsAsync) | **GET** /api/v2/DealsService/DealUnits/Extended | Get extended deal units
[**patchDealUnitAsync**](DealUnitsApi.md#patchDealUnitAsync) | **PATCH** /api/v2/DealsService/DealUnits/{dealUnitId} | Patch a deal unit
[**patchDealUnitLineAsync**](DealUnitsApi.md#patchDealUnitLineAsync) | **PATCH** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId} | Patch a deal unit line
[**updateDealUnitAsync**](DealUnitsApi.md#updateDealUnitAsync) | **PUT** /api/v2/DealsService/DealUnits/{dealUnitId} | Update a deal unit
[**updateDealUnitPriceAsync**](DealUnitsApi.md#updateDealUnitPriceAsync) | **PUT** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId} | Update a deal unit line



## calculateDealUnitAsync

Calculate a deal unit

Triggers recalculation of totals and derived values for a specific deal unit.

### Example

```bash
 calculateDealUnitAsync  tenantId=value dealUnitId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **dealUnitId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## calculateDealUnitLineAsync

Calculate a deal unit line

Triggers recalculation of totals and derived values for a specific deal unit line.

### Example

```bash
 calculateDealUnitLineAsync  tenantId=value dealUnitId=value dealUnitLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **dealUnitId** | **string** |  | [default to null]
 **dealUnitLineId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createDealUnitAsync

Create a deal unit

Creates a new deal unit for the specified tenant.

### Example

```bash
 createDealUnitAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **dealUnitCreateDto** | [**DealUnitCreateDto**](DealUnitCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createGetDealUnitLinesAsync

Create a deal unit line

Creates a new line within a specific deal unit.

### Example

```bash
 createGetDealUnitLinesAsync  tenantId=value dealUnitId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **dealUnitId** | **string** |  | [default to null]
 **dealUnitLineCreateDto** | [**DealUnitLineCreateDto**](DealUnitLineCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteDealUnitAsync

Delete a deal unit

Deletes an existing deal unit by its unique identifier.

### Example

```bash
 deleteDealUnitAsync  tenantId=value dealUnitId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **dealUnitId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteDealUnitPriceAsync

Delete a deal unit line

Deletes an existing line from a specific deal unit.

### Example

```bash
 deleteDealUnitPriceAsync  tenantId=value dealUnitId=value dealUnitLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **dealUnitId** | **string** |  | [default to null]
 **dealUnitLineId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDealUnitAsync

Get deal unit by ID

Retrieves a single deal unit by its unique identifier.

### Example

```bash
 getDealUnitAsync  tenantId=value dealUnitId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **dealUnitId** | **string** |  | [default to null]

### Return type

[**DealUnitDtoEnvelope**](DealUnitDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDealUnitLinesAsync

Get deal unit lines

Retrieves a list of lines for a specific deal unit with OData query support.

### Example

```bash
 getDealUnitLinesAsync  tenantId=value dealUnitId=value  itemId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **dealUnitId** | **string** |  | [default to null]
 **itemId** | **string** |  | [optional] [default to null]

### Return type

[**DealUnitLineDtoListEnvelope**](DealUnitLineDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDealUnitLinesCountAsync

Get deal unit lines count

Returns the total count of lines for a specific deal unit with OData filter support.

### Example

```bash
 getDealUnitLinesCountAsync  tenantId=value dealUnitId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **dealUnitId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDealUnitPriceAsync

Get a deal unit line by ID

Retrieves a single deal unit line by its unique identifier.

### Example

```bash
 getDealUnitPriceAsync  tenantId=value dealUnitId=value dealUnitLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **dealUnitId** | **string** |  | [default to null]
 **dealUnitLineId** | **string** |  | [default to null]

### Return type

[**DealUnitLineDtoEnvelope**](DealUnitLineDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDealUnitsAsync

Get deal units

Retrieves a list of deal units for the specified tenant with OData query support.

### Example

```bash
 getDealUnitsAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**DealUnitDtoListEnvelope**](DealUnitDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDealUnitsCountAsync

Get deal units count

Returns the total count of deal units for the specified tenant with OData filter support.

### Example

```bash
 getDealUnitsCountAsync  tenantId=value
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


## getExtendedDealUnitAsync

Get extended deal unit by ID

Retrieves a single deal unit with extended details by its unique identifier.

### Example

```bash
 getExtendedDealUnitAsync  tenantId=value dealUnitId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **dealUnitId** | **string** |  | [default to null]

### Return type

[**ExtendedDealUnitDtoEnvelope**](ExtendedDealUnitDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getExtendedDealUnitsAsync

Get extended deal units

Retrieves a list of deal units with extended details for the specified tenant with OData query support.

### Example

```bash
 getExtendedDealUnitsAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**ExtendedDealUnitDtoListEnvelope**](ExtendedDealUnitDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchDealUnitAsync

Patch a deal unit

Partially updates an existing deal unit by its unique identifier using a JSON Patch document.

### Example

```bash
 patchDealUnitAsync  tenantId=value dealUnitId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **dealUnitId** | **string** |  | [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchDealUnitLineAsync

Patch a deal unit line

Partially updates an existing line within a specific deal unit using a JSON Patch document.

### Example

```bash
 patchDealUnitLineAsync  tenantId=value dealUnitId=value dealUnitLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **dealUnitId** | **string** |  | [default to null]
 **dealUnitLineId** | **string** |  | [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateDealUnitAsync

Update a deal unit

Updates an existing deal unit by its unique identifier.

### Example

```bash
 updateDealUnitAsync  tenantId=value dealUnitId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **dealUnitId** | **string** |  | [default to null]
 **dealUnitUpdateDto** | [**DealUnitUpdateDto**](DealUnitUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateDealUnitPriceAsync

Update a deal unit line

Updates an existing line within a specific deal unit.

### Example

```bash
 updateDealUnitPriceAsync  tenantId=value dealUnitId=value dealUnitLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **dealUnitId** | **string** |  | [default to null]
 **dealUnitLineId** | **string** |  | [default to null]
 **dealUnitLineUpdateDto** | [**DealUnitLineUpdateDto**](DealUnitLineUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

