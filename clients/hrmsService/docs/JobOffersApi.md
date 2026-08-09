# JobOffersApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**closeJobOfferAsync**](JobOffersApi.md#closeJobOfferAsync) | **POST** /api/v2/HrmsService/JobOffers/{jobOfferId}/Close | Close a job offer
[**createJobOfferAsync**](JobOffersApi.md#createJobOfferAsync) | **POST** /api/v2/HrmsService/JobOffers | Create a job offer
[**deleteJobOfferAsync**](JobOffersApi.md#deleteJobOfferAsync) | **DELETE** /api/v2/HrmsService/JobOffers/{jobOfferId} | Delete a job offer
[**fillJobOfferAsync**](JobOffersApi.md#fillJobOfferAsync) | **POST** /api/v2/HrmsService/JobOffers/{jobOfferId}/Fill | Mark a job offer filled
[**getJobOfferByIdAsync**](JobOffersApi.md#getJobOfferByIdAsync) | **GET** /api/v2/HrmsService/JobOffers/{jobOfferId} | Get job offer by ID
[**getJobOffersAsync**](JobOffersApi.md#getJobOffersAsync) | **GET** /api/v2/HrmsService/JobOffers | Get job offers
[**getJobOffersCountAsync**](JobOffersApi.md#getJobOffersCountAsync) | **GET** /api/v2/HrmsService/JobOffers/Count | Count job offers
[**getPublicJobOfferByIdAsync**](JobOffersApi.md#getPublicJobOfferByIdAsync) | **GET** /api/v2/HrmsService/JobOffers/Public/{jobOfferId} | Get public job offer by ID
[**getPublicJobOffersAsync**](JobOffersApi.md#getPublicJobOffersAsync) | **GET** /api/v2/HrmsService/JobOffers/Public | Get public job offers
[**getPublicJobOffersCountAsync**](JobOffersApi.md#getPublicJobOffersCountAsync) | **GET** /api/v2/HrmsService/JobOffers/Public/Count | Count public job offers
[**patchJobOfferAsync**](JobOffersApi.md#patchJobOfferAsync) | **PATCH** /api/v2/HrmsService/JobOffers/{jobOfferId} | Patch a job offer
[**publishJobOfferAsync**](JobOffersApi.md#publishJobOfferAsync) | **POST** /api/v2/HrmsService/JobOffers/{jobOfferId}/Publish | Publish a job offer
[**updateJobOfferAsync**](JobOffersApi.md#updateJobOfferAsync) | **PUT** /api/v2/HrmsService/JobOffers/{jobOfferId} | Update a job offer



## closeJobOfferAsync

Close a job offer

Closes the job offer without a hire and removes it from the public board (raises JobOfferClosed).

### Example

```bash
 closeJobOfferAsync  tenantId=value jobOfferId=value  api-version=value x-api-version:value
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


## fillJobOfferAsync

Mark a job offer filled

Marks the offer filled — converted to a hire — and removes it from the public board (raises JobOfferFilled).

### Example

```bash
 fillJobOfferAsync  tenantId=value jobOfferId=value  api-version=value x-api-version:value
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
 **jobOfferDtoCollectionQueryParameters** | [**JobOfferDtoCollectionQueryParameters**](JobOfferDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**JobOfferDtoListEnvelope**](JobOfferDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
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
 **jobOfferDtoCollectionQueryParameters** | [**JobOfferDtoCollectionQueryParameters**](JobOfferDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPublicJobOfferByIdAsync

Get public job offer by ID

Retrieves a published job offer by its identifier for the Talent Portal. Anonymous; optionally scoped to a tenant.

### Example

```bash
 getPublicJobOfferByIdAsync jobOfferId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobOfferId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
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


## getPublicJobOffersAsync

Get public job offers

Retrieves published job offers for the Talent Portal. Anonymous; optionally scoped to a single tenant.

### Example

```bash
 getPublicJobOffersAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **jobOfferDtoCollectionQueryParameters** | [**JobOfferDtoCollectionQueryParameters**](JobOfferDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**JobOfferDtoListEnvelope**](JobOfferDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPublicJobOffersCountAsync

Count public job offers

Counts published job offers for the Talent Portal. Anonymous; optionally scoped to a single tenant.

### Example

```bash
 getPublicJobOffersCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **jobOfferDtoCollectionQueryParameters** | [**JobOfferDtoCollectionQueryParameters**](JobOfferDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
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
 **patchOperation** | [**array[PatchOperation]**](PatchOperation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## publishJobOfferAsync

Publish a job offer

Publishes the job offer to the public Talent Portal (raises JobOfferPublished).

### Example

```bash
 publishJobOfferAsync  tenantId=value jobOfferId=value  api-version=value x-api-version:value
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

