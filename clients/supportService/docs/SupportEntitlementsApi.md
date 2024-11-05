# SupportEntitlementsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2SupportServiceSupportEntitlementsCountGet**](SupportEntitlementsApi.md#apiV2SupportServiceSupportEntitlementsCountGet) | **GET** /api/v2/SupportService/SupportEntitlements/Count | 
[**apiV2SupportServiceSupportEntitlementsGet**](SupportEntitlementsApi.md#apiV2SupportServiceSupportEntitlementsGet) | **GET** /api/v2/SupportService/SupportEntitlements | 
[**apiV2SupportServiceSupportEntitlementsPost**](SupportEntitlementsApi.md#apiV2SupportServiceSupportEntitlementsPost) | **POST** /api/v2/SupportService/SupportEntitlements | 
[**apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete**](SupportEntitlementsApi.md#apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete) | **DELETE** /api/v2/SupportService/SupportEntitlements/{supportEntitlementId} | 
[**apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet**](SupportEntitlementsApi.md#apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet) | **GET** /api/v2/SupportService/SupportEntitlements/{supportEntitlementId} | 
[**apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut**](SupportEntitlementsApi.md#apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut) | **PUT** /api/v2/SupportService/SupportEntitlements/{supportEntitlementId} | 



## apiV2SupportServiceSupportEntitlementsCountGet



### Example

```bash
 apiV2SupportServiceSupportEntitlementsCountGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
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


## apiV2SupportServiceSupportEntitlementsGet



### Example

```bash
 apiV2SupportServiceSupportEntitlementsGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportEntitlementDtoListEnvelope**](SupportEntitlementDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SupportServiceSupportEntitlementsPost



### Example

```bash
 apiV2SupportServiceSupportEntitlementsPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportEntitlementCreateDto** | [**SupportEntitlementCreateDto**](SupportEntitlementCreateDto.md) |  |
 **tenantId** | **string** |  | [optional] [default to null]
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


## apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete



### Example

```bash
 apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete supportEntitlementId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportEntitlementId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
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


## apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet



### Example

```bash
 apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet supportEntitlementId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportEntitlementId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SupportEntitlementDtoEnvelope**](SupportEntitlementDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut



### Example

```bash
 apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut supportEntitlementId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportEntitlementId** | **string** |  | [default to null]
 **supportEntitlementUpdateDto** | [**SupportEntitlementUpdateDto**](SupportEntitlementUpdateDto.md) |  |
 **tenantId** | **string** |  | [optional] [default to null]
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

