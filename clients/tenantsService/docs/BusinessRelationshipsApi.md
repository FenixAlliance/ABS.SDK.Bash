# BusinessRelationshipsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBusinessRelationshipAsync**](BusinessRelationshipsApi.md#createBusinessRelationshipAsync) | **POST** /api/v2/TenantsService/BusinessRelationships | Create a business relationship
[**deleteBusinessRelationshipAsync**](BusinessRelationshipsApi.md#deleteBusinessRelationshipAsync) | **DELETE** /api/v2/TenantsService/BusinessRelationships/{businessRelationshipId} | Delete a business relationship
[**getBusinessRelationshipByIdAsync**](BusinessRelationshipsApi.md#getBusinessRelationshipByIdAsync) | **GET** /api/v2/TenantsService/BusinessRelationships/{businessRelationshipId} | Get business relationship by ID
[**getBusinessRelationshipsAsync**](BusinessRelationshipsApi.md#getBusinessRelationshipsAsync) | **GET** /api/v2/TenantsService/BusinessRelationships | Get business relationships
[**getBusinessRelationshipsCountAsync**](BusinessRelationshipsApi.md#getBusinessRelationshipsCountAsync) | **GET** /api/v2/TenantsService/BusinessRelationships/Count | Get business relationships count
[**updateBusinessRelationshipAsync**](BusinessRelationshipsApi.md#updateBusinessRelationshipAsync) | **PUT** /api/v2/TenantsService/BusinessRelationships/{businessRelationshipId} | Update a business relationship



## createBusinessRelationshipAsync

Create a business relationship

Creates a new business relationship owned by the specified parent tenant.

### Example

```bash
 createBusinessRelationshipAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **businessRelationshipCreateDto** | [**BusinessRelationshipCreateDto**](BusinessRelationshipCreateDto.md) |  |
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


## deleteBusinessRelationshipAsync

Delete a business relationship

Deletes a business relationship by its ID.

### Example

```bash
 deleteBusinessRelationshipAsync  tenantId=value businessRelationshipId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **businessRelationshipId** | **string** |  | [default to null]
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


## getBusinessRelationshipByIdAsync

Get business relationship by ID

Retrieves the details of a specific business relationship by its ID.

### Example

```bash
 getBusinessRelationshipByIdAsync  tenantId=value businessRelationshipId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **businessRelationshipId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BusinessRelationshipDtoEnvelope**](BusinessRelationshipDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBusinessRelationshipsAsync

Get business relationships

Retrieves the child business relationships owned by the specified parent tenant using OData query options.

### Example

```bash
 getBusinessRelationshipsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BusinessRelationshipDtoListEnvelope**](BusinessRelationshipDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBusinessRelationshipsCountAsync

Get business relationships count

Returns the count of child business relationships owned by the specified parent tenant.

### Example

```bash
 getBusinessRelationshipsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## updateBusinessRelationshipAsync

Update a business relationship

Updates an existing business relationship by its ID.

### Example

```bash
 updateBusinessRelationshipAsync  tenantId=value businessRelationshipId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **businessRelationshipId** | **string** |  | [default to null]
 **businessRelationshipUpdateDto** | [**BusinessRelationshipUpdateDto**](BusinessRelationshipUpdateDto.md) |  |
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

