# SupportTicketPrioritiesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSupportTicketPriorityAsync**](SupportTicketPrioritiesApi.md#createSupportTicketPriorityAsync) | **POST** /api/v2/SupportService/SupportTicketPriorities | Create a new support ticket priority
[**deleteSupportTicketPriorityAsync**](SupportTicketPrioritiesApi.md#deleteSupportTicketPriorityAsync) | **DELETE** /api/v2/SupportService/SupportTicketPriorities/{supportTicketPriorityId} | Delete a support ticket priority
[**getSupportTicketPrioritiesAsync**](SupportTicketPrioritiesApi.md#getSupportTicketPrioritiesAsync) | **GET** /api/v2/SupportService/SupportTicketPriorities | Retrieve a list of support ticket priorities
[**getSupportTicketPrioritiesCountAsync**](SupportTicketPrioritiesApi.md#getSupportTicketPrioritiesCountAsync) | **GET** /api/v2/SupportService/SupportTicketPriorities/Count | Get the count of support ticket priorities
[**getSupportTicketPriorityAsync**](SupportTicketPrioritiesApi.md#getSupportTicketPriorityAsync) | **GET** /api/v2/SupportService/SupportTicketPriorities/{supportTicketPriorityId} | Retrieve a support ticket priority by ID
[**patchSupportTicketPriorityAsync**](SupportTicketPrioritiesApi.md#patchSupportTicketPriorityAsync) | **PATCH** /api/v2/SupportService/SupportTicketPriorities/{supportTicketPriorityId} | Patch a support ticket priority
[**updateSupportTicketPriorityAsync**](SupportTicketPrioritiesApi.md#updateSupportTicketPriorityAsync) | **PUT** /api/v2/SupportService/SupportTicketPriorities/{supportTicketPriorityId} | Update a support ticket priority



## createSupportTicketPriorityAsync

Create a new support ticket priority

Creates a new support ticket priority for the specified tenant.

### Example

```bash
 createSupportTicketPriorityAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **supportTicketPriorityCreateDto** | [**SupportTicketPriorityCreateDto**](SupportTicketPriorityCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteSupportTicketPriorityAsync

Delete a support ticket priority

Deletes a support ticket priority by its unique identifier.

### Example

```bash
 deleteSupportTicketPriorityAsync  tenantId=value supportTicketPriorityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportTicketPriorityId** | **string** |  | [default to null]
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


## getSupportTicketPrioritiesAsync

Retrieve a list of support ticket priorities

Retrieves a list of support ticket priorities for the specified tenant with OData query support.

### Example

```bash
 getSupportTicketPrioritiesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportTicketPriorityDtoListEnvelope**](SupportTicketPriorityDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSupportTicketPrioritiesCountAsync

Get the count of support ticket priorities

Returns the total count of support ticket priorities for the specified tenant with OData query support.

### Example

```bash
 getSupportTicketPrioritiesCountAsync  tenantId=value  api-version=value x-api-version:value
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


## getSupportTicketPriorityAsync

Retrieve a support ticket priority by ID

Retrieves a single support ticket priority by its unique identifier.

### Example

```bash
 getSupportTicketPriorityAsync  tenantId=value supportTicketPriorityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportTicketPriorityId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportTicketPriorityDtoEnvelope**](SupportTicketPriorityDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchSupportTicketPriorityAsync

Patch a support ticket priority

Partially updates an existing support ticket priority by its unique identifier.

### Example

```bash
 patchSupportTicketPriorityAsync  tenantId=value supportTicketPriorityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportTicketPriorityId** | **string** |  | [default to null]
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


## updateSupportTicketPriorityAsync

Update a support ticket priority

Updates an existing support ticket priority by its unique identifier.

### Example

```bash
 updateSupportTicketPriorityAsync  tenantId=value supportTicketPriorityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportTicketPriorityId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **supportTicketPriorityUpdateDto** | [**SupportTicketPriorityUpdateDto**](SupportTicketPriorityUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

