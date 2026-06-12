# JobOffersApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createJobOfferAsync**](JobOffersApi.md#createJobOfferAsync) | **POST** /api/v2/HrmsService/JobOffers | Create a job offer
[**deleteJobOfferAsync**](JobOffersApi.md#deleteJobOfferAsync) | **DELETE** /api/v2/HrmsService/JobOffers/{jobOfferId} | Delete a job offer
[**getJobOfferByIdAsync**](JobOffersApi.md#getJobOfferByIdAsync) | **GET** /api/v2/HrmsService/JobOffers/{jobOfferId} | Get job offer by ID
[**getJobOffersAsync**](JobOffersApi.md#getJobOffersAsync) | **GET** /api/v2/HrmsService/JobOffers | Get job offers
[**getJobOffersCountAsync**](JobOffersApi.md#getJobOffersCountAsync) | **GET** /api/v2/HrmsService/JobOffers/Count | Count job offers
[**patchJobOfferAsync**](JobOffersApi.md#patchJobOfferAsync) | **PATCH** /api/v2/HrmsService/JobOffers/{jobOfferId} | Patch a job offer
[**updateJobOfferAsync**](JobOffersApi.md#updateJobOfferAsync) | **PUT** /api/v2/HrmsService/JobOffers/{jobOfferId} | Update a job offer



## createJobOfferAsync

Create a job offer

Creates a new job offer for the specified tenant.

### Example

```bash
 createJobOfferAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **jobOfferCreateDto** | [**JobOfferCreateDto**](JobOfferCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteJobOfferAsync

Delete a job offer

Deletes a job offer for the specified tenant.

### Example

```bash
 deleteJobOfferAsync  tenantId=value jobOfferId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **jobOfferId** | **string** |  | [default to null]
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


## getJobOfferByIdAsync

Get job offer by ID

Retrieves a specific job offer by its identifier.

### Example

```bash
 getJobOfferByIdAsync  tenantId=value jobOfferId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **jobOfferId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**JobOfferDtoEnvelope**](JobOfferDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getJobOffersAsync

Get job offers

Retrieves job offers for the specified tenant.

### Example

```bash
 getJobOffersAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**JobOfferDtoListEnvelope**](JobOfferDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getJobOffersCountAsync

Count job offers

Counts job offers for the specified tenant.

### Example

```bash
 getJobOffersCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchJobOfferAsync

Patch a job offer

Partially updates an existing job offer for the specified tenant.

### Example

```bash
 patchJobOfferAsync  tenantId=value jobOfferId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **jobOfferId** | **string** |  | [default to null]
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


## updateJobOfferAsync

Update a job offer

Updates an existing job offer for the specified tenant.

### Example

```bash
 updateJobOfferAsync  tenantId=value jobOfferId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **jobOfferId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **jobOfferUpdateDto** | [**JobOfferUpdateDto**](JobOfferUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

