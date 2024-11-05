# CountriesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2GlobeServiceCountriesCountryIdCallingCodesGet**](CountriesApi.md#apiV2GlobeServiceCountriesCountryIdCallingCodesGet) | **GET** /api/v2/GlobeService/Countries/{countryId}/CallingCodes | 
[**apiV2GlobeServiceCountriesCountryIdCurrenciesGet**](CountriesApi.md#apiV2GlobeServiceCountriesCountryIdCurrenciesGet) | **GET** /api/v2/GlobeService/Countries/{countryId}/Currencies | 
[**apiV2GlobeServiceCountriesCountryIdGet**](CountriesApi.md#apiV2GlobeServiceCountriesCountryIdGet) | **GET** /api/v2/GlobeService/Countries/{countryId} | 
[**apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet**](CountriesApi.md#apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet) | **GET** /api/v2/GlobeService/Countries/{countryId}/States/{countryStateId}/Cities | 
[**apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet**](CountriesApi.md#apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet) | **GET** /api/v2/GlobeService/Countries/{countryId}/States/{countryStateId} | 
[**apiV2GlobeServiceCountriesCountryIdStatesGet**](CountriesApi.md#apiV2GlobeServiceCountriesCountryIdStatesGet) | **GET** /api/v2/GlobeService/Countries/{countryId}/States | 
[**apiV2GlobeServiceCountriesCountryIdTimezonesGet**](CountriesApi.md#apiV2GlobeServiceCountriesCountryIdTimezonesGet) | **GET** /api/v2/GlobeService/Countries/{countryId}/Timezones | 
[**apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet**](CountriesApi.md#apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet) | **GET** /api/v2/GlobeService/Countries/{countryId}/TopLevelDomains | 
[**apiV2GlobeServiceCountriesGet**](CountriesApi.md#apiV2GlobeServiceCountriesGet) | **GET** /api/v2/GlobeService/Countries | 
[**apiV2GlobeServiceCountriesSearchGet**](CountriesApi.md#apiV2GlobeServiceCountriesSearchGet) | **GET** /api/v2/GlobeService/Countries/Search | 



## apiV2GlobeServiceCountriesCountryIdCallingCodesGet



### Example

```bash
 apiV2GlobeServiceCountriesCountryIdCallingCodesGet countryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CountryCallingCodeDtoListEnvelope**](CountryCallingCodeDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2GlobeServiceCountriesCountryIdCurrenciesGet



### Example

```bash
 apiV2GlobeServiceCountriesCountryIdCurrenciesGet countryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CurrencyDtoListEnvelope**](CurrencyDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2GlobeServiceCountriesCountryIdGet



### Example

```bash
 apiV2GlobeServiceCountriesCountryIdGet countryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CountryDtoEnvelope**](CountryDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet



### Example

```bash
 apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet countryStateId=value countryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryStateId** | **string** |  | [default to null]
 **countryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CityDtoListEnvelope**](CityDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet



### Example

```bash
 apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet countryStateId=value countryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryStateId** | **string** |  | [default to null]
 **countryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CountryStateDtoEnvelope**](CountryStateDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2GlobeServiceCountriesCountryIdStatesGet



### Example

```bash
 apiV2GlobeServiceCountriesCountryIdStatesGet countryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CountryStateDtoListEnvelope**](CountryStateDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2GlobeServiceCountriesCountryIdTimezonesGet



### Example

```bash
 apiV2GlobeServiceCountriesCountryIdTimezonesGet countryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TimezoneDtoListEnvelope**](TimezoneDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet



### Example

```bash
 apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet countryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CountryTopLevelDomainDtoListEnvelope**](CountryTopLevelDomainDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2GlobeServiceCountriesGet



### Example

```bash
 apiV2GlobeServiceCountriesGet  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CountryDtoListEnvelope**](CountryDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2GlobeServiceCountriesSearchGet



### Example

```bash
 apiV2GlobeServiceCountriesSearchGet  countryName=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **countryName** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CountryDtoListEnvelope**](CountryDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

