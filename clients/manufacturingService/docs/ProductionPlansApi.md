# ProductionPlansApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProductionPlanAsync**](ProductionPlansApi.md#createProductionPlanAsync) | **POST** /api/v2/ManufacturingService/ProductionPlans | Create a new production plan
[**deleteProductionPlanAsync**](ProductionPlansApi.md#deleteProductionPlanAsync) | **DELETE** /api/v2/ManufacturingService/ProductionPlans/{id} | Delete a production plan
[**getProductionPlanByIdAsync**](ProductionPlansApi.md#getProductionPlanByIdAsync) | **GET** /api/v2/ManufacturingService/ProductionPlans/{id} | Get production plan by ID
[**getProductionPlansAsync**](ProductionPlansApi.md#getProductionPlansAsync) | **GET** /api/v2/ManufacturingService/ProductionPlans | Get all production plans
[**getProductionPlansCountAsync**](ProductionPlansApi.md#getProductionPlansCountAsync) | **GET** /api/v2/ManufacturingService/ProductionPlans/Count | Get production plans count
[**patchProductionPlanAsync**](ProductionPlansApi.md#patchProductionPlanAsync) | **PATCH** /api/v2/ManufacturingService/ProductionPlans/{id} | Patch a production plan
[**updateProductionPlanAsync**](ProductionPlansApi.md#updateProductionPlanAsync) | **PUT** /api/v2/ManufacturingService/ProductionPlans/{id} | Update a production plan



## createProductionPlanAsync

Create a new production plan

Creates a new production plan for the specified tenant.

### Example

```bash
 createProductionPlanAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **productionPlanCreateDto** | [**ProductionPlanCreateDto**](ProductionPlanCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteProductionPlanAsync

Delete a production plan

Deletes a production plan for the specified tenant.

### Example

```bash
 deleteProductionPlanAsync  tenantId=value id=value  api-version=value x-api-version:value
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


## getProductionPlanByIdAsync

Get production plan by ID

Retrieves a specific production plan by its identifier.

### Example

```bash
 getProductionPlanByIdAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ProductionPlanDto**](ProductionPlanDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getProductionPlansAsync

Get all production plans

Retrieves all production plans for the specified tenant.

### Example

```bash
 getProductionPlansAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **productionPlanDtoCollectionQueryParameters** | [**ProductionPlanDtoCollectionQueryParameters**](ProductionPlanDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**ProductionPlanDtoListEnvelope**](ProductionPlanDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getProductionPlansCountAsync

Get production plans count

Returns the count of production plans for the specified tenant.

### Example

```bash
 getProductionPlansCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **productionPlanDtoCollectionQueryParameters** | [**ProductionPlanDtoCollectionQueryParameters**](ProductionPlanDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchProductionPlanAsync

Patch a production plan

Patch a production plan

### Example

```bash
 patchProductionPlanAsync  tenantId=value id=value  api-version=value x-api-version:value
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


## updateProductionPlanAsync

Update a production plan

Updates an existing production plan for the specified tenant.

### Example

```bash
 updateProductionPlanAsync  tenantId=value id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **productionPlanUpdateDto** | [**ProductionPlanUpdateDto**](ProductionPlanUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

