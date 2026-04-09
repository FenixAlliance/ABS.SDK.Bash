# SecurityService Bash client

## Overview

This is a Bash client script for accessing SecurityService service.

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
*ApplicationsApi* | [**createBusinessApplicationAsync**](docs/ApplicationsApi.md#createbusinessapplicationasync) | **POST** /api/v2/SecurityService/Applications | Create a new business application
*ApplicationsApi* | [**deleteBusinessApplicationAsync**](docs/ApplicationsApi.md#deletebusinessapplicationasync) | **DELETE** /api/v2/SecurityService/Applications/{applicationId} | Delete a business application
*ApplicationsApi* | [**getBusinessApplicationByIdAsync**](docs/ApplicationsApi.md#getbusinessapplicationbyidasync) | **GET** /api/v2/SecurityService/Applications/{applicationId} | Get business application by ID
*ApplicationsApi* | [**getBusinessApplicationsAsync**](docs/ApplicationsApi.md#getbusinessapplicationsasync) | **GET** /api/v2/SecurityService/Applications | Get all business applications
*ApplicationsApi* | [**getBusinessApplicationsCountAsync**](docs/ApplicationsApi.md#getbusinessapplicationscountasync) | **GET** /api/v2/SecurityService/Applications/Count | Get business applications count
*ApplicationsApi* | [**updateBusinessApplicationAsync**](docs/ApplicationsApi.md#updatebusinessapplicationasync) | **PUT** /api/v2/SecurityService/Applications/{applicationId} | Update an existing business application
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
*LogsApi* | [**getLogsAsync**](docs/LogsApi.md#getlogsasync) | **GET** /api/v2/SecurityService/Logs | Get tenant logs
*LogsApi* | [**getLogsCountAsync**](docs/LogsApi.md#getlogscountasync) | **GET** /api/v2/SecurityService/Logs/Count | Get tenant logs count
*OAuthApplicationsApi* | [**createOAuthApplicationAsync**](docs/OAuthApplicationsApi.md#createoauthapplicationasync) | **POST** /api/v2/SecurityService/OAuthApplications | Create a new OAuth application
*OAuthApplicationsApi* | [**deleteOAuthApplicationAsync**](docs/OAuthApplicationsApi.md#deleteoauthapplicationasync) | **DELETE** /api/v2/SecurityService/OAuthApplications/{applicationId} | Delete an OAuth application
*OAuthApplicationsApi* | [**getOAuthApplicationByIdAsync**](docs/OAuthApplicationsApi.md#getoauthapplicationbyidasync) | **GET** /api/v2/SecurityService/OAuthApplications/{applicationId} | Get OAuth application by ID
*OAuthApplicationsApi* | [**getOAuthApplicationsAsync**](docs/OAuthApplicationsApi.md#getoauthapplicationsasync) | **GET** /api/v2/SecurityService/OAuthApplications | Get all OAuth applications
*OAuthApplicationsApi* | [**getOAuthApplicationsCountAsync**](docs/OAuthApplicationsApi.md#getoauthapplicationscountasync) | **GET** /api/v2/SecurityService/OAuthApplications/Count | Get OAuth applications count
*OAuthApplicationsApi* | [**getOAuthAuthorizationByIdAsync**](docs/OAuthApplicationsApi.md#getoauthauthorizationbyidasync) | **GET** /api/v2/SecurityService/OAuthApplications/Authorizations/{authorizationId} | Get OAuth authorization by ID
*OAuthApplicationsApi* | [**getOAuthAuthorizationsAsync**](docs/OAuthApplicationsApi.md#getoauthauthorizationsasync) | **GET** /api/v2/SecurityService/OAuthApplications/Authorizations | Get all OAuth authorizations
*OAuthApplicationsApi* | [**getOAuthAuthorizationsCountAsync**](docs/OAuthApplicationsApi.md#getoauthauthorizationscountasync) | **GET** /api/v2/SecurityService/OAuthApplications/Authorizations/Count | Get OAuth authorizations count
*OAuthApplicationsApi* | [**updateOAuthApplicationAsync**](docs/OAuthApplicationsApi.md#updateoauthapplicationasync) | **PUT** /api/v2/SecurityService/OAuthApplications/{applicationId} | Update an existing OAuth application
*PermissionsApi* | [**assignPermissionToBusinessApplicationAsync**](docs/PermissionsApi.md#assignpermissiontobusinessapplicationasync) | **POST** /api/v2/SecurityService/Permissions/{securityPermissionId}/Applications/{applicationId} | Assign a permission to a business application
*PermissionsApi* | [**assignPermissionToEnrollmentAsync**](docs/PermissionsApi.md#assignpermissiontoenrollmentasync) | **POST** /api/v2/SecurityService/Permissions/{securityPermissionId}/Enrollments/{enrollmentId} | Assign a permission to an enrollment
*PermissionsApi* | [**assignRoleToPermissionAsync**](docs/PermissionsApi.md#assignroletopermissionasync) | **POST** /api/v2/SecurityService/Permissions/{securityPermissionId}/Roles/{securityRoleId} | Assign a role to a permission
*PermissionsApi* | [**createPermissionAsync**](docs/PermissionsApi.md#createpermissionasync) | **POST** /api/v2/SecurityService/Permissions | Create a new permission
*PermissionsApi* | [**deletePermissionAsync**](docs/PermissionsApi.md#deletepermissionasync) | **DELETE** /api/v2/SecurityService/Permissions/{securityPermissionId} | Delete an existing permission
*PermissionsApi* | [**getApplicationsByPermissionAsync**](docs/PermissionsApi.md#getapplicationsbypermissionasync) | **GET** /api/v2/SecurityService/Permissions/{securityPermissionId}/Applications | Get applications by permission
*PermissionsApi* | [**getEnrollmentsByPermissionAsync**](docs/PermissionsApi.md#getenrollmentsbypermissionasync) | **GET** /api/v2/SecurityService/Permissions/{securityPermissionId}/Enrollments | Get enrollments by permission
*PermissionsApi* | [**getPermissionAsync**](docs/PermissionsApi.md#getpermissionasync) | **GET** /api/v2/SecurityService/Permissions/{securityPermissionId} | Get permission by ID
*PermissionsApi* | [**getPermissionsAsync**](docs/PermissionsApi.md#getpermissionsasync) | **GET** /api/v2/SecurityService/Permissions | Get all permissions
*PermissionsApi* | [**getPermissionsByEnrollmentAsync**](docs/PermissionsApi.md#getpermissionsbyenrollmentasync) | **GET** /api/v2/SecurityService/Permissions/ByEnrollment/{enrollmentId} | Get permissions by enrollment
*PermissionsApi* | [**getPermissionsCountAsync**](docs/PermissionsApi.md#getpermissionscountasync) | **GET** /api/v2/SecurityService/Permissions/Count | Get permissions count
*PermissionsApi* | [**getRolesByPermissionAsync**](docs/PermissionsApi.md#getrolesbypermissionasync) | **GET** /api/v2/SecurityService/Permissions/{securityPermissionId}/Roles | Get roles by permission
*PermissionsApi* | [**revokePermissionFromBusinessApplicationAsync**](docs/PermissionsApi.md#revokepermissionfrombusinessapplicationasync) | **DELETE** /api/v2/SecurityService/Permissions/{securityPermissionId}/Applications/{applicationId} | Revoke a permission from a business application
*PermissionsApi* | [**revokePermissionFromEnrollmentAsync**](docs/PermissionsApi.md#revokepermissionfromenrollmentasync) | **DELETE** /api/v2/SecurityService/Permissions/{securityPermissionId}/Enrollments/{enrollmentId} | Revoke a permission from an enrollment
*PermissionsApi* | [**revokeRoleFromPermissionAsync**](docs/PermissionsApi.md#revokerolefrompermissionasync) | **DELETE** /api/v2/SecurityService/Permissions/{securityPermissionId}/Roles/{securityRoleId} | Revoke a role from a permission
*PermissionsApi* | [**updatePermissionAsync**](docs/PermissionsApi.md#updatepermissionasync) | **PUT** /api/v2/SecurityService/Permissions/{securityPermissionId} | Update an existing permission
*RolesApi* | [**assignPermissionToRoleAsync**](docs/RolesApi.md#assignpermissiontoroleasync) | **POST** /api/v2/SecurityService/Roles/{securityRoleId}/Permissions/{securityPermissionId} | Assign a permission to a role
*RolesApi* | [**assignRoleToBusinessApplicationAsync**](docs/RolesApi.md#assignroletobusinessapplicationasync) | **POST** /api/v2/SecurityService/Roles/{securityRoleId}/Applications/{applicationId} | Assign a role to a business application
*RolesApi* | [**assignRoleToEnrollmentAsync**](docs/RolesApi.md#assignroletoenrollmentasync) | **POST** /api/v2/SecurityService/Roles/{securityRoleId}/Enrollments/{enrollmentId} | Assign a role to an enrollment
*RolesApi* | [**createRoleAsync**](docs/RolesApi.md#createroleasync) | **POST** /api/v2/SecurityService/Roles | Create a new role
*RolesApi* | [**deleteRoleAsync**](docs/RolesApi.md#deleteroleasync) | **DELETE** /api/v2/SecurityService/Roles/{securityRoleId} | Delete an existing role
*RolesApi* | [**getApplicationsByRoleAsync**](docs/RolesApi.md#getapplicationsbyroleasync) | **GET** /api/v2/SecurityService/Roles/{securityRoleId}/Applications | Get applications by role
*RolesApi* | [**getEnrollmentsByRoleAsync**](docs/RolesApi.md#getenrollmentsbyroleasync) | **GET** /api/v2/SecurityService/Roles/{securityRoleId}/Enrollments | Get enrollments by role
*RolesApi* | [**getRoleAsync**](docs/RolesApi.md#getroleasync) | **GET** /api/v2/SecurityService/Roles/{securityRoleId} | Get role by ID
*RolesApi* | [**getRolePermissionsAsync**](docs/RolesApi.md#getrolepermissionsasync) | **GET** /api/v2/SecurityService/Roles/{securityRoleId}/Permissions | Get permissions by role
*RolesApi* | [**getRolesAsync**](docs/RolesApi.md#getrolesasync) | **GET** /api/v2/SecurityService/Roles | Get all roles
*RolesApi* | [**getRolesByEnrollmentAsync**](docs/RolesApi.md#getrolesbyenrollmentasync) | **GET** /api/v2/SecurityService/Roles/ByEnrollment/{enrollmentId} | Get roles by enrollment
*RolesApi* | [**getRolesCountAsync**](docs/RolesApi.md#getrolescountasync) | **GET** /api/v2/SecurityService/Roles/Count | Get roles count
*RolesApi* | [**revokePermissionFromRoleAsync**](docs/RolesApi.md#revokepermissionfromroleasync) | **DELETE** /api/v2/SecurityService/Roles/{securityRoleId}/Permissions/{securityPermissionId} | Revoke a permission from a role
*RolesApi* | [**revokeRoleFromBusinessApplicationAsync**](docs/RolesApi.md#revokerolefrombusinessapplicationasync) | **DELETE** /api/v2/SecurityService/Roles/{securityRoleId}/Applications/{applicationId} | Revoke a role from a business application
*RolesApi* | [**revokeRoleFromEnrollmentAsync**](docs/RolesApi.md#revokerolefromenrollmentasync) | **DELETE** /api/v2/SecurityService/Roles/{securityRoleId}/Enrollments/{enrollmentId} | Revoke a role from an enrollment
*RolesApi* | [**updateRoleAsync**](docs/RolesApi.md#updateroleasync) | **PUT** /api/v2/SecurityService/Roles/{securityRoleId} | Update an existing role
*SecurityCertificatesApi* | [**getSecurityCertificatesAsync**](docs/SecurityCertificatesApi.md#getsecuritycertificatesasync) | **GET** /api/v2/SecurityService/SecurityCertificates | Get security certificates
*SecurityCertificatesApi* | [**getSecurityCertificatesCountAsync**](docs/SecurityCertificatesApi.md#getsecuritycertificatescountasync) | **GET** /api/v2/SecurityService/SecurityCertificates/Count | Get security certificates count
*SecurityLogsApi* | [**getSecurityLogsAsync**](docs/SecurityLogsApi.md#getsecuritylogsasync) | **GET** /api/v2/SecurityService/SecurityLogs | Get business security logs
*SecurityLogsApi* | [**getSecurityLogsCountAsync**](docs/SecurityLogsApi.md#getsecuritylogscountasync) | **GET** /api/v2/SecurityService/SecurityLogs/Count | Get business security logs count
*WebhooksApi* | [**getWebhookRequestsAsync**](docs/WebhooksApi.md#getwebhookrequestsasync) | **GET** /api/v2/SecurityService/Webhooks | Get all webhook requests
*WebhooksApi* | [**getWebhookRequestsCountAsync**](docs/WebhooksApi.md#getwebhookrequestscountasync) | **GET** /api/v2/SecurityService/Webhooks/Count | Get webhook requests count


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [BusinessApplicationCreateDto](docs/BusinessApplicationCreateDto.md)
 - [BusinessApplicationDto](docs/BusinessApplicationDto.md)
 - [BusinessApplicationDtoEnvelope](docs/BusinessApplicationDtoEnvelope.md)
 - [BusinessApplicationDtoListEnvelope](docs/BusinessApplicationDtoListEnvelope.md)
 - [BusinessApplicationSimpleDto](docs/BusinessApplicationSimpleDto.md)
 - [BusinessApplicationSimpleDtoListEnvelope](docs/BusinessApplicationSimpleDtoListEnvelope.md)
 - [BusinessApplicationUpdateDto](docs/BusinessApplicationUpdateDto.md)
 - [BusinessSecurityLogDto](docs/BusinessSecurityLogDto.md)
 - [BusinessSecurityLogDtoListEnvelope](docs/BusinessSecurityLogDtoListEnvelope.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LogDto](docs/LogDto.md)
 - [LogDtoListEnvelope](docs/LogDtoListEnvelope.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [OAuthApplicationCreateDto](docs/OAuthApplicationCreateDto.md)
 - [OAuthApplicationDto](docs/OAuthApplicationDto.md)
 - [OAuthApplicationDtoEnvelope](docs/OAuthApplicationDtoEnvelope.md)
 - [OAuthApplicationDtoListEnvelope](docs/OAuthApplicationDtoListEnvelope.md)
 - [OAuthApplicationUpdateDto](docs/OAuthApplicationUpdateDto.md)
 - [OAuthAuthorizationDto](docs/OAuthAuthorizationDto.md)
 - [OAuthAuthorizationDtoEnvelope](docs/OAuthAuthorizationDtoEnvelope.md)
 - [OAuthAuthorizationDtoListEnvelope](docs/OAuthAuthorizationDtoListEnvelope.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [SecurityCertificateDto](docs/SecurityCertificateDto.md)
 - [SecurityCertificateDtoListEnvelope](docs/SecurityCertificateDtoListEnvelope.md)
 - [SecurityPermissionCreateDto](docs/SecurityPermissionCreateDto.md)
 - [SecurityPermissionDto](docs/SecurityPermissionDto.md)
 - [SecurityPermissionDtoEnvelope](docs/SecurityPermissionDtoEnvelope.md)
 - [SecurityPermissionDtoListEnvelope](docs/SecurityPermissionDtoListEnvelope.md)
 - [SecurityPermissionUpdateDto](docs/SecurityPermissionUpdateDto.md)
 - [SecurityRoleCreateDto](docs/SecurityRoleCreateDto.md)
 - [SecurityRoleDto](docs/SecurityRoleDto.md)
 - [SecurityRoleDtoEnvelope](docs/SecurityRoleDtoEnvelope.md)
 - [SecurityRoleDtoListEnvelope](docs/SecurityRoleDtoListEnvelope.md)
 - [SecurityRoleUpdateDto](docs/SecurityRoleUpdateDto.md)
 - [TenantEnrollmentDto](docs/TenantEnrollmentDto.md)
 - [TenantEnrollmentDtoListEnvelope](docs/TenantEnrollmentDtoListEnvelope.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)
 - [WebhookRequestDto](docs/WebhookRequestDto.md)
 - [WebhookRequestDtoListEnvelope](docs/WebhookRequestDtoListEnvelope.md)


## Documentation For Authorization

 All endpoints do not require authorization.

