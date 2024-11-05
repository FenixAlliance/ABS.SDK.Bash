# SystemService Bash client

## Overview

This is a Bash client script for accessing SystemService service.

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
*AntiforgeryApi* | [**apiV2SystemServiceAntiforgeryGetAndStoreTokensGet**](docs/AntiforgeryApi.md#apiv2systemserviceantiforgerygetandstoretokensget) | **GET** /api/v2/SystemService/Antiforgery/GetAndStoreTokens | 
*AntiforgeryApi* | [**apiV2SystemServiceAntiforgeryIsRequestValidGet**](docs/AntiforgeryApi.md#apiv2systemserviceantiforgeryisrequestvalidget) | **GET** /api/v2/SystemService/Antiforgery/IsRequestValid | 
*LicensesApi* | [**apiLicensingLicensesGeneratePost**](docs/LicensesApi.md#apilicensinglicensesgeneratepost) | **POST** /api/Licensing/Licenses/Generate | 
*LicensesApi* | [**apiLicensingLicensesValidateAttributesGet**](docs/LicensesApi.md#apilicensinglicensesvalidateattributesget) | **GET** /api/Licensing/Licenses/Validate/Attributes | 
*LicensesApi* | [**apiLicensingLicensesValidateErrorsGet**](docs/LicensesApi.md#apilicensinglicensesvalidateerrorsget) | **GET** /api/Licensing/Licenses/Validate/Errors | 
*LicensesApi* | [**apiLicensingLicensesValidateGet**](docs/LicensesApi.md#apilicensinglicensesvalidateget) | **GET** /api/Licensing/Licenses/Validate | 
*LicensingApi* | [**apiV2SystemServiceLicensingLicensesGet**](docs/LicensingApi.md#apiv2systemservicelicensinglicensesget) | **GET** /api/v2/SystemService/Licensing/Licenses | 
*LicensingApi* | [**apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet**](docs/LicensingApi.md#apiv2systemservicelicensinglicenseslicenseidassignmentsget) | **GET** /api/v2/SystemService/Licensing/Licenses/{licenseId}/Assignments | 
*LicensingApi* | [**apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet**](docs/LicensingApi.md#apiv2systemservicelicensinglicenseslicenseidattributesget) | **GET** /api/v2/SystemService/Licensing/Licenses/{licenseId}/Attributes | 
*LicensingApi* | [**apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet**](docs/LicensingApi.md#apiv2systemservicelicensinglicenseslicenseidfeaturesget) | **GET** /api/v2/SystemService/Licensing/Licenses/{licenseId}/Features | 
*LicensingApi* | [**apiV2SystemServiceLicensingLicensesLicenseIdGet**](docs/LicensingApi.md#apiv2systemservicelicensinglicenseslicenseidget) | **GET** /api/v2/SystemService/Licensing/Licenses/{licenseId} | 
*LicensingApi* | [**apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet**](docs/LicensingApi.md#apiv2systemservicelicensinglicenseslicenseidquotaget) | **GET** /api/v2/SystemService/Licensing/Licenses/{licenseId}/Quota | 
*LicensingApi* | [**apiV2SystemServiceLicensingLicensesRedeemPost**](docs/LicensingApi.md#apiv2systemservicelicensinglicensesredeempost) | **POST** /api/v2/SystemService/Licensing/Licenses/Redeem | 
*LicensingApi* | [**apiV2SystemServiceLicensingLicensesValidatePost**](docs/LicensingApi.md#apiv2systemservicelicensinglicensesvalidatepost) | **POST** /api/v2/SystemService/Licensing/Licenses/Validate | 
*MigrationsApi* | [**apiV2SystemServiceMigrationsGet**](docs/MigrationsApi.md#apiv2systemservicemigrationsget) | **GET** /api/v2/SystemService/Migrations | 
*MigrationsApi* | [**apiV2SystemServiceMigrationsMigratePost**](docs/MigrationsApi.md#apiv2systemservicemigrationsmigratepost) | **POST** /api/v2/SystemService/Migrations/Migrate | 
*ModulesApi* | [**getAllModules**](docs/ModulesApi.md#getallmodules) | **GET** /api/v2/StudioService/Modules | Get all modules available on this suite server instance.
*ModulesApi* | [**getAvailableModules**](docs/ModulesApi.md#getavailablemodules) | **GET** /api/v2/StudioService/Modules/Data | Get all modules available to a tenant user.
*TenantsApi* | [**createTenant**](docs/TenantsApi.md#createtenant) | **POST** /api/v2/SystemService/Tenants | Create a new tenant.
*TenantsApi* | [**deleteTenant**](docs/TenantsApi.md#deletetenant) | **DELETE** /api/v2/SystemService/Tenants/{tenantId} | Delete a specific tenant by ID.
*TenantsApi* | [**getAllExtendedTenants**](docs/TenantsApi.md#getallextendedtenants) | **GET** /api/v2/SystemService/Tenants/Extended | Get all extended tenants available on this suite server instance.
*TenantsApi* | [**getAllTenants**](docs/TenantsApi.md#getalltenants) | **GET** /api/v2/SystemService/Tenants | Get all tenants available on this suite server instance.
*TenantsApi* | [**getExtendedTenantsCount**](docs/TenantsApi.md#getextendedtenantscount) | **GET** /api/v2/SystemService/Tenants/Extended/Count | Get the total count of extended tenants available on this suite server instance.
*TenantsApi* | [**getTenant**](docs/TenantsApi.md#gettenant) | **GET** /api/v2/SystemService/Tenants/{tenantId} | Get a specific tenant by ID.
*TenantsApi* | [**getTenantsCount**](docs/TenantsApi.md#gettenantscount) | **GET** /api/v2/SystemService/Tenants/Count | Get the total count of tenants available on this suite server instance.
*TenantsApi* | [**updateTenant**](docs/TenantsApi.md#updatetenant) | **PUT** /api/v2/SystemService/Tenants/{tenantId} | Update a specific tenant by ID.
*UsersApi* | [**apiV2SystemServiceUsersCountGet**](docs/UsersApi.md#apiv2systemserviceuserscountget) | **GET** /api/v2/SystemService/Users/Count | 
*UsersApi* | [**apiV2SystemServiceUsersExtendedCountGet**](docs/UsersApi.md#apiv2systemserviceusersextendedcountget) | **GET** /api/v2/SystemService/Users/Extended/Count | 
*UsersApi* | [**apiV2SystemServiceUsersExtendedGet**](docs/UsersApi.md#apiv2systemserviceusersextendedget) | **GET** /api/v2/SystemService/Users/Extended | 
*UsersApi* | [**apiV2SystemServiceUsersGet**](docs/UsersApi.md#apiv2systemserviceusersget) | **GET** /api/v2/SystemService/Users | 
*UsersApi* | [**apiV2SystemServiceUsersPost**](docs/UsersApi.md#apiv2systemserviceuserspost) | **POST** /api/v2/SystemService/Users | 
*UsersApi* | [**apiV2SystemServiceUsersUserIdDelete**](docs/UsersApi.md#apiv2systemserviceusersuseriddelete) | **DELETE** /api/v2/SystemService/Users/{userId} | 
*UsersApi* | [**apiV2SystemServiceUsersUserIdExtendedGet**](docs/UsersApi.md#apiv2systemserviceusersuseridextendedget) | **GET** /api/v2/SystemService/Users/{userId}/Extended | 
*UsersApi* | [**apiV2SystemServiceUsersUserIdPut**](docs/UsersApi.md#apiv2systemserviceusersuseridput) | **PUT** /api/v2/SystemService/Users/{userId} | 
*UsersApi* | [**getUserAsync**](docs/UsersApi.md#getuserasync) | **GET** /api/v2/SystemService/Users/{userId} | 


## Documentation For Models

 - [AccountHolderCreateDto](docs/AccountHolderCreateDto.md)
 - [AdditionalAttribute](docs/AdditionalAttribute.md)
 - [BooleanEnvelope](docs/BooleanEnvelope.md)
 - [CartDto](docs/CartDto.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ExtendedTenantDto](docs/ExtendedTenantDto.md)
 - [ExtendedTenantDtoListEnvelope](docs/ExtendedTenantDtoListEnvelope.md)
 - [ExtendedUserDto](docs/ExtendedUserDto.md)
 - [ExtendedUserDtoEnvelope](docs/ExtendedUserDtoEnvelope.md)
 - [ExtendedUserDtoListEnvelope](docs/ExtendedUserDtoListEnvelope.md)
 - [GeneralValidationFailure](docs/GeneralValidationFailure.md)
 - [GeneralValidationFailureListEnvelope](docs/GeneralValidationFailureListEnvelope.md)
 - [ISwaggerContact](docs/ISwaggerContact.md)
 - [ISwaggerEndpoint](docs/ISwaggerEndpoint.md)
 - [ISwaggerLicense](docs/ISwaggerLicense.md)
 - [ISwaggerSpec](docs/ISwaggerSpec.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LicenseAttributesListEnvelope](docs/LicenseAttributesListEnvelope.md)
 - [LicenseFeature](docs/LicenseFeature.md)
 - [LicenseKey](docs/LicenseKey.md)
 - [LicenseKeyRequest](docs/LicenseKeyRequest.md)
 - [LicenseValidationError](docs/LicenseValidationError.md)
 - [LicenseValidationErrorListEnvelope](docs/LicenseValidationErrorListEnvelope.md)
 - [LicenseValidationRequest](docs/LicenseValidationRequest.md)
 - [Module](docs/Module.md)
 - [ModuleListEnvelope](docs/ModuleListEnvelope.md)
 - [SocialProfileDto](docs/SocialProfileDto.md)
 - [StringEnvelope](docs/StringEnvelope.md)
 - [StringListEnvelope](docs/StringListEnvelope.md)
 - [StudioModule](docs/StudioModule.md)
 - [StudioModuleListEnvelope](docs/StudioModuleListEnvelope.md)
 - [SuiteLicenseAssignmentDto](docs/SuiteLicenseAssignmentDto.md)
 - [SuiteLicenseAssignmentDtoListEnvelope](docs/SuiteLicenseAssignmentDtoListEnvelope.md)
 - [SuiteLicenseDto](docs/SuiteLicenseDto.md)
 - [SuiteLicenseDtoEnvelope](docs/SuiteLicenseDtoEnvelope.md)
 - [SuiteLicenseDtoListEnvelope](docs/SuiteLicenseDtoListEnvelope.md)
 - [TenantCreateDto](docs/TenantCreateDto.md)
 - [TenantDto](docs/TenantDto.md)
 - [TenantDtoEnvelope](docs/TenantDtoEnvelope.md)
 - [TenantDtoListEnvelope](docs/TenantDtoListEnvelope.md)
 - [TenantUpdateDto](docs/TenantUpdateDto.md)
 - [UserDto](docs/UserDto.md)
 - [UserDtoEnvelope](docs/UserDtoEnvelope.md)
 - [UserDtoListEnvelope](docs/UserDtoListEnvelope.md)
 - [UserSettingsDto](docs/UserSettingsDto.md)
 - [WalletDto](docs/WalletDto.md)


## Documentation For Authorization


## Bearer


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

