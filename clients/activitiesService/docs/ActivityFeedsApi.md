# ActivityFeedsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countActivityTypesAsync**](ActivityFeedsApi.md#countActivityTypesAsync) | **GET** /api/v2/ActivitiesService/ActivityTypes/Count | Count Activity Types
[**createActivityAsync**](ActivityFeedsApi.md#createActivityAsync) | **POST** /api/v2/ActivitiesService/ActivityFeeds/{activityFeedId}/Activities | Create an activity
[**createActivityTypeAsync**](ActivityFeedsApi.md#createActivityTypeAsync) | **POST** /api/v2/ActivitiesService/ActivityTypes | Create Activity Type
[**deleteActivityAsync**](ActivityFeedsApi.md#deleteActivityAsync) | **DELETE** /api/v2/ActivitiesService/ActivityFeeds/{activityFeedId}/Activities/{activityId} | Delete an activity
[**deleteActivityTypeAsync**](ActivityFeedsApi.md#deleteActivityTypeAsync) | **DELETE** /api/v2/ActivitiesService/ActivityTypes/{activityTypeId} | Delete Activity Type
[**getActivitiesAsync**](ActivityFeedsApi.md#getActivitiesAsync) | **GET** /api/v2/ActivitiesService/ActivityFeeds/{activityFeedId}/Activities | Get activities
[**getActivitiesCountAsync**](ActivityFeedsApi.md#getActivitiesCountAsync) | **GET** /api/v2/ActivitiesService/ActivityFeeds/{activityFeedId}/Activities/Count | Count activities
[**getActivityAsync**](ActivityFeedsApi.md#getActivityAsync) | **GET** /api/v2/ActivitiesService/ActivityFeeds/{activityFeedId}/Activities/{activityId} | Get activity by ID
[**getActivityFeedAsync**](ActivityFeedsApi.md#getActivityFeedAsync) | **GET** /api/v2/ActivitiesService/ActivityFeeds/{activityFeedId} | Get activity feed by ID
[**getActivityFeedsAsync**](ActivityFeedsApi.md#getActivityFeedsAsync) | **GET** /api/v2/ActivitiesService/ActivityFeeds | Get activity feeds
[**getActivityFeedsCountAsync**](ActivityFeedsApi.md#getActivityFeedsCountAsync) | **GET** /api/v2/ActivitiesService/ActivityFeeds/Count | Count activity feeds
[**getActivityTypeByIdAsync**](ActivityFeedsApi.md#getActivityTypeByIdAsync) | **GET** /api/v2/ActivitiesService/ActivityTypes/{activityTypeId} | Get Activity Type
[**getActivityTypesAsync**](ActivityFeedsApi.md#getActivityTypesAsync) | **GET** /api/v2/ActivitiesService/ActivityTypes | Get Activity Types
[**patchActivityAsync**](ActivityFeedsApi.md#patchActivityAsync) | **PATCH** /api/v2/ActivitiesService/ActivityFeeds/{activityFeedId}/Activities/{activityId} | Patch an activity
[**patchActivityTypeAsync**](ActivityFeedsApi.md#patchActivityTypeAsync) | **PATCH** /api/v2/ActivitiesService/ActivityTypes/{activityTypeId} | Patch Activity Type
[**updateActivityAsync**](ActivityFeedsApi.md#updateActivityAsync) | **PUT** /api/v2/ActivitiesService/ActivityFeeds/{activityFeedId}/Activities/{activityId} | Update an activity
[**updateActivityTypeAsync**](ActivityFeedsApi.md#updateActivityTypeAsync) | **PUT** /api/v2/ActivitiesService/ActivityTypes/{activityTypeId} | Update Activity Type



## countActivityTypesAsync

Count Activity Types

Count activity types for the current tenant.

### Example

```bash
 countActivityTypesAsync  tenantId=value  api-version=value x-api-version:value
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


## createActivityAsync

Create an activity

Creates a new activity in a specific activity feed.

### Example

```bash
 createActivityAsync  tenantId=value activityFeedId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **activityFeedId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **activityRecordCreateDto** | [**ActivityRecordCreateDto**](ActivityRecordCreateDto.md) |  | [optional]

### Return type

[**ActivityRecordDtoEnvelope**](ActivityRecordDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createActivityTypeAsync

Create Activity Type

Create a new activity type.

### Example

```bash
 createActivityTypeAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **activityTypeCreateDto** | [**ActivityTypeCreateDto**](ActivityTypeCreateDto.md) |  | [optional]

### Return type

[**Envelope**](Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteActivityAsync

Delete an activity

Deletes an activity from an activity feed.

### Example

```bash
 deleteActivityAsync  tenantId=value activityFeedId=value activityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **activityFeedId** | **string** |  | [default to null]
 **activityId** | **string** |  | [default to null]
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


## deleteActivityTypeAsync

Delete Activity Type

Delete an activity type.

### Example

```bash
 deleteActivityTypeAsync  tenantId=value activityTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **activityTypeId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**Envelope**](Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getActivitiesAsync

Get activities

Retrieves activities for a specific activity feed.

### Example

```bash
 getActivitiesAsync  tenantId=value activityFeedId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **activityFeedId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ActivityRecordDtoListEnvelope**](ActivityRecordDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getActivitiesCountAsync

Count activities

Returns the count of activities for a specific activity feed.

### Example

```bash
 getActivitiesCountAsync  tenantId=value activityFeedId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **activityFeedId** | **string** |  | [default to null]
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


## getActivityAsync

Get activity by ID

Retrieves a specific activity by its ID.

### Example

```bash
 getActivityAsync  tenantId=value activityFeedId=value activityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **activityFeedId** | **string** |  | [default to null]
 **activityId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ActivityRecordDtoEnvelope**](ActivityRecordDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getActivityFeedAsync

Get activity feed by ID

Retrieves a specific activity feed by its ID.

### Example

```bash
 getActivityFeedAsync  tenantId=value activityFeedId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **activityFeedId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ActivityFeedDtoEnvelope**](ActivityFeedDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getActivityFeedsAsync

Get activity feeds

Retrieves a list of activity feeds for the specified tenant.

### Example

```bash
 getActivityFeedsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ActivityFeedDtoListEnvelope**](ActivityFeedDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getActivityFeedsCountAsync

Count activity feeds

Returns the count of activity feeds for the specified tenant.

### Example

```bash
 getActivityFeedsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## getActivityTypeByIdAsync

Get Activity Type

Get an activity type by ID.

### Example

```bash
 getActivityTypeByIdAsync  tenantId=value activityTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **activityTypeId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ActivityTypeDtoEnvelope**](ActivityTypeDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getActivityTypesAsync

Get Activity Types

Get a list of activity types for the current tenant.

### Example

```bash
 getActivityTypesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ActivityTypeDtoListEnvelope**](ActivityTypeDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchActivityAsync

Patch an activity

Patch an activity

### Example

```bash
 patchActivityAsync  tenantId=value activityFeedId=value activityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **activityFeedId** | **string** |  | [default to null]
 **activityId** | **string** |  | [default to null]
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


## patchActivityTypeAsync

Patch Activity Type

Patch an activity type

### Example

```bash
 patchActivityTypeAsync  tenantId=value activityTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **activityTypeId** | **string** |  | [default to null]
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


## updateActivityAsync

Update an activity

Updates an existing activity.

### Example

```bash
 updateActivityAsync  tenantId=value activityFeedId=value activityId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **activityFeedId** | **string** |  | [default to null]
 **activityId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **activityRecordUpdateDto** | [**ActivityRecordUpdateDto**](ActivityRecordUpdateDto.md) |  | [optional]

### Return type

[**ActivityRecordDtoEnvelope**](ActivityRecordDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateActivityTypeAsync

Update Activity Type

Update an existing activity type.

### Example

```bash
 updateActivityTypeAsync  tenantId=value activityTypeId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **activityTypeId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **activityTypeUpdateDto** | [**ActivityTypeUpdateDto**](ActivityTypeUpdateDto.md) |  | [optional]

### Return type

[**Envelope**](Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

