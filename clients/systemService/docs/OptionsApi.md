# OptionsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSystemOption**](OptionsApi.md#createSystemOption) | **POST** /api/v2/SystemService/Options | Create a new system option
[**deleteSystemOption**](OptionsApi.md#deleteSystemOption) | **DELETE** /api/v2/SystemService/Options/{optionId} | Delete a system option
[**getSystemOptionById**](OptionsApi.md#getSystemOptionById) | **GET** /api/v2/SystemService/Options/{optionId} | Retrieve a single system option by its ID
[**getSystemOptionByKey**](OptionsApi.md#getSystemOptionByKey) | **GET** /api/v2/SystemService/Options/Key/{key} | Retrieve a single system option by its key
[**getSystemOptions**](OptionsApi.md#getSystemOptions) | **GET** /api/v2/SystemService/Options | Retrieve a list of system options
[**getSystemOptionsCount**](OptionsApi.md#getSystemOptionsCount) | **GET** /api/v2/SystemService/Options/Count | Get the count of system options
[**updateSystemOption**](OptionsApi.md#updateSystemOption) | **PUT** /api/v2/SystemService/Options/{optionId} | Update a system option
[**upsertSystemOption**](OptionsApi.md#upsertSystemOption) | **PUT** /api/v2/SystemService/Options/Upsert/{key} | Create or update a system option by key



## createSystemOption

Create a new system option

Create a new system option

### Example

```bash
 createSystemOption  key=value  portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **string** |  | [default to null]
 **portalId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **optionCreateDto** | [**OptionCreateDto**](OptionCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteSystemOption

Delete a system option

Delete a system option

### Example

```bash
 deleteSystemOption optionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optionId** | **string** |  | [default to null]
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


## getSystemOptionById

Retrieve a single system option by its ID

Retrieve a single system option by its ID

### Example

```bash
 getSystemOptionById optionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optionId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**OptionDtoEnvelope**](OptionDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSystemOptionByKey

Retrieve a single system option by its key

Retrieve a single system option by its key

### Example

```bash
 getSystemOptionByKey  portalId=value key=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalId** | **string** |  | [default to null]
 **key** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**OptionDtoEnvelope**](OptionDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSystemOptions

Retrieve a list of system options

Retrieve a list of system options for a portal

### Example

```bash
 getSystemOptions  portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**OptionDtoListEnvelope**](OptionDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSystemOptionsCount

Get the count of system options

Get the count of system options for a portal

### Example

```bash
 getSystemOptionsCount  portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalId** | **string** |  | [default to null]
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


## updateSystemOption

Update a system option

Update a system option

### Example

```bash
 updateSystemOption optionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optionId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **optionUpdateDto** | [**OptionUpdateDto**](OptionUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## upsertSystemOption

Create or update a system option by key

Create or update a system option by key

### Example

```bash
 upsertSystemOption key=value  portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **string** |  | [default to null]
 **portalId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **optionUpdateDto** | [**OptionUpdateDto**](OptionUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

