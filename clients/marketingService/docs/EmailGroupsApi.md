# EmailGroupsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmailGroupAsync**](EmailGroupsApi.md#createEmailGroupAsync) | **POST** /api/v2/MarketingService/EmailGroups | Create an email group
[**deleteEmailGroupAsync**](EmailGroupsApi.md#deleteEmailGroupAsync) | **DELETE** /api/v2/MarketingService/EmailGroups/{emailgroupId} | Delete an email group
[**getEmailGroupDetailsAsync**](EmailGroupsApi.md#getEmailGroupDetailsAsync) | **GET** /api/v2/MarketingService/EmailGroups/{emailgroupId} | Get email group by ID
[**getEmailGroupsCountAsync**](EmailGroupsApi.md#getEmailGroupsCountAsync) | **GET** /api/v2/MarketingService/EmailGroups/Count | Get email groups count
[**getEmailGroupsODataAsync**](EmailGroupsApi.md#getEmailGroupsODataAsync) | **GET** /api/v2/MarketingService/EmailGroups | Get email groups
[**updateEmailGroupAsync**](EmailGroupsApi.md#updateEmailGroupAsync) | **PUT** /api/v2/MarketingService/EmailGroups/{emailgroupId} | Update an email group



## createEmailGroupAsync

Create an email group

Creates a new email group for the specified tenant.

### Example

```bash
 createEmailGroupAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **emailGroupCreateDto** | [**EmailGroupCreateDto**](EmailGroupCreateDto.md) |  |
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


## deleteEmailGroupAsync

Delete an email group

Deletes an email group by its ID.

### Example

```bash
 deleteEmailGroupAsync  tenantId=value emailgroupId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **emailgroupId** | **string** |  | [default to null]
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


## getEmailGroupDetailsAsync

Get email group by ID

Retrieves the details of a specific email group by its ID.

### Example

```bash
 getEmailGroupDetailsAsync  tenantId=value emailgroupId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **emailgroupId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmailGroupDtoEnvelope**](EmailGroupDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getEmailGroupsCountAsync

Get email groups count

Returns the count of email groups for the specified tenant using OData query options.

### Example

```bash
 getEmailGroupsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## getEmailGroupsODataAsync

Get email groups

Retrieves a collection of email groups for the specified tenant using OData query options.

### Example

```bash
 getEmailGroupsODataAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmailGroupDtoListEnvelope**](EmailGroupDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateEmailGroupAsync

Update an email group

Updates an existing email group by its ID.

### Example

```bash
 updateEmailGroupAsync  tenantId=value emailgroupId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **emailgroupId** | **string** |  | [default to null]
 **emailGroupUpdateDto** | [**EmailGroupUpdateDto**](EmailGroupUpdateDto.md) |  |
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

