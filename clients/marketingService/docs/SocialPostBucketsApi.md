# SocialPostBucketsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2MarketingServiceSocialPostBucketsCountGet**](SocialPostBucketsApi.md#apiV2MarketingServiceSocialPostBucketsCountGet) | **GET** /api/v2/MarketingService/SocialPostBuckets/Count | 
[**apiV2MarketingServiceSocialPostBucketsGet**](SocialPostBucketsApi.md#apiV2MarketingServiceSocialPostBucketsGet) | **GET** /api/v2/MarketingService/SocialPostBuckets | 
[**apiV2MarketingServiceSocialPostBucketsPost**](SocialPostBucketsApi.md#apiV2MarketingServiceSocialPostBucketsPost) | **POST** /api/v2/MarketingService/SocialPostBuckets | 
[**apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete**](SocialPostBucketsApi.md#apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete) | **DELETE** /api/v2/MarketingService/SocialPostBuckets/{socialpostbucketId} | 
[**apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet**](SocialPostBucketsApi.md#apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet) | **GET** /api/v2/MarketingService/SocialPostBuckets/{socialpostbucketId} | 
[**apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut**](SocialPostBucketsApi.md#apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut) | **PUT** /api/v2/MarketingService/SocialPostBuckets/{socialpostbucketId} | 



## apiV2MarketingServiceSocialPostBucketsCountGet



### Example

```bash
 apiV2MarketingServiceSocialPostBucketsCountGet  tenantId=value  api-version=value x-api-version:value
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


## apiV2MarketingServiceSocialPostBucketsGet



### Example

```bash
 apiV2MarketingServiceSocialPostBucketsGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SocialPostBucketDtoListEnvelope**](SocialPostBucketDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2MarketingServiceSocialPostBucketsPost



### Example

```bash
 apiV2MarketingServiceSocialPostBucketsPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **socialPostBucketCreateDto** | [**SocialPostBucketCreateDto**](SocialPostBucketCreateDto.md) |  |
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


## apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete



### Example

```bash
 apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete  tenantId=value socialpostbucketId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **socialpostbucketId** | **string** |  | [default to null]
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


## apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet



### Example

```bash
 apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet  tenantId=value socialpostbucketId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **socialpostbucketId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SocialPostBucketDtoEnvelope**](SocialPostBucketDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut



### Example

```bash
 apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut  tenantId=value socialpostbucketId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **socialpostbucketId** | **string** |  | [default to null]
 **socialPostBucketUpdateDto** | [**SocialPostBucketUpdateDto**](SocialPostBucketUpdateDto.md) |  |
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

