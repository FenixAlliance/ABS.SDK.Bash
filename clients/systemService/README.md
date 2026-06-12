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
*AntiforgeryApi* | [**getAndStoreTokens**](docs/AntiforgeryApi.md#getandstoretokens) | **GET** /api/v2/SystemService/Antiforgery/GetAndStoreTokens | Get and store antiforgery tokens
*AntiforgeryApi* | [**isRequestValidAsync**](docs/AntiforgeryApi.md#isrequestvalidasync) | **GET** /api/v2/SystemService/Antiforgery/IsRequestValid | Validate antiforgery request
*BusinessDomainsApi* | [**deleteSystemBusinessDomain**](docs/BusinessDomainsApi.md#deletesystembusinessdomain) | **DELETE** /api/v2/SystemService/BusinessDomains/{businessDomainId} | Delete a business domain
*BusinessDomainsApi* | [**getSystemBusinessDomainById**](docs/BusinessDomainsApi.md#getsystembusinessdomainbyid) | **GET** /api/v2/SystemService/BusinessDomains/{businessDomainId} | Retrieve a business domain by its ID
*BusinessDomainsApi* | [**getSystemBusinessDomains**](docs/BusinessDomainsApi.md#getsystembusinessdomains) | **GET** /api/v2/SystemService/BusinessDomains | Retrieve all business domains in the system
*BusinessDomainsApi* | [**getSystemBusinessDomainsCount**](docs/BusinessDomainsApi.md#getsystembusinessdomainscount) | **GET** /api/v2/SystemService/BusinessDomains/Count | Get the count of all business domains in the system
*BusinessDomainsApi* | [**verifySystemBusinessDomain**](docs/BusinessDomainsApi.md#verifysystembusinessdomain) | **POST** /api/v2/SystemService/BusinessDomains/{businessDomainId}/Verify | Verify a business domain
*CartsApi* | [**deleteSystemCart**](docs/CartsApi.md#deletesystemcart) | **DELETE** /api/v2/SystemService/Carts/{cartId} | Delete a system cart
*CartsApi* | [**getSystemCartById**](docs/CartsApi.md#getsystemcartbyid) | **GET** /api/v2/SystemService/Carts/{cartId} | Retrieve a single system cart by its ID
*CartsApi* | [**getSystemCarts**](docs/CartsApi.md#getsystemcarts) | **GET** /api/v2/SystemService/Carts | Retrieve a list of system carts
*CartsApi* | [**getSystemCartsCount**](docs/CartsApi.md#getsystemcartscount) | **GET** /api/v2/SystemService/Carts/Count | Get the count of system carts
*CompletionsApi* | [**apiV2AiServiceCompletionsCompleteGet**](docs/CompletionsApi.md#apiv2aiservicecompletionscompleteget) | **GET** /api/v2/AiService/Completions/Complete | 
*ContactOptionsApi* | [**createSystemContactOption**](docs/ContactOptionsApi.md#createsystemcontactoption) | **POST** /api/v2/SystemService/Contacts/{contactId}/Options | Create a new contact option (admin)
*ContactOptionsApi* | [**deleteSystemContactOption**](docs/ContactOptionsApi.md#deletesystemcontactoption) | **DELETE** /api/v2/SystemService/Contacts/{contactId}/Options/{optionId} | Delete a contact option (admin)
*ContactOptionsApi* | [**getSystemContactOptionById**](docs/ContactOptionsApi.md#getsystemcontactoptionbyid) | **GET** /api/v2/SystemService/Contacts/{contactId}/Options/{optionId} | Retrieve a single contact option by its ID (admin)
*ContactOptionsApi* | [**getSystemContactOptions**](docs/ContactOptionsApi.md#getsystemcontactoptions) | **GET** /api/v2/SystemService/Contacts/{contactId}/Options | Retrieve a list of contact options (admin)
*ContactOptionsApi* | [**getSystemContactOptionsCount**](docs/ContactOptionsApi.md#getsystemcontactoptionscount) | **GET** /api/v2/SystemService/Contacts/{contactId}/Options/Count | Get the count of contact options (admin)
*ContactOptionsApi* | [**patchSystemContactOption**](docs/ContactOptionsApi.md#patchsystemcontactoption) | **PATCH** /api/v2/SystemService/Contacts/{contactId}/Options/{optionId} | Partially update a contact option (admin)
*ContactOptionsApi* | [**updateSystemContactOption**](docs/ContactOptionsApi.md#updatesystemcontactoption) | **PUT** /api/v2/SystemService/Contacts/{contactId}/Options/{optionId} | Update a contact option (admin)
*EmailsApi* | [**adminPreviewBasicEmailTemplate**](docs/EmailsApi.md#adminpreviewbasicemailtemplate) | **POST** /api/v2/SystemService/Emails/Preview | Preview a rendered basic email template.
*EmailsApi* | [**adminSendBasicEmail**](docs/EmailsApi.md#adminsendbasicemail) | **POST** /api/v2/SystemService/Emails/SendBasic | Send a basic transactional email to recipients.
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
*IPLookupsApi* | [**deleteSystemIPLookup**](docs/IPLookupsApi.md#deletesystemiplookup) | **DELETE** /api/v2/SystemService/IPLookups/{ipLookupId} | Delete a system IP lookup
*IPLookupsApi* | [**getSystemIPLookupById**](docs/IPLookupsApi.md#getsystemiplookupbyid) | **GET** /api/v2/SystemService/IPLookups/{ipLookupId} | Retrieve a single system IP lookup by its ID
*IPLookupsApi* | [**getSystemIPLookups**](docs/IPLookupsApi.md#getsystemiplookups) | **GET** /api/v2/SystemService/IPLookups | Retrieve a list of system IP lookups
*IPLookupsApi* | [**getSystemIPLookupsCount**](docs/IPLookupsApi.md#getsystemiplookupscount) | **GET** /api/v2/SystemService/IPLookups/Count | Get the count of system IP lookups
*LicensesApi* | [**apiLicensingLicensesGeneratePost**](docs/LicensesApi.md#apilicensinglicensesgeneratepost) | **POST** /api/Licensing/Licenses/Generate | 
*LicensesApi* | [**apiLicensingLicensesValidateAttributesGet**](docs/LicensesApi.md#apilicensinglicensesvalidateattributesget) | **GET** /api/Licensing/Licenses/Validate/Attributes | 
*LicensesApi* | [**apiLicensingLicensesValidateErrorsGet**](docs/LicensesApi.md#apilicensinglicensesvalidateerrorsget) | **GET** /api/Licensing/Licenses/Validate/Errors | 
*LicensesApi* | [**apiLicensingLicensesValidateGet**](docs/LicensesApi.md#apilicensinglicensesvalidateget) | **GET** /api/Licensing/Licenses/Validate | 
*LicensingApi* | [**getLicenseAssignmentsAsync**](docs/LicensingApi.md#getlicenseassignmentsasync) | **GET** /api/v2/SystemService/Licensing/Licenses/{licenseId}/Assignments | Retrieve license assignments
*LicensingApi* | [**getLicenseAttributesAsync**](docs/LicensingApi.md#getlicenseattributesasync) | **GET** /api/v2/SystemService/Licensing/Licenses/{licenseId}/Attributes | Retrieve license attributes
*LicensingApi* | [**getLicenseByIdAsync**](docs/LicensingApi.md#getlicensebyidasync) | **GET** /api/v2/SystemService/Licensing/Licenses/{licenseId} | Retrieve a license by ID
*LicensingApi* | [**getLicenseFeaturesAsync**](docs/LicensingApi.md#getlicensefeaturesasync) | **GET** /api/v2/SystemService/Licensing/Licenses/{licenseId}/Features | Retrieve license features
*LicensingApi* | [**getLicenseRecordsQuotaAsync**](docs/LicensingApi.md#getlicenserecordsquotaasync) | **GET** /api/v2/SystemService/Licensing/Licenses/{licenseId}/Quota | Retrieve license record quota
*LicensingApi* | [**getLicensesAsync**](docs/LicensingApi.md#getlicensesasync) | **GET** /api/v2/SystemService/Licensing/Licenses | Retrieve a list of licenses
*LicensingApi* | [**redeemLicenseAsync**](docs/LicensingApi.md#redeemlicenseasync) | **POST** /api/v2/SystemService/Licensing/Licenses/Redeem | Redeem a license
*LicensingApi* | [**validateLicenseAsync**](docs/LicensingApi.md#validatelicenseasync) | **POST** /api/v2/SystemService/Licensing/Licenses/Validate | Validate a license
*MigrationsApi* | [**migrate**](docs/MigrationsApi.md#migrate) | **POST** /api/v2/SystemService/Migrations/Migrate | Apply pending database migrations
*MigrationsApi* | [**migrations**](docs/MigrationsApi.md#migrations) | **GET** /api/v2/SystemService/Migrations | Retrieve database migrations
*ModulesApi* | [**getAllModules**](docs/ModulesApi.md#getallmodules) | **GET** /api/v2/StudioService/Modules | Get all modules available on this suite server instance.
*ModulesApi* | [**getAvailableModules**](docs/ModulesApi.md#getavailablemodules) | **GET** /api/v2/StudioService/Modules/Data | Get all modules available to a tenant user.
*OptionsApi* | [**createSystemOption**](docs/OptionsApi.md#createsystemoption) | **POST** /api/v2/SystemService/Options | Create a new system option
*OptionsApi* | [**deleteSystemOption**](docs/OptionsApi.md#deletesystemoption) | **DELETE** /api/v2/SystemService/Options/{optionId} | Delete a system option
*OptionsApi* | [**getSystemOptionById**](docs/OptionsApi.md#getsystemoptionbyid) | **GET** /api/v2/SystemService/Options/{optionId} | Retrieve a single system option by its ID
*OptionsApi* | [**getSystemOptionByKey**](docs/OptionsApi.md#getsystemoptionbykey) | **GET** /api/v2/SystemService/Options/Key/{key} | Retrieve a single system option by its key
*OptionsApi* | [**getSystemOptions**](docs/OptionsApi.md#getsystemoptions) | **GET** /api/v2/SystemService/Options | Retrieve a list of system options
*OptionsApi* | [**getSystemOptionsCount**](docs/OptionsApi.md#getsystemoptionscount) | **GET** /api/v2/SystemService/Options/Count | Get the count of system options
*OptionsApi* | [**patchSystemOption**](docs/OptionsApi.md#patchsystemoption) | **PATCH** /api/v2/SystemService/Options/{optionId} | Partially update a system option
*OptionsApi* | [**updateSystemOption**](docs/OptionsApi.md#updatesystemoption) | **PUT** /api/v2/SystemService/Options/{optionId} | Update a system option
*OptionsApi* | [**upsertSystemOption**](docs/OptionsApi.md#upsertsystemoption) | **PUT** /api/v2/SystemService/Options/Upsert/{key} | Create or update a system option by key
*OverviewApi* | [**getSystemOverview**](docs/OverviewApi.md#getsystemoverview) | **GET** /api/v2/SystemService/Overview | Get system overview information
*PortalsApi* | [**createSystemPortal**](docs/PortalsApi.md#createsystemportal) | **POST** /api/v2/SystemService/Portals | Create a new system portal
*PortalsApi* | [**deleteSystemPortal**](docs/PortalsApi.md#deletesystemportal) | **DELETE** /api/v2/SystemService/Portals/{portalId} | Delete a system portal
*PortalsApi* | [**getSystemPortalById**](docs/PortalsApi.md#getsystemportalbyid) | **GET** /api/v2/SystemService/Portals/{portalId} | Retrieve a single system portal by its ID
*PortalsApi* | [**getSystemPortals**](docs/PortalsApi.md#getsystemportals) | **GET** /api/v2/SystemService/Portals | Retrieve a list of system portals
*PortalsApi* | [**getSystemPortalsCount**](docs/PortalsApi.md#getsystemportalscount) | **GET** /api/v2/SystemService/Portals/Count | Get the count of system portals
*PortalsApi* | [**patchSystemPortal**](docs/PortalsApi.md#patchsystemportal) | **PATCH** /api/v2/SystemService/Portals/{portalId} | Partially update a system portal
*PortalsApi* | [**updateSystemPortal**](docs/PortalsApi.md#updatesystemportal) | **PUT** /api/v2/SystemService/Portals/{portalId} | Update a system portal
*TenantOptionsApi* | [**createSystemTenantOption**](docs/TenantOptionsApi.md#createsystemtenantoption) | **POST** /api/v2/SystemService/Tenants/{tenantId}/Options | Create a new tenant option (admin)
*TenantOptionsApi* | [**deleteSystemTenantOption**](docs/TenantOptionsApi.md#deletesystemtenantoption) | **DELETE** /api/v2/SystemService/Tenants/{tenantId}/Options/{optionId} | Delete a tenant option (admin)
*TenantOptionsApi* | [**getSystemTenantOptionById**](docs/TenantOptionsApi.md#getsystemtenantoptionbyid) | **GET** /api/v2/SystemService/Tenants/{tenantId}/Options/{optionId} | Retrieve a single tenant option by its ID (admin)
*TenantOptionsApi* | [**getSystemTenantOptions**](docs/TenantOptionsApi.md#getsystemtenantoptions) | **GET** /api/v2/SystemService/Tenants/{tenantId}/Options | Retrieve a list of tenant options (admin)
*TenantOptionsApi* | [**getSystemTenantOptionsCount**](docs/TenantOptionsApi.md#getsystemtenantoptionscount) | **GET** /api/v2/SystemService/Tenants/{tenantId}/Options/Count | Get the count of tenant options (admin)
*TenantOptionsApi* | [**patchSystemTenantOption**](docs/TenantOptionsApi.md#patchsystemtenantoption) | **PATCH** /api/v2/SystemService/Tenants/{tenantId}/Options/{optionId} | Partially update a tenant option (admin)
*TenantOptionsApi* | [**updateSystemTenantOption**](docs/TenantOptionsApi.md#updatesystemtenantoption) | **PUT** /api/v2/SystemService/Tenants/{tenantId}/Options/{optionId} | Update a tenant option (admin)
*TenantsApi* | [**adminPreviewTenantEmail**](docs/TenantsApi.md#adminpreviewtenantemail) | **POST** /api/v2/SystemService/Tenants/{tenantId}/Emails/Preview | Preview the rendered email for a tenant.
*TenantsApi* | [**adminSendTenantEmail**](docs/TenantsApi.md#adminsendtenantemail) | **POST** /api/v2/SystemService/Tenants/{tenantId}/Emails/Send | Send an email to a tenant.
*TenantsApi* | [**createTenant**](docs/TenantsApi.md#createtenant) | **POST** /api/v2/SystemService/Tenants | Create a new tenant.
*TenantsApi* | [**deleteTenant**](docs/TenantsApi.md#deletetenant) | **DELETE** /api/v2/SystemService/Tenants/{tenantId} | Delete a specific tenant by ID.
*TenantsApi* | [**getAllExtendedTenants**](docs/TenantsApi.md#getallextendedtenants) | **GET** /api/v2/SystemService/Tenants/Extended | Get all extended tenants available on this suite server instance.
*TenantsApi* | [**getAllTenants**](docs/TenantsApi.md#getalltenants) | **GET** /api/v2/SystemService/Tenants | Get all tenants available on this suite server instance.
*TenantsApi* | [**getExtendedTenantsCount**](docs/TenantsApi.md#getextendedtenantscount) | **GET** /api/v2/SystemService/Tenants/Extended/Count | Get the total count of extended tenants available on this suite server instance.
*TenantsApi* | [**getTenant**](docs/TenantsApi.md#gettenant) | **GET** /api/v2/SystemService/Tenants/{tenantId} | Get a specific tenant by ID.
*TenantsApi* | [**getTenantsCount**](docs/TenantsApi.md#gettenantscount) | **GET** /api/v2/SystemService/Tenants/Count | Get the total count of tenants available on this suite server instance.
*TenantsApi* | [**patchTenant**](docs/TenantsApi.md#patchtenant) | **PATCH** /api/v2/SystemService/Tenants/{tenantId} | Partially update a specific tenant by ID.
*TenantsApi* | [**updateTenant**](docs/TenantsApi.md#updatetenant) | **PUT** /api/v2/SystemService/Tenants/{tenantId} | Update a specific tenant by ID.
*UserOptionsApi* | [**createSystemUserOption**](docs/UserOptionsApi.md#createsystemuseroption) | **POST** /api/v2/SystemService/Users/{userId}/Options | Create a new user option (admin)
*UserOptionsApi* | [**deleteSystemUserOption**](docs/UserOptionsApi.md#deletesystemuseroption) | **DELETE** /api/v2/SystemService/Users/{userId}/Options/{optionId} | Delete a user option (admin)
*UserOptionsApi* | [**getSystemUserOptionById**](docs/UserOptionsApi.md#getsystemuseroptionbyid) | **GET** /api/v2/SystemService/Users/{userId}/Options/{optionId} | Retrieve a single user option by its ID (admin)
*UserOptionsApi* | [**getSystemUserOptions**](docs/UserOptionsApi.md#getsystemuseroptions) | **GET** /api/v2/SystemService/Users/{userId}/Options | Retrieve a list of user options (admin)
*UserOptionsApi* | [**getSystemUserOptionsCount**](docs/UserOptionsApi.md#getsystemuseroptionscount) | **GET** /api/v2/SystemService/Users/{userId}/Options/Count | Get the count of user options (admin)
*UserOptionsApi* | [**patchSystemUserOption**](docs/UserOptionsApi.md#patchsystemuseroption) | **PATCH** /api/v2/SystemService/Users/{userId}/Options/{optionId} | Partially update a user option (admin)
*UserOptionsApi* | [**updateSystemUserOption**](docs/UserOptionsApi.md#updatesystemuseroption) | **PUT** /api/v2/SystemService/Users/{userId}/Options/{optionId} | Update a user option (admin)
*UsersApi* | [**adminPreviewUserEmailTemplate**](docs/UsersApi.md#adminpreviewuseremailtemplate) | **POST** /api/v2/SystemService/Users/{userId}/Emails/Preview | Preview the rendered email for a user.
*UsersApi* | [**adminSendUserEmail**](docs/UsersApi.md#adminsenduseremail) | **POST** /api/v2/SystemService/Users/{userId}/Emails/Send | Send an email to a user.
*UsersApi* | [**createAccountHolderAsync**](docs/UsersApi.md#createaccountholderasync) | **POST** /api/v2/SystemService/Users | Create a new user
*UsersApi* | [**deleteAccountHolderAsync**](docs/UsersApi.md#deleteaccountholderasync) | **DELETE** /api/v2/SystemService/Users/{userId} | Delete a user
*UsersApi* | [**getExtendedAccountHolderAsync**](docs/UsersApi.md#getextendedaccountholderasync) | **GET** /api/v2/SystemService/Users/{userId}/Extended | Retrieve an extended user by ID
*UsersApi* | [**getExtendedUsersAsync**](docs/UsersApi.md#getextendedusersasync) | **GET** /api/v2/SystemService/Users/Extended | Retrieve a list of extended users
*UsersApi* | [**getExtendedUsersCountAsync**](docs/UsersApi.md#getextendeduserscountasync) | **GET** /api/v2/SystemService/Users/Extended/Count | Get the count of extended users
*UsersApi* | [**getUserAsync**](docs/UsersApi.md#getuserasync) | **GET** /api/v2/SystemService/Users/{userId} | Retrieve a user by ID
*UsersApi* | [**getUsersAsync**](docs/UsersApi.md#getusersasync) | **GET** /api/v2/SystemService/Users | Retrieve a list of users
*UsersApi* | [**getUsersCountAsync**](docs/UsersApi.md#getuserscountasync) | **GET** /api/v2/SystemService/Users/Count | Get the count of users
*UsersApi* | [**patchAccountHolderAsync**](docs/UsersApi.md#patchaccountholderasync) | **PATCH** /api/v2/SystemService/Users/{userId} | Partially update a user
*UsersApi* | [**updateAccountHolderAsync**](docs/UsersApi.md#updateaccountholderasync) | **PUT** /api/v2/SystemService/Users/{userId} | Update a user


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [AdditionalAttribute](docs/AdditionalAttribute.md)
 - [BooleanEnvelope](docs/BooleanEnvelope.md)
 - [BusinessDomainDto](docs/BusinessDomainDto.md)
 - [BusinessDomainDtoEnvelope](docs/BusinessDomainDtoEnvelope.md)
 - [BusinessDomainDtoListEnvelope](docs/BusinessDomainDtoListEnvelope.md)
 - [CartDto](docs/CartDto.md)
 - [CartDtoEnvelope](docs/CartDtoEnvelope.md)
 - [CartDtoListEnvelope](docs/CartDtoListEnvelope.md)
 - [EmailDispatchRequest](docs/EmailDispatchRequest.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [Envelope](docs/Envelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ExtendedTenantDto](docs/ExtendedTenantDto.md)
 - [ExtendedTenantDtoListEnvelope](docs/ExtendedTenantDtoListEnvelope.md)
 - [ExtendedUserDto](docs/ExtendedUserDto.md)
 - [ExtendedUserDtoEnvelope](docs/ExtendedUserDtoEnvelope.md)
 - [ExtendedUserDtoListEnvelope](docs/ExtendedUserDtoListEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [IPLookupDto](docs/IPLookupDto.md)
 - [IPLookupDtoEnvelope](docs/IPLookupDtoEnvelope.md)
 - [IPLookupDtoListEnvelope](docs/IPLookupDtoListEnvelope.md)
 - [ISwaggerContact](docs/ISwaggerContact.md)
 - [ISwaggerEndpoint](docs/ISwaggerEndpoint.md)
 - [ISwaggerLicense](docs/ISwaggerLicense.md)
 - [ISwaggerSpec](docs/ISwaggerSpec.md)
 - [IValidationFailure](docs/IValidationFailure.md)
 - [IValidationFailureListEnvelope](docs/IValidationFailureListEnvelope.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LicenseAttributesListEnvelope](docs/LicenseAttributesListEnvelope.md)
 - [LicenseFeature](docs/LicenseFeature.md)
 - [LicenseKey](docs/LicenseKey.md)
 - [LicenseKeyRequest](docs/LicenseKeyRequest.md)
 - [LicenseValidationError](docs/LicenseValidationError.md)
 - [LicenseValidationErrorListEnvelope](docs/LicenseValidationErrorListEnvelope.md)
 - [LicenseValidationRequest](docs/LicenseValidationRequest.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [Module](docs/Module.md)
 - [ModuleListEnvelope](docs/ModuleListEnvelope.md)
 - [ObjectEmailDispatchRequest](docs/ObjectEmailDispatchRequest.md)
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
 - [StringEnvelope](docs/StringEnvelope.md)
 - [StringListEnvelope](docs/StringListEnvelope.md)
 - [StudioModule](docs/StudioModule.md)
 - [StudioModuleListEnvelope](docs/StudioModuleListEnvelope.md)
 - [SuiteLicenseAssignmentDto](docs/SuiteLicenseAssignmentDto.md)
 - [SuiteLicenseAssignmentDtoListEnvelope](docs/SuiteLicenseAssignmentDtoListEnvelope.md)
 - [SuiteLicenseDto](docs/SuiteLicenseDto.md)
 - [SuiteLicenseDtoEnvelope](docs/SuiteLicenseDtoEnvelope.md)
 - [SuiteLicenseDtoListEnvelope](docs/SuiteLicenseDtoListEnvelope.md)
 - [SystemOverviewDto](docs/SystemOverviewDto.md)
 - [SystemOverviewDtoEnvelope](docs/SystemOverviewDtoEnvelope.md)
 - [TenantCreateDto](docs/TenantCreateDto.md)
 - [TenantDto](docs/TenantDto.md)
 - [TenantDtoEnvelope](docs/TenantDtoEnvelope.md)
 - [TenantDtoListEnvelope](docs/TenantDtoListEnvelope.md)
 - [TenantUpdateDto](docs/TenantUpdateDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)
 - [UserCreateDto](docs/UserCreateDto.md)
 - [UserDto](docs/UserDto.md)
 - [UserDtoEnvelope](docs/UserDtoEnvelope.md)
 - [UserDtoListEnvelope](docs/UserDtoListEnvelope.md)
 - [UserSettingsDto](docs/UserSettingsDto.md)
 - [UserUpdateDto](docs/UserUpdateDto.md)
 - [WalletDto](docs/WalletDto.md)
 - [WebPortalCreateDto](docs/WebPortalCreateDto.md)
 - [WebPortalDto](docs/WebPortalDto.md)
 - [WebPortalDtoEnvelope](docs/WebPortalDtoEnvelope.md)
 - [WebPortalDtoListEnvelope](docs/WebPortalDtoListEnvelope.md)
 - [WebPortalUpdateDto](docs/WebPortalUpdateDto.md)


## Documentation For Authorization

 All endpoints do not require authorization.

