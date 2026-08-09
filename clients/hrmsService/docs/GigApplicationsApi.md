# GigApplicationsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptGigApplicationAsync**](GigApplicationsApi.md#acceptGigApplicationAsync) | **POST** /api/v2/HrmsService/GigApplications/{gigApplicationId}/Accept | Accept a gig application
[**createGigApplicationAsync**](GigApplicationsApi.md#createGigApplicationAsync) | **POST** /api/v2/HrmsService/GigApplications | Create a gig application
[**deleteGigApplicationAsync**](GigApplicationsApi.md#deleteGigApplicationAsync) | **DELETE** /api/v2/HrmsService/GigApplications/{gigApplicationId} | Delete a gig application
[**getGigApplicationByIdAsync**](GigApplicationsApi.md#getGigApplicationByIdAsync) | **GET** /api/v2/HrmsService/GigApplications/{gigApplicationId} | Get gig application by ID
[**getGigApplicationsAsync**](GigApplicationsApi.md#getGigApplicationsAsync) | **GET** /api/v2/HrmsService/GigApplications | Get gig applications
[**getGigApplicationsCountAsync**](GigApplicationsApi.md#getGigApplicationsCountAsync) | **GET** /api/v2/HrmsService/GigApplications/Count | Count gig applications
[**patchGigApplicationAsync**](GigApplicationsApi.md#patchGigApplicationAsync) | **PATCH** /api/v2/HrmsService/GigApplications/{gigApplicationId} | Patch a gig application
[**updateGigApplicationAsync**](GigApplicationsApi.md#updateGigApplicationAsync) | **PUT** /api/v2/HrmsService/GigApplications/{gigApplicationId} | Update a gig application



## acceptGigApplicationAsync

Accept a gig application

Accepts the candidate's gig proposal, forming an engagement (raises GigApplicationAccepted). A proposal cannot be accepted twice.

### Example

```bash
 acceptGigApplicationAsync  tenantId=value gigApplicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **gigApplicationId** | **string** |  | [default to null]
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


## createGigApplicationAsync

Create a gig application

Records a candidate's proposal against one of the tenant's gigs. The targeted gig must belong to the tenant.

### Example

```bash
 createGigApplicationAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **gigApplicationCreateDto** | [**GigApplicationCreateDto**](GigApplicationCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteGigApplicationAsync

Delete a gig application

Removes a proposal submitted against one of the tenant's gigs.

### Example

```bash
 deleteGigApplicationAsync  tenantId=value gigApplicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **gigApplicationId** | **string** |  | [default to null]
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


## getGigApplicationByIdAsync

Get gig application by ID

Retrieves a specific proposal submitted against one of the tenant's gigs.

### Example

```bash
 getGigApplicationByIdAsync  tenantId=value gigApplicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **gigApplicationId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**GigApplicationDtoEnvelope**](GigApplicationDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getGigApplicationsAsync

Get gig applications

Retrieves proposals submitted against the tenant's gigs. Filter with '$filter=GigId eq '...'' or 'JobApplicantProfileId eq '...''.

### Example

```bash
 getGigApplicationsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **gigApplicationDtoCollectionQueryParameters** | [**GigApplicationDtoCollectionQueryParameters**](GigApplicationDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**GigApplicationDtoListEnvelope**](GigApplicationDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getGigApplicationsCountAsync

Count gig applications

Counts proposals submitted against the tenant's gigs.

### Example

```bash
 getGigApplicationsCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **gigApplicationDtoCollectionQueryParameters** | [**GigApplicationDtoCollectionQueryParameters**](GigApplicationDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchGigApplicationAsync

Patch a gig application

Partially updates an existing proposal submitted against one of the tenant's gigs.

### Example

```bash
 patchGigApplicationAsync  tenantId=value gigApplicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **gigApplicationId** | **string** |  | [default to null]
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


## updateGigApplicationAsync

Update a gig application

Updates an existing proposal submitted against one of the tenant's gigs (e.g. accept it).

### Example

```bash
 updateGigApplicationAsync  tenantId=value gigApplicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **gigApplicationId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **gigApplicationUpdateDto** | [**GigApplicationUpdateDto**](GigApplicationUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

