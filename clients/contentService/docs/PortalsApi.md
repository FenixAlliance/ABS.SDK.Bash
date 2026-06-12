# PortalsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**bindWebPortalDomainAsync**](PortalsApi.md#bindWebPortalDomainAsync) | **POST** /api/v2/ContentService/Portals/{portalId}/DomainBindings/{businessDomainId} | Bind a domain to a web portal
[**countPortalsAsync**](PortalsApi.md#countPortalsAsync) | **GET** /api/v2/ContentService/Portals/Count | Count portals
[**createWebPortalAsync**](PortalsApi.md#createWebPortalAsync) | **POST** /api/v2/ContentService/Portals | Create a new web portal
[**deleteWebPortalAsync**](PortalsApi.md#deleteWebPortalAsync) | **DELETE** /api/v2/ContentService/Portals/{portalId} | Delete a web portal
[**getCurrentWebPortalAsync**](PortalsApi.md#getCurrentWebPortalAsync) | **GET** /api/v2/ContentService/Portals/Current | Get the current portal
[**getCurrentWebPortalOptionsAsync**](PortalsApi.md#getCurrentWebPortalOptionsAsync) | **GET** /api/v2/ContentService/Portals/Current/Options | Get the current portal&#39;s options
[**getPortalsAsync**](PortalsApi.md#getPortalsAsync) | **GET** /api/v2/ContentService/Portals | Get portals
[**getRootWebPortalAsync**](PortalsApi.md#getRootWebPortalAsync) | **GET** /api/v2/ContentService/Portals/Root | Get the root portal
[**getWebPortalByIdAsync**](PortalsApi.md#getWebPortalByIdAsync) | **GET** /api/v2/ContentService/Portals/{portalId} | Get a web portal by its ID
[**getWebPortalDomainBindingsAsync**](PortalsApi.md#getWebPortalDomainBindingsAsync) | **GET** /api/v2/ContentService/Portals/{portalId}/DomainBindings | Get a web portal&#39;s bound domains
[**getWebPortalOptionsAsync**](PortalsApi.md#getWebPortalOptionsAsync) | **GET** /api/v2/ContentService/Portals/{portalId}/Options | Get a web portal&#39;s options by its ID
[**getWebPortalSettingsAsync**](PortalsApi.md#getWebPortalSettingsAsync) | **GET** /api/v2/ContentService/Portals/{portalId}/Settings | Get a web portal&#39;s settings by its ID
[**initializeCurrentWebPortalAsync**](PortalsApi.md#initializeCurrentWebPortalAsync) | **POST** /api/v2/ContentService/Portals/Initialize | Initialize the current portal
[**patchWebPortalAsync**](PortalsApi.md#patchWebPortalAsync) | **PATCH** /api/v2/ContentService/Portals/{portalId} | Partially update a web portal
[**searchWebPortalAsync**](PortalsApi.md#searchWebPortalAsync) | **GET** /api/v2/ContentService/Portals/Search | Search for a portal by its domain
[**unbindWebPortalDomainAsync**](PortalsApi.md#unbindWebPortalDomainAsync) | **DELETE** /api/v2/ContentService/Portals/{portalId}/DomainBindings/{businessDomainId} | Unbind a domain from a web portal
[**updateWebPortalAsync**](PortalsApi.md#updateWebPortalAsync) | **PUT** /api/v2/ContentService/Portals/{portalId} | Update an existing web portal
[**updateWebPortalSettingsAsync**](PortalsApi.md#updateWebPortalSettingsAsync) | **PUT** /api/v2/ContentService/Portals/{portalId}/Settings | Update a web portal&#39;s settings



## bindWebPortalDomainAsync

Bind a domain to a web portal

Bind a verified BusinessDomain to a web portal

### Example

```bash
 bindWebPortalDomainAsync  tenantId=value portalId=value businessDomainId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **portalId** | **string** |  | [default to null]
 **businessDomainId** | **string** |  | [default to null]
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


## countPortalsAsync

Count portals

Counts all portals for the specified tenant.

### Example

```bash
 countPortalsAsync  tenantId=value  api-version=value x-api-version:value
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


## createWebPortalAsync

Create a new web portal

Create a new web portal

### Example

```bash
 createWebPortalAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **webPortalCreateDto** | [**WebPortalCreateDto**](WebPortalCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteWebPortalAsync

Delete a web portal

Delete a web portal

### Example

```bash
 deleteWebPortalAsync  tenantId=value portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **portalId** | **string** |  | [default to null]
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


## getCurrentWebPortalAsync

Get the current portal

Get the current portal of the this server instance

### Example

```bash
 getCurrentWebPortalAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WebPortalDtoEnvelope**](WebPortalDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurrentWebPortalOptionsAsync

Get the current portal's options

Get the current portal's options for the current user.

### Example

```bash
 getCurrentWebPortalOptionsAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**PortalOptionsEnvelope**](PortalOptionsEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPortalsAsync

Get portals

Retrieves all portals for the specified tenant.

### Example

```bash
 getPortalsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WebPortalDtoListEnvelope**](WebPortalDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getRootWebPortalAsync

Get the root portal

Get the root portal of the this server instance

### Example

```bash
 getRootWebPortalAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WebPortalDtoEnvelope**](WebPortalDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getWebPortalByIdAsync

Get a web portal by its ID

Get a web portal by its ID

### Example

```bash
 getWebPortalByIdAsync portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WebPortalDtoEnvelope**](WebPortalDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getWebPortalDomainBindingsAsync

Get a web portal's bound domains

Get the BusinessDomains bound to a web portal

### Example

```bash
 getWebPortalDomainBindingsAsync  tenantId=value portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **portalId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**BusinessDomainDtoListEnvelope**](BusinessDomainDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getWebPortalOptionsAsync

Get a web portal's options by its ID

Get a web portal's options by its ID

### Example

```bash
 getWebPortalOptionsAsync portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**PortalOptionsEnvelope**](PortalOptionsEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getWebPortalSettingsAsync

Get a web portal's settings by its ID

Get a web portal's settings by its ID

### Example

```bash
 getWebPortalSettingsAsync portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**PortalSettingsEnvelope**](PortalSettingsEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## initializeCurrentWebPortalAsync

Initialize the current portal

Initialize the current portal for the current user.

### Example

```bash
 initializeCurrentWebPortalAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WebPortalDtoEnvelope**](WebPortalDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchWebPortalAsync

Partially update a web portal

Partially update a web portal

### Example

```bash
 patchWebPortalAsync  tenantId=value portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **portalId** | **string** |  | [default to null]
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


## searchWebPortalAsync

Search for a portal by its domain

Search for a portal by its domain

### Example

```bash
 searchWebPortalAsync  domain=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WebPortalDtoEnvelope**](WebPortalDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## unbindWebPortalDomainAsync

Unbind a domain from a web portal

Unbind a BusinessDomain from a web portal

### Example

```bash
 unbindWebPortalDomainAsync  tenantId=value portalId=value businessDomainId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **portalId** | **string** |  | [default to null]
 **businessDomainId** | **string** |  | [default to null]
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


## updateWebPortalAsync

Update an existing web portal

Update an existing web portal

### Example

```bash
 updateWebPortalAsync  tenantId=value portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **portalId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **webPortalUpdateDto** | [**WebPortalUpdateDto**](WebPortalUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateWebPortalSettingsAsync

Update a web portal's settings

Update a web portal's settings (Options) by its ID

### Example

```bash
 updateWebPortalSettingsAsync  tenantId=value portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **portalId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **portalSettings** | [**PortalSettings**](PortalSettings.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

