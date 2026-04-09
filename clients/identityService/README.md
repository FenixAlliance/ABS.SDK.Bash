# IdentityService Bash client

## Overview

This is a Bash client script for accessing IdentityService service.

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
*ApplicationsApi* | [**getApplication**](docs/ApplicationsApi.md#getapplication) | **GET** /api/v2/Applications/{appId} | Get application by ID
*ApplicationsApi* | [**getGrantedEnrollmentPermissions**](docs/ApplicationsApi.md#getgrantedenrollmentpermissions) | **GET** /api/v2/Applications/{appId}/GrantedRoles/{securityRoleId}/GrantedPermissions | Get granted permissions for an application role
*ApplicationsApi* | [**getGrantedTenantPermissions**](docs/ApplicationsApi.md#getgrantedtenantpermissions) | **GET** /api/v2/Applications/{appId}/GrantedPermissions | Get granted tenant permissions for an application
*ApplicationsApi* | [**getGrantedTenantRoles**](docs/ApplicationsApi.md#getgrantedtenantroles) | **GET** /api/v2/Applications/{appId}/GrantedRoles | Get granted tenant roles for an application
*ApplicationsApi* | [**getRequiredPermissions**](docs/ApplicationsApi.md#getrequiredpermissions) | **GET** /api/v2/Applications/{appId}/RequiredPermissions | Get required permissions for an application
*CheckerApi* | [**isAuthenticated**](docs/CheckerApi.md#isauthenticated) | **GET** /api/v2/Auth/Checker/IsAuthenticated | Check if user is authenticated
*FenixAllianceABPWebApi* | [**forgotPasswordPost**](docs/FenixAllianceABPWebApi.md#forgotpasswordpost) | **POST** /forgotPassword | 
*FenixAllianceABPWebApi* | [**healthGet**](docs/FenixAllianceABPWebApi.md#healthget) | **GET** /health | 
*FenixAllianceABPWebApi* | [**helloGet**](docs/FenixAllianceABPWebApi.md#helloget) | **GET** /hello | 
*FenixAllianceABPWebApi* | [**loginPost**](docs/FenixAllianceABPWebApi.md#loginpost) | **POST** /login | 
*FenixAllianceABPWebApi* | [**manage2faPost**](docs/FenixAllianceABPWebApi.md#manage2fapost) | **POST** /manage/2fa | 
*FenixAllianceABPWebApi* | [**manageInfoGet**](docs/FenixAllianceABPWebApi.md#manageinfoget) | **GET** /manage/info | 
*FenixAllianceABPWebApi* | [**manageInfoPost**](docs/FenixAllianceABPWebApi.md#manageinfopost) | **POST** /manage/info | 
*FenixAllianceABPWebApi* | [**mapIdentityApiConfirmEmail**](docs/FenixAllianceABPWebApi.md#mapidentityapiconfirmemail) | **GET** /confirmEmail | 
*FenixAllianceABPWebApi* | [**refreshPost**](docs/FenixAllianceABPWebApi.md#refreshpost) | **POST** /refresh | 
*FenixAllianceABPWebApi* | [**registerPost**](docs/FenixAllianceABPWebApi.md#registerpost) | **POST** /register | 
*FenixAllianceABPWebApi* | [**resendConfirmationEmailPost**](docs/FenixAllianceABPWebApi.md#resendconfirmationemailpost) | **POST** /resendConfirmationEmail | 
*FenixAllianceABPWebApi* | [**resetPasswordPost**](docs/FenixAllianceABPWebApi.md#resetpasswordpost) | **POST** /resetPassword | 
*FenixAllianceABPWebApi* | [**versionGet**](docs/FenixAllianceABPWebApi.md#versionget) | **GET** /version | 
*OAuthApi* | [**checkPasswordSignInAsync**](docs/OAuthApi.md#checkpasswordsigninasync) | **GET** /api/v2/OAuth/SignIn | Check password sign-in
*OAuthApi* | [**get**](docs/OAuthApi.md#get) | **GET** /api/v2/OAuth/WhoAmI | Get current user identity
*OAuthApi* | [**getJwKs**](docs/OAuthApi.md#getjwks) | **GET** /api/v2/OAuth/{applicationId}/Keys | Get JSON Web Key Set
*OAuthApi* | [**getOpenIdConfiguration**](docs/OAuthApi.md#getopenidconfiguration) | **GET** /api/v2/OAuth/{tenantId}/{applicationId}/.Well-Known/OpenId-Configuration | Get OpenID configuration
*OAuthApi* | [**getPermissions**](docs/OAuthApi.md#getpermissions) | **GET** /api/v2/OAuth/Permissions | Get user permissions
*OAuthApi* | [**passwordSignInAsync**](docs/OAuthApi.md#passwordsigninasync) | **POST** /api/v2/OAuth/SignIn | Sign in with password
*OAuthApi* | [**token**](docs/OAuthApi.md#token) | **POST** /api/v2/OAuth/Token | Get OAuth token
*ResourceApi* | [**getMessage**](docs/ResourceApi.md#getmessage) | **GET** /api/v2/IdentityService/Resource/message | Get authenticated resource message
*UserInfoApi* | [**connectUserinfoGet**](docs/UserInfoApi.md#connectuserinfoget) | **GET** /connect/userinfo | 
*UserInfoApi* | [**connectUserinfoPost**](docs/UserInfoApi.md#connectuserinfopost) | **POST** /connect/userinfo | 


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [AuthorizationResult](docs/AuthorizationResult.md)
 - [AuthorizationResultEnvelope](docs/AuthorizationResultEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [JsonWebKey](docs/JsonWebKey.md)
 - [JsonWebKeySet](docs/JsonWebKeySet.md)
 - [JsonWebKeySetEnvelope](docs/JsonWebKeySetEnvelope.md)
 - [JsonWebToken](docs/JsonWebToken.md)
 - [JsonWebTokenEnvelope](docs/JsonWebTokenEnvelope.md)
 - [JsonWebTokenHeader](docs/JsonWebTokenHeader.md)
 - [JsonWebTokenPayload](docs/JsonWebTokenPayload.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [OAuthTokenRequest](docs/OAuthTokenRequest.md)
 - [OpenIdConfiguration](docs/OpenIdConfiguration.md)
 - [OpenIdConfigurationEnvelope](docs/OpenIdConfigurationEnvelope.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [SigninModel](docs/SigninModel.md)
 - [StringListEnvelope](docs/StringListEnvelope.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)
 - [UserCreateDto](docs/UserCreateDto.md)
 - [UserCreateDtoEnvelope](docs/UserCreateDtoEnvelope.md)


## Documentation For Authorization

 All endpoints do not require authorization.

