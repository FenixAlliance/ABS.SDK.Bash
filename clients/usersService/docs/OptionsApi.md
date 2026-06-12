# OptionsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUserOption**](OptionsApi.md#createUserOption) | **POST** /api/v2/Me/Options | Create a new user option
[**deleteUserOption**](OptionsApi.md#deleteUserOption) | **DELETE** /api/v2/Me/Options/{optionId} | Delete a user option
[**getUserOptionById**](OptionsApi.md#getUserOptionById) | **GET** /api/v2/Me/Options/{optionId} | Retrieve a single user option by its ID
[**getUserOptionByKey**](OptionsApi.md#getUserOptionByKey) | **GET** /api/v2/Me/Options/Key/{key} | Retrieve a single user option by its key
[**getUserOptions**](OptionsApi.md#getUserOptions) | **GET** /api/v2/Me/Options | Retrieve a list of user options
[**getUserOptionsCount**](OptionsApi.md#getUserOptionsCount) | **GET** /api/v2/Me/Options/Count | Get the count of user options
[**patchUserOption**](OptionsApi.md#patchUserOption) | **PATCH** /api/v2/Me/Options/{optionId} | Patch a user option
[**updateUserOption**](OptionsApi.md#updateUserOption) | **PUT** /api/v2/Me/Options/{optionId} | Update a user option
[**upsertUserOption**](OptionsApi.md#upsertUserOption) | **PUT** /api/v2/Me/Options/Upsert/{key} | Create or update a user option by key



## createUserOption

Create a new user option

Create a new option for the current user

### Example

```bash
 createUserOption  key=value  portalId=value  api-version=value x-api-version:value
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


## deleteUserOption

Delete a user option

Delete a user option

### Example

```bash
 deleteUserOption optionId=value  api-version=value x-api-version:value
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


## getUserOptionById

Retrieve a single user option by its ID

Retrieve a single user option by its ID

### Example

```bash
 getUserOptionById optionId=value  api-version=value x-api-version:value
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


## getUserOptionByKey

Retrieve a single user option by its key

Retrieve a single user option by its key

### Example

```bash
 getUserOptionByKey key=value  portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **string** |  | [default to null]
 **portalId** | **string** |  | [optional] [default to null]
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


## getUserOptions

Retrieve a list of user options

Retrieve a list of options for the current user

### Example

```bash
 getUserOptions  portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalId** | **string** |  | [optional] [default to null]
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


## getUserOptionsCount

Get the count of user options

Get the count of options for the current user

### Example

```bash
 getUserOptionsCount  portalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalId** | **string** |  | [optional] [default to null]
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


## patchUserOption

Patch a user option

Partially updates a user option using a JSON Patch document

### Example

```bash
 patchUserOption optionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optionId** | **string** |  | [default to null]
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


## updateUserOption

Update a user option

Update a user option

### Example

```bash
 updateUserOption optionId=value  api-version=value x-api-version:value
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


## upsertUserOption

Create or update a user option by key

Create or update a user option by key

### Example

```bash
 upsertUserOption key=value  portalId=value  api-version=value x-api-version:value
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

