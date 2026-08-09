# WorkOrdersApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWorkOrderAsync**](WorkOrdersApi.md#createWorkOrderAsync) | **POST** /api/v2/ManufacturingService/WorkOrders | Create a new work order
[**deleteWorkOrderAsync**](WorkOrdersApi.md#deleteWorkOrderAsync) | **DELETE** /api/v2/ManufacturingService/WorkOrders/{id} | Delete a work order
[**getWorkOrderByIdAsync**](WorkOrdersApi.md#getWorkOrderByIdAsync) | **GET** /api/v2/ManufacturingService/WorkOrders/{id} | Get work order by ID
[**getWorkOrdersAsync**](WorkOrdersApi.md#getWorkOrdersAsync) | **GET** /api/v2/ManufacturingService/WorkOrders | Get all work orders
[**getWorkOrdersCountAsync**](WorkOrdersApi.md#getWorkOrdersCountAsync) | **GET** /api/v2/ManufacturingService/WorkOrders/Count | Get work orders count
[**patchWorkOrderAsync**](WorkOrdersApi.md#patchWorkOrderAsync) | **PATCH** /api/v2/ManufacturingService/WorkOrders/{id} | Patch a work order
[**updateWorkOrderAsync**](WorkOrdersApi.md#updateWorkOrderAsync) | **PUT** /api/v2/ManufacturingService/WorkOrders/{id} | Update a work order



## createWorkOrderAsync

Create a new work order

Creates a new work order for the specified tenant.

### Example

```bash
 createWorkOrderAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **workOrderCreateDto** | [**WorkOrderCreateDto**](WorkOrderCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteWorkOrderAsync

Delete a work order

Deletes a work order for the specified tenant.

### Example

```bash
 deleteWorkOrderAsync  tenantId=value id=value  api-version=value x-api-version:value
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
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getWorkOrderByIdAsync

Get work order by ID

Retrieves a specific work order by its identifier.

### Example

```bash
 getWorkOrderByIdAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WorkOrderDto**](WorkOrderDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getWorkOrdersAsync

Get all work orders

Retrieves all work orders for the specified tenant.

### Example

```bash
 getWorkOrdersAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **workOrderDtoCollectionQueryParameters** | [**WorkOrderDtoCollectionQueryParameters**](WorkOrderDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**WorkOrderDtoListEnvelope**](WorkOrderDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getWorkOrdersCountAsync

Get work orders count

Returns the count of work orders for the specified tenant.

### Example

```bash
 getWorkOrdersCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **workOrderDtoCollectionQueryParameters** | [**WorkOrderDtoCollectionQueryParameters**](WorkOrderDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchWorkOrderAsync

Patch a work order

Patch a work order

### Example

```bash
 patchWorkOrderAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **patchOperation** | [**array[PatchOperation]**](PatchOperation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateWorkOrderAsync

Update a work order

Updates an existing work order for the specified tenant.

### Example

```bash
 updateWorkOrderAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **workOrderUpdateDto** | [**WorkOrderUpdateDto**](WorkOrderUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

