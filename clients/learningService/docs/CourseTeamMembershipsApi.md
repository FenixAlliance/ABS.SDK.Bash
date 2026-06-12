# CourseTeamMembershipsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseTeamMembershipAsync**](CourseTeamMembershipsApi.md#createCourseTeamMembershipAsync) | **POST** /api/v2/LearningService/CourseTeamMemberships | Create a course team membership
[**deleteCourseTeamMembershipAsync**](CourseTeamMembershipsApi.md#deleteCourseTeamMembershipAsync) | **DELETE** /api/v2/LearningService/CourseTeamMemberships/{membershipId} | Delete a course team membership
[**getCourseTeamMembershipByIdAsync**](CourseTeamMembershipsApi.md#getCourseTeamMembershipByIdAsync) | **GET** /api/v2/LearningService/CourseTeamMemberships/{membershipId} | Get course team membership by ID
[**getCourseTeamMembershipsAsync**](CourseTeamMembershipsApi.md#getCourseTeamMembershipsAsync) | **GET** /api/v2/LearningService/CourseTeamMemberships | Get all course team memberships
[**getCourseTeamMembershipsCountAsync**](CourseTeamMembershipsApi.md#getCourseTeamMembershipsCountAsync) | **GET** /api/v2/LearningService/CourseTeamMemberships/Count | Get course team memberships count
[**patchCourseTeamMembershipAsync**](CourseTeamMembershipsApi.md#patchCourseTeamMembershipAsync) | **PATCH** /api/v2/LearningService/CourseTeamMemberships/{membershipId} | Patch a course team membership
[**updateCourseTeamMembershipAsync**](CourseTeamMembershipsApi.md#updateCourseTeamMembershipAsync) | **PUT** /api/v2/LearningService/CourseTeamMemberships/{membershipId} | Update a course team membership



## createCourseTeamMembershipAsync

Create a course team membership

Creates a new course team membership for the specified tenant.

### Example

```bash
 createCourseTeamMembershipAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseTeamMembershipCreateDto** | [**CourseTeamMembershipCreateDto**](CourseTeamMembershipCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCourseTeamMembershipAsync

Delete a course team membership

Deletes a course team membership by its ID.

### Example

```bash
 deleteCourseTeamMembershipAsync  tenantId=value membershipId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **membershipId** | **string** |  | [default to null]
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


## getCourseTeamMembershipByIdAsync

Get course team membership by ID

Retrieves a specific course team membership by its ID.

### Example

```bash
 getCourseTeamMembershipByIdAsync membershipId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **membershipId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CourseTeamMembershipDto**](CourseTeamMembershipDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseTeamMembershipsAsync

Get all course team memberships

Retrieves all course team memberships for the specified tenant.

### Example

```bash
 getCourseTeamMembershipsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseTeamMembershipDto]**](CourseTeamMembershipDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseTeamMembershipsCountAsync

Get course team memberships count

Returns the count of course team memberships for the specified tenant.

### Example

```bash
 getCourseTeamMembershipsCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchCourseTeamMembershipAsync

Patch a course team membership

Partially updates a course team membership for the specified tenant.

### Example

```bash
 patchCourseTeamMembershipAsync  tenantId=value membershipId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **membershipId** | **string** |  | [default to null]
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


## updateCourseTeamMembershipAsync

Update a course team membership

Updates an existing course team membership.

### Example

```bash
 updateCourseTeamMembershipAsync  tenantId=value membershipId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **membershipId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseTeamMembershipUpdateDto** | [**CourseTeamMembershipUpdateDto**](CourseTeamMembershipUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

