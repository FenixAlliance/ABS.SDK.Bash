# ActivitiesService Bash client

## Overview

This is a Bash client script for accessing ActivitiesService service.

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
*ActivityFeedsApi* | [**countActivityTypesAsync**](docs/ActivityFeedsApi.md#countactivitytypesasync) | **GET** /api/v2/ActivitiesService/ActivityTypes/Count | Count Activity Types
*ActivityFeedsApi* | [**createActivityAsync**](docs/ActivityFeedsApi.md#createactivityasync) | **POST** /api/v2/ActivitiesService/ActivityFeeds/{activityFeedId}/Activities | Create an activity
*ActivityFeedsApi* | [**createActivityTypeAsync**](docs/ActivityFeedsApi.md#createactivitytypeasync) | **POST** /api/v2/ActivitiesService/ActivityTypes | Create Activity Type
*ActivityFeedsApi* | [**deleteActivityAsync**](docs/ActivityFeedsApi.md#deleteactivityasync) | **DELETE** /api/v2/ActivitiesService/ActivityFeeds/{activityFeedId}/Activities/{activityId} | Delete an activity
*ActivityFeedsApi* | [**deleteActivityTypeAsync**](docs/ActivityFeedsApi.md#deleteactivitytypeasync) | **DELETE** /api/v2/ActivitiesService/ActivityTypes/{activityTypeId} | Delete Activity Type
*ActivityFeedsApi* | [**getActivitiesAsync**](docs/ActivityFeedsApi.md#getactivitiesasync) | **GET** /api/v2/ActivitiesService/ActivityFeeds/{activityFeedId}/Activities | Get activities
*ActivityFeedsApi* | [**getActivitiesCountAsync**](docs/ActivityFeedsApi.md#getactivitiescountasync) | **GET** /api/v2/ActivitiesService/ActivityFeeds/{activityFeedId}/Activities/Count | Count activities
*ActivityFeedsApi* | [**getActivityAsync**](docs/ActivityFeedsApi.md#getactivityasync) | **GET** /api/v2/ActivitiesService/ActivityFeeds/{activityFeedId}/Activities/{activityId} | Get activity by ID
*ActivityFeedsApi* | [**getActivityFeedAsync**](docs/ActivityFeedsApi.md#getactivityfeedasync) | **GET** /api/v2/ActivitiesService/ActivityFeeds/{activityFeedId} | Get activity feed by ID
*ActivityFeedsApi* | [**getActivityFeedsAsync**](docs/ActivityFeedsApi.md#getactivityfeedsasync) | **GET** /api/v2/ActivitiesService/ActivityFeeds | Get activity feeds
*ActivityFeedsApi* | [**getActivityFeedsCountAsync**](docs/ActivityFeedsApi.md#getactivityfeedscountasync) | **GET** /api/v2/ActivitiesService/ActivityFeeds/Count | Count activity feeds
*ActivityFeedsApi* | [**getActivityRecordsCountAsync**](docs/ActivityFeedsApi.md#getactivityrecordscountasync) | **GET** /api/v2/ActivitiesService/Activities/Count | Count activity records
*ActivityFeedsApi* | [**getActivityTypeByIdAsync**](docs/ActivityFeedsApi.md#getactivitytypebyidasync) | **GET** /api/v2/ActivitiesService/ActivityTypes/{activityTypeId} | Get Activity Type
*ActivityFeedsApi* | [**getActivityTypesAsync**](docs/ActivityFeedsApi.md#getactivitytypesasync) | **GET** /api/v2/ActivitiesService/ActivityTypes | Get Activity Types
*ActivityFeedsApi* | [**patchActivityAsync**](docs/ActivityFeedsApi.md#patchactivityasync) | **PATCH** /api/v2/ActivitiesService/ActivityFeeds/{activityFeedId}/Activities/{activityId} | Patch an activity
*ActivityFeedsApi* | [**patchActivityTypeAsync**](docs/ActivityFeedsApi.md#patchactivitytypeasync) | **PATCH** /api/v2/ActivitiesService/ActivityTypes/{activityTypeId} | Patch Activity Type
*ActivityFeedsApi* | [**updateActivityAsync**](docs/ActivityFeedsApi.md#updateactivityasync) | **PUT** /api/v2/ActivitiesService/ActivityFeeds/{activityFeedId}/Activities/{activityId} | Update an activity
*ActivityFeedsApi* | [**updateActivityTypeAsync**](docs/ActivityFeedsApi.md#updateactivitytypeasync) | **PUT** /api/v2/ActivitiesService/ActivityTypes/{activityTypeId} | Update Activity Type
*FenixAllianceABSWebApi* | [**accountLogoutPost**](docs/FenixAllianceABSWebApi.md#accountlogoutpost) | **POST** /Account/Logout | 
*FenixAllianceABSWebApi* | [**accountManageDownloadPersonalDataPost**](docs/FenixAllianceABSWebApi.md#accountmanagedownloadpersonaldatapost) | **POST** /Account/Manage/DownloadPersonalData | 
*FenixAllianceABSWebApi* | [**accountManageLinkExternalLoginPost**](docs/FenixAllianceABSWebApi.md#accountmanagelinkexternalloginpost) | **POST** /Account/Manage/LinkExternalLogin | 
*FenixAllianceABSWebApi* | [**accountPerformExternalLoginPost**](docs/FenixAllianceABSWebApi.md#accountperformexternalloginpost) | **POST** /Account/PerformExternalLogin | 
*FenixAllianceABSWebApi* | [**forgotPasswordPost**](docs/FenixAllianceABSWebApi.md#forgotpasswordpost) | **POST** /forgotPassword | 
*FenixAllianceABSWebApi* | [**healthGet**](docs/FenixAllianceABSWebApi.md#healthget) | **GET** /health | 
*FenixAllianceABSWebApi* | [**helloGet**](docs/FenixAllianceABSWebApi.md#helloget) | **GET** /hello | 
*FenixAllianceABSWebApi* | [**loginPost**](docs/FenixAllianceABSWebApi.md#loginpost) | **POST** /login | 
*FenixAllianceABSWebApi* | [**manage2faPost**](docs/FenixAllianceABSWebApi.md#manage2fapost) | **POST** /manage/2fa | 
*FenixAllianceABSWebApi* | [**manageInfoGet**](docs/FenixAllianceABSWebApi.md#manageinfoget) | **GET** /manage/info | 
*FenixAllianceABSWebApi* | [**manageInfoPost**](docs/FenixAllianceABSWebApi.md#manageinfopost) | **POST** /manage/info | 
*FenixAllianceABSWebApi* | [**mapIdentityApiConfirmEmail**](docs/FenixAllianceABSWebApi.md#mapidentityapiconfirmemail) | **GET** /confirmEmail | 
*FenixAllianceABSWebApi* | [**refreshPost**](docs/FenixAllianceABSWebApi.md#refreshpost) | **POST** /refresh | 
*FenixAllianceABSWebApi* | [**registerPost**](docs/FenixAllianceABSWebApi.md#registerpost) | **POST** /register | 
*FenixAllianceABSWebApi* | [**resendConfirmationEmailPost**](docs/FenixAllianceABSWebApi.md#resendconfirmationemailpost) | **POST** /resendConfirmationEmail | 
*FenixAllianceABSWebApi* | [**resetPasswordPost**](docs/FenixAllianceABSWebApi.md#resetpasswordpost) | **POST** /resetPassword | 
*FenixAllianceABSWebApi* | [**versionGet**](docs/FenixAllianceABSWebApi.md#versionget) | **GET** /version | 


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [ActivityFeedDto](docs/ActivityFeedDto.md)
 - [ActivityFeedDtoCollectionQueryParameters](docs/ActivityFeedDtoCollectionQueryParameters.md)
 - [ActivityFeedDtoEnvelope](docs/ActivityFeedDtoEnvelope.md)
 - [ActivityFeedDtoListEnvelope](docs/ActivityFeedDtoListEnvelope.md)
 - [ActivityRecordCreateDto](docs/ActivityRecordCreateDto.md)
 - [ActivityRecordDto](docs/ActivityRecordDto.md)
 - [ActivityRecordDtoCollectionQueryParameters](docs/ActivityRecordDtoCollectionQueryParameters.md)
 - [ActivityRecordDtoEnvelope](docs/ActivityRecordDtoEnvelope.md)
 - [ActivityRecordDtoListEnvelope](docs/ActivityRecordDtoListEnvelope.md)
 - [ActivityRecordUpdateDto](docs/ActivityRecordUpdateDto.md)
 - [ActivityTypeCreateDto](docs/ActivityTypeCreateDto.md)
 - [ActivityTypeDto](docs/ActivityTypeDto.md)
 - [ActivityTypeDtoCollectionQueryParameters](docs/ActivityTypeDtoCollectionQueryParameters.md)
 - [ActivityTypeDtoEnvelope](docs/ActivityTypeDtoEnvelope.md)
 - [ActivityTypeDtoListEnvelope](docs/ActivityTypeDtoListEnvelope.md)
 - [ActivityTypeUpdateDto](docs/ActivityTypeUpdateDto.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [Envelope](docs/Envelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [PatchOperation](docs/PatchOperation.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

