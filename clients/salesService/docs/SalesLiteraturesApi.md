# SalesLiteraturesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countSalesLiteraturesAsync**](SalesLiteraturesApi.md#countSalesLiteraturesAsync) | **GET** /api/v2/SalesService/SalesLiteratures/Count | Get sales literatures count
[**createSalesLiteratureAsync**](SalesLiteraturesApi.md#createSalesLiteratureAsync) | **POST** /api/v2/SalesService/SalesLiteratures | Create a sales literature
[**deleteSalesLiteratureAsync**](SalesLiteraturesApi.md#deleteSalesLiteratureAsync) | **DELETE** /api/v2/SalesService/SalesLiteratures/{salesLiteratureId} | Delete a sales literature
[**getExtendedSalesLiteraturesAsync**](SalesLiteraturesApi.md#getExtendedSalesLiteraturesAsync) | **GET** /api/v2/SalesService/SalesLiteratures/Extended | Get extended sales literatures
[**getSalesLiteratureAsync**](SalesLiteraturesApi.md#getSalesLiteratureAsync) | **GET** /api/v2/SalesService/SalesLiteratures/{salesLiteratureId} | Get sales literature by ID
[**getSalesLiteraturesAsync**](SalesLiteraturesApi.md#getSalesLiteraturesAsync) | **GET** /api/v2/SalesService/SalesLiteratures | Get sales literatures
[**updateSalesLiteratureAsync**](SalesLiteraturesApi.md#updateSalesLiteratureAsync) | **PUT** /api/v2/SalesService/SalesLiteratures/{salesLiteratureId} | Update a sales literature



## countSalesLiteraturesAsync

Get sales literatures count

Returns the total count of sales literatures for the specified tenant with OData filter support.

### Example

```bash
 countSalesLiteraturesAsync  tenantId=value
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


## createSalesLiteratureAsync

Create a sales literature

Creates a new sales literature for the specified tenant.

### Example

```bash
 createSalesLiteratureAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **salesLiteratureCreateDto** | [**SalesLiteratureCreateDto**](SalesLiteratureCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteSalesLiteratureAsync

Delete a sales literature

Deletes an existing sales literature by its unique identifier.

### Example

```bash
 deleteSalesLiteratureAsync  tenantId=value salesLiteratureId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **salesLiteratureId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getExtendedSalesLiteraturesAsync

Get extended sales literatures

Retrieves a list of sales literatures with extended details for the specified tenant with OData query support.

### Example

```bash
 getExtendedSalesLiteraturesAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**ExtendedSalesLiteratureDtoListEnvelope**](ExtendedSalesLiteratureDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSalesLiteratureAsync

Get sales literature by ID

Retrieves a single sales literature by its unique identifier.

### Example

```bash
 getSalesLiteratureAsync  tenantId=value salesLiteratureId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **salesLiteratureId** | **string** |  | [default to null]

### Return type

[**SalesLiteratureDtoEnvelope**](SalesLiteratureDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSalesLiteraturesAsync

Get sales literatures

Retrieves a list of sales literatures for the specified tenant with OData query support.

### Example

```bash
 getSalesLiteraturesAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**SalesLiteratureDtoListEnvelope**](SalesLiteratureDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateSalesLiteratureAsync

Update a sales literature

Updates an existing sales literature by its unique identifier.

### Example

```bash
 updateSalesLiteratureAsync  tenantId=value salesLiteratureId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **salesLiteratureId** | **string** |  | [default to null]
 **salesLiteratureUpdateDto** | [**SalesLiteratureUpdateDto**](SalesLiteratureUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

