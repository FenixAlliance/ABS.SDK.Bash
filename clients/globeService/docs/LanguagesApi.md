# LanguagesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2GlobeServiceLanguagesGet**](LanguagesApi.md#apiV2GlobeServiceLanguagesGet) | **GET** /api/v2/GlobeService/Languages | 
[**apiV2GlobeServiceLanguagesLanguageIdGet**](LanguagesApi.md#apiV2GlobeServiceLanguagesLanguageIdGet) | **GET** /api/v2/GlobeService/Languages/{languageId} | 



## apiV2GlobeServiceLanguagesGet



### Example

```bash
 apiV2GlobeServiceLanguagesGet  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CountryLanguageDtoListEnvelope**](CountryLanguageDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2GlobeServiceLanguagesLanguageIdGet



### Example

```bash
 apiV2GlobeServiceLanguagesLanguageIdGet languageId=value  api-version=value x-api-version:value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

