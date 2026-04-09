# LanguagesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countLanguagesAsync**](LanguagesApi.md#countLanguagesAsync) | **GET** /api/v2/GlobeService/Languages/Count | Count languages
[**getLanguageByIdAsync**](LanguagesApi.md#getLanguageByIdAsync) | **GET** /api/v2/GlobeService/Languages/{languageId} | Get language by ID
[**getLanguagesAsync**](LanguagesApi.md#getLanguagesAsync) | **GET** /api/v2/GlobeService/Languages | Get all languages



## countLanguagesAsync

Count languages

Returns the total number of supported languages, with optional OData filtering.

### Example

```bash
 countLanguagesAsync  api-version=value x-api-version:value
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


## getLanguageByIdAsync

Get language by ID

Retrieves a single language by its unique identifier.

### Example

```bash
 getLanguageByIdAsync languageId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **languageId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CountryLanguageDtoEnvelope**](CountryLanguageDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getLanguagesAsync

Get all languages

Retrieves the list of all supported languages with optional OData pagination and filtering.

### Example

```bash
 getLanguagesAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CountryLanguageDtoListEnvelope**](CountryLanguageDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

