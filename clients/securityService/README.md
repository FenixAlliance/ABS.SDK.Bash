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
*PermissionsApi* | [**apiV2SecurityServicePermissionsGet**](docs/PermissionsApi.md#apiv2securityservicepermissionsget) | **GET** /api/v2/SecurityService/Permissions | 
*PermissionsApi* | [**apiV2SecurityServicePermissionsPost**](docs/PermissionsApi.md#apiv2securityservicepermissionspost) | **POST** /api/v2/SecurityService/Permissions | 
*PermissionsApi* | [**apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete**](docs/PermissionsApi.md#apiv2securityservicepermissionssecuritypermissionidapplicationsapplicationiddelete) | **DELETE** /api/v2/SecurityService/Permissions/{securityPermissionId}/Applications/{applicationId} | 
*PermissionsApi* | [**apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost**](docs/PermissionsApi.md#apiv2securityservicepermissionssecuritypermissionidapplicationsapplicationidpost) | **POST** /api/v2/SecurityService/Permissions/{securityPermissionId}/Applications/{applicationId} | 
*PermissionsApi* | [**apiV2SecurityServicePermissionsSecurityPermissionIdDelete**](docs/PermissionsApi.md#apiv2securityservicepermissionssecuritypermissioniddelete) | **DELETE** /api/v2/SecurityService/Permissions/{securityPermissionId} | 
*PermissionsApi* | [**apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete**](docs/PermissionsApi.md#apiv2securityservicepermissionssecuritypermissionidenrollmentsenrollmentiddelete) | **DELETE** /api/v2/SecurityService/Permissions/{securityPermissionId}/Enrollments/{enrollmentId} | 
*PermissionsApi* | [**apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost**](docs/PermissionsApi.md#apiv2securityservicepermissionssecuritypermissionidenrollmentsenrollmentidpost) | **POST** /api/v2/SecurityService/Permissions/{securityPermissionId}/Enrollments/{enrollmentId} | 
*PermissionsApi* | [**apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet**](docs/PermissionsApi.md#apiv2securityservicepermissionssecuritypermissionidenrollmentsget) | **GET** /api/v2/SecurityService/Permissions/{securityPermissionId}/Enrollments | 
*PermissionsApi* | [**apiV2SecurityServicePermissionsSecurityPermissionIdGet**](docs/PermissionsApi.md#apiv2securityservicepermissionssecuritypermissionidget) | **GET** /api/v2/SecurityService/Permissions/{securityPermissionId} | 
*PermissionsApi* | [**apiV2SecurityServicePermissionsSecurityPermissionIdPut**](docs/PermissionsApi.md#apiv2securityservicepermissionssecuritypermissionidput) | **PUT** /api/v2/SecurityService/Permissions/{securityPermissionId} | 
*PermissionsApi* | [**apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete**](docs/PermissionsApi.md#apiv2securityservicepermissionssecuritypermissionidrolessecurityroleiddelete) | **DELETE** /api/v2/SecurityService/Permissions/{securityPermissionId}/Roles/{securityRoleId} | 
*PermissionsApi* | [**apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost**](docs/PermissionsApi.md#apiv2securityservicepermissionssecuritypermissionidrolessecurityroleidpost) | **POST** /api/v2/SecurityService/Permissions/{securityPermissionId}/Roles/{securityRoleId} | 
*RolesApi* | [**apiV2SecurityServiceRolesGet**](docs/RolesApi.md#apiv2securityservicerolesget) | **GET** /api/v2/SecurityService/Roles | 
*RolesApi* | [**apiV2SecurityServiceRolesPost**](docs/RolesApi.md#apiv2securityservicerolespost) | **POST** /api/v2/SecurityService/Roles | 
*RolesApi* | [**apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete**](docs/RolesApi.md#apiv2securityservicerolessecurityroleidapplicationsapplicationiddelete) | **DELETE** /api/v2/SecurityService/Roles/{securityRoleId}/Applications/{applicationId} | 
*RolesApi* | [**apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost**](docs/RolesApi.md#apiv2securityservicerolessecurityroleidapplicationsapplicationidpost) | **POST** /api/v2/SecurityService/Roles/{securityRoleId}/Applications/{applicationId} | 
*RolesApi* | [**apiV2SecurityServiceRolesSecurityRoleIdDelete**](docs/RolesApi.md#apiv2securityservicerolessecurityroleiddelete) | **DELETE** /api/v2/SecurityService/Roles/{securityRoleId} | 
*RolesApi* | [**apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete**](docs/RolesApi.md#apiv2securityservicerolessecurityroleidenrollmentsenrollmentiddelete) | **DELETE** /api/v2/SecurityService/Roles/{securityRoleId}/Enrollments/{enrollmentId} | 
*RolesApi* | [**apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost**](docs/RolesApi.md#apiv2securityservicerolessecurityroleidenrollmentsenrollmentidpost) | **POST** /api/v2/SecurityService/Roles/{securityRoleId}/Enrollments/{enrollmentId} | 
*RolesApi* | [**apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet**](docs/RolesApi.md#apiv2securityservicerolessecurityroleidenrollmentsget) | **GET** /api/v2/SecurityService/Roles/{securityRoleId}/Enrollments | 
*RolesApi* | [**apiV2SecurityServiceRolesSecurityRoleIdGet**](docs/RolesApi.md#apiv2securityservicerolessecurityroleidget) | **GET** /api/v2/SecurityService/Roles/{securityRoleId} | 
*RolesApi* | [**apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet**](docs/RolesApi.md#apiv2securityservicerolessecurityroleidpermissionsget) | **GET** /api/v2/SecurityService/Roles/{securityRoleId}/Permissions | 
*RolesApi* | [**apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete**](docs/RolesApi.md#apiv2securityservicerolessecurityroleidpermissionssecuritypermissioniddelete) | **DELETE** /api/v2/SecurityService/Roles/{securityRoleId}/Permissions/{securityPermissionId} | 
*RolesApi* | [**apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost**](docs/RolesApi.md#apiv2securityservicerolessecurityroleidpermissionssecuritypermissionidpost) | **POST** /api/v2/SecurityService/Roles/{securityRoleId}/Permissions/{securityPermissionId} | 
*RolesApi* | [**apiV2SecurityServiceRolesSecurityRoleIdPut**](docs/RolesApi.md#apiv2securityservicerolessecurityroleidput) | **PUT** /api/v2/SecurityService/Roles/{securityRoleId} | 


## Documentation For Models

 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [SecurityPermissionCreateDto](docs/SecurityPermissionCreateDto.md)
 - [SecurityPermissionDto](docs/SecurityPermissionDto.md)
 - [SecurityPermissionDtoListEnvelope](docs/SecurityPermissionDtoListEnvelope.md)
 - [SecurityPermissionUpdateDto](docs/SecurityPermissionUpdateDto.md)
 - [SecurityRoleCreateDto](docs/SecurityRoleCreateDto.md)
 - [SecurityRoleDto](docs/SecurityRoleDto.md)
 - [SecurityRoleDtoListEnvelope](docs/SecurityRoleDtoListEnvelope.md)
 - [SecurityRoleUpdateDto](docs/SecurityRoleUpdateDto.md)
 - [TenantEnrolmentDto](docs/TenantEnrolmentDto.md)
 - [TenantEnrolmentDtoListEnvelope](docs/TenantEnrolmentDtoListEnvelope.md)


## Documentation For Authorization


## Bearer


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

