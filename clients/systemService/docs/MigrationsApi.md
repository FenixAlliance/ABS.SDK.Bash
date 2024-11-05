# MigrationsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2SystemServiceMigrationsGet**](MigrationsApi.md#apiV2SystemServiceMigrationsGet) | **GET** /api/v2/SystemService/Migrations | 
[**apiV2SystemServiceMigrationsMigratePost**](MigrationsApi.md#apiV2SystemServiceMigrationsMigratePost) | **POST** /api/v2/SystemService/Migrations/Migrate | 



## apiV2SystemServiceMigrationsGet



### Example

```bash
 apiV2SystemServiceMigrationsGet  pending=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pending** | **boolean** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**StringListEnvelope**](StringListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2SystemServiceMigrationsMigratePost



### Example

```bash
 apiV2SystemServiceMigrationsMigratePost  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**StringListEnvelope**](StringListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

