# CostCentresApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCostCentre**](CostCentresApi.md#createCostCentre) | **POST** /api/v2/AccountingService/CostCentres | Create a cost centre
[**createCostCentreBudget**](CostCentresApi.md#createCostCentreBudget) | **POST** /api/v2/AccountingService/CostCentres/CostCentreBudgets | Create a cost centre budget
[**createCostCentreGroup**](CostCentresApi.md#createCostCentreGroup) | **POST** /api/v2/AccountingService/CostCentres/CostCentreGroups | Create a cost centre group
[**deleteCostCentre**](CostCentresApi.md#deleteCostCentre) | **DELETE** /api/v2/AccountingService/CostCentres/{costCentreId} | Delete a cost centre
[**deleteCostCentreBudget**](CostCentresApi.md#deleteCostCentreBudget) | **DELETE** /api/v2/AccountingService/CostCentres/CostCentreBudgets/{budgetId} | Delete a cost centre budget
[**deleteCostCentreGroup**](CostCentresApi.md#deleteCostCentreGroup) | **DELETE** /api/v2/AccountingService/CostCentres/CostCentreGroups/{groupId} | Delete a cost centre group
[**getCostCentre**](CostCentresApi.md#getCostCentre) | **GET** /api/v2/AccountingService/CostCentres/{costCentreId} | Get a cost centre by id
[**getCostCentreBudget**](CostCentresApi.md#getCostCentreBudget) | **GET** /api/v2/AccountingService/CostCentres/CostCentreBudgets/{budgetId} | Get a cost centre budget by id
[**getCostCentreBudgets**](CostCentresApi.md#getCostCentreBudgets) | **GET** /api/v2/AccountingService/CostCentres/CostCentreBudgets | Get all cost centre budgets for a tenant
[**getCostCentreGroup**](CostCentresApi.md#getCostCentreGroup) | **GET** /api/v2/AccountingService/CostCentres/CostCentreGroups/{groupId} | Get a cost centre group by id
[**getCostCentreGroups**](CostCentresApi.md#getCostCentreGroups) | **GET** /api/v2/AccountingService/CostCentres/CostCentreGroups | Get all cost centre groups for a tenant
[**getCostCentreGroupsCount**](CostCentresApi.md#getCostCentreGroupsCount) | **GET** /api/v2/AccountingService/CostCentres/CostCentreGroups/Count | Get the count of cost centre groups for a tenant
[**getCostCentres**](CostCentresApi.md#getCostCentres) | **GET** /api/v2/AccountingService/CostCentres | Get all cost centres for a tenant
[**getCostCentresCount**](CostCentresApi.md#getCostCentresCount) | **GET** /api/v2/AccountingService/CostCentres/Count | Get the count of cost centres for a tenant
[**patchCostCentre**](CostCentresApi.md#patchCostCentre) | **PATCH** /api/v2/AccountingService/CostCentres/{costCentreId} | Patch a cost centre
[**patchCostCentreBudget**](CostCentresApi.md#patchCostCentreBudget) | **PATCH** /api/v2/AccountingService/CostCentres/CostCentreBudgets/{budgetId} | Patch a cost centre budget
[**patchCostCentreGroup**](CostCentresApi.md#patchCostCentreGroup) | **PATCH** /api/v2/AccountingService/CostCentres/CostCentreGroups/{groupId} | Patch a cost centre group
[**updateCostCentre**](CostCentresApi.md#updateCostCentre) | **PUT** /api/v2/AccountingService/CostCentres/{costCentreId} | Update a cost centre
[**updateCostCentreBudget**](CostCentresApi.md#updateCostCentreBudget) | **PUT** /api/v2/AccountingService/CostCentres/CostCentreBudgets/{budgetId} | Update a cost centre budget
[**updateCostCentreGroup**](CostCentresApi.md#updateCostCentreGroup) | **PUT** /api/v2/AccountingService/CostCentres/CostCentreGroups/{groupId} | Update a cost centre group



## createCostCentre

Create a cost centre

Creates a new cost centre.

### Example

```bash
 createCostCentre  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **costCentreCreateDto** | [**CostCentreCreateDto**](CostCentreCreateDto.md) |  |
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createCostCentreBudget

Create a cost centre budget

Creates a new cost centre budget.

### Example

```bash
 createCostCentreBudget  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **costCentreBudgetCreateDto** | [**CostCentreBudgetCreateDto**](CostCentreBudgetCreateDto.md) |  |
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createCostCentreGroup

Create a cost centre group

Creates a new cost centre group.

### Example

```bash
 createCostCentreGroup  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **costCentreGroupCreateDto** | [**CostCentreGroupCreateDto**](CostCentreGroupCreateDto.md) |  |
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCostCentre

Delete a cost centre

Deletes a cost centre.

### Example

```bash
 deleteCostCentre  tenantId=value costCentreId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **costCentreId** | **string** |  | [default to null]
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


## deleteCostCentreBudget

Delete a cost centre budget

Deletes a cost centre budget.

### Example

```bash
 deleteCostCentreBudget  tenantId=value budgetId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **budgetId** | **string** |  | [default to null]
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


## deleteCostCentreGroup

Delete a cost centre group

Deletes a cost centre group.

### Example

```bash
 deleteCostCentreGroup  tenantId=value groupId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **groupId** | **string** |  | [default to null]
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


## getCostCentre

Get a cost centre by id

Retrieves a cost centre by its identifier.

### Example

```bash
 getCostCentre  tenantId=value costCentreId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **costCentreId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CostCentreDtoEnvelope**](CostCentreDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCostCentreBudget

Get a cost centre budget by id

Retrieves a cost centre budget by its identifier.

### Example

```bash
 getCostCentreBudget  tenantId=value budgetId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **budgetId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CostCentreBudgetDtoEnvelope**](CostCentreBudgetDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCostCentreBudgets

Get all cost centre budgets for a tenant

Retrieves all cost centre budgets for the specified tenant using OData query options.

### Example

```bash
 getCostCentreBudgets  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CostCentreBudgetDtoListEnvelope**](CostCentreBudgetDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCostCentreGroup

Get a cost centre group by id

Retrieves a cost centre group by its identifier.

### Example

```bash
 getCostCentreGroup  tenantId=value groupId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **groupId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CostCentreGroupDtoEnvelope**](CostCentreGroupDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCostCentreGroups

Get all cost centre groups for a tenant

Retrieves all cost centre groups for the specified tenant using OData query options.

### Example

```bash
 getCostCentreGroups  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CostCentreGroupDtoListEnvelope**](CostCentreGroupDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCostCentreGroupsCount

Get the count of cost centre groups for a tenant

Retrieves the count of cost centre groups for the specified tenant using OData query options.

### Example

```bash
 getCostCentreGroupsCount  tenantId=value  api-version=value x-api-version:value
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


## getCostCentres

Get all cost centres for a tenant

Retrieves all cost centres for the specified tenant using OData query options.

### Example

```bash
 getCostCentres  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CostCentreDtoListEnvelope**](CostCentreDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCostCentresCount

Get the count of cost centres for a tenant

Retrieves the count of cost centres for the specified tenant using OData query options.

### Example

```bash
 getCostCentresCount  tenantId=value  api-version=value x-api-version:value
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


## patchCostCentre

Patch a cost centre

Partially updates an existing cost centre.

### Example

```bash
 patchCostCentre  tenantId=value costCentreId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **costCentreId** | **string** |  | [default to null]
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


## patchCostCentreBudget

Patch a cost centre budget

Partially updates an existing cost centre budget.

### Example

```bash
 patchCostCentreBudget  tenantId=value budgetId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **budgetId** | **string** |  | [default to null]
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


## patchCostCentreGroup

Patch a cost centre group

Partially updates an existing cost centre group.

### Example

```bash
 patchCostCentreGroup  tenantId=value groupId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **groupId** | **string** |  | [default to null]
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


## updateCostCentre

Update a cost centre

Updates an existing cost centre.

### Example

```bash
 updateCostCentre  tenantId=value costCentreId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **costCentreId** | **string** |  | [default to null]
 **costCentreUpdateDto** | [**CostCentreUpdateDto**](CostCentreUpdateDto.md) |  |
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateCostCentreBudget

Update a cost centre budget

Updates an existing cost centre budget.

### Example

```bash
 updateCostCentreBudget  tenantId=value budgetId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **budgetId** | **string** |  | [default to null]
 **costCentreBudgetUpdateDto** | [**CostCentreBudgetUpdateDto**](CostCentreBudgetUpdateDto.md) |  |
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateCostCentreGroup

Update a cost centre group

Updates an existing cost centre group.

### Example

```bash
 updateCostCentreGroup  tenantId=value groupId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **groupId** | **string** |  | [default to null]
 **costCentreGroupUpdateDto** | [**CostCentreGroupUpdateDto**](CostCentreGroupUpdateDto.md) |  |
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

