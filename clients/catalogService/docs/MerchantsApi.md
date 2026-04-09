# MerchantsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMerchantById**](MerchantsApi.md#getMerchantById) | **GET** /api/v2/CatalogService/Merchants/{merchantId} | Get merchant by ID
[**getMerchants**](MerchantsApi.md#getMerchants) | **GET** /api/v2/CatalogService/Merchants | Get all merchants
[**getMerchantsCount**](MerchantsApi.md#getMerchantsCount) | **GET** /api/v2/CatalogService/Merchants/Count | Count merchants



## getMerchantById

Get merchant by ID

Retrieves a merchant by its unique identifier.

### Example

```bash
 getMerchantById merchantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **merchantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**MerchantDtoEnvelope**](MerchantDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getMerchants

Get all merchants

Retrieves all merchants, optionally filtered by OData query options.

### Example

```bash
 getMerchants  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**MerchantDtoListEnvelope**](MerchantDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getMerchantsCount

Count merchants

Counts the number of merchants, optionally filtered by OData query options.

### Example

```bash
 getMerchantsCount  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

