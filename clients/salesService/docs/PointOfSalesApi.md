# PointOfSalesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countPointOfSalesAsync**](PointOfSalesApi.md#countPointOfSalesAsync) | **GET** /api/v2/SalesService/PointOfSales/Count | Get point of sales count
[**createPointOfSaleAsync**](PointOfSalesApi.md#createPointOfSaleAsync) | **POST** /api/v2/SalesService/PointOfSales | Create a point of sale
[**deletePointOfSaleAsync**](PointOfSalesApi.md#deletePointOfSaleAsync) | **DELETE** /api/v2/SalesService/PointOfSales/{pointOfSaleId} | Delete a point of sale
[**getPointOfSaleAsync**](PointOfSalesApi.md#getPointOfSaleAsync) | **GET** /api/v2/SalesService/PointOfSales/{pointOfSaleId} | Get point of sale by ID
[**getPointOfSalesAsync**](PointOfSalesApi.md#getPointOfSalesAsync) | **GET** /api/v2/SalesService/PointOfSales | Get point of sales
[**patchPointOfSaleAsync**](PointOfSalesApi.md#patchPointOfSaleAsync) | **PATCH** /api/v2/SalesService/PointOfSales/{pointOfSaleId} | Patch a point of sale
[**updatePointOfSaleAsync**](PointOfSalesApi.md#updatePointOfSaleAsync) | **PUT** /api/v2/SalesService/PointOfSales/{pointOfSaleId} | Update a point of sale



## countPointOfSalesAsync

Get point of sales count

Returns the total count of point of sales for the specified tenant with OData filter support.

### Example

```bash
 countPointOfSalesAsync  tenantId=value
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


## createPointOfSaleAsync

Create a point of sale

Creates a new point of sale for the specified tenant.

### Example

```bash
 createPointOfSaleAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **pointOfSaleCreateDto** | [**PointOfSaleCreateDto**](PointOfSaleCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deletePointOfSaleAsync

Delete a point of sale

Deletes an existing point of sale by its unique identifier.

### Example

```bash
 deletePointOfSaleAsync  tenantId=value pointOfSaleId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **pointOfSaleId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPointOfSaleAsync

Get point of sale by ID

Retrieves a single point of sale by its unique identifier.

### Example

```bash
 getPointOfSaleAsync  tenantId=value pointOfSaleId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **pointOfSaleId** | **string** |  | [default to null]

### Return type

[**PointOfSaleDtoEnvelope**](PointOfSaleDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPointOfSalesAsync

Get point of sales

Retrieves a list of point of sales for the specified tenant with OData query support.

### Example

```bash
 getPointOfSalesAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**PointOfSaleDtoListEnvelope**](PointOfSaleDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchPointOfSaleAsync

Patch a point of sale

Partially updates an existing point of sale using a JSON Patch document.

### Example

```bash
 patchPointOfSaleAsync  tenantId=value pointOfSaleId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **pointOfSaleId** | **string** |  | [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updatePointOfSaleAsync

Update a point of sale

Updates an existing point of sale by its unique identifier.

### Example

```bash
 updatePointOfSaleAsync  tenantId=value pointOfSaleId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **pointOfSaleId** | **string** |  | [default to null]
 **pointOfSaleUpdateDto** | [**PointOfSaleUpdateDto**](PointOfSaleUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

