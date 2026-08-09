# JobApplicationsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**changeJobApplicationStatusAsync**](JobApplicationsApi.md#changeJobApplicationStatusAsync) | **POST** /api/v2/HrmsService/JobApplications/{jobApplicationId}/Status | Change job application status
[**createJobApplicationAsync**](JobApplicationsApi.md#createJobApplicationAsync) | **POST** /api/v2/HrmsService/JobApplications | Create a job application
[**deleteJobApplicationAsync**](JobApplicationsApi.md#deleteJobApplicationAsync) | **DELETE** /api/v2/HrmsService/JobApplications/{jobApplicationId} | Delete a job application
[**getJobApplicationByIdAsync**](JobApplicationsApi.md#getJobApplicationByIdAsync) | **GET** /api/v2/HrmsService/JobApplications/{jobApplicationId} | Get job application by ID
[**getJobApplicationsAsync**](JobApplicationsApi.md#getJobApplicationsAsync) | **GET** /api/v2/HrmsService/JobApplications | Get job applications
[**getJobApplicationsCountAsync**](JobApplicationsApi.md#getJobApplicationsCountAsync) | **GET** /api/v2/HrmsService/JobApplications/Count | Count job applications
[**patchJobApplicationAsync**](JobApplicationsApi.md#patchJobApplicationAsync) | **PATCH** /api/v2/HrmsService/JobApplications/{jobApplicationId} | Patch a job application
[**updateJobApplicationAsync**](JobApplicationsApi.md#updateJobApplicationAsync) | **PUT** /api/v2/HrmsService/JobApplications/{jobApplicationId} | Update a job application



## changeJobApplicationStatusAsync

Change job application status

Transitions the application to a new funnel status (e.g. UnderReview, Interviewing, Offered, Hired, Rejected). Raises JobApplicationStatusChanged; terminal statuses are immutable.

### Example

```bash
 changeJobApplicationStatusAsync  tenantId=value jobApplicationId=value  status=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **jobApplicationId** | **string** |  | [default to null]
 **status** | **string** |  | [default to null]
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


## createJobApplicationAsync

Create a job application

Records a candidate's application against one of the tenant's job offers. The targeted job offer must belong to the tenant.

### Example

```bash
 createJobApplicationAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **jobOfferApplicationCreateDto** | [**JobOfferApplicationCreateDto**](JobOfferApplicationCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteJobApplicationAsync

Delete a job application

Removes an application submitted against one of the tenant's job offers.

### Example

```bash
 deleteJobApplicationAsync  tenantId=value jobApplicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **jobApplicationId** | **string** |  | [default to null]
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


## getJobApplicationByIdAsync

Get job application by ID

Retrieves a specific application submitted against one of the tenant's job offers.

### Example

```bash
 getJobApplicationByIdAsync  tenantId=value jobApplicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **jobApplicationId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**JobOfferApplicationDtoEnvelope**](JobOfferApplicationDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getJobApplicationsAsync

Get job applications

Retrieves applications submitted against the tenant's job offers. Filter with '$filter=JobOfferId eq '...'' or 'JobApplicantProfileId eq '...''.

### Example

```bash
 getJobApplicationsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **jobOfferApplicationDtoCollectionQueryParameters** | [**JobOfferApplicationDtoCollectionQueryParameters**](JobOfferApplicationDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**JobOfferApplicationDtoListEnvelope**](JobOfferApplicationDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getJobApplicationsCountAsync

Count job applications

Counts applications submitted against the tenant's job offers.

### Example

```bash
 getJobApplicationsCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **jobOfferApplicationDtoCollectionQueryParameters** | [**JobOfferApplicationDtoCollectionQueryParameters**](JobOfferApplicationDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchJobApplicationAsync

Patch a job application

Partially updates an existing application submitted against one of the tenant's job offers.

### Example

```bash
 patchJobApplicationAsync  tenantId=value jobApplicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **jobApplicationId** | **string** |  | [default to null]
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


## updateJobApplicationAsync

Update a job application

Updates an existing application submitted against one of the tenant's job offers.

### Example

```bash
 updateJobApplicationAsync  tenantId=value jobApplicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **jobApplicationId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **jobOfferApplicationUpdateDto** | [**JobOfferApplicationUpdateDto**](JobOfferApplicationUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

