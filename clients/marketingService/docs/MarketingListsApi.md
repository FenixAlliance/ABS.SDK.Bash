# MarketingListsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2MarketingServiceMarketingListsCountGet**](MarketingListsApi.md#apiV2MarketingServiceMarketingListsCountGet) | **GET** /api/v2/MarketingService/MarketingLists/Count | 
[**apiV2MarketingServiceMarketingListsGet**](MarketingListsApi.md#apiV2MarketingServiceMarketingListsGet) | **GET** /api/v2/MarketingService/MarketingLists | 
[**apiV2MarketingServiceMarketingListsMarketinglistIdDelete**](MarketingListsApi.md#apiV2MarketingServiceMarketingListsMarketinglistIdDelete) | **DELETE** /api/v2/MarketingService/MarketingLists/{marketinglistId} | 
[**apiV2MarketingServiceMarketingListsMarketinglistIdGet**](MarketingListsApi.md#apiV2MarketingServiceMarketingListsMarketinglistIdGet) | **GET** /api/v2/MarketingService/MarketingLists/{marketinglistId} | 
[**apiV2MarketingServiceMarketingListsMarketinglistIdPut**](MarketingListsApi.md#apiV2MarketingServiceMarketingListsMarketinglistIdPut) | **PUT** /api/v2/MarketingService/MarketingLists/{marketinglistId} | 
[**apiV2MarketingServiceMarketingListsPost**](MarketingListsApi.md#apiV2MarketingServiceMarketingListsPost) | **POST** /api/v2/MarketingService/MarketingLists | 



## apiV2MarketingServiceMarketingListsCountGet



### Example

```bash
 apiV2MarketingServiceMarketingListsCountGet  tenantId=value  api-version=value x-api-version:value
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


## apiV2MarketingServiceMarketingListsGet



### Example

```bash
 apiV2MarketingServiceMarketingListsGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**MarketingListDtoListEnvelope**](MarketingListDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2MarketingServiceMarketingListsMarketinglistIdDelete



### Example

```bash
 apiV2MarketingServiceMarketingListsMarketinglistIdDelete  tenantId=value marketinglistId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **marketinglistId** | **string** |  | [default to null]
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


## apiV2MarketingServiceMarketingListsMarketinglistIdGet



### Example

```bash
 apiV2MarketingServiceMarketingListsMarketinglistIdGet  tenantId=value marketinglistId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **marketinglistId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**MarketingListDtoEnvelope**](MarketingListDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2MarketingServiceMarketingListsMarketinglistIdPut



### Example

```bash
 apiV2MarketingServiceMarketingListsMarketinglistIdPut  tenantId=value marketinglistId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **marketinglistId** | **string** |  | [default to null]
 **marketingListUpdateDto** | [**MarketingListUpdateDto**](MarketingListUpdateDto.md) |  |
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


## apiV2MarketingServiceMarketingListsPost



### Example

```bash
 apiV2MarketingServiceMarketingListsPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **marketingListCreateDto** | [**MarketingListCreateDto**](MarketingListCreateDto.md) |  |
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

