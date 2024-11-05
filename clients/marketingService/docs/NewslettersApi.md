# NewslettersApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2MarketingServiceNewslettersCountGet**](NewslettersApi.md#apiV2MarketingServiceNewslettersCountGet) | **GET** /api/v2/MarketingService/Newsletters/Count | 
[**apiV2MarketingServiceNewslettersGet**](NewslettersApi.md#apiV2MarketingServiceNewslettersGet) | **GET** /api/v2/MarketingService/Newsletters | 
[**apiV2MarketingServiceNewslettersNewsletterIdDelete**](NewslettersApi.md#apiV2MarketingServiceNewslettersNewsletterIdDelete) | **DELETE** /api/v2/MarketingService/Newsletters/{newsletterId} | 
[**apiV2MarketingServiceNewslettersNewsletterIdGet**](NewslettersApi.md#apiV2MarketingServiceNewslettersNewsletterIdGet) | **GET** /api/v2/MarketingService/Newsletters/{newsletterId} | 
[**apiV2MarketingServiceNewslettersNewsletterIdPut**](NewslettersApi.md#apiV2MarketingServiceNewslettersNewsletterIdPut) | **PUT** /api/v2/MarketingService/Newsletters/{newsletterId} | 
[**apiV2MarketingServiceNewslettersPost**](NewslettersApi.md#apiV2MarketingServiceNewslettersPost) | **POST** /api/v2/MarketingService/Newsletters | 



## apiV2MarketingServiceNewslettersCountGet



### Example

```bash
 apiV2MarketingServiceNewslettersCountGet  tenantId=value  api-version=value x-api-version:value
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2MarketingServiceNewslettersGet



### Example

```bash
 apiV2MarketingServiceNewslettersGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2MarketingServiceNewslettersNewsletterIdDelete



### Example

```bash
 apiV2MarketingServiceNewslettersNewsletterIdDelete  tenantId=value newsletterId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **newsletterId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2MarketingServiceNewslettersNewsletterIdGet



### Example

```bash
 apiV2MarketingServiceNewslettersNewsletterIdGet  tenantId=value newsletterId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **newsletterId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**NewsletterDtoEnvelope**](NewsletterDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2MarketingServiceNewslettersNewsletterIdPut



### Example

```bash
 apiV2MarketingServiceNewslettersNewsletterIdPut  tenantId=value newsletterId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **newsletterId** | **string** |  | [default to null]
 **newsletterUpdateDto** | [**NewsletterUpdateDto**](NewsletterUpdateDto.md) |  |
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2MarketingServiceNewslettersPost



### Example

```bash
 apiV2MarketingServiceNewslettersPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **newsletterCreateDto** | [**NewsletterCreateDto**](NewsletterCreateDto.md) |  |
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

