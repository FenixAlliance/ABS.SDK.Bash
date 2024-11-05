# HolderService Bash client

## Overview

This is a Bash client script for accessing HolderService service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x 

# Print the list of operations available on the service
$ ./ -h

# Print the service description
$ ./ --about

# Print detailed information about specific operation
$ ./ <operationId> -h

# Make GET request
./ --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
 -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
$  --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
$  --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image

You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash

The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source .bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp .bash-completion /etc/bash-completion.d/
```

#### OS X

On OSX you might need to install bash-completion using Homebrew:

```shell
brew install bash-completion
```

and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh

In Zsh, the generated `_` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to **

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*UserApi* | [**countCurrentUserFollowersAsync**](docs/UserApi.md#countcurrentuserfollowersasync) | **GET** /api/v2/Me/Followers/Count | Count the social profiles that follow the current user
*UserApi* | [**countCurrentUserFollowsAsync**](docs/UserApi.md#countcurrentuserfollowsasync) | **GET** /api/v2/Me/Follows/Count | Count the social profiles that the current user follows
*UserApi* | [**countCurrentUserNotificationsAsync**](docs/UserApi.md#countcurrentusernotificationsasync) | **GET** /api/v2/Me/Notifications/Count | Count the notifications for the current user
*UserApi* | [**countCurrentUserTenantsAsync**](docs/UserApi.md#countcurrentusertenantsasync) | **GET** /api/v2/Me/Businesses/Count | Count the tenants that the current user is enrolled in
*UserApi* | [**getCurrentUserAddressesAsync**](docs/UserApi.md#getcurrentuseraddressesasync) | **GET** /api/v2/Me/Addresses | Get the list of addresses for the current user
*UserApi* | [**getCurrentUserAsync**](docs/UserApi.md#getcurrentuserasync) | **GET** /api/v2/Me | Gets the current user
*UserApi* | [**getCurrentUserAvatarAsync**](docs/UserApi.md#getcurrentuseravatarasync) | **GET** /api/v2/Me/Avatar | Get the current user&#39;s avatar
*UserApi* | [**getCurrentUserCartAsync**](docs/UserApi.md#getcurrentusercartasync) | **GET** /api/v2/Me/Cart | Get the current user&#39;s cart
*UserApi* | [**getCurrentUserEnrollmentsAsync**](docs/UserApi.md#getcurrentuserenrollmentsasync) | **GET** /api/v2/Me/Enrollments | Get the list of enrollments for the current user
*UserApi* | [**getCurrentUserEnrollmentsExtendedAsync**](docs/UserApi.md#getcurrentuserenrollmentsextendedasync) | **GET** /api/v2/Me/Enrollments/Extended | Get the list of enrollments for the current user
*UserApi* | [**getCurrentUserFollowersAsync**](docs/UserApi.md#getcurrentuserfollowersasync) | **GET** /api/v2/Me/Followers | Get the social profiles that follow the current user
*UserApi* | [**getCurrentUserFollowsAsync**](docs/UserApi.md#getcurrentuserfollowsasync) | **GET** /api/v2/Me/Follows | Get the social profiles that the current user follows
*UserApi* | [**getCurrentUserInvitationAsync**](docs/UserApi.md#getcurrentuserinvitationasync) | **GET** /api/v2/Me/Invitations | Get the list of tenant enrollment invitations for the current user
*UserApi* | [**getCurrentUserNotificationsAsync**](docs/UserApi.md#getcurrentusernotificationsasync) | **GET** /api/v2/Me/Notifications | Get the list of notifications for the current user
*UserApi* | [**getCurrentUserSettingsAsync**](docs/UserApi.md#getcurrentusersettingsasync) | **GET** /api/v2/Me/Settings | Get the settings for the current user
*UserApi* | [**getCurrentUserSocialProfileAsync**](docs/UserApi.md#getcurrentusersocialprofileasync) | **GET** /api/v2/Me/SocialProfile | Get the current user&#39;s social profile
*UserApi* | [**getCurrentUserTenantsAsync**](docs/UserApi.md#getcurrentusertenantsasync) | **GET** /api/v2/Me/Businesses | Get the tenants that the current user is enrolled in
*UserApi* | [**getCurrentUserTenantsExtendedAsync**](docs/UserApi.md#getcurrentusertenantsextendedasync) | **GET** /api/v2/Me/Businesses/Extended | Get the tenants that the current user is enrolled in
*UserApi* | [**getCurrentUserWalletAsync**](docs/UserApi.md#getcurrentuserwalletasync) | **GET** /api/v2/Me/Wallet | Get the current user&#39;s billing profile
*UserApi* | [**getExtendedCurrentUserAsync**](docs/UserApi.md#getextendedcurrentuserasync) | **GET** /api/v2/Me/Extended | Get the current user&#39;s extended profile
*UserApi* | [**getTenantEnrollmentAsync**](docs/UserApi.md#gettenantenrollmentasync) | **GET** /api/v2/Me/Enrollments/{enrollmentId} | Get a single TenantEnrollment by its ID
*UserApi* | [**patchCurrentUserAsync**](docs/UserApi.md#patchcurrentuserasync) | **PATCH** /api/v2/Me | Partially update the current user&#39;s profile
*UserApi* | [**updateAvatarAsync**](docs/UserApi.md#updateavatarasync) | **POST** /api/v2/Me/Avatar | Update the current user&#39;s avatar
*UserApi* | [**updateCurrentUserAsync**](docs/UserApi.md#updatecurrentuserasync) | **PUT** /api/v2/Me | Update the current user&#39;s profile
*UserApi* | [**updateCurrentUserSettingsAsync**](docs/UserApi.md#updatecurrentusersettingsasync) | **PUT** /api/v2/Me/Settings | Update the settings for the current user


## Documentation For Models

 - [AddressDto](docs/AddressDto.md)
 - [AddressDtoListEnvelope](docs/AddressDtoListEnvelope.md)
 - [CartDto](docs/CartDto.md)
 - [CartDtoEnvelope](docs/CartDtoEnvelope.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ExtendedTenantDto](docs/ExtendedTenantDto.md)
 - [ExtendedTenantDtoListEnvelope](docs/ExtendedTenantDtoListEnvelope.md)
 - [ExtendedTenantEnrolmentDto](docs/ExtendedTenantEnrolmentDto.md)
 - [ExtendedTenantEnrolmentDtoListEnvelope](docs/ExtendedTenantEnrolmentDtoListEnvelope.md)
 - [ExtendedUserDto](docs/ExtendedUserDto.md)
 - [ExtendedUserDtoEnvelope](docs/ExtendedUserDtoEnvelope.md)
 - [FollowRecordDto](docs/FollowRecordDto.md)
 - [FollowRecordDtoListEnvelope](docs/FollowRecordDtoListEnvelope.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [NotificationDto](docs/NotificationDto.md)
 - [NotificationDtoListEnvelope](docs/NotificationDtoListEnvelope.md)
 - [Operation](docs/Operation.md)
 - [SocialProfileDto](docs/SocialProfileDto.md)
 - [SocialProfileDtoEnvelope](docs/SocialProfileDtoEnvelope.md)
 - [TenantDto](docs/TenantDto.md)
 - [TenantDtoListEnvelope](docs/TenantDtoListEnvelope.md)
 - [TenantEnrolmentDto](docs/TenantEnrolmentDto.md)
 - [TenantEnrolmentDtoEnvelope](docs/TenantEnrolmentDtoEnvelope.md)
 - [TenantEnrolmentDtoListEnvelope](docs/TenantEnrolmentDtoListEnvelope.md)
 - [TenantInvitationDto](docs/TenantInvitationDto.md)
 - [TenantInvitationDtoListEnvelope](docs/TenantInvitationDtoListEnvelope.md)
 - [UpdateAvatarAsyncRequest](docs/UpdateAvatarAsyncRequest.md)
 - [UserDto](docs/UserDto.md)
 - [UserDtoEnvelope](docs/UserDtoEnvelope.md)
 - [UserSettingsDto](docs/UserSettingsDto.md)
 - [UserSettingsDtoEnvelope](docs/UserSettingsDtoEnvelope.md)
 - [UserSettingsUpdateDto](docs/UserSettingsUpdateDto.md)
 - [UserUpdateDto](docs/UserUpdateDto.md)
 - [WalletDto](docs/WalletDto.md)
 - [WalletDtoEnvelope](docs/WalletDtoEnvelope.md)


## Documentation For Authorization


## Bearer


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

