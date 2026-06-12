# NewslettersApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNewsletterAsync**](NewslettersApi.md#createNewsletterAsync) | **POST** /api/v2/MarketingService/Newsletters | Create a newsletter
[**deleteNewsletterAsync**](NewslettersApi.md#deleteNewsletterAsync) | **DELETE** /api/v2/MarketingService/Newsletters/{newsletterId} | Delete a newsletter
[**getNewsletterDetailsAsync**](NewslettersApi.md#getNewsletterDetailsAsync) | **GET** /api/v2/MarketingService/Newsletters/{newsletterId} | Get newsletter by ID
[**getNewsletterODataAsync**](NewslettersApi.md#getNewsletterODataAsync) | **GET** /api/v2/MarketingService/Newsletters | Get newsletters
[**getNewslettersCountAsync**](NewslettersApi.md#getNewslettersCountAsync) | **GET** /api/v2/MarketingService/Newsletters/Count | Get newsletters count
[**patchNewsletterAsync**](NewslettersApi.md#patchNewsletterAsync) | **PATCH** /api/v2/MarketingService/Newsletters/{newsletterId} | Patch a newsletter
[**updateNewsletterAsync**](NewslettersApi.md#updateNewsletterAsync) | **PUT** /api/v2/MarketingService/Newsletters/{newsletterId} | Update a newsletter



## createNewsletterAsync

Create a newsletter

Creates a new newsletter for the specified tenant.

### Example

```bash
 createNewsletterAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **newsletterCreateDto** | [**NewsletterCreateDto**](NewsletterCreateDto.md) |  |
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


## deleteNewsletterAsync

Delete a newsletter

Deletes a newsletter by its ID.

### Example

```bash
 deleteNewsletterAsync  tenantId=value newsletterId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **newsletterId** | **string** |  | [default to null]
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


## getNewsletterDetailsAsync

Get newsletter by ID

Retrieves the details of a specific newsletter by its ID.

### Example

```bash
 getNewsletterDetailsAsync  tenantId=value newsletterId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **newsletterId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**NewsletterDtoEnvelope**](NewsletterDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getNewsletterODataAsync

Get newsletters

Retrieves a collection of newsletters for the specified tenant using OData query options.

### Example

```bash
 getNewsletterODataAsync  tenantId=value  api-version=value x-api-version:value
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


## getNewslettersCountAsync

Get newsletters count

Returns the count of newsletters for the specified tenant using OData query options.

### Example

```bash
 getNewslettersCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchNewsletterAsync

Patch a newsletter

Partially updates a newsletter by its ID using JSON Patch.

### Example

```bash
 patchNewsletterAsync  tenantId=value newsletterId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **newsletterId** | **string** |  | [default to null]
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


## updateNewsletterAsync

Update a newsletter

Updates an existing newsletter by its ID.

### Example

```bash
 updateNewsletterAsync  tenantId=value newsletterId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **newsletterId** | **string** |  | [default to null]
 **newsletterUpdateDto** | [**NewsletterUpdateDto**](NewsletterUpdateDto.md) |  |
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

