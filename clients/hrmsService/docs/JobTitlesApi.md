# JobTitlesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createJobTitleAsync**](JobTitlesApi.md#createJobTitleAsync) | **POST** /api/v2/HrmsService/JobTitles | Create a job title
[**deleteJobTitleAsync**](JobTitlesApi.md#deleteJobTitleAsync) | **DELETE** /api/v2/HrmsService/JobTitles/{jobTitleId} | Delete a job title
[**getJobTitleByIdAsync**](JobTitlesApi.md#getJobTitleByIdAsync) | **GET** /api/v2/HrmsService/JobTitles/{jobTitleId} | Get job title by ID
[**getJobTitlesAsync**](JobTitlesApi.md#getJobTitlesAsync) | **GET** /api/v2/HrmsService/JobTitles | Get job titles
[**getJobTitlesCountAsync**](JobTitlesApi.md#getJobTitlesCountAsync) | **GET** /api/v2/HrmsService/JobTitles/Count | Count job titles
[**patchJobTitleAsync**](JobTitlesApi.md#patchJobTitleAsync) | **PATCH** /api/v2/HrmsService/JobTitles/{jobTitleId} | Patch a job title
[**updateJobTitleAsync**](JobTitlesApi.md#updateJobTitleAsync) | **PUT** /api/v2/HrmsService/JobTitles/{jobTitleId} | Update a job title



## createJobTitleAsync

Create a job title

Creates a new job title for the specified tenant.

### Example

```bash
 createJobTitleAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **jobTitleCreateDto** | [**JobTitleCreateDto**](JobTitleCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteJobTitleAsync

Delete a job title

Deletes a job title for the specified tenant.

### Example

```bash
 deleteJobTitleAsync  tenantId=value jobTitleId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **jobTitleId** | **string** |  | [default to null]
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


## getJobTitleByIdAsync

Get job title by ID

Retrieves a specific job title by its identifier.

### Example

```bash
 getJobTitleByIdAsync  tenantId=value jobTitleId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **jobTitleId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**JobTitleDtoEnvelope**](JobTitleDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getJobTitlesAsync

Get job titles

Retrieves job titles for the specified tenant.

### Example

```bash
 getJobTitlesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**JobTitleDtoListEnvelope**](JobTitleDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getJobTitlesCountAsync

Count job titles

Counts job titles for the specified tenant.

### Example

```bash
 getJobTitlesCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchJobTitleAsync

Patch a job title

Partially updates an existing job title for the specified tenant.

### Example

```bash
 patchJobTitleAsync  tenantId=value jobTitleId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **jobTitleId** | **string** |  | [default to null]
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


## updateJobTitleAsync

Update a job title

Updates an existing job title for the specified tenant.

### Example

```bash
 updateJobTitleAsync  tenantId=value jobTitleId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **jobTitleId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **jobTitleUpdateDto** | [**JobTitleUpdateDto**](JobTitleUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

