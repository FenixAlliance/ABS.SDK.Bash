# SupportRequestAttachmentsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSupportRequestAttachmentAsync**](SupportRequestAttachmentsApi.md#createSupportRequestAttachmentAsync) | **POST** /api/v2/SupportService/SupportRequestAttachments | Create a new support request attachment
[**deleteSupportRequestAttachmentAsync**](SupportRequestAttachmentsApi.md#deleteSupportRequestAttachmentAsync) | **DELETE** /api/v2/SupportService/SupportRequestAttachments/{supportRequestAttachmentId} | Delete a support request attachment
[**getSupportRequestAttachmentAsync**](SupportRequestAttachmentsApi.md#getSupportRequestAttachmentAsync) | **GET** /api/v2/SupportService/SupportRequestAttachments/{supportRequestAttachmentId} | Retrieve a support request attachment by ID
[**getSupportRequestAttachmentsAsync**](SupportRequestAttachmentsApi.md#getSupportRequestAttachmentsAsync) | **GET** /api/v2/SupportService/SupportRequestAttachments | Retrieve a list of support request attachments
[**getSupportRequestAttachmentsCountAsync**](SupportRequestAttachmentsApi.md#getSupportRequestAttachmentsCountAsync) | **GET** /api/v2/SupportService/SupportRequestAttachments/Count | Get the count of support request attachments
[**patchSupportRequestAttachmentAsync**](SupportRequestAttachmentsApi.md#patchSupportRequestAttachmentAsync) | **PATCH** /api/v2/SupportService/SupportRequestAttachments/{supportRequestAttachmentId} | Patch a support request attachment
[**updateSupportRequestAttachmentAsync**](SupportRequestAttachmentsApi.md#updateSupportRequestAttachmentAsync) | **PUT** /api/v2/SupportService/SupportRequestAttachments/{supportRequestAttachmentId} | Update a support request attachment



## createSupportRequestAttachmentAsync

Create a new support request attachment

Creates a new support request attachment for the specified tenant.

### Example

```bash
 createSupportRequestAttachmentAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **supportRequestAttachmentCreateDto** | [**SupportRequestAttachmentCreateDto**](SupportRequestAttachmentCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteSupportRequestAttachmentAsync

Delete a support request attachment

Deletes a support request attachment by its unique identifier.

### Example

```bash
 deleteSupportRequestAttachmentAsync  tenantId=value supportRequestAttachmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportRequestAttachmentId** | **string** |  | [default to null]
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


## getSupportRequestAttachmentAsync

Retrieve a support request attachment by ID

Retrieves a single support request attachment by its unique identifier.

### Example

```bash
 getSupportRequestAttachmentAsync  tenantId=value supportRequestAttachmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportRequestAttachmentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportRequestAttachmentDtoEnvelope**](SupportRequestAttachmentDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSupportRequestAttachmentsAsync

Retrieve a list of support request attachments

Retrieves a list of support request attachments for the specified tenant with OData query support.

### Example

```bash
 getSupportRequestAttachmentsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportRequestAttachmentDtoListEnvelope**](SupportRequestAttachmentDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSupportRequestAttachmentsCountAsync

Get the count of support request attachments

Returns the total count of support request attachments for the specified tenant with OData query support.

### Example

```bash
 getSupportRequestAttachmentsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchSupportRequestAttachmentAsync

Patch a support request attachment

Partially updates an existing support request attachment by its unique identifier.

### Example

```bash
 patchSupportRequestAttachmentAsync  tenantId=value supportRequestAttachmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportRequestAttachmentId** | **string** |  | [default to null]
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


## updateSupportRequestAttachmentAsync

Update a support request attachment

Updates an existing support request attachment by its unique identifier.

### Example

```bash
 updateSupportRequestAttachmentAsync  tenantId=value supportRequestAttachmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **supportRequestAttachmentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **supportRequestAttachmentUpdateDto** | [**SupportRequestAttachmentUpdateDto**](SupportRequestAttachmentUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

