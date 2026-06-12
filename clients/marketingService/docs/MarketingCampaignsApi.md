# MarketingCampaignsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMarketingCampaignAsync**](MarketingCampaignsApi.md#createMarketingCampaignAsync) | **POST** /api/v2/MarketingService/MarketingCampaigns | Create a marketing campaign
[**deleteMarketingCampaignAsync**](MarketingCampaignsApi.md#deleteMarketingCampaignAsync) | **DELETE** /api/v2/MarketingService/MarketingCampaigns/{marketingcampaignId} | Delete a marketing campaign
[**getMarketingCampaignDetailsAsync**](MarketingCampaignsApi.md#getMarketingCampaignDetailsAsync) | **GET** /api/v2/MarketingService/MarketingCampaigns/{marketingcampaignId} | Get marketing campaign by ID
[**getMarketingCampaignODataAsync**](MarketingCampaignsApi.md#getMarketingCampaignODataAsync) | **GET** /api/v2/MarketingService/MarketingCampaigns | Get marketing campaigns
[**getMarketingCampaignsCountAsync**](MarketingCampaignsApi.md#getMarketingCampaignsCountAsync) | **GET** /api/v2/MarketingService/MarketingCampaigns/Count | Get marketing campaigns count
[**patchMarketingCampaignAsync**](MarketingCampaignsApi.md#patchMarketingCampaignAsync) | **PATCH** /api/v2/MarketingService/MarketingCampaigns/{marketingcampaignId} | Patch a marketing campaign
[**updateMarketingCampaignAsync**](MarketingCampaignsApi.md#updateMarketingCampaignAsync) | **PUT** /api/v2/MarketingService/MarketingCampaigns/{marketingcampaignId} | Update a marketing campaign



## createMarketingCampaignAsync

Create a marketing campaign

Creates a new marketing campaign for the specified tenant.

### Example

```bash
 createMarketingCampaignAsync  tenantId=value  api-version=value x-api-version:value
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

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteMarketingCampaignAsync

Delete a marketing campaign

Deletes a marketing campaign by its ID.

### Example

```bash
 deleteMarketingCampaignAsync  tenantId=value marketingcampaignId=value  api-version=value x-api-version:value
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

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getMarketingCampaignDetailsAsync

Get marketing campaign by ID

Retrieves the details of a specific marketing campaign by its ID.

### Example

```bash
 getMarketingCampaignDetailsAsync  tenantId=value marketingcampaignId=value  api-version=value x-api-version:value
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

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getMarketingCampaignODataAsync

Get marketing campaigns

Retrieves a collection of marketing campaigns for the specified tenant using OData query options.

### Example

```bash
 getMarketingCampaignODataAsync  tenantId=value  api-version=value x-api-version:value
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

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getMarketingCampaignsCountAsync

Get marketing campaigns count

Returns the count of marketing campaigns for the specified tenant using OData query options.

### Example

```bash
 getMarketingCampaignsCountAsync  tenantId=value  api-version=value x-api-version:value
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

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchMarketingCampaignAsync

Patch a marketing campaign

Partially updates a marketing campaign by its ID using JSON Patch.

### Example

```bash
 patchMarketingCampaignAsync  tenantId=value marketingcampaignId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **marketingcampaignId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateMarketingCampaignAsync

Update a marketing campaign

Updates an existing marketing campaign by its ID.

### Example

```bash
 updateMarketingCampaignAsync  tenantId=value marketingcampaignId=value  api-version=value x-api-version:value
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

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

