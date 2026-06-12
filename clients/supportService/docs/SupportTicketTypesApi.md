# SupportTicketTypesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSupportTicketTypeAsync**](SupportTicketTypesApi.md#createSupportTicketTypeAsync) | **POST** /api/v2/SupportService/SupportTicketTypes | Create a new support ticket type
[**deleteSupportTicketTypeAsync**](SupportTicketTypesApi.md#deleteSupportTicketTypeAsync) | **DELETE** /api/v2/SupportService/SupportTicketTypes/{supportTicketTypeId} | Delete a support ticket type
[**getSupportTicketTypeAsync**](SupportTicketTypesApi.md#getSupportTicketTypeAsync) | **GET** /api/v2/SupportService/SupportTicketTypes/{supportTicketTypeId} | Retrieve a support ticket type by ID
[**getSupportTicketTypesAsync**](SupportTicketTypesApi.md#getSupportTicketTypesAsync) | **GET** /api/v2/SupportService/SupportTicketTypes | Retrieve a list of support ticket types
[**getSupportTicketTypesCountAsync**](SupportTicketTypesApi.md#getSupportTicketTypesCountAsync) | **GET** /api/v2/SupportService/SupportTicketTypes/Count | Get the count of support ticket types
[**patchSupportTicketTypeAsync**](SupportTicketTypesApi.md#patchSupportTicketTypeAsync) | **PATCH** /api/v2/SupportService/SupportTicketTypes/{supportTicketTypeId} | Patch a support ticket type
[**updateSupportTicketTypeAsync**](SupportTicketTypesApi.md#updateSupportTicketTypeAsync) | **PUT** /api/v2/SupportService/SupportTicketTypes/{supportTicketTypeId} | Update a support ticket type



## createSupportTicketTypeAsync

Create a new support ticket type

Creates a new support ticket type for the specified tenant.

### Example

```bash
 createSupportTicketTypeAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **supportTicketTypeCreateDto** | [**SupportTicketTypeCreateDto**](SupportTicketTypeCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteSupportTicketTypeAsync

Delete a support ticket type

Deletes a support ticket type by its unique identifier.

### Example

```bash
 deleteSupportTicketTypeAsync  tenantId=value supportTicketTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportTicketTypeId** | **string** |  | [default to null]
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


## getSupportTicketTypeAsync

Retrieve a support ticket type by ID

Retrieves a single support ticket type by its unique identifier.

### Example

```bash
 getSupportTicketTypeAsync  tenantId=value supportTicketTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportTicketTypeId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportTicketTypeDtoEnvelope**](SupportTicketTypeDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSupportTicketTypesAsync

Retrieve a list of support ticket types

Retrieves a list of support ticket types for the specified tenant with OData query support.

### Example

```bash
 getSupportTicketTypesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportTicketTypeDtoListEnvelope**](SupportTicketTypeDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSupportTicketTypesCountAsync

Get the count of support ticket types

Returns the total count of support ticket types for the specified tenant with OData query support.

### Example

```bash
 getSupportTicketTypesCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchSupportTicketTypeAsync

Patch a support ticket type

Partially updates an existing support ticket type by its unique identifier.

### Example

```bash
 patchSupportTicketTypeAsync  tenantId=value supportTicketTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportTicketTypeId** | **string** |  | [default to null]
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


## updateSupportTicketTypeAsync

Update a support ticket type

Updates an existing support ticket type by its unique identifier.

### Example

```bash
 updateSupportTicketTypeAsync  tenantId=value supportTicketTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportTicketTypeId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **supportTicketTypeUpdateDto** | [**SupportTicketTypeUpdateDto**](SupportTicketTypeUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

