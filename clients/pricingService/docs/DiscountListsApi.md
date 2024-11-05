# DiscountListsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2PricingServiceDiscountListsCountGet**](DiscountListsApi.md#apiV2PricingServiceDiscountListsCountGet) | **GET** /api/v2/PricingService/DiscountLists/Count | 
[**apiV2PricingServiceDiscountListsDiscountListIdDelete**](DiscountListsApi.md#apiV2PricingServiceDiscountListsDiscountListIdDelete) | **DELETE** /api/v2/PricingService/DiscountLists/{discountListId} | 
[**apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet**](DiscountListsApi.md#apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet) | **GET** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts/Count | 
[**apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete**](DiscountListsApi.md#apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete) | **DELETE** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts/{discountListEntryId} | 
[**apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut**](DiscountListsApi.md#apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut) | **PUT** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts/{discountListEntryId} | 
[**apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet**](DiscountListsApi.md#apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet) | **GET** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts | 
[**apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost**](DiscountListsApi.md#apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost) | **POST** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts | 
[**apiV2PricingServiceDiscountListsDiscountListIdGet**](DiscountListsApi.md#apiV2PricingServiceDiscountListsDiscountListIdGet) | **GET** /api/v2/PricingService/DiscountLists/{discountListId} | 
[**apiV2PricingServiceDiscountListsDiscountListIdPut**](DiscountListsApi.md#apiV2PricingServiceDiscountListsDiscountListIdPut) | **PUT** /api/v2/PricingService/DiscountLists/{discountListId} | 
[**apiV2PricingServiceDiscountListsGet**](DiscountListsApi.md#apiV2PricingServiceDiscountListsGet) | **GET** /api/v2/PricingService/DiscountLists | 
[**apiV2PricingServiceDiscountListsPost**](DiscountListsApi.md#apiV2PricingServiceDiscountListsPost) | **POST** /api/v2/PricingService/DiscountLists | 
[**getDiscountListEntry**](DiscountListsApi.md#getDiscountListEntry) | **GET** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts/{discountListEntryId} | 



## apiV2PricingServiceDiscountListsCountGet



### Example

```bash
 apiV2PricingServiceDiscountListsCountGet  tenantId=value  api-version=value x-api-version:value
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


## apiV2PricingServiceDiscountListsDiscountListIdDelete



### Example

```bash
 apiV2PricingServiceDiscountListsDiscountListIdDelete  tenantId=value discountListId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListId** | **string** |  | [default to null]
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


## apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet



### Example

```bash
 apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet  tenantId=value discountListId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListId** | **string** |  | [default to null]
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


## apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete



### Example

```bash
 apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete  tenantId=value discountListId=value discountListEntryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListId** | **string** |  | [default to null]
 **discountListEntryId** | **string** |  | [default to null]
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


## apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut



### Example

```bash
 apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut  tenantId=value discountListId=value discountListEntryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListId** | **string** |  | [default to null]
 **discountListEntryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **discountUpdateDto** | [**DiscountUpdateDto**](DiscountUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet



### Example

```bash
 apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet  tenantId=value discountListId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**DiscountDtoListEnvelope**](DiscountDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost



### Example

```bash
 apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost  tenantId=value discountListId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **discountCreateDto** | [**DiscountCreateDto**](DiscountCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2PricingServiceDiscountListsDiscountListIdGet



### Example

```bash
 apiV2PricingServiceDiscountListsDiscountListIdGet  tenantId=value discountListId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**DiscountListDtoEnvelope**](DiscountListDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2PricingServiceDiscountListsDiscountListIdPut



### Example

```bash
 apiV2PricingServiceDiscountListsDiscountListIdPut  tenantId=value discountListId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **discountListUpdateDto** | [**DiscountListUpdateDto**](DiscountListUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2PricingServiceDiscountListsGet



### Example

```bash
 apiV2PricingServiceDiscountListsGet  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**DiscountListDtoListEnvelope**](DiscountListDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2PricingServiceDiscountListsPost



### Example

```bash
 apiV2PricingServiceDiscountListsPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **discountListCreateDto** | [**DiscountListCreateDto**](DiscountListCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDiscountListEntry



### Example

```bash
 getDiscountListEntry  tenantId=value discountListId=value discountListEntryId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListId** | **string** |  | [default to null]
 **discountListEntryId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**DiscountDtoEnvelope**](DiscountDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

