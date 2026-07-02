# JobOfferFieldsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createJobOfferFieldAsync**](JobOfferFieldsApi.md#createJobOfferFieldAsync) | **POST** /api/v2/HrmsService/JobOfferFields | Create a job offer field
[**deleteJobOfferFieldAsync**](JobOfferFieldsApi.md#deleteJobOfferFieldAsync) | **DELETE** /api/v2/HrmsService/JobOfferFields/{jobOfferFieldId} | Delete a job offer field
[**getJobOfferFieldByIdAsync**](JobOfferFieldsApi.md#getJobOfferFieldByIdAsync) | **GET** /api/v2/HrmsService/JobOfferFields/{jobOfferFieldId} | Get job offer field by ID
[**getJobOfferFieldsAsync**](JobOfferFieldsApi.md#getJobOfferFieldsAsync) | **GET** /api/v2/HrmsService/JobOfferFields | Get job offer fields
[**getJobOfferFieldsCountAsync**](JobOfferFieldsApi.md#getJobOfferFieldsCountAsync) | **GET** /api/v2/HrmsService/JobOfferFields/Count | Count job offer fields
[**patchJobOfferFieldAsync**](JobOfferFieldsApi.md#patchJobOfferFieldAsync) | **PATCH** /api/v2/HrmsService/JobOfferFields/{jobOfferFieldId} | Patch a job offer field
[**updateJobOfferFieldAsync**](JobOfferFieldsApi.md#updateJobOfferFieldAsync) | **PUT** /api/v2/HrmsService/JobOfferFields/{jobOfferFieldId} | Update a job offer field



## createJobOfferFieldAsync

Create a job offer field

Links a job field to a job offer for the specified tenant.

### Example

```bash
 createJobOfferFieldAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **jobOfferFieldRecordCreateDto** | [**JobOfferFieldRecordCreateDto**](JobOfferFieldRecordCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteJobOfferFieldAsync

Delete a job offer field

Removes a job-offer field link record for the specified tenant.

### Example

```bash
 deleteJobOfferFieldAsync  tenantId=value jobOfferFieldId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **jobOfferFieldId** | **string** |  | [default to null]
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


## getJobOfferFieldByIdAsync

Get job offer field by ID

Retrieves a specific job-offer field link record by its identifier.

### Example

```bash
 getJobOfferFieldByIdAsync  tenantId=value jobOfferFieldId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **jobOfferFieldId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**JobOfferFieldRecordDtoEnvelope**](JobOfferFieldRecordDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getJobOfferFieldsAsync

Get job offer fields

Retrieves job-offer field link records for the tenant. Filter with '$filter=JobOfferId eq '...'' or 'JobFieldId eq '...''.

### Example

```bash
 getJobOfferFieldsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**JobOfferFieldRecordDtoListEnvelope**](JobOfferFieldRecordDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getJobOfferFieldsCountAsync

Count job offer fields

Counts job-offer field link records for the specified tenant.

### Example

```bash
 getJobOfferFieldsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchJobOfferFieldAsync

Patch a job offer field

Partially updates an existing job-offer field link record for the specified tenant.

### Example

```bash
 patchJobOfferFieldAsync  tenantId=value jobOfferFieldId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **jobOfferFieldId** | **string** |  | [default to null]
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


## updateJobOfferFieldAsync

Update a job offer field

Updates an existing job-offer field link record for the specified tenant.

### Example

```bash
 updateJobOfferFieldAsync  tenantId=value jobOfferFieldId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **jobOfferFieldId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **jobOfferFieldRecordUpdateDto** | [**JobOfferFieldRecordUpdateDto**](JobOfferFieldRecordUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

