# TimeLogApprovalsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV2TimeTrackerServiceTimeLogApprovalsApprovalIdApproverPut**](TimeLogApprovalsApi.md#apiV2TimeTrackerServiceTimeLogApprovalsApprovalIdApproverPut) | **PUT** /api/v2/TimeTrackerService/TimeLogApprovals/{approvalId}/Approver | 
[**apiV2TimeTrackerServiceTimeLogApprovalsApprovalIdStatusPut**](TimeLogApprovalsApi.md#apiV2TimeTrackerServiceTimeLogApprovalsApprovalIdStatusPut) | **PUT** /api/v2/TimeTrackerService/TimeLogApprovals/{approvalId}/Status | 
[**apiV2TimeTrackerServiceTimeLogApprovalsPost**](TimeLogApprovalsApi.md#apiV2TimeTrackerServiceTimeLogApprovalsPost) | **POST** /api/v2/TimeTrackerService/TimeLogApprovals | 



## apiV2TimeTrackerServiceTimeLogApprovalsApprovalIdApproverPut



### Example

```bash
 apiV2TimeTrackerServiceTimeLogApprovalsApprovalIdApproverPut approvalId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **approvalId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **projectHoursApprovalApproverUpdateDto** | [**ProjectHoursApprovalApproverUpdateDto**](ProjectHoursApprovalApproverUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2TimeTrackerServiceTimeLogApprovalsApprovalIdStatusPut



### Example

```bash
 apiV2TimeTrackerServiceTimeLogApprovalsApprovalIdStatusPut  tenantId=value approvalId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **approvalId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **projectHoursApprovalStatusUpdateDto** | [**ProjectHoursApprovalStatusUpdateDto**](ProjectHoursApprovalStatusUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## apiV2TimeTrackerServiceTimeLogApprovalsPost



### Example

```bash
 apiV2TimeTrackerServiceTimeLogApprovalsPost  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **projectHoursApprovalCreateDto** | [**ProjectHoursApprovalCreateDto**](ProjectHoursApprovalCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

