# UsersService Bash client

## Overview

This is a Bash client script for accessing UsersService service.

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
*CompletionsApi* | [**apiV2AiServiceCompletionsCompleteGet**](docs/CompletionsApi.md#apiv2aiservicecompletionscompleteget) | **GET** /api/v2/AiService/Completions/Complete | 
*FenixAlliancePortalsWebsiteApi* | [**accountLogoutPost**](docs/FenixAlliancePortalsWebsiteApi.md#accountlogoutpost) | **POST** /Account/Logout | 
*FenixAlliancePortalsWebsiteApi* | [**accountManageDownloadPersonalDataPost**](docs/FenixAlliancePortalsWebsiteApi.md#accountmanagedownloadpersonaldatapost) | **POST** /Account/Manage/DownloadPersonalData | 
*FenixAlliancePortalsWebsiteApi* | [**accountManageLinkExternalLoginPost**](docs/FenixAlliancePortalsWebsiteApi.md#accountmanagelinkexternalloginpost) | **POST** /Account/Manage/LinkExternalLogin | 
*FenixAlliancePortalsWebsiteApi* | [**accountPerformExternalLoginPost**](docs/FenixAlliancePortalsWebsiteApi.md#accountperformexternalloginpost) | **POST** /Account/PerformExternalLogin | 
*FenixAlliancePortalsWebsiteApi* | [**forgotPasswordPost**](docs/FenixAlliancePortalsWebsiteApi.md#forgotpasswordpost) | **POST** /forgotPassword | 
*FenixAlliancePortalsWebsiteApi* | [**healthGet**](docs/FenixAlliancePortalsWebsiteApi.md#healthget) | **GET** /health | 
*FenixAlliancePortalsWebsiteApi* | [**helloGet**](docs/FenixAlliancePortalsWebsiteApi.md#helloget) | **GET** /hello | 
*FenixAlliancePortalsWebsiteApi* | [**loginPost**](docs/FenixAlliancePortalsWebsiteApi.md#loginpost) | **POST** /login | 
*FenixAlliancePortalsWebsiteApi* | [**manage2faPost**](docs/FenixAlliancePortalsWebsiteApi.md#manage2fapost) | **POST** /manage/2fa | 
*FenixAlliancePortalsWebsiteApi* | [**manageInfoGet**](docs/FenixAlliancePortalsWebsiteApi.md#manageinfoget) | **GET** /manage/info | 
*FenixAlliancePortalsWebsiteApi* | [**manageInfoPost**](docs/FenixAlliancePortalsWebsiteApi.md#manageinfopost) | **POST** /manage/info | 
*FenixAlliancePortalsWebsiteApi* | [**mapIdentityApiConfirmEmail**](docs/FenixAlliancePortalsWebsiteApi.md#mapidentityapiconfirmemail) | **GET** /confirmEmail | 
*FenixAlliancePortalsWebsiteApi* | [**refreshPost**](docs/FenixAlliancePortalsWebsiteApi.md#refreshpost) | **POST** /refresh | 
*FenixAlliancePortalsWebsiteApi* | [**registerPost**](docs/FenixAlliancePortalsWebsiteApi.md#registerpost) | **POST** /register | 
*FenixAlliancePortalsWebsiteApi* | [**resendConfirmationEmailPost**](docs/FenixAlliancePortalsWebsiteApi.md#resendconfirmationemailpost) | **POST** /resendConfirmationEmail | 
*FenixAlliancePortalsWebsiteApi* | [**resetPasswordPost**](docs/FenixAlliancePortalsWebsiteApi.md#resetpasswordpost) | **POST** /resetPassword | 
*FenixAlliancePortalsWebsiteApi* | [**versionGet**](docs/FenixAlliancePortalsWebsiteApi.md#versionget) | **GET** /version | 
*OptionsApi* | [**createUserOption**](docs/OptionsApi.md#createuseroption) | **POST** /api/v2/Me/Options | Create a new user option
*OptionsApi* | [**deleteUserOption**](docs/OptionsApi.md#deleteuseroption) | **DELETE** /api/v2/Me/Options/{optionId} | Delete a user option
*OptionsApi* | [**getUserOptionById**](docs/OptionsApi.md#getuseroptionbyid) | **GET** /api/v2/Me/Options/{optionId} | Retrieve a single user option by its ID
*OptionsApi* | [**getUserOptionByKey**](docs/OptionsApi.md#getuseroptionbykey) | **GET** /api/v2/Me/Options/Key/{key} | Retrieve a single user option by its key
*OptionsApi* | [**getUserOptions**](docs/OptionsApi.md#getuseroptions) | **GET** /api/v2/Me/Options | Retrieve a list of user options
*OptionsApi* | [**getUserOptionsCount**](docs/OptionsApi.md#getuseroptionscount) | **GET** /api/v2/Me/Options/Count | Get the count of user options
*OptionsApi* | [**patchUserOption**](docs/OptionsApi.md#patchuseroption) | **PATCH** /api/v2/Me/Options/{optionId} | Patch a user option
*OptionsApi* | [**updateUserOption**](docs/OptionsApi.md#updateuseroption) | **PUT** /api/v2/Me/Options/{optionId} | Update a user option
*OptionsApi* | [**upsertUserOption**](docs/OptionsApi.md#upsertuseroption) | **PUT** /api/v2/Me/Options/Upsert/{key} | Create or update a user option by key
*UsersApi* | [**countCurrentUserFollowersAsync**](docs/UsersApi.md#countcurrentuserfollowersasync) | **GET** /api/v2/Me/Followers/Count | Count the social profiles that follow the current user
*UsersApi* | [**countCurrentUserFollowsAsync**](docs/UsersApi.md#countcurrentuserfollowsasync) | **GET** /api/v2/Me/Follows/Count | Count the social profiles that the current user follows
*UsersApi* | [**countCurrentUserNotificationsAsync**](docs/UsersApi.md#countcurrentusernotificationsasync) | **GET** /api/v2/Me/Notifications/Count | Count the notifications for the current user
*UsersApi* | [**countCurrentUserTenantsAsync**](docs/UsersApi.md#countcurrentusertenantsasync) | **GET** /api/v2/Me/Tenants/Count | Count the tenants that the current user is enrolled in
*UsersApi* | [**getCurrentUserAddressesAsync**](docs/UsersApi.md#getcurrentuseraddressesasync) | **GET** /api/v2/Me/Addresses | Get the list of addresses for the current user
*UsersApi* | [**getCurrentUserAsync**](docs/UsersApi.md#getcurrentuserasync) | **GET** /api/v2/Me | Gets the current user
*UsersApi* | [**getCurrentUserAvatarAsync**](docs/UsersApi.md#getcurrentuseravatarasync) | **GET** /api/v2/Me/Avatar | Get the current user&#39;s avatar
*UsersApi* | [**getCurrentUserCartAsync**](docs/UsersApi.md#getcurrentusercartasync) | **GET** /api/v2/Me/Cart | Get the current user&#39;s cart
*UsersApi* | [**getCurrentUserEnrollmentsAsync**](docs/UsersApi.md#getcurrentuserenrollmentsasync) | **GET** /api/v2/Me/Enrollments | Get the list of enrollments for the current user
*UsersApi* | [**getCurrentUserEnrollmentsExtendedAsync**](docs/UsersApi.md#getcurrentuserenrollmentsextendedasync) | **GET** /api/v2/Me/Enrollments/Extended | Get the list of enrollments for the current user
*UsersApi* | [**getCurrentUserFollowersAsync**](docs/UsersApi.md#getcurrentuserfollowersasync) | **GET** /api/v2/Me/Followers | Get the social profiles that follow the current user
*UsersApi* | [**getCurrentUserFollowsAsync**](docs/UsersApi.md#getcurrentuserfollowsasync) | **GET** /api/v2/Me/Follows | Get the social profiles that the current user follows
*UsersApi* | [**getCurrentUserInvitationAsync**](docs/UsersApi.md#getcurrentuserinvitationasync) | **GET** /api/v2/Me/Invitations | Get the list of tenant enrollment invitations for the current user
*UsersApi* | [**getCurrentUserNotificationsAsync**](docs/UsersApi.md#getcurrentusernotificationsasync) | **GET** /api/v2/Me/Notifications | Get the list of notifications for the current user
*UsersApi* | [**getCurrentUserSettingsAsync**](docs/UsersApi.md#getcurrentusersettingsasync) | **GET** /api/v2/Me/Settings | Get the settings for the current user
*UsersApi* | [**getCurrentUserSocialProfileAsync**](docs/UsersApi.md#getcurrentusersocialprofileasync) | **GET** /api/v2/Me/SocialProfile | Get the current user&#39;s social profile
*UsersApi* | [**getCurrentUserTenantsAsync**](docs/UsersApi.md#getcurrentusertenantsasync) | **GET** /api/v2/Me/Tenants | Get the tenants that the current user is enrolled in
*UsersApi* | [**getCurrentUserTenantsExtendedAsync**](docs/UsersApi.md#getcurrentusertenantsextendedasync) | **GET** /api/v2/Me/Tenants/Extended | Get the tenants that the current user is enrolled in
*UsersApi* | [**getCurrentUserWalletAsync**](docs/UsersApi.md#getcurrentuserwalletasync) | **GET** /api/v2/Me/Wallet | Get the current user&#39;s billing profile
*UsersApi* | [**getEnrollmentAsync**](docs/UsersApi.md#getenrollmentasync) | **GET** /api/v2/Me/Enrollments/{enrollmentId} | Get a single TenantEnrollment by its ID
*UsersApi* | [**getExtendedCurrentUserAsync**](docs/UsersApi.md#getextendedcurrentuserasync) | **GET** /api/v2/Me/Extended | Get the current user&#39;s extended profile
*UsersApi* | [**patchCurrentUserAsync**](docs/UsersApi.md#patchcurrentuserasync) | **PATCH** /api/v2/Me | Partially update the current user&#39;s profile
*UsersApi* | [**updateAvatarAsync**](docs/UsersApi.md#updateavatarasync) | **POST** /api/v2/Me/Avatar | Update the current user&#39;s avatar
*UsersApi* | [**updateCurrentUserAsync**](docs/UsersApi.md#updatecurrentuserasync) | **PUT** /api/v2/Me | Update the current user&#39;s profile
*UsersApi* | [**updateCurrentUserSettingsAsync**](docs/UsersApi.md#updatecurrentusersettingsasync) | **PUT** /api/v2/Me/Settings | Update the settings for the current user


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [AddressDto](docs/AddressDto.md)
 - [AddressDtoListEnvelope](docs/AddressDtoListEnvelope.md)
 - [CartDto](docs/CartDto.md)
 - [CartDtoEnvelope](docs/CartDtoEnvelope.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ExtendedTenantDto](docs/ExtendedTenantDto.md)
 - [ExtendedTenantDtoListEnvelope](docs/ExtendedTenantDtoListEnvelope.md)
 - [ExtendedTenantEnrollmentDto](docs/ExtendedTenantEnrollmentDto.md)
 - [ExtendedTenantEnrollmentDtoListEnvelope](docs/ExtendedTenantEnrollmentDtoListEnvelope.md)
 - [ExtendedUserDto](docs/ExtendedUserDto.md)
 - [ExtendedUserDtoEnvelope](docs/ExtendedUserDtoEnvelope.md)
 - [FollowRecordDto](docs/FollowRecordDto.md)
 - [FollowRecordDtoListEnvelope](docs/FollowRecordDtoListEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [NotificationDto](docs/NotificationDto.md)
 - [NotificationDtoListEnvelope](docs/NotificationDtoListEnvelope.md)
 - [Operation](docs/Operation.md)
 - [OptionCreateDto](docs/OptionCreateDto.md)
 - [OptionDto](docs/OptionDto.md)
 - [OptionDtoEnvelope](docs/OptionDtoEnvelope.md)
 - [OptionDtoListEnvelope](docs/OptionDtoListEnvelope.md)
 - [OptionUpdateDto](docs/OptionUpdateDto.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [SocialProfileDto](docs/SocialProfileDto.md)
 - [SocialProfileDtoEnvelope](docs/SocialProfileDtoEnvelope.md)
 - [TenantDto](docs/TenantDto.md)
 - [TenantDtoListEnvelope](docs/TenantDtoListEnvelope.md)
 - [TenantEnrollmentDto](docs/TenantEnrollmentDto.md)
 - [TenantEnrollmentDtoEnvelope](docs/TenantEnrollmentDtoEnvelope.md)
 - [TenantEnrollmentDtoListEnvelope](docs/TenantEnrollmentDtoListEnvelope.md)
 - [TenantInvitationDto](docs/TenantInvitationDto.md)
 - [TenantInvitationDtoListEnvelope](docs/TenantInvitationDtoListEnvelope.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)
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

 All endpoints do not require authorization.

