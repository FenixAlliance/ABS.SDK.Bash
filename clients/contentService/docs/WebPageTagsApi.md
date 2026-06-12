# WebPageTagsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countWebPageTagsAsync**](WebPageTagsApi.md#countWebPageTagsAsync) | **GET** /api/v2/ContentService/WebPageTags/Count | Count web page tags
[**createWebPageTagAsync**](WebPageTagsApi.md#createWebPageTagAsync) | **POST** /api/v2/ContentService/WebPageTags | Create a web page tag
[**deleteWebPageTagAsync**](WebPageTagsApi.md#deleteWebPageTagAsync) | **DELETE** /api/v2/ContentService/WebPageTags/{webPageTagId} | Delete a web page tag
[**getWebPageTagByIdAsync**](WebPageTagsApi.md#getWebPageTagByIdAsync) | **GET** /api/v2/ContentService/WebPageTags/{webPageTagId} | Get web page tag by ID
[**getWebPageTagsAsync**](WebPageTagsApi.md#getWebPageTagsAsync) | **GET** /api/v2/ContentService/WebPageTags | Get web page tags
[**patchWebPageTagAsync**](WebPageTagsApi.md#patchWebPageTagAsync) | **PATCH** /api/v2/ContentService/WebPageTags/{webPageTagId} | Patch a web page tag
[**updateWebPageTagAsync**](WebPageTagsApi.md#updateWebPageTagAsync) | **PUT** /api/v2/ContentService/WebPageTags/{webPageTagId} | Update a web page tag



## countWebPageTagsAsync

Count web page tags

Counts all web page tags for the specified tenant.

### Example

```bash
 countWebPageTagsAsync  tenantId=value  api-version=value x-api-version:value
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


## createWebPageTagAsync

Create a web page tag

Creates a new web page tag for the specified tenant.

### Example

```bash
 createWebPageTagAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **webPageTagCreateDto** | [**WebPageTagCreateDto**](WebPageTagCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteWebPageTagAsync

Delete a web page tag

Deletes a web page tag for the specified tenant.

### Example

```bash
 deleteWebPageTagAsync  tenantId=value webPageTagId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webPageTagId** | **string** |  | [default to null]
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


## getWebPageTagByIdAsync

Get web page tag by ID

Retrieves a specific web page tag by its ID.

### Example

```bash
 getWebPageTagByIdAsync  tenantId=value webPageTagId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webPageTagId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WebPageTagDtoEnvelope**](WebPageTagDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getWebPageTagsAsync

Get web page tags

Retrieves all web page tags for the specified tenant.

### Example

```bash
 getWebPageTagsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WebPageTagDtoListEnvelope**](WebPageTagDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchWebPageTagAsync

Patch a web page tag

Partially updates an existing web page tag for the specified tenant.

### Example

```bash
 patchWebPageTagAsync  tenantId=value webPageTagId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webPageTagId** | **string** |  | [default to null]
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


## updateWebPageTagAsync

Update a web page tag

Updates an existing web page tag for the specified tenant.

### Example

```bash
 updateWebPageTagAsync  tenantId=value webPageTagId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webPageTagId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **webPageTagUpdateDto** | [**WebPageTagUpdateDto**](WebPageTagUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

