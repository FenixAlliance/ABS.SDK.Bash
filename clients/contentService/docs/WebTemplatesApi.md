# WebTemplatesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countWebTemplatesAsync**](WebTemplatesApi.md#countWebTemplatesAsync) | **GET** /api/v2/ContentService/WebTemplates/Count | Count web templates
[**createWebTemplateAsync**](WebTemplatesApi.md#createWebTemplateAsync) | **POST** /api/v2/ContentService/WebTemplates | Create a web template
[**deleteWebTemplateAsync**](WebTemplatesApi.md#deleteWebTemplateAsync) | **DELETE** /api/v2/ContentService/WebTemplates/{webTemplateId} | Delete a web template
[**getWebTemplateByIdAsync**](WebTemplatesApi.md#getWebTemplateByIdAsync) | **GET** /api/v2/ContentService/WebTemplates/{webTemplateId} | Get web template by ID
[**getWebTemplatesAsync**](WebTemplatesApi.md#getWebTemplatesAsync) | **GET** /api/v2/ContentService/WebTemplates | Get web templates
[**updateWebTemplateAsync**](WebTemplatesApi.md#updateWebTemplateAsync) | **PUT** /api/v2/ContentService/WebTemplates/{webTemplateId} | Update a web template



## countWebTemplatesAsync

Count web templates

Counts all web templates for the specified tenant.

### Example

```bash
 countWebTemplatesAsync  tenantId=value  api-version=value x-api-version:value
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


## createWebTemplateAsync

Create a web template

Creates a new web template for the specified tenant.

### Example

```bash
 createWebTemplateAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **webTemplateCreateDto** | [**WebTemplateCreateDto**](WebTemplateCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteWebTemplateAsync

Delete a web template

Deletes a web template for the specified tenant.

### Example

```bash
 deleteWebTemplateAsync  tenantId=value webTemplateId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webTemplateId** | **string** |  | [default to null]
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


## getWebTemplateByIdAsync

Get web template by ID

Retrieves a specific web template by its identifier.

### Example

```bash
 getWebTemplateByIdAsync  tenantId=value webTemplateId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webTemplateId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WebTemplateDtoEnvelope**](WebTemplateDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getWebTemplatesAsync

Get web templates

Retrieves all web templates for the specified tenant.

### Example

```bash
 getWebTemplatesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WebTemplateDtoListEnvelope**](WebTemplateDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateWebTemplateAsync

Update a web template

Updates an existing web template for the specified tenant.

### Example

```bash
 updateWebTemplateAsync  tenantId=value webTemplateId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **webTemplateId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **webTemplateUpdateDto** | [**WebTemplateUpdateDto**](WebTemplateUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

