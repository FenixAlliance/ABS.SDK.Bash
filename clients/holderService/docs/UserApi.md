# UserApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countCurrentUserFollowersAsync**](UserApi.md#countCurrentUserFollowersAsync) | **GET** /api/v2/Me/Followers/Count | Count the social profiles that follow the current user
[**countCurrentUserFollowsAsync**](UserApi.md#countCurrentUserFollowsAsync) | **GET** /api/v2/Me/Follows/Count | Count the social profiles that the current user follows
[**countCurrentUserNotificationsAsync**](UserApi.md#countCurrentUserNotificationsAsync) | **GET** /api/v2/Me/Notifications/Count | Count the notifications for the current user
[**countCurrentUserTenantsAsync**](UserApi.md#countCurrentUserTenantsAsync) | **GET** /api/v2/Me/Businesses/Count | Count the tenants that the current user is enrolled in
[**getCurrentUserAddressesAsync**](UserApi.md#getCurrentUserAddressesAsync) | **GET** /api/v2/Me/Addresses | Get the list of addresses for the current user
[**getCurrentUserAsync**](UserApi.md#getCurrentUserAsync) | **GET** /api/v2/Me | Gets the current user
[**getCurrentUserAvatarAsync**](UserApi.md#getCurrentUserAvatarAsync) | **GET** /api/v2/Me/Avatar | Get the current user&#39;s avatar
[**getCurrentUserCartAsync**](UserApi.md#getCurrentUserCartAsync) | **GET** /api/v2/Me/Cart | Get the current user&#39;s cart
[**getCurrentUserEnrollmentsAsync**](UserApi.md#getCurrentUserEnrollmentsAsync) | **GET** /api/v2/Me/Enrollments | Get the list of enrollments for the current user
[**getCurrentUserEnrollmentsExtendedAsync**](UserApi.md#getCurrentUserEnrollmentsExtendedAsync) | **GET** /api/v2/Me/Enrollments/Extended | Get the list of enrollments for the current user
[**getCurrentUserFollowersAsync**](UserApi.md#getCurrentUserFollowersAsync) | **GET** /api/v2/Me/Followers | Get the social profiles that follow the current user
[**getCurrentUserFollowsAsync**](UserApi.md#getCurrentUserFollowsAsync) | **GET** /api/v2/Me/Follows | Get the social profiles that the current user follows
[**getCurrentUserInvitationAsync**](UserApi.md#getCurrentUserInvitationAsync) | **GET** /api/v2/Me/Invitations | Get the list of tenant enrollment invitations for the current user
[**getCurrentUserNotificationsAsync**](UserApi.md#getCurrentUserNotificationsAsync) | **GET** /api/v2/Me/Notifications | Get the list of notifications for the current user
[**getCurrentUserSettingsAsync**](UserApi.md#getCurrentUserSettingsAsync) | **GET** /api/v2/Me/Settings | Get the settings for the current user
[**getCurrentUserSocialProfileAsync**](UserApi.md#getCurrentUserSocialProfileAsync) | **GET** /api/v2/Me/SocialProfile | Get the current user&#39;s social profile
[**getCurrentUserTenantsAsync**](UserApi.md#getCurrentUserTenantsAsync) | **GET** /api/v2/Me/Businesses | Get the tenants that the current user is enrolled in
[**getCurrentUserTenantsExtendedAsync**](UserApi.md#getCurrentUserTenantsExtendedAsync) | **GET** /api/v2/Me/Businesses/Extended | Get the tenants that the current user is enrolled in
[**getCurrentUserWalletAsync**](UserApi.md#getCurrentUserWalletAsync) | **GET** /api/v2/Me/Wallet | Get the current user&#39;s billing profile
[**getExtendedCurrentUserAsync**](UserApi.md#getExtendedCurrentUserAsync) | **GET** /api/v2/Me/Extended | Get the current user&#39;s extended profile
[**getTenantEnrollmentAsync**](UserApi.md#getTenantEnrollmentAsync) | **GET** /api/v2/Me/Enrollments/{enrollmentId} | Get a single TenantEnrollment by its ID
[**patchCurrentUserAsync**](UserApi.md#patchCurrentUserAsync) | **PATCH** /api/v2/Me | Partially update the current user&#39;s profile
[**updateAvatarAsync**](UserApi.md#updateAvatarAsync) | **POST** /api/v2/Me/Avatar | Update the current user&#39;s avatar
[**updateCurrentUserAsync**](UserApi.md#updateCurrentUserAsync) | **PUT** /api/v2/Me | Update the current user&#39;s profile
[**updateCurrentUserSettingsAsync**](UserApi.md#updateCurrentUserSettingsAsync) | **PUT** /api/v2/Me/Settings | Update the settings for the current user



## countCurrentUserFollowersAsync

Count the social profiles that follow the current user

Count the social profiles that follow the current user

### Example

```bash
 countCurrentUserFollowersAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## countCurrentUserFollowsAsync

Count the social profiles that the current user follows

Count the social profiles that the current user follows

### Example

```bash
 countCurrentUserFollowsAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## countCurrentUserNotificationsAsync

Count the notifications for the current user

Count the notifications for the current user

### Example

```bash
 countCurrentUserNotificationsAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## countCurrentUserTenantsAsync

Count the tenants that the current user is enrolled in

Count the tenants that the current user is enrolled in

### Example

```bash
 countCurrentUserTenantsAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurrentUserAddressesAsync

Get the list of addresses for the current user

Get the list of addresses for the current user

### Example

```bash
 getCurrentUserAddressesAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**AddressDtoListEnvelope**](AddressDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurrentUserAsync

Gets the current user

Get the currently acting user.

### Example

```bash
 getCurrentUserAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**UserDtoEnvelope**](UserDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurrentUserAvatarAsync

Get the current user's avatar

Get the current user's avatar

### Example

```bash
 getCurrentUserAvatarAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**binary**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurrentUserCartAsync

Get the current user's cart

Get the current user's cart

### Example

```bash
 getCurrentUserCartAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CartDtoEnvelope**](CartDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurrentUserEnrollmentsAsync

Get the list of enrollments for the current user

Get the list of enrollments for the current user

### Example

```bash
 getCurrentUserEnrollmentsAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TenantEnrolmentDtoListEnvelope**](TenantEnrolmentDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurrentUserEnrollmentsExtendedAsync

Get the list of enrollments for the current user

Get the list of enrollments for the current user

### Example

```bash
 getCurrentUserEnrollmentsExtendedAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ExtendedTenantEnrolmentDtoListEnvelope**](ExtendedTenantEnrolmentDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurrentUserFollowersAsync

Get the social profiles that follow the current user

Get the social profiles that follow the current user

### Example

```bash
 getCurrentUserFollowersAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**FollowRecordDtoListEnvelope**](FollowRecordDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurrentUserFollowsAsync

Get the social profiles that the current user follows

Get the social profiles that the current user follows

### Example

```bash
 getCurrentUserFollowsAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**FollowRecordDtoListEnvelope**](FollowRecordDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurrentUserInvitationAsync

Get the list of tenant enrollment invitations for the current user

Get the list of tenant enrollment invitations for the current user

### Example

```bash
 getCurrentUserInvitationAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TenantInvitationDtoListEnvelope**](TenantInvitationDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurrentUserNotificationsAsync

Get the list of notifications for the current user

Get the list of notifications for the current user

### Example

```bash
 getCurrentUserNotificationsAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**NotificationDtoListEnvelope**](NotificationDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurrentUserSettingsAsync

Get the settings for the current user

Get the settings for the current user

### Example

```bash
 getCurrentUserSettingsAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**UserSettingsDtoEnvelope**](UserSettingsDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurrentUserSocialProfileAsync

Get the current user's social profile

Get the current user's social profile

### Example

```bash
 getCurrentUserSocialProfileAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SocialProfileDtoEnvelope**](SocialProfileDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurrentUserTenantsAsync

Get the tenants that the current user is enrolled in

Get the tenants that the current user is enrolled in

### Example

```bash
 getCurrentUserTenantsAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TenantDtoListEnvelope**](TenantDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurrentUserTenantsExtendedAsync

Get the tenants that the current user is enrolled in

Get the tenants that the current user is enrolled in

### Example

```bash
 getCurrentUserTenantsExtendedAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ExtendedTenantDtoListEnvelope**](ExtendedTenantDtoListEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurrentUserWalletAsync

Get the current user's billing profile

Get the current user's billing profile

### Example

```bash
 getCurrentUserWalletAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**WalletDtoEnvelope**](WalletDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getExtendedCurrentUserAsync

Get the current user's extended profile

Get the current user's extended profile

### Example

```bash
 getExtendedCurrentUserAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ExtendedUserDtoEnvelope**](ExtendedUserDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTenantEnrollmentAsync

Get a single TenantEnrollment by its ID

Get a single TenantEnrollment by its ID

### Example

```bash
 getTenantEnrollmentAsync enrollmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enrollmentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **body** | **map** |  | [optional]

### Return type

[**TenantEnrolmentDtoEnvelope**](TenantEnrolmentDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml, multipart/form-data
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchCurrentUserAsync

Partially update the current user's profile

Partially update the current user's profile

### Example

```bash
 patchCurrentUserAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml, multipart/form-data
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateAvatarAsync

Update the current user's avatar

Update the current user's avatar

### Example

```bash
 updateAvatarAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **avatar** | **binary** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json, application/xml
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateCurrentUserAsync

Update the current user's profile

Update the current user's profile

### Example

```bash
 updateCurrentUserAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **userUpdateDto** | [**UserUpdateDto**](UserUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml, multipart/form-data
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateCurrentUserSettingsAsync

Update the settings for the current user

Update the settings for the current user

### Example

```bash
 updateCurrentUserSettingsAsync  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **userSettingsUpdateDto** | [**UserSettingsUpdateDto**](UserSettingsUpdateDto.md) |  | [optional]

### Return type

[**UserSettingsDtoEnvelope**](UserSettingsDtoEnvelope.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json, application/xml, multipart/form-data
- **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

