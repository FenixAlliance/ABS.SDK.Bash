# SupportEntitlementsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSupportEntitlementAsync**](SupportEntitlementsApi.md#createSupportEntitlementAsync) | **POST** /api/v2/SupportService/SupportEntitlements | Create a new support entitlement
[**deleteSupportEntitlementAsync**](SupportEntitlementsApi.md#deleteSupportEntitlementAsync) | **DELETE** /api/v2/SupportService/SupportEntitlements/{supportEntitlementId} | Delete a support entitlement
[**getSupportEntitlementAsync**](SupportEntitlementsApi.md#getSupportEntitlementAsync) | **GET** /api/v2/SupportService/SupportEntitlements/{supportEntitlementId} | Retrieve a support entitlement by ID
[**getSupportEntitlementsAsync**](SupportEntitlementsApi.md#getSupportEntitlementsAsync) | **GET** /api/v2/SupportService/SupportEntitlements | Retrieve a list of support entitlements
[**getSupportEntitlementsCountAsync**](SupportEntitlementsApi.md#getSupportEntitlementsCountAsync) | **GET** /api/v2/SupportService/SupportEntitlements/Count | Get the count of support entitlements
[**updateSupportEntitlementAsync**](SupportEntitlementsApi.md#updateSupportEntitlementAsync) | **PUT** /api/v2/SupportService/SupportEntitlements/{supportEntitlementId} | Update a support entitlement



## createSupportEntitlementAsync

Create a new support entitlement

Creates a new support entitlement for the specified tenant.

### Example

```bash
 createSupportEntitlementAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **supportEntitlementCreateDto** | [**SupportEntitlementCreateDto**](SupportEntitlementCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteSupportEntitlementAsync

Delete a support entitlement

Deletes a support entitlement by its unique identifier.

### Example

```bash
 deleteSupportEntitlementAsync  tenantId=value supportEntitlementId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportEntitlementId** | **string** |  | [default to null]
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


## getSupportEntitlementAsync

Retrieve a support entitlement by ID

Retrieves a single support entitlement by its unique identifier.

### Example

```bash
 getSupportEntitlementAsync  tenantId=value supportEntitlementId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportEntitlementId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportEntitlementDtoEnvelope**](SupportEntitlementDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSupportEntitlementsAsync

Retrieve a list of support entitlements

Retrieves a list of support entitlements for the specified tenant with OData query support.

### Example

```bash
 getSupportEntitlementsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportEntitlementDtoListEnvelope**](SupportEntitlementDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSupportEntitlementsCountAsync

Get the count of support entitlements

Returns the total count of support entitlements for the specified tenant with OData query support.

### Example

```bash
 getSupportEntitlementsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## updateSupportEntitlementAsync

Update a support entitlement

Updates an existing support entitlement by its unique identifier.

### Example

```bash
 updateSupportEntitlementAsync  tenantId=value supportEntitlementId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportEntitlementId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **supportEntitlementUpdateDto** | [**SupportEntitlementUpdateDto**](SupportEntitlementUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

