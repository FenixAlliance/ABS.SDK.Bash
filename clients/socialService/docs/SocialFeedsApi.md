# SocialFeedsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFeedPostAsync**](SocialFeedsApi.md#createFeedPostAsync) | **POST** /api/v2/SocialService/SocialFeeds/{socialFeedId}/Posts | Create a social feed post
[**deleteFeedPostAsync**](SocialFeedsApi.md#deleteFeedPostAsync) | **DELETE** /api/v2/SocialService/SocialFeeds/{socialFeedId}/Posts/{feedPostId} | Delete a social feed post
[**getFeedNotifications**](SocialFeedsApi.md#getFeedNotifications) | **GET** /api/v2/SocialService/SocialFeeds | Get social feeds
[**getFeedPostAsync**](SocialFeedsApi.md#getFeedPostAsync) | **GET** /api/v2/SocialService/SocialFeeds/{socialFeedId}/Posts/{feedPostId} | Get social feed post by ID
[**getFeedPostsAsync**](SocialFeedsApi.md#getFeedPostsAsync) | **GET** /api/v2/SocialService/SocialFeeds/{socialFeedId}/Posts | Get social feed posts
[**getFeedPostsCountAsync**](SocialFeedsApi.md#getFeedPostsCountAsync) | **GET** /api/v2/SocialService/SocialFeeds/{socialFeedId}/Posts/Count | Count social feed posts
[**getNotificationAsync**](SocialFeedsApi.md#getNotificationAsync) | **GET** /api/v2/SocialService/SocialFeeds/{socialFeedId} | Get social feed by ID
[**getNotificationsCountAsync**](SocialFeedsApi.md#getNotificationsCountAsync) | **GET** /api/v2/SocialService/SocialFeeds/Count | Count social feeds
[**updateFeedPostAsync**](SocialFeedsApi.md#updateFeedPostAsync) | **PUT** /api/v2/SocialService/SocialFeeds/{socialFeedId}/Posts/{feedPostId} | Update a social feed post



## createFeedPostAsync

Create a social feed post

Creates a new post in a specific social feed.

### Example

```bash
 createFeedPostAsync  socialProfileId=value socialFeedId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialProfileId** | **string** |  | [default to null]
 **socialFeedId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **socialFeedPostCreateDto** | [**SocialFeedPostCreateDto**](SocialFeedPostCreateDto.md) |  | [optional]

### Return type

[**SocialFeedPostDtoEnvelope**](SocialFeedPostDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteFeedPostAsync

Delete a social feed post

Deletes a post from a specific social feed.

### Example

```bash
 deleteFeedPostAsync  socialProfileId=value socialFeedId=value feedPostId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialProfileId** | **string** |  | [default to null]
 **socialFeedId** | **string** |  | [default to null]
 **feedPostId** | **string** |  | [default to null]
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


## getFeedNotifications

Get social feeds

Retrieves a list of social feeds for the specified social profile.

### Example

```bash
 getFeedNotifications  socialProfileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialProfileId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SocialFeedDtoListEnvelope**](SocialFeedDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getFeedPostAsync

Get social feed post by ID

Retrieves a specific post from a social feed by its ID.

### Example

```bash
 getFeedPostAsync  socialProfileId=value socialFeedId=value feedPostId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialProfileId** | **string** |  | [default to null]
 **socialFeedId** | **string** |  | [default to null]
 **feedPostId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SocialFeedPostDtoEnvelope**](SocialFeedPostDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getFeedPostsAsync

Get social feed posts

Retrieves a list of posts for a specific social feed.

### Example

```bash
 getFeedPostsAsync  socialProfileId=value socialFeedId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialProfileId** | **string** |  | [default to null]
 **socialFeedId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SocialFeedPostDtoListEnvelope**](SocialFeedPostDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getFeedPostsCountAsync

Count social feed posts

Returns the count of posts for a specific social feed.

### Example

```bash
 getFeedPostsCountAsync  socialProfileId=value socialFeedId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialProfileId** | **string** |  | [default to null]
 **socialFeedId** | **string** |  | [default to null]
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


## getNotificationAsync

Get social feed by ID

Retrieves a specific social feed by its ID.

### Example

```bash
 getNotificationAsync  socialProfileId=value socialFeedId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialProfileId** | **string** |  | [default to null]
 **socialFeedId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SocialFeedDtoEnvelope**](SocialFeedDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getNotificationsCountAsync

Count social feeds

Returns the count of social feeds for the specified social profile.

### Example

```bash
 getNotificationsCountAsync  socialProfileId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialProfileId** | **string** |  | [default to null]
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


## updateFeedPostAsync

Update a social feed post

Updates an existing post in a specific social feed.

### Example

```bash
 updateFeedPostAsync  socialProfileId=value socialFeedId=value feedPostId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialProfileId** | **string** |  | [default to null]
 **socialFeedId** | **string** |  | [default to null]
 **feedPostId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **socialFeedPostUpdateDto** | [**SocialFeedPostUpdateDto**](SocialFeedPostUpdateDto.md) |  | [optional]

### Return type

[**SocialFeedPostDtoEnvelope**](SocialFeedPostDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

