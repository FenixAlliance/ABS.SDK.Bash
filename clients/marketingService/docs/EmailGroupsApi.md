# EmailGroupsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2MarketingServiceEmailGroupsCountGet**](EmailGroupsApi.md#apiV2MarketingServiceEmailGroupsCountGet) | **GET** /api/v2/MarketingService/EmailGroups/Count | 
[**apiV2MarketingServiceEmailGroupsEmailgroupIdDelete**](EmailGroupsApi.md#apiV2MarketingServiceEmailGroupsEmailgroupIdDelete) | **DELETE** /api/v2/MarketingService/EmailGroups/{emailgroupId} | 
[**apiV2MarketingServiceEmailGroupsEmailgroupIdGet**](EmailGroupsApi.md#apiV2MarketingServiceEmailGroupsEmailgroupIdGet) | **GET** /api/v2/MarketingService/EmailGroups/{emailgroupId} | 
[**apiV2MarketingServiceEmailGroupsEmailgroupIdPut**](EmailGroupsApi.md#apiV2MarketingServiceEmailGroupsEmailgroupIdPut) | **PUT** /api/v2/MarketingService/EmailGroups/{emailgroupId} | 
[**apiV2MarketingServiceEmailGroupsGet**](EmailGroupsApi.md#apiV2MarketingServiceEmailGroupsGet) | **GET** /api/v2/MarketingService/EmailGroups | 
[**apiV2MarketingServiceEmailGroupsPost**](EmailGroupsApi.md#apiV2MarketingServiceEmailGroupsPost) | **POST** /api/v2/MarketingService/EmailGroups | 



## apiV2MarketingServiceEmailGroupsCountGet



### Example

```bash
 apiV2MarketingServiceEmailGroupsCountGet  tenantId=value  api-version=value x-api-version:value
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


## apiV2MarketingServiceEmailGroupsEmailgroupIdDelete



### Example

```bash
 apiV2MarketingServiceEmailGroupsEmailgroupIdDelete  tenantId=value emailgroupId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **emailgroupId** | **string** |  | [default to null]
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


## apiV2MarketingServiceEmailGroupsEmailgroupIdGet



### Example

```bash
 apiV2MarketingServiceEmailGroupsEmailgroupIdGet  tenantId=value emailgroupId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **emailgroupId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmailGroupDtoEnvelope**](EmailGroupDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2MarketingServiceEmailGroupsEmailgroupIdPut



### Example

```bash
 apiV2MarketingServiceEmailGroupsEmailgroupIdPut  tenantId=value emailgroupId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **emailgroupId** | **string** |  | [default to null]
 **emailGroupUpdateDto** | [**EmailGroupUpdateDto**](EmailGroupUpdateDto.md) |  |
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


## apiV2MarketingServiceEmailGroupsGet



### Example

```bash
 apiV2MarketingServiceEmailGroupsGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmailGroupDtoListEnvelope**](EmailGroupDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2MarketingServiceEmailGroupsPost



### Example

```bash
 apiV2MarketingServiceEmailGroupsPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **emailGroupCreateDto** | [**EmailGroupCreateDto**](EmailGroupCreateDto.md) |  |
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

