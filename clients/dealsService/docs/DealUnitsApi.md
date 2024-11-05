# DealUnitsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2DealsServiceDealUnitsCountGet**](DealUnitsApi.md#apiV2DealsServiceDealUnitsCountGet) | **GET** /api/v2/DealsService/DealUnits/Count | 
[**apiV2DealsServiceDealUnitsDealUnitIdCalculatePut**](DealUnitsApi.md#apiV2DealsServiceDealUnitsDealUnitIdCalculatePut) | **PUT** /api/v2/DealsService/DealUnits/{dealUnitId}/Calculate | 
[**apiV2DealsServiceDealUnitsDealUnitIdDelete**](DealUnitsApi.md#apiV2DealsServiceDealUnitsDealUnitIdDelete) | **DELETE** /api/v2/DealsService/DealUnits/{dealUnitId} | 
[**apiV2DealsServiceDealUnitsDealUnitIdExtendedGet**](DealUnitsApi.md#apiV2DealsServiceDealUnitsDealUnitIdExtendedGet) | **GET** /api/v2/DealsService/DealUnits/{dealUnitId}/Extended | 
[**apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet**](DealUnitsApi.md#apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet) | **GET** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/Count | 
[**apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut**](DealUnitsApi.md#apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut) | **PUT** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId}/Calculate | 
[**apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete**](DealUnitsApi.md#apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete) | **DELETE** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId} | 
[**apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet**](DealUnitsApi.md#apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet) | **GET** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId} | 
[**apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut**](DealUnitsApi.md#apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut) | **PUT** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId} | 
[**apiV2DealsServiceDealUnitsDealUnitIdLinesGet**](DealUnitsApi.md#apiV2DealsServiceDealUnitsDealUnitIdLinesGet) | **GET** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines | 
[**apiV2DealsServiceDealUnitsDealUnitIdLinesPost**](DealUnitsApi.md#apiV2DealsServiceDealUnitsDealUnitIdLinesPost) | **POST** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines | 
[**apiV2DealsServiceDealUnitsDealUnitIdPut**](DealUnitsApi.md#apiV2DealsServiceDealUnitsDealUnitIdPut) | **PUT** /api/v2/DealsService/DealUnits/{dealUnitId} | 
[**apiV2DealsServiceDealUnitsExtendedGet**](DealUnitsApi.md#apiV2DealsServiceDealUnitsExtendedGet) | **GET** /api/v2/DealsService/DealUnits/Extended | 
[**apiV2DealsServiceDealUnitsGet**](DealUnitsApi.md#apiV2DealsServiceDealUnitsGet) | **GET** /api/v2/DealsService/DealUnits | 
[**apiV2DealsServiceDealUnitsPost**](DealUnitsApi.md#apiV2DealsServiceDealUnitsPost) | **POST** /api/v2/DealsService/DealUnits | 
[**getDealUnitAsync**](DealUnitsApi.md#getDealUnitAsync) | **GET** /api/v2/DealsService/DealUnits/{dealUnitId} | 



## apiV2DealsServiceDealUnitsCountGet



### Example

```bash
 apiV2DealsServiceDealUnitsCountGet  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2DealsServiceDealUnitsDealUnitIdCalculatePut



### Example

```bash
 apiV2DealsServiceDealUnitsDealUnitIdCalculatePut  tenantId=value dealUnitId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **dealUnitId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2DealsServiceDealUnitsDealUnitIdDelete



### Example

```bash
 apiV2DealsServiceDealUnitsDealUnitIdDelete  tenantId=value dealUnitId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **dealUnitId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2DealsServiceDealUnitsDealUnitIdExtendedGet



### Example

```bash
 apiV2DealsServiceDealUnitsDealUnitIdExtendedGet  tenantId=value dealUnitId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **dealUnitId** | **string** |  | [default to null]

### Return type

[**ExtendedDealUnitDtoEnvelope**](ExtendedDealUnitDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet



### Example

```bash
 apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet  tenantId=value dealUnitId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **dealUnitId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut



### Example

```bash
 apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut  tenantId=value dealUnitId=value dealUnitLineId=value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete



### Example

```bash
 apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete  tenantId=value dealUnitId=value dealUnitLineId=value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet



### Example

```bash
 apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet  tenantId=value dealUnitId=value dealUnitLineId=value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut



### Example

```bash
 apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut  tenantId=value dealUnitId=value dealUnitLineId=value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2DealsServiceDealUnitsDealUnitIdLinesGet



### Example

```bash
 apiV2DealsServiceDealUnitsDealUnitIdLinesGet  tenantId=value dealUnitId=value  itemId=value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2DealsServiceDealUnitsDealUnitIdLinesPost



### Example

```bash
 apiV2DealsServiceDealUnitsDealUnitIdLinesPost  tenantId=value dealUnitId=value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2DealsServiceDealUnitsDealUnitIdPut



### Example

```bash
 apiV2DealsServiceDealUnitsDealUnitIdPut  tenantId=value dealUnitId=value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2DealsServiceDealUnitsExtendedGet



### Example

```bash
 apiV2DealsServiceDealUnitsExtendedGet  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**ExtendedDealUnitDtoListEnvelope**](ExtendedDealUnitDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2DealsServiceDealUnitsGet



### Example

```bash
 apiV2DealsServiceDealUnitsGet  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**DealUnitDtoListEnvelope**](DealUnitDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2DealsServiceDealUnitsPost



### Example

```bash
 apiV2DealsServiceDealUnitsPost  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **dealUnitCreateDto** | [**DealUnitCreateDto**](DealUnitCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDealUnitAsync



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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

