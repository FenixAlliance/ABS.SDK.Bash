# LeaveApplicationsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLeaveApplicationAsync**](LeaveApplicationsApi.md#createLeaveApplicationAsync) | **POST** /api/v2/HrmsService/LeaveApplications | Create a leave application
[**deleteLeaveApplicationAsync**](LeaveApplicationsApi.md#deleteLeaveApplicationAsync) | **DELETE** /api/v2/HrmsService/LeaveApplications/{leaveApplicationId} | Delete a leave application
[**getLeaveApplicationByIdAsync**](LeaveApplicationsApi.md#getLeaveApplicationByIdAsync) | **GET** /api/v2/HrmsService/LeaveApplications/{leaveApplicationId} | Get leave application by ID
[**getLeaveApplicationsAsync**](LeaveApplicationsApi.md#getLeaveApplicationsAsync) | **GET** /api/v2/HrmsService/LeaveApplications | Get leave applications
[**getLeaveApplicationsCountAsync**](LeaveApplicationsApi.md#getLeaveApplicationsCountAsync) | **GET** /api/v2/HrmsService/LeaveApplications/Count | Count leave applications
[**patchLeaveApplicationAsync**](LeaveApplicationsApi.md#patchLeaveApplicationAsync) | **PATCH** /api/v2/HrmsService/LeaveApplications/{leaveApplicationId} | Patch a leave application
[**updateLeaveApplicationAsync**](LeaveApplicationsApi.md#updateLeaveApplicationAsync) | **PUT** /api/v2/HrmsService/LeaveApplications/{leaveApplicationId} | Update a leave application



## createLeaveApplicationAsync

Create a leave application

Creates a new leave application for the specified tenant.

### Example

```bash
 createLeaveApplicationAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **leaveApplicationCreateDto** | [**LeaveApplicationCreateDto**](LeaveApplicationCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteLeaveApplicationAsync

Delete a leave application

Deletes a leave application for the specified tenant.

### Example

```bash
 deleteLeaveApplicationAsync  tenantId=value leaveApplicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **leaveApplicationId** | **string** |  | [default to null]
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


## getLeaveApplicationByIdAsync

Get leave application by ID

Retrieves a specific leave application by its identifier.

### Example

```bash
 getLeaveApplicationByIdAsync  tenantId=value leaveApplicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **leaveApplicationId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**LeaveApplicationDtoEnvelope**](LeaveApplicationDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getLeaveApplicationsAsync

Get leave applications

Retrieves leave applications for the specified tenant.

### Example

```bash
 getLeaveApplicationsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**LeaveApplicationDtoListEnvelope**](LeaveApplicationDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getLeaveApplicationsCountAsync

Count leave applications

Counts leave applications for the specified tenant.

### Example

```bash
 getLeaveApplicationsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchLeaveApplicationAsync

Patch a leave application

Partially updates an existing leave application for the specified tenant.

### Example

```bash
 patchLeaveApplicationAsync  tenantId=value leaveApplicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **leaveApplicationId** | **string** |  | [default to null]
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


## updateLeaveApplicationAsync

Update a leave application

Updates an existing leave application for the specified tenant.

### Example

```bash
 updateLeaveApplicationAsync  tenantId=value leaveApplicationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **leaveApplicationId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **leaveApplicationUpdateDto** | [**LeaveApplicationUpdateDto**](LeaveApplicationUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

