# PortalsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSystemPortal**](PortalsApi.md#createSystemPortal) | **POST** /api/v2/SystemService/Portals | Create a new system portal
[**deleteSystemPortal**](PortalsApi.md#deleteSystemPortal) | **DELETE** /api/v2/SystemService/Portals/{portalId} | Delete a system portal
[**getSystemPortalById**](PortalsApi.md#getSystemPortalById) | **GET** /api/v2/SystemService/Portals/{portalId} | Retrieve a single system portal by its ID
[**getSystemPortals**](PortalsApi.md#getSystemPortals) | **GET** /api/v2/SystemService/Portals | Retrieve a list of system portals
[**getSystemPortalsCount**](PortalsApi.md#getSystemPortalsCount) | **GET** /api/v2/SystemService/Portals/Count | Get the count of system portals
[**patchSystemPortal**](PortalsApi.md#patchSystemPortal) | **PATCH** /api/v2/SystemService/Portals/{portalId} | Partially update a system portal
[**updateSystemPortal**](PortalsApi.md#updateSystemPortal) | **PUT** /api/v2/SystemService/Portals/{portalId} | Update a system portal



## createSystemPortal

Create a new system portal

Create a new web portal in the system

### Example

```bash
 createSystemPortal  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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


## deleteSystemPortal

Delete a system portal

Delete a web portal from the system

### Example

```bash
 deleteSystemPortal portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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


## getSystemPortalById

Retrieve a single system portal by its ID

Retrieve a single system portal by its ID

### Example

```bash
 getSystemPortalById portalId=value  api-version=value x-api-version:value
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


## getSystemPortals

Retrieve a list of system portals

Retrieve a list of all web portals in the system

### Example

```bash
 getSystemPortals  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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


## getSystemPortalsCount

Get the count of system portals

Get the count of all web portals in the system

### Example

```bash
 getSystemPortalsCount  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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


## patchSystemPortal

Partially update a system portal

Partially update an existing web portal in the system using a JSON Patch document

### Example

```bash
 patchSystemPortal portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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


## updateSystemPortal

Update a system portal

Update an existing web portal in the system

### Example

```bash
 updateSystemPortal portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

