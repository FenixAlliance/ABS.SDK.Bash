# MarketingCampaignsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2MarketingServiceMarketingCampaignsCountGet**](MarketingCampaignsApi.md#apiV2MarketingServiceMarketingCampaignsCountGet) | **GET** /api/v2/MarketingService/MarketingCampaigns/Count | 
[**apiV2MarketingServiceMarketingCampaignsGet**](MarketingCampaignsApi.md#apiV2MarketingServiceMarketingCampaignsGet) | **GET** /api/v2/MarketingService/MarketingCampaigns | 
[**apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete**](MarketingCampaignsApi.md#apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete) | **DELETE** /api/v2/MarketingService/MarketingCampaigns/{marketingcampaignId} | 
[**apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet**](MarketingCampaignsApi.md#apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet) | **GET** /api/v2/MarketingService/MarketingCampaigns/{marketingcampaignId} | 
[**apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut**](MarketingCampaignsApi.md#apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut) | **PUT** /api/v2/MarketingService/MarketingCampaigns/{marketingcampaignId} | 
[**apiV2MarketingServiceMarketingCampaignsPost**](MarketingCampaignsApi.md#apiV2MarketingServiceMarketingCampaignsPost) | **POST** /api/v2/MarketingService/MarketingCampaigns | 



## apiV2MarketingServiceMarketingCampaignsCountGet



### Example

```bash
 apiV2MarketingServiceMarketingCampaignsCountGet  tenantId=value  api-version=value x-api-version:value
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


## apiV2MarketingServiceMarketingCampaignsGet



### Example

```bash
 apiV2MarketingServiceMarketingCampaignsGet  tenantId=value  api-version=value x-api-version:value
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


## apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete



### Example

```bash
 apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete  tenantId=value marketingcampaignId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **marketingcampaignId** | **string** |  | [default to null]
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


## apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet



### Example

```bash
 apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet  tenantId=value marketingcampaignId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **marketingcampaignId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**MarketingCampaignDtoEnvelope**](MarketingCampaignDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut



### Example

```bash
 apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut  tenantId=value marketingcampaignId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **marketingcampaignId** | **string** |  | [default to null]
 **marketingCampaignUpdateDto** | [**MarketingCampaignUpdateDto**](MarketingCampaignUpdateDto.md) |  |
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


## apiV2MarketingServiceMarketingCampaignsPost



### Example

```bash
 apiV2MarketingServiceMarketingCampaignsPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **marketingCampaignCreateDto** | [**MarketingCampaignCreateDto**](MarketingCampaignCreateDto.md) |  |
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

