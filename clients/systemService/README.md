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
*ApplicationPrincipalsApi* | [**disableGlobalApplicationPrincipal**](docs/ApplicationPrincipalsApi.md#disableglobalapplicationprincipal) | **POST** /api/v2/SystemService/ApplicationPrincipals/{principalId}/Disable | Disable an application principal (global)
*ApplicationPrincipalsApi* | [**enableGlobalApplicationPrincipal**](docs/ApplicationPrincipalsApi.md#enableglobalapplicationprincipal) | **POST** /api/v2/SystemService/ApplicationPrincipals/{principalId}/Enable | Enable an application principal (global)
*ApplicationPrincipalsApi* | [**getGlobalApplicationPrincipal**](docs/ApplicationPrincipalsApi.md#getglobalapplicationprincipal) | **GET** /api/v2/SystemService/ApplicationPrincipals/{principalId} | Get one application principal (any tenant)
*ApplicationPrincipalsApi* | [**getGlobalApplicationPrincipals**](docs/ApplicationPrincipalsApi.md#getglobalapplicationprincipals) | **GET** /api/v2/SystemService/ApplicationPrincipals | List application principals across all tenants
*ApplicationPrincipalsApi* | [**getGlobalApplicationPrincipalsCount**](docs/ApplicationPrincipalsApi.md#getglobalapplicationprincipalscount) | **GET** /api/v2/SystemService/ApplicationPrincipals/Count | Count application principals across all tenants
*ApplicationPrincipalsApi* | [**grantGlobalApplicationPrincipalPermission**](docs/ApplicationPrincipalsApi.md#grantglobalapplicationprincipalpermission) | **POST** /api/v2/SystemService/ApplicationPrincipals/{principalId}/Permissions | Grant a permission to an application principal (any tenant)
*ApplicationPrincipalsApi* | [**provisionGlobalApplicationPrincipal**](docs/ApplicationPrincipalsApi.md#provisionglobalapplicationprincipal) | **POST** /api/v2/SystemService/ApplicationPrincipals/Provision | Provision an application principal (any tenant, incl. system-locked)
*ApplicationPrincipalsApi* | [**provisionPaymentsConnector**](docs/ApplicationPrincipalsApi.md#provisionpaymentsconnector) | **POST** /api/v2/SystemService/ApplicationPrincipals/PaymentsConnector | Provision the platform payments-connector identity
*ApplicationPrincipalsApi* | [**revokeGlobalApplicationPrincipalPermission**](docs/ApplicationPrincipalsApi.md#revokeglobalapplicationprincipalpermission) | **DELETE** /api/v2/SystemService/ApplicationPrincipals/{principalId}/Permissions/{permission} | Revoke a permission from an application principal (any tenant)
*ApplicationPrincipalsApi* | [**suspendGlobalApplicationPrincipal**](docs/ApplicationPrincipalsApi.md#suspendglobalapplicationprincipal) | **POST** /api/v2/SystemService/ApplicationPrincipals/{principalId}/Suspend | Suspend an application principal (global)
*BusinessDomainsApi* | [**deleteSystemBusinessDomain**](docs/BusinessDomainsApi.md#deletesystembusinessdomain) | **DELETE** /api/v2/SystemService/BusinessDomains/{businessDomainId} | Delete a business domain
*BusinessDomainsApi* | [**getSystemBusinessDomainById**](docs/BusinessDomainsApi.md#getsystembusinessdomainbyid) | **GET** /api/v2/SystemService/BusinessDomains/{businessDomainId} | Retrieve a business domain by its ID
*BusinessDomainsApi* | [**getSystemBusinessDomains**](docs/BusinessDomainsApi.md#getsystembusinessdomains) | **GET** /api/v2/SystemService/BusinessDomains | Retrieve all business domains in the system
*BusinessDomainsApi* | [**getSystemBusinessDomainsCount**](docs/BusinessDomainsApi.md#getsystembusinessdomainscount) | **GET** /api/v2/SystemService/BusinessDomains/Count | Get the count of all business domains in the system
*BusinessDomainsApi* | [**verifySystemBusinessDomain**](docs/BusinessDomainsApi.md#verifysystembusinessdomain) | **POST** /api/v2/SystemService/BusinessDomains/{businessDomainId}/Verify | Verify a business domain
*CartsApi* | [**deleteSystemCart**](docs/CartsApi.md#deletesystemcart) | **DELETE** /api/v2/SystemService/Carts/{cartId} | Delete a system cart
*CartsApi* | [**getSystemCartById**](docs/CartsApi.md#getsystemcartbyid) | **GET** /api/v2/SystemService/Carts/{cartId} | Retrieve a single system cart by its ID
*CartsApi* | [**getSystemCarts**](docs/CartsApi.md#getsystemcarts) | **GET** /api/v2/SystemService/Carts | Retrieve a list of system carts
*CartsApi* | [**getSystemCartsCount**](docs/CartsApi.md#getsystemcartscount) | **GET** /api/v2/SystemService/Carts/Count | Get the count of system carts
*CartsApi* | [**purgeSystemGuestCarts**](docs/CartsApi.md#purgesystemguestcarts) | **DELETE** /api/v2/SystemService/Carts/Guests | Purge all guest carts
*ContactOptionsApi* | [**createSystemContactOption**](docs/ContactOptionsApi.md#createsystemcontactoption) | **POST** /api/v2/SystemService/Contacts/{contactId}/Options | Create a new contact option (admin)
*ContactOptionsApi* | [**deleteSystemContactOption**](docs/ContactOptionsApi.md#deletesystemcontactoption) | **DELETE** /api/v2/SystemService/Contacts/{contactId}/Options/{optionId} | Delete a contact option (admin)
*ContactOptionsApi* | [**getSystemContactOptionById**](docs/ContactOptionsApi.md#getsystemcontactoptionbyid) | **GET** /api/v2/SystemService/Contacts/{contactId}/Options/{optionId} | Retrieve a single contact option by its ID (admin)
*ContactOptionsApi* | [**getSystemContactOptions**](docs/ContactOptionsApi.md#getsystemcontactoptions) | **GET** /api/v2/SystemService/Contacts/{contactId}/Options | Retrieve a list of contact options (admin)
*ContactOptionsApi* | [**getSystemContactOptionsCount**](docs/ContactOptionsApi.md#getsystemcontactoptionscount) | **GET** /api/v2/SystemService/Contacts/{contactId}/Options/Count | Get the count of contact options (admin)
*ContactOptionsApi* | [**patchSystemContactOption**](docs/ContactOptionsApi.md#patchsystemcontactoption) | **PATCH** /api/v2/SystemService/Contacts/{contactId}/Options/{optionId} | Partially update a contact option (admin)
*ContactOptionsApi* | [**updateSystemContactOption**](docs/ContactOptionsApi.md#updatesystemcontactoption) | **PUT** /api/v2/SystemService/Contacts/{contactId}/Options/{optionId} | Update a contact option (admin)
*EmailsApi* | [**adminPreviewBasicEmailTemplate**](docs/EmailsApi.md#adminpreviewbasicemailtemplate) | **POST** /api/v2/SystemService/Emails/Preview | Preview a rendered basic email template.
*EmailsApi* | [**adminSendBasicEmail**](docs/EmailsApi.md#adminsendbasicemail) | **POST** /api/v2/SystemService/Emails/SendBasic | Send a basic transactional email to recipients.
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
*IPLookupsApi* | [**deleteSystemIPLookup**](docs/IPLookupsApi.md#deletesystemiplookup) | **DELETE** /api/v2/SystemService/IPLookups/{ipLookupId} | Delete a system IP lookup
*IPLookupsApi* | [**getSystemIPLookupById**](docs/IPLookupsApi.md#getsystemiplookupbyid) | **GET** /api/v2/SystemService/IPLookups/{ipLookupId} | Retrieve a single system IP lookup by its ID
*IPLookupsApi* | [**getSystemIPLookups**](docs/IPLookupsApi.md#getsystemiplookups) | **GET** /api/v2/SystemService/IPLookups | Retrieve a list of system IP lookups
*IPLookupsApi* | [**getSystemIPLookupsCount**](docs/IPLookupsApi.md#getsystemiplookupscount) | **GET** /api/v2/SystemService/IPLookups/Count | Get the count of system IP lookups
*InboxApi* | [**cancelInboxMessageRetry**](docs/InboxApi.md#cancelinboxmessageretry) | **POST** /api/v2/SystemService/Inbox/Messages/{id}/CancelRetry | Cancel a scheduled inbox retry
*InboxApi* | [**deadLetterInboxMessage**](docs/InboxApi.md#deadletterinboxmessage) | **POST** /api/v2/SystemService/Inbox/Messages/{id}/DeadLetter | Manually dead-letter an inbox message
*InboxApi* | [**expediteInboxMessage**](docs/InboxApi.md#expediteinboxmessage) | **POST** /api/v2/SystemService/Inbox/Messages/{id}/Expedite | Expedite a retry-scheduled inbox message
*InboxApi* | [**getDuplicateInboxMessages**](docs/InboxApi.md#getduplicateinboxmessages) | **GET** /api/v2/SystemService/Inbox/Duplicates | List duplicate-bearing inbox messages
*InboxApi* | [**getDuplicateInboxMessagesCount**](docs/InboxApi.md#getduplicateinboxmessagescount) | **GET** /api/v2/SystemService/Inbox/Duplicates/Count | Count duplicate-bearing inbox messages
*InboxApi* | [**getInboxCorrelationChain**](docs/InboxApi.md#getinboxcorrelationchain) | **GET** /api/v2/SystemService/Inbox/Correlations/{correlationId} | Get an inbox correlation chain
*InboxApi* | [**getInboxHealth**](docs/InboxApi.md#getinboxhealth) | **GET** /api/v2/SystemService/Inbox/Health | Get durable-inbox processor health
*InboxApi* | [**getInboxMessage**](docs/InboxApi.md#getinboxmessage) | **GET** /api/v2/SystemService/Inbox/Messages/{id} | Get one inbox message
*InboxApi* | [**getInboxMessages**](docs/InboxApi.md#getinboxmessages) | **GET** /api/v2/SystemService/Inbox/Messages | List inbox messages
*InboxApi* | [**getInboxMessagesCount**](docs/InboxApi.md#getinboxmessagescount) | **GET** /api/v2/SystemService/Inbox/Messages/Count | Count inbox messages
*InboxApi* | [**quarantineInboxMessage**](docs/InboxApi.md#quarantineinboxmessage) | **POST** /api/v2/SystemService/Inbox/Messages/{id}/Quarantine | Manually quarantine an inbox message
*InboxApi* | [**releaseInboxMessageLease**](docs/InboxApi.md#releaseinboxmessagelease) | **POST** /api/v2/SystemService/Inbox/Messages/{id}/ReleaseLease | Release a stuck inbox lease
*InboxApi* | [**replayInboxMessage**](docs/InboxApi.md#replayinboxmessage) | **POST** /api/v2/SystemService/Inbox/Messages/{id}/Replay | Replay a terminal inbox message as a new generation
*LicensingApi* | [**getAttributesForLicenseAsync**](docs/LicensingApi.md#getattributesforlicenseasync) | **GET** /api/v2/SystemService/Licensing/Licenses/{licenseId}/Attributes | Retrieve license attributes
*LicensingApi* | [**getFeaturesForLicenseAsync**](docs/LicensingApi.md#getfeaturesforlicenseasync) | **GET** /api/v2/SystemService/Licensing/Licenses/{licenseId}/Features | Retrieve license features
*LicensingApi* | [**getLicenseAssignmentsAsync**](docs/LicensingApi.md#getlicenseassignmentsasync) | **GET** /api/v2/SystemService/Licensing/Licenses/{licenseId}/Assignments | Retrieve license assignments
*LicensingApi* | [**getLicenseByIdAsync**](docs/LicensingApi.md#getlicensebyidasync) | **GET** /api/v2/SystemService/Licensing/Licenses/{licenseId} | Retrieve a license by ID
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
*OutboxApi* | [**cancelOutboxMessage**](docs/OutboxApi.md#canceloutboxmessage) | **POST** /api/v2/SystemService/Outbox/Messages/{id}/Cancel | Cancel an outbox message
*OutboxApi* | [**deadLetterOutboxMessage**](docs/OutboxApi.md#deadletteroutboxmessage) | **POST** /api/v2/SystemService/Outbox/Messages/{id}/DeadLetter | Manually dead-letter an outbox message
*OutboxApi* | [**expediteOutboxMessage**](docs/OutboxApi.md#expediteoutboxmessage) | **POST** /api/v2/SystemService/Outbox/Messages/{id}/Expedite | Expedite a failed (retry-eligible) outbox message
*OutboxApi* | [**getOutboxCorrelationChain**](docs/OutboxApi.md#getoutboxcorrelationchain) | **GET** /api/v2/SystemService/Outbox/Correlations/{correlationId} | Get an outbox correlation chain
*OutboxApi* | [**getOutboxHealth**](docs/OutboxApi.md#getoutboxhealth) | **GET** /api/v2/SystemService/Outbox/Health | Get durable-outbox relay health
*OutboxApi* | [**getOutboxMessage**](docs/OutboxApi.md#getoutboxmessage) | **GET** /api/v2/SystemService/Outbox/Messages/{id} | Get one outbox message
*OutboxApi* | [**getOutboxMessages**](docs/OutboxApi.md#getoutboxmessages) | **GET** /api/v2/SystemService/Outbox/Messages | List outbox messages
*OutboxApi* | [**getOutboxMessagesCount**](docs/OutboxApi.md#getoutboxmessagescount) | **GET** /api/v2/SystemService/Outbox/Messages/Count | Count outbox messages
*OutboxApi* | [**releaseOutboxMessageLease**](docs/OutboxApi.md#releaseoutboxmessagelease) | **POST** /api/v2/SystemService/Outbox/Messages/{id}/ReleaseLease | Release a stuck outbox lease
*OutboxApi* | [**replayOutboxMessage**](docs/OutboxApi.md#replayoutboxmessage) | **POST** /api/v2/SystemService/Outbox/Messages/{id}/Replay | Replay a dead-lettered or failed outbox message
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
*TenantsApi* | [**getTenantModuleGrants**](docs/TenantsApi.md#gettenantmodulegrants) | **GET** /api/v2/SystemService/Tenants/{tenantId}/ModuleGrants | Get the per-tenant admin module grants for a specific tenant.
*TenantsApi* | [**getTenantsCount**](docs/TenantsApi.md#gettenantscount) | **GET** /api/v2/SystemService/Tenants/Count | Get the total count of tenants available on this suite server instance.
*TenantsApi* | [**patchTenant**](docs/TenantsApi.md#patchtenant) | **PATCH** /api/v2/SystemService/Tenants/{tenantId} | Partially update a specific tenant by ID.
*TenantsApi* | [**setTenantModuleGrants**](docs/TenantsApi.md#settenantmodulegrants) | **PUT** /api/v2/SystemService/Tenants/{tenantId}/ModuleGrants | Replace the per-tenant admin module grants for a specific tenant.
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
*UsersApi* | [**getUserAdminDetailAsync**](docs/UsersApi.md#getuseradmindetailasync) | **GET** /api/v2/SystemService/Users/{userId}/AdminDetail | Retrieve the admin detail aggregate for a user
*UsersApi* | [**getUserAsync**](docs/UsersApi.md#getuserasync) | **GET** /api/v2/SystemService/Users/{userId} | Retrieve a user by ID
*UsersApi* | [**getUsersAsync**](docs/UsersApi.md#getusersasync) | **GET** /api/v2/SystemService/Users | Retrieve a list of users
*UsersApi* | [**getUsersCountAsync**](docs/UsersApi.md#getuserscountasync) | **GET** /api/v2/SystemService/Users/Count | Get the count of users
*UsersApi* | [**patchAccountHolderAsync**](docs/UsersApi.md#patchaccountholderasync) | **PATCH** /api/v2/SystemService/Users/{userId} | Partially update a user
*UsersApi* | [**setUserPasswordAsync**](docs/UsersApi.md#setuserpasswordasync) | **POST** /api/v2/SystemService/Users/{userId}/Password | Set a user&#39;s password
*UsersApi* | [**updateAccountHolderAdminProfileAsync**](docs/UsersApi.md#updateaccountholderadminprofileasync) | **PUT** /api/v2/SystemService/Users/{userId}/AdminProfile | Update a user&#39;s admin-managed profile
*UsersApi* | [**updateAccountHolderAsync**](docs/UsersApi.md#updateaccountholderasync) | **PUT** /api/v2/SystemService/Users/{userId} | Update a user


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [ApplicationPrincipalDetailDto](docs/ApplicationPrincipalDetailDto.md)
 - [ApplicationPrincipalDetailDtoEnvelope](docs/ApplicationPrincipalDetailDtoEnvelope.md)
 - [ApplicationPrincipalDto](docs/ApplicationPrincipalDto.md)
 - [ApplicationPrincipalDtoCollectionQueryParameters](docs/ApplicationPrincipalDtoCollectionQueryParameters.md)
 - [ApplicationPrincipalDtoIReadOnlyListEnvelope](docs/ApplicationPrincipalDtoIReadOnlyListEnvelope.md)
 - [ApplicationPrincipalPermissionRequestDto](docs/ApplicationPrincipalPermissionRequestDto.md)
 - [ApplicationPrincipalProvisionRequestDto](docs/ApplicationPrincipalProvisionRequestDto.md)
 - [ApplicationPrincipalProvisioningResultDto](docs/ApplicationPrincipalProvisioningResultDto.md)
 - [ApplicationPrincipalProvisioningResultDtoEnvelope](docs/ApplicationPrincipalProvisioningResultDtoEnvelope.md)
 - [BooleanEnvelope](docs/BooleanEnvelope.md)
 - [BusinessDomainDto](docs/BusinessDomainDto.md)
 - [BusinessDomainDtoCollectionQueryParameters](docs/BusinessDomainDtoCollectionQueryParameters.md)
 - [BusinessDomainDtoEnvelope](docs/BusinessDomainDtoEnvelope.md)
 - [BusinessDomainDtoListEnvelope](docs/BusinessDomainDtoListEnvelope.md)
 - [CartDto](docs/CartDto.md)
 - [CartDtoCollectionQueryParameters](docs/CartDtoCollectionQueryParameters.md)
 - [CartDtoEnvelope](docs/CartDtoEnvelope.md)
 - [CartDtoListEnvelope](docs/CartDtoListEnvelope.md)
 - [EmailDispatchRequest](docs/EmailDispatchRequest.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [Envelope](docs/Envelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ExtendedTenantDto](docs/ExtendedTenantDto.md)
 - [ExtendedTenantDtoCollectionQueryParameters](docs/ExtendedTenantDtoCollectionQueryParameters.md)
 - [ExtendedTenantDtoListEnvelope](docs/ExtendedTenantDtoListEnvelope.md)
 - [ExtendedUserDto](docs/ExtendedUserDto.md)
 - [ExtendedUserDtoCollectionQueryParameters](docs/ExtendedUserDtoCollectionQueryParameters.md)
 - [ExtendedUserDtoEnvelope](docs/ExtendedUserDtoEnvelope.md)
 - [ExtendedUserDtoListEnvelope](docs/ExtendedUserDtoListEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [GuestCartPurgeResultDto](docs/GuestCartPurgeResultDto.md)
 - [GuestCartPurgeResultDtoEnvelope](docs/GuestCartPurgeResultDtoEnvelope.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [IOpenApiContact](docs/IOpenApiContact.md)
 - [IOpenApiDefinitionSpec](docs/IOpenApiDefinitionSpec.md)
 - [IOpenApiEndpoint](docs/IOpenApiEndpoint.md)
 - [IOpenApiLicense](docs/IOpenApiLicense.md)
 - [IPLookupDto](docs/IPLookupDto.md)
 - [IPLookupDtoCollectionQueryParameters](docs/IPLookupDtoCollectionQueryParameters.md)
 - [IPLookupDtoEnvelope](docs/IPLookupDtoEnvelope.md)
 - [IPLookupDtoListEnvelope](docs/IPLookupDtoListEnvelope.md)
 - [IValidationFailure](docs/IValidationFailure.md)
 - [IValidationFailureListEnvelope](docs/IValidationFailureListEnvelope.md)
 - [InboxAdminReasonDto](docs/InboxAdminReasonDto.md)
 - [InboxHealthDto](docs/InboxHealthDto.md)
 - [InboxHealthDtoEnvelope](docs/InboxHealthDtoEnvelope.md)
 - [InboxMessageDto](docs/InboxMessageDto.md)
 - [InboxMessageDtoCollectionQueryParameters](docs/InboxMessageDtoCollectionQueryParameters.md)
 - [InboxMessageDtoEnvelope](docs/InboxMessageDtoEnvelope.md)
 - [InboxMessageDtoIReadOnlyListEnvelope](docs/InboxMessageDtoIReadOnlyListEnvelope.md)
 - [InboxReplayResultDto](docs/InboxReplayResultDto.md)
 - [InboxReplayResultDtoEnvelope](docs/InboxReplayResultDtoEnvelope.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LicenseValidationRequest](docs/LicenseValidationRequest.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [ModuleGrantDto](docs/ModuleGrantDto.md)
 - [ModuleGrantDtoListEnvelope](docs/ModuleGrantDtoListEnvelope.md)
 - [ObjectEmailDispatchRequest](docs/ObjectEmailDispatchRequest.md)
 - [OptionCreateDto](docs/OptionCreateDto.md)
 - [OptionDto](docs/OptionDto.md)
 - [OptionDtoCollectionQueryParameters](docs/OptionDtoCollectionQueryParameters.md)
 - [OptionDtoEnvelope](docs/OptionDtoEnvelope.md)
 - [OptionDtoListEnvelope](docs/OptionDtoListEnvelope.md)
 - [OptionUpdateDto](docs/OptionUpdateDto.md)
 - [OutboxAdminReasonDto](docs/OutboxAdminReasonDto.md)
 - [OutboxHealthDto](docs/OutboxHealthDto.md)
 - [OutboxHealthDtoEnvelope](docs/OutboxHealthDtoEnvelope.md)
 - [OutboxMessageDto](docs/OutboxMessageDto.md)
 - [OutboxMessageDtoCollectionQueryParameters](docs/OutboxMessageDtoCollectionQueryParameters.md)
 - [OutboxMessageDtoEnvelope](docs/OutboxMessageDtoEnvelope.md)
 - [OutboxMessageDtoIReadOnlyListEnvelope](docs/OutboxMessageDtoIReadOnlyListEnvelope.md)
 - [PatchOperation](docs/PatchOperation.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [SecurityPermissionDto](docs/SecurityPermissionDto.md)
 - [SecurityRoleDto](docs/SecurityRoleDto.md)
 - [SetUserPasswordDto](docs/SetUserPasswordDto.md)
 - [SocialProfileDto](docs/SocialProfileDto.md)
 - [StringListEnvelope](docs/StringListEnvelope.md)
 - [StudioModule](docs/StudioModule.md)
 - [StudioModuleListEnvelope](docs/StudioModuleListEnvelope.md)
 - [SuiteLicenseAssignmentDto](docs/SuiteLicenseAssignmentDto.md)
 - [SuiteLicenseAssignmentDtoListEnvelope](docs/SuiteLicenseAssignmentDtoListEnvelope.md)
 - [SuiteLicenseDto](docs/SuiteLicenseDto.md)
 - [SuiteLicenseDtoEnvelope](docs/SuiteLicenseDtoEnvelope.md)
 - [SuiteLicenseDtoListEnvelope](docs/SuiteLicenseDtoListEnvelope.md)
 - [SuiteModule](docs/SuiteModule.md)
 - [SuiteModuleListEnvelope](docs/SuiteModuleListEnvelope.md)
 - [SystemOverviewDto](docs/SystemOverviewDto.md)
 - [SystemOverviewDtoEnvelope](docs/SystemOverviewDtoEnvelope.md)
 - [TenantCreateDto](docs/TenantCreateDto.md)
 - [TenantDto](docs/TenantDto.md)
 - [TenantDtoCollectionQueryParameters](docs/TenantDtoCollectionQueryParameters.md)
 - [TenantDtoEnvelope](docs/TenantDtoEnvelope.md)
 - [TenantDtoListEnvelope](docs/TenantDtoListEnvelope.md)
 - [TenantEnrollmentDto](docs/TenantEnrollmentDto.md)
 - [TenantUpdateDto](docs/TenantUpdateDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)
 - [UserAdminDetailDto](docs/UserAdminDetailDto.md)
 - [UserAdminDetailDtoEnvelope](docs/UserAdminDetailDtoEnvelope.md)
 - [UserAdminUpdateDto](docs/UserAdminUpdateDto.md)
 - [UserCreateDto](docs/UserCreateDto.md)
 - [UserDto](docs/UserDto.md)
 - [UserDtoCollectionQueryParameters](docs/UserDtoCollectionQueryParameters.md)
 - [UserDtoEnvelope](docs/UserDtoEnvelope.md)
 - [UserDtoListEnvelope](docs/UserDtoListEnvelope.md)
 - [UserExternalLoginDto](docs/UserExternalLoginDto.md)
 - [UserOrderSummaryDto](docs/UserOrderSummaryDto.md)
 - [UserSettingsDto](docs/UserSettingsDto.md)
 - [UserUpdateDto](docs/UserUpdateDto.md)
 - [WalletDto](docs/WalletDto.md)
 - [WebPortalCreateDto](docs/WebPortalCreateDto.md)
 - [WebPortalDto](docs/WebPortalDto.md)
 - [WebPortalDtoCollectionQueryParameters](docs/WebPortalDtoCollectionQueryParameters.md)
 - [WebPortalDtoEnvelope](docs/WebPortalDtoEnvelope.md)
 - [WebPortalDtoListEnvelope](docs/WebPortalDtoListEnvelope.md)
 - [WebPortalUpdateDto](docs/WebPortalUpdateDto.md)


## Documentation For Authorization

 All endpoints do not require authorization.

