# SubscriptionsService Bash client

## Overview

This is a Bash client script for accessing SubscriptionsService service.

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
*SubscriptionPlansApi* | [**createSubscriptionPlanAsync**](docs/SubscriptionPlansApi.md#createsubscriptionplanasync) | **POST** /api/v2/SubscriptionsService/SubscriptionPlans | Create a subscription plan
*SubscriptionPlansApi* | [**deleteSubscriptionPlanAsync**](docs/SubscriptionPlansApi.md#deletesubscriptionplanasync) | **DELETE** /api/v2/SubscriptionsService/SubscriptionPlans/{planId} | Delete a subscription plan
*SubscriptionPlansApi* | [**getSubscriptionPlanByIdAsync**](docs/SubscriptionPlansApi.md#getsubscriptionplanbyidasync) | **GET** /api/v2/SubscriptionsService/SubscriptionPlans/{planId} | Get a subscription plan by ID
*SubscriptionPlansApi* | [**getSubscriptionPlansAsync**](docs/SubscriptionPlansApi.md#getsubscriptionplansasync) | **GET** /api/v2/SubscriptionsService/SubscriptionPlans | Get all subscription plans
*SubscriptionPlansApi* | [**getSubscriptionPlansCountAsync**](docs/SubscriptionPlansApi.md#getsubscriptionplanscountasync) | **GET** /api/v2/SubscriptionsService/SubscriptionPlans/Count | Get subscription plans count
*SubscriptionPlansApi* | [**updateSubscriptionPlanAsync**](docs/SubscriptionPlansApi.md#updatesubscriptionplanasync) | **PUT** /api/v2/SubscriptionsService/SubscriptionPlans/{planId} | Update a subscription plan
*SubscriptionsApi* | [**createSubscriptionAsync**](docs/SubscriptionsApi.md#createsubscriptionasync) | **POST** /api/v2/SubscriptionsService/Subscriptions | Create a subscription
*SubscriptionsApi* | [**deleteSubscriptionAsync**](docs/SubscriptionsApi.md#deletesubscriptionasync) | **DELETE** /api/v2/SubscriptionsService/Subscriptions/{subscriptionId} | Delete a subscription
*SubscriptionsApi* | [**getSubscriptionByIdAsync**](docs/SubscriptionsApi.md#getsubscriptionbyidasync) | **GET** /api/v2/SubscriptionsService/Subscriptions/{subscriptionId} | Get a subscription by ID
*SubscriptionsApi* | [**getSubscriptionsAsync**](docs/SubscriptionsApi.md#getsubscriptionsasync) | **GET** /api/v2/SubscriptionsService/Subscriptions | Get all subscriptions
*SubscriptionsApi* | [**getSubscriptionsCountAsync**](docs/SubscriptionsApi.md#getsubscriptionscountasync) | **GET** /api/v2/SubscriptionsService/Subscriptions/Count | Get subscriptions count
*SubscriptionsApi* | [**updateSubscriptionAsync**](docs/SubscriptionsApi.md#updatesubscriptionasync) | **PUT** /api/v2/SubscriptionsService/Subscriptions/{subscriptionId} | Update a subscription


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [Envelope](docs/Envelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [SubscriptionCreateDto](docs/SubscriptionCreateDto.md)
 - [SubscriptionDto](docs/SubscriptionDto.md)
 - [SubscriptionDtoEnvelope](docs/SubscriptionDtoEnvelope.md)
 - [SubscriptionDtoIReadOnlyListEnvelope](docs/SubscriptionDtoIReadOnlyListEnvelope.md)
 - [SubscriptionPlanCreateDto](docs/SubscriptionPlanCreateDto.md)
 - [SubscriptionPlanDto](docs/SubscriptionPlanDto.md)
 - [SubscriptionPlanDtoEnvelope](docs/SubscriptionPlanDtoEnvelope.md)
 - [SubscriptionPlanDtoIReadOnlyListEnvelope](docs/SubscriptionPlanDtoIReadOnlyListEnvelope.md)
 - [SubscriptionPlanUpdateDto](docs/SubscriptionPlanUpdateDto.md)
 - [SubscriptionUpdateDto](docs/SubscriptionUpdateDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

