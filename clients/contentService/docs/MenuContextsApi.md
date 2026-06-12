# MenuContextsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countMenuContextsAsync**](MenuContextsApi.md#countMenuContextsAsync) | **GET** /api/v2/ContentService/MenuContexts/Count | Count menu contexts
[**createMenuContextAsync**](MenuContextsApi.md#createMenuContextAsync) | **POST** /api/v2/ContentService/MenuContexts | Create a menu context
[**deleteMenuContextAsync**](MenuContextsApi.md#deleteMenuContextAsync) | **DELETE** /api/v2/ContentService/MenuContexts/{menuContextId} | Delete a menu context
[**getMenuContextByIdAsync**](MenuContextsApi.md#getMenuContextByIdAsync) | **GET** /api/v2/ContentService/MenuContexts/{menuContextId} | Get menu context by ID
[**getMenuContextsAsync**](MenuContextsApi.md#getMenuContextsAsync) | **GET** /api/v2/ContentService/MenuContexts | Get menu contexts
[**updateMenuContextAsync**](MenuContextsApi.md#updateMenuContextAsync) | **PUT** /api/v2/ContentService/MenuContexts/{menuContextId} | Update a menu context



## countMenuContextsAsync

Count menu contexts

Counts all menu contexts for the specified tenant.

### Example

```bash
 countMenuContextsAsync  tenantId=value  api-version=value x-api-version:value
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


## createMenuContextAsync

Create a menu context

Creates a new menu context for the specified tenant.

### Example

```bash
 createMenuContextAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **menuContextCreateDto** | [**MenuContextCreateDto**](MenuContextCreateDto.md) |  |
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


## deleteMenuContextAsync

Delete a menu context

Deletes a menu context for the specified tenant.

### Example

```bash
 deleteMenuContextAsync  tenantId=value menuContextId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **menuContextId** | **string** |  | [default to null]
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


## getMenuContextByIdAsync

Get menu context by ID

Retrieves a specific menu context by its identifier.

### Example

```bash
 getMenuContextByIdAsync  tenantId=value menuContextId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **menuContextId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**MenuContextDtoEnvelope**](MenuContextDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getMenuContextsAsync

Get menu contexts

Retrieves all menu contexts for the specified tenant.

### Example

```bash
 getMenuContextsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**MenuContextDtoListEnvelope**](MenuContextDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateMenuContextAsync

Update a menu context

Updates an existing menu context for the specified tenant.

### Example

```bash
 updateMenuContextAsync  tenantId=value menuContextId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **menuContextId** | **string** |  | [default to null]
 **menuContextUpdateDto** | [**MenuContextUpdateDto**](MenuContextUpdateDto.md) |  |
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

