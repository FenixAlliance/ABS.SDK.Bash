# EmployeeAppraisalSessionsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmployeeAppraisalSessionAsync**](EmployeeAppraisalSessionsApi.md#createEmployeeAppraisalSessionAsync) | **POST** /api/v2/HrmsService/EmployeeAppraisalSessions | Create an employee appraisal session
[**deleteEmployeeAppraisalSessionAsync**](EmployeeAppraisalSessionsApi.md#deleteEmployeeAppraisalSessionAsync) | **DELETE** /api/v2/HrmsService/EmployeeAppraisalSessions/{sessionId} | Delete an employee appraisal session
[**getEmployeeAppraisalSessionByIdAsync**](EmployeeAppraisalSessionsApi.md#getEmployeeAppraisalSessionByIdAsync) | **GET** /api/v2/HrmsService/EmployeeAppraisalSessions/{sessionId} | Get employee appraisal session by ID
[**getEmployeeAppraisalSessionsAsync**](EmployeeAppraisalSessionsApi.md#getEmployeeAppraisalSessionsAsync) | **GET** /api/v2/HrmsService/EmployeeAppraisalSessions | Get employee appraisal sessions
[**getEmployeeAppraisalSessionsCountAsync**](EmployeeAppraisalSessionsApi.md#getEmployeeAppraisalSessionsCountAsync) | **GET** /api/v2/HrmsService/EmployeeAppraisalSessions/Count | Count employee appraisal sessions
[**patchEmployeeAppraisalSessionAsync**](EmployeeAppraisalSessionsApi.md#patchEmployeeAppraisalSessionAsync) | **PATCH** /api/v2/HrmsService/EmployeeAppraisalSessions/{sessionId} | Patch an employee appraisal session
[**updateEmployeeAppraisalSessionAsync**](EmployeeAppraisalSessionsApi.md#updateEmployeeAppraisalSessionAsync) | **PUT** /api/v2/HrmsService/EmployeeAppraisalSessions/{sessionId} | Update an employee appraisal session



## createEmployeeAppraisalSessionAsync

Create an employee appraisal session

Creates a new employee appraisal session for the specified tenant.

### Example

```bash
 createEmployeeAppraisalSessionAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **employeeAppraisalSessionCreateDto** | [**EmployeeAppraisalSessionCreateDto**](EmployeeAppraisalSessionCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteEmployeeAppraisalSessionAsync

Delete an employee appraisal session

Deletes an employee appraisal session for the specified tenant.

### Example

```bash
 deleteEmployeeAppraisalSessionAsync  tenantId=value sessionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **sessionId** | **string** |  | [default to null]
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


## getEmployeeAppraisalSessionByIdAsync

Get employee appraisal session by ID

Retrieves a specific employee appraisal session by its identifier.

### Example

```bash
 getEmployeeAppraisalSessionByIdAsync  tenantId=value sessionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **sessionId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmployeeAppraisalSessionDtoEnvelope**](EmployeeAppraisalSessionDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getEmployeeAppraisalSessionsAsync

Get employee appraisal sessions

Retrieves employee appraisal sessions for the specified tenant.

### Example

```bash
 getEmployeeAppraisalSessionsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmployeeAppraisalSessionDtoListEnvelope**](EmployeeAppraisalSessionDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getEmployeeAppraisalSessionsCountAsync

Count employee appraisal sessions

Counts employee appraisal sessions for the specified tenant.

### Example

```bash
 getEmployeeAppraisalSessionsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchEmployeeAppraisalSessionAsync

Patch an employee appraisal session

Partially updates an existing employee appraisal session for the specified tenant.

### Example

```bash
 patchEmployeeAppraisalSessionAsync  tenantId=value sessionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **sessionId** | **string** |  | [default to null]
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


## updateEmployeeAppraisalSessionAsync

Update an employee appraisal session

Updates an existing employee appraisal session for the specified tenant.

### Example

```bash
 updateEmployeeAppraisalSessionAsync  tenantId=value sessionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **sessionId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **employeeAppraisalSessionUpdateDto** | [**EmployeeAppraisalSessionUpdateDto**](EmployeeAppraisalSessionUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

