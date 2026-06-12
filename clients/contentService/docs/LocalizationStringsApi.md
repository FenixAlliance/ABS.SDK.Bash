# LocalizationStringsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countLocalizationStringsAsync**](LocalizationStringsApi.md#countLocalizationStringsAsync) | **GET** /api/v2/ContentService/LocalizationStrings/Count | Count localization strings
[**createLocalizationStringAsync**](LocalizationStringsApi.md#createLocalizationStringAsync) | **POST** /api/v2/ContentService/LocalizationStrings | Create a localization string
[**deleteLocalizationStringAsync**](LocalizationStringsApi.md#deleteLocalizationStringAsync) | **DELETE** /api/v2/ContentService/LocalizationStrings/{localizationStringId} | Delete a localization string
[**getLocalizationStringByIdAsync**](LocalizationStringsApi.md#getLocalizationStringByIdAsync) | **GET** /api/v2/ContentService/LocalizationStrings/{localizationStringId} | Get localization string by ID
[**getLocalizationStringsAsync**](LocalizationStringsApi.md#getLocalizationStringsAsync) | **GET** /api/v2/ContentService/LocalizationStrings | Get localization strings
[**updateLocalizationStringAsync**](LocalizationStringsApi.md#updateLocalizationStringAsync) | **PUT** /api/v2/ContentService/LocalizationStrings/{localizationStringId} | Update a localization string



## countLocalizationStringsAsync

Count localization strings

Counts all localization strings for the specified tenant.

### Example

```bash
 countLocalizationStringsAsync  tenantId=value  api-version=value x-api-version:value
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


## createLocalizationStringAsync

Create a localization string

Creates a new localization string for the specified tenant.

### Example

```bash
 createLocalizationStringAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **localizationStringCreateDto** | [**LocalizationStringCreateDto**](LocalizationStringCreateDto.md) |  |
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


## deleteLocalizationStringAsync

Delete a localization string

Deletes a localization string for the specified tenant.

### Example

```bash
 deleteLocalizationStringAsync  tenantId=value localizationStringId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **localizationStringId** | **string** |  | [default to null]
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


## getLocalizationStringByIdAsync

Get localization string by ID

Retrieves a specific localization string by its identifier.

### Example

```bash
 getLocalizationStringByIdAsync  tenantId=value localizationStringId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **localizationStringId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**LocalizationStringDtoEnvelope**](LocalizationStringDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getLocalizationStringsAsync

Get localization strings

Retrieves all localization strings for the specified tenant.

### Example

```bash
 getLocalizationStringsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**LocalizationStringDtoListEnvelope**](LocalizationStringDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateLocalizationStringAsync

Update a localization string

Updates an existing localization string for the specified tenant.

### Example

```bash
 updateLocalizationStringAsync  tenantId=value localizationStringId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **localizationStringId** | **string** |  | [default to null]
 **localizationStringUpdateDto** | [**LocalizationStringUpdateDto**](LocalizationStringUpdateDto.md) |  |
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

