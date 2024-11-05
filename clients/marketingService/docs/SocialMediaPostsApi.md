# SocialMediaPostsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2MarketingServiceSocialMediaPostsCountGet**](SocialMediaPostsApi.md#apiV2MarketingServiceSocialMediaPostsCountGet) | **GET** /api/v2/MarketingService/SocialMediaPosts/Count | 
[**apiV2MarketingServiceSocialMediaPostsGet**](SocialMediaPostsApi.md#apiV2MarketingServiceSocialMediaPostsGet) | **GET** /api/v2/MarketingService/SocialMediaPosts | 
[**apiV2MarketingServiceSocialMediaPostsPost**](SocialMediaPostsApi.md#apiV2MarketingServiceSocialMediaPostsPost) | **POST** /api/v2/MarketingService/SocialMediaPosts | 
[**apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete**](SocialMediaPostsApi.md#apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete) | **DELETE** /api/v2/MarketingService/SocialMediaPosts/{socialmediapostId} | 
[**apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet**](SocialMediaPostsApi.md#apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet) | **GET** /api/v2/MarketingService/SocialMediaPosts/{socialmediapostId} | 
[**apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut**](SocialMediaPostsApi.md#apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut) | **PUT** /api/v2/MarketingService/SocialMediaPosts/{socialmediapostId} | 



## apiV2MarketingServiceSocialMediaPostsCountGet



### Example

```bash
 apiV2MarketingServiceSocialMediaPostsCountGet  tenantId=value  api-version=value x-api-version:value
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


## apiV2MarketingServiceSocialMediaPostsGet



### Example

```bash
 apiV2MarketingServiceSocialMediaPostsGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SocialMediaPostDtoListEnvelope**](SocialMediaPostDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2MarketingServiceSocialMediaPostsPost



### Example

```bash
 apiV2MarketingServiceSocialMediaPostsPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **socialMediaPostCreateDto** | [**SocialMediaPostCreateDto**](SocialMediaPostCreateDto.md) |  |
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


## apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete



### Example

```bash
 apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete  tenantId=value socialmediapostId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **socialmediapostId** | **string** |  | [default to null]
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


## apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet



### Example

```bash
 apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet  tenantId=value socialmediapostId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **socialmediapostId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SocialMediaPostDtoEnvelope**](SocialMediaPostDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut



### Example

```bash
 apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut  tenantId=value socialmediapostId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **socialmediapostId** | **string** |  | [default to null]
 **socialMediaPostUpdateDto** | [**SocialMediaPostUpdateDto**](SocialMediaPostUpdateDto.md) |  |
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

