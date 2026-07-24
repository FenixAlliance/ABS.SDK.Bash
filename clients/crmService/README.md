# CrmService Bash client

## Overview

This is a Bash client script for accessing CrmService service.

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
*ContactGroupsApi* | [**createContactGroupAsync**](docs/ContactGroupsApi.md#createcontactgroupasync) | **POST** /api/v2/CrmService/ContactGroups | Create a new contact group
*ContactGroupsApi* | [**deleteContactGroupAsync**](docs/ContactGroupsApi.md#deletecontactgroupasync) | **DELETE** /api/v2/CrmService/ContactGroups/{id} | Delete a contact group
*ContactGroupsApi* | [**getContactGroupByIdAsync**](docs/ContactGroupsApi.md#getcontactgroupbyidasync) | **GET** /api/v2/CrmService/ContactGroups/{id} | Get contact group by ID
*ContactGroupsApi* | [**getContactGroupsAsync**](docs/ContactGroupsApi.md#getcontactgroupsasync) | **GET** /api/v2/CrmService/ContactGroups | Get all contact groups
*ContactGroupsApi* | [**getContactGroupsCountAsync**](docs/ContactGroupsApi.md#getcontactgroupscountasync) | **GET** /api/v2/CrmService/ContactGroups/Count | Get contact groups count
*ContactGroupsApi* | [**patchContactGroupAsync**](docs/ContactGroupsApi.md#patchcontactgroupasync) | **PATCH** /api/v2/CrmService/ContactGroups/{id} | Patch a contact group
*ContactGroupsApi* | [**updateContactGroupAsync**](docs/ContactGroupsApi.md#updatecontactgroupasync) | **PUT** /api/v2/CrmService/ContactGroups/{id} | Update a contact group
*ContactProfilesApi* | [**createContactProfileAsync**](docs/ContactProfilesApi.md#createcontactprofileasync) | **POST** /api/v2/CrmService/ContactProfiles | Create a new contact profile
*ContactProfilesApi* | [**deleteContactProfileAsync**](docs/ContactProfilesApi.md#deletecontactprofileasync) | **DELETE** /api/v2/CrmService/ContactProfiles/{id} | Delete a contact profile
*ContactProfilesApi* | [**getContactProfileByIdAsync**](docs/ContactProfilesApi.md#getcontactprofilebyidasync) | **GET** /api/v2/CrmService/ContactProfiles/{id} | Get contact profile by ID
*ContactProfilesApi* | [**getContactProfilesAsync**](docs/ContactProfilesApi.md#getcontactprofilesasync) | **GET** /api/v2/CrmService/ContactProfiles | Get all contact profiles
*ContactProfilesApi* | [**getContactProfilesCountAsync**](docs/ContactProfilesApi.md#getcontactprofilescountasync) | **GET** /api/v2/CrmService/ContactProfiles/Count | Get contact profiles count
*ContactProfilesApi* | [**getPartnerProfilesCountAsync**](docs/ContactProfilesApi.md#getpartnerprofilescountasync) | **GET** /api/v2/CrmService/ContactProfiles/Partners/Count | Get partner profiles count
*ContactProfilesApi* | [**getPatientProfilesCountAsync**](docs/ContactProfilesApi.md#getpatientprofilescountasync) | **GET** /api/v2/CrmService/ContactProfiles/Patients/Count | Get patient profiles count
*ContactProfilesApi* | [**patchContactProfileAsync**](docs/ContactProfilesApi.md#patchcontactprofileasync) | **PATCH** /api/v2/CrmService/ContactProfiles/{id} | Patch a contact profile
*ContactProfilesApi* | [**updateContactProfileAsync**](docs/ContactProfilesApi.md#updatecontactprofileasync) | **PUT** /api/v2/CrmService/ContactProfiles/{id} | Update a contact profile
*ContactRelationTypesApi* | [**createContactRelationTypeAsync**](docs/ContactRelationTypesApi.md#createcontactrelationtypeasync) | **POST** /api/v2/CrmService/ContactRelationTypes | Create a new contact relation type
*ContactRelationTypesApi* | [**deleteContactRelationTypeAsync**](docs/ContactRelationTypesApi.md#deletecontactrelationtypeasync) | **DELETE** /api/v2/CrmService/ContactRelationTypes/{id} | Delete a contact relation type
*ContactRelationTypesApi* | [**getContactRelationTypeByIdAsync**](docs/ContactRelationTypesApi.md#getcontactrelationtypebyidasync) | **GET** /api/v2/CrmService/ContactRelationTypes/{id} | Get contact relation type by ID
*ContactRelationTypesApi* | [**getContactRelationTypesAsync**](docs/ContactRelationTypesApi.md#getcontactrelationtypesasync) | **GET** /api/v2/CrmService/ContactRelationTypes | Get all contact relation types
*ContactRelationTypesApi* | [**getContactRelationTypesCountAsync**](docs/ContactRelationTypesApi.md#getcontactrelationtypescountasync) | **GET** /api/v2/CrmService/ContactRelationTypes/Count | Get contact relation types count
*ContactRelationTypesApi* | [**patchContactRelationTypeAsync**](docs/ContactRelationTypesApi.md#patchcontactrelationtypeasync) | **PATCH** /api/v2/CrmService/ContactRelationTypes/{id} | Patch a contact relation type
*ContactRelationTypesApi* | [**updateContactRelationTypeAsync**](docs/ContactRelationTypesApi.md#updatecontactrelationtypeasync) | **PUT** /api/v2/CrmService/ContactRelationTypes/{id} | Update a contact relation type
*ContactRelationsApi* | [**createContactRelationAsync**](docs/ContactRelationsApi.md#createcontactrelationasync) | **POST** /api/v2/CrmService/ContactRelations | Create a new contact relation
*ContactRelationsApi* | [**deleteContactRelationAsync**](docs/ContactRelationsApi.md#deletecontactrelationasync) | **DELETE** /api/v2/CrmService/ContactRelations/{id} | Delete a contact relation
*ContactRelationsApi* | [**getContactRelationByIdAsync**](docs/ContactRelationsApi.md#getcontactrelationbyidasync) | **GET** /api/v2/CrmService/ContactRelations/{id} | Get contact relation by ID
*ContactRelationsApi* | [**getContactRelationsAsync**](docs/ContactRelationsApi.md#getcontactrelationsasync) | **GET** /api/v2/CrmService/ContactRelations | Get all contact relations
*ContactRelationsApi* | [**getContactRelationsCountAsync**](docs/ContactRelationsApi.md#getcontactrelationscountasync) | **GET** /api/v2/CrmService/ContactRelations/Count | Get contact relations count
*ContactRelationsApi* | [**patchContactRelationAsync**](docs/ContactRelationsApi.md#patchcontactrelationasync) | **PATCH** /api/v2/CrmService/ContactRelations/{id} | Patch a contact relation
*ContactRelationsApi* | [**updateContactRelationAsync**](docs/ContactRelationsApi.md#updatecontactrelationasync) | **PUT** /api/v2/CrmService/ContactRelations/{id} | Update a contact relation
*ContactSourcesApi* | [**createContactSourceAsync**](docs/ContactSourcesApi.md#createcontactsourceasync) | **POST** /api/v2/CrmService/ContactSources | Create a new contact source
*ContactSourcesApi* | [**deleteContactSourceAsync**](docs/ContactSourcesApi.md#deletecontactsourceasync) | **DELETE** /api/v2/CrmService/ContactSources/{id} | Delete a contact source
*ContactSourcesApi* | [**getContactSourceByIdAsync**](docs/ContactSourcesApi.md#getcontactsourcebyidasync) | **GET** /api/v2/CrmService/ContactSources/{id} | Get contact source by ID
*ContactSourcesApi* | [**getContactSourcesAsync**](docs/ContactSourcesApi.md#getcontactsourcesasync) | **GET** /api/v2/CrmService/ContactSources | Get all contact sources
*ContactSourcesApi* | [**getContactSourcesCountAsync**](docs/ContactSourcesApi.md#getcontactsourcescountasync) | **GET** /api/v2/CrmService/ContactSources/Count | Get contact sources count
*ContactSourcesApi* | [**patchContactSourceAsync**](docs/ContactSourcesApi.md#patchcontactsourceasync) | **PATCH** /api/v2/CrmService/ContactSources/{id} | Patch a contact source
*ContactSourcesApi* | [**updateContactSourceAsync**](docs/ContactSourcesApi.md#updatecontactsourceasync) | **PUT** /api/v2/CrmService/ContactSources/{id} | Update a contact source
*ContactsApi* | [**createContactAsync**](docs/ContactsApi.md#createcontactasync) | **POST** /api/v2/CrmService/Contacts | Create a new contact
*ContactsApi* | [**createContactEmailAsync**](docs/ContactsApi.md#createcontactemailasync) | **POST** /api/v2/CrmService/Contacts/{contactId}/Emails/Addresses | Add an email address to a contact
*ContactsApi* | [**createProfileForContactAsync**](docs/ContactsApi.md#createprofileforcontactasync) | **POST** /api/v2/CrmService/Contacts/{contactId}/Profiles | Create a contact profile
*ContactsApi* | [**deleteContactAsync**](docs/ContactsApi.md#deletecontactasync) | **DELETE** /api/v2/CrmService/Contacts/{contactId} | Delete a contact
*ContactsApi* | [**deleteContactEmailAsync**](docs/ContactsApi.md#deletecontactemailasync) | **DELETE** /api/v2/CrmService/Contacts/{contactId}/Emails/{emailId} | Delete a contact email address
*ContactsApi* | [**deleteProfileForContactAsync**](docs/ContactsApi.md#deleteprofileforcontactasync) | **DELETE** /api/v2/CrmService/Contacts/{contactId}/Profiles/{profileId} | Delete a contact profile
*ContactsApi* | [**getBusinessOwnedIndividualAsync**](docs/ContactsApi.md#getbusinessownedindividualasync) | **GET** /api/v2/CrmService/Contacts/Individuals/{contactId} | Get a Contact of type Individual by ID
*ContactsApi* | [**getBusinessOwnedIndividualsAsync**](docs/ContactsApi.md#getbusinessownedindividualsasync) | **GET** /api/v2/CrmService/Contacts/Individuals | Get all contacts of type individual
*ContactsApi* | [**getBusinessOwnedIndividualsCountAsync**](docs/ContactsApi.md#getbusinessownedindividualscountasync) | **GET** /api/v2/CrmService/Contacts/Individuals/Count | Get all contacts of type individual count
*ContactsApi* | [**getBusinessOwnedOrganizationAsync**](docs/ContactsApi.md#getbusinessownedorganizationasync) | **GET** /api/v2/CrmService/Contacts/Organizations/{contactId} | Get a Contact of type Organization by ID
*ContactsApi* | [**getBusinessOwnedOrganizationsAsync**](docs/ContactsApi.md#getbusinessownedorganizationsasync) | **GET** /api/v2/CrmService/Contacts/Organizations | Get all contacts of type organization
*ContactsApi* | [**getBusinessOwnedOrganizationsCountAsync**](docs/ContactsApi.md#getbusinessownedorganizationscountasync) | **GET** /api/v2/CrmService/Contacts/Organizations/Count | Get all contacts of type organization count
*ContactsApi* | [**getContactAsync**](docs/ContactsApi.md#getcontactasync) | **GET** /api/v2/CrmService/Contacts/{contactId} | Get a contact by ID
*ContactsApi* | [**getContactAvatarAsync**](docs/ContactsApi.md#getcontactavatarasync) | **GET** /api/v2/CrmService/Contacts/{contactId}/Avatar | Get a contact&#39;s avatar
*ContactsApi* | [**getContactCartAsync**](docs/ContactsApi.md#getcontactcartasync) | **GET** /api/v2/CrmService/Contacts/{contactId}/Cart | Get a contact&#39;s cart
*ContactsApi* | [**getContactEmailsAsync**](docs/ContactsApi.md#getcontactemailsasync) | **GET** /api/v2/CrmService/Contacts/{contactId}/Emails | Get a contact&#39;s email addresses
*ContactsApi* | [**getContactEmailsCountAsync**](docs/ContactsApi.md#getcontactemailscountasync) | **GET** /api/v2/CrmService/Contacts/{contactId}/Emails/Count | Get contact email addresses count
*ContactsApi* | [**getContactSocialProfileAsync**](docs/ContactsApi.md#getcontactsocialprofileasync) | **GET** /api/v2/CrmService/Contacts/{contactId}/SocialProfile | Get a contact&#39;s social profile
*ContactsApi* | [**getContactWalletAsync**](docs/ContactsApi.md#getcontactwalletasync) | **GET** /api/v2/CrmService/Contacts/{contactId}/Wallet | Get a contact&#39;s wallet
*ContactsApi* | [**getContactsAsync**](docs/ContactsApi.md#getcontactsasync) | **GET** /api/v2/CrmService/Contacts | Get all business owned contacts
*ContactsApi* | [**getContactsCountAsync**](docs/ContactsApi.md#getcontactscountasync) | **GET** /api/v2/CrmService/Contacts/Count | Get all business owned contacts count
*ContactsApi* | [**getExtendedBusinessOwnedIndividualsAsync**](docs/ContactsApi.md#getextendedbusinessownedindividualsasync) | **GET** /api/v2/CrmService/Contacts/Individuals/Extended | Get all contacts of type individual
*ContactsApi* | [**getExtendedBusinessOwnedOrganizationsAsync**](docs/ContactsApi.md#getextendedbusinessownedorganizationsasync) | **GET** /api/v2/CrmService/Contacts/Organizations/Extended | Get all contacts of type organization
*ContactsApi* | [**getExtendedContactAsync**](docs/ContactsApi.md#getextendedcontactasync) | **GET** /api/v2/CrmService/Contacts/{contactId}/Extended | Get a contact by ID
*ContactsApi* | [**getExtendedContactsAsync**](docs/ContactsApi.md#getextendedcontactsasync) | **GET** /api/v2/CrmService/Contacts/Extended | Get all business owned contacts
*ContactsApi* | [**getIndividualRelatedIndividualsAsync**](docs/ContactsApi.md#getindividualrelatedindividualsasync) | **GET** /api/v2/CrmService/Contacts/Individuals/{contactId}/Individuals | Get individual related individuals
*ContactsApi* | [**getIndividualRelatedOrganizationsAsync**](docs/ContactsApi.md#getindividualrelatedorganizationsasync) | **GET** /api/v2/CrmService/Contacts/Individuals/{contactId}/Organizations | Get individual related organizations
*ContactsApi* | [**getOrganizationRelatedIndividualsAsync**](docs/ContactsApi.md#getorganizationrelatedindividualsasync) | **GET** /api/v2/CrmService/Contacts/Organizations/{contactId}/Individuals | Get organization related individuals
*ContactsApi* | [**getOrganizationRelatedOrganizationsAsync**](docs/ContactsApi.md#getorganizationrelatedorganizationsasync) | **GET** /api/v2/CrmService/Contacts/Organizations/{contactId}/Organizations | Get organization related organizations
*ContactsApi* | [**getProfilesForContactAsync**](docs/ContactsApi.md#getprofilesforcontactasync) | **GET** /api/v2/CrmService/Contacts/{contactId}/Profiles | Get a contact&#39;s social profiles
*ContactsApi* | [**getProfilesForContactCountAsync**](docs/ContactsApi.md#getprofilesforcontactcountasync) | **GET** /api/v2/CrmService/Contacts/{contactId}/Profiles/Count | Get contact profiles count
*ContactsApi* | [**patchContactAsync**](docs/ContactsApi.md#patchcontactasync) | **PATCH** /api/v2/CrmService/Contacts/{contactId} | Patch a contact
*ContactsApi* | [**patchContactEmailAsync**](docs/ContactsApi.md#patchcontactemailasync) | **PATCH** /api/v2/CrmService/Contacts/{contactId}/Emails/{emailId} | Patch a contact email address
*ContactsApi* | [**previewContactEmailTemplate**](docs/ContactsApi.md#previewcontactemailtemplate) | **POST** /api/v2/CrmService/Contacts/{contactId}/Emails/Preview | Preview the rendered email for a contact.
*ContactsApi* | [**sendContactEmail**](docs/ContactsApi.md#sendcontactemail) | **POST** /api/v2/CrmService/Contacts/{contactId}/Emails/Send | Send an email to a contact.
*ContactsApi* | [**updateContactAsync**](docs/ContactsApi.md#updatecontactasync) | **PUT** /api/v2/CrmService/Contacts/{contactId} | Update a contact
*ContactsApi* | [**updateContactAvatarAsync**](docs/ContactsApi.md#updatecontactavatarasync) | **POST** /api/v2/CrmService/Contacts/{contactId}/Avatar | Update a contact&#39;s avatar
*ContactsApi* | [**updateContactEmailAsync**](docs/ContactsApi.md#updatecontactemailasync) | **PUT** /api/v2/CrmService/Contacts/{contactId}/Emails/{emailId} | Update a contact email address
*ContactsApi* | [**updateProfileForContactAsync**](docs/ContactsApi.md#updateprofileforcontactasync) | **PUT** /api/v2/CrmService/Contacts/{contactId}/Profiles/{profileId} | Update a contact profile
*ContactsApi* | [**upsertTenantOntoAnotherTenantContactListAsync**](docs/ContactsApi.md#upserttenantontoanothertenantcontactlistasync) | **POST** /api/v2/CrmService/Contacts/Organizations/Upsert | Upsert a tenant onto another tenant&#39;s contact list
*ContactsApi* | [**upsertUserOntoAnotherTenantContactListAsync**](docs/ContactsApi.md#upsertuserontoanothertenantcontactlistasync) | **POST** /api/v2/CrmService/Contacts/Individuals/Upsert | Upsert a user onto a tenant&#39;s contact list
*ContactsApi* | [**verifyContactEmailAsync**](docs/ContactsApi.md#verifycontactemailasync) | **POST** /api/v2/CrmService/Contacts/{contactId}/Emails/{emailId}/Verify | Verify a contact email address
*FenixAllianceABSWebApi* | [**accountLogoutPost**](docs/FenixAllianceABSWebApi.md#accountlogoutpost) | **POST** /Account/Logout | 
*FenixAllianceABSWebApi* | [**accountManageDownloadPersonalDataPost**](docs/FenixAllianceABSWebApi.md#accountmanagedownloadpersonaldatapost) | **POST** /Account/Manage/DownloadPersonalData | 
*FenixAllianceABSWebApi* | [**accountManageLinkExternalLoginPost**](docs/FenixAllianceABSWebApi.md#accountmanagelinkexternalloginpost) | **POST** /Account/Manage/LinkExternalLogin | 
*FenixAllianceABSWebApi* | [**accountPerformExternalLoginPost**](docs/FenixAllianceABSWebApi.md#accountperformexternalloginpost) | **POST** /Account/PerformExternalLogin | 
*FenixAllianceABSWebApi* | [**apiV2AIServiceAgentsAgentIdAguiPost**](docs/FenixAllianceABSWebApi.md#apiv2aiserviceagentsagentidaguipost) | **POST** /api/v2/AIService/Agents/{agentId}/agui | 
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
*OptionsApi* | [**createContactOption**](docs/OptionsApi.md#createcontactoption) | **POST** /api/v2/CrmService/Contacts/{contactId}/Options | Create a new contact option
*OptionsApi* | [**deleteContactOption**](docs/OptionsApi.md#deletecontactoption) | **DELETE** /api/v2/CrmService/Contacts/{contactId}/Options/{optionId} | Delete a contact option
*OptionsApi* | [**getContactOptionById**](docs/OptionsApi.md#getcontactoptionbyid) | **GET** /api/v2/CrmService/Contacts/{contactId}/Options/{optionId} | Retrieve a single contact option by its ID
*OptionsApi* | [**getContactOptionByKey**](docs/OptionsApi.md#getcontactoptionbykey) | **GET** /api/v2/CrmService/Contacts/{contactId}/Options/Key/{key} | Retrieve a single contact option by its key
*OptionsApi* | [**getContactOptions**](docs/OptionsApi.md#getcontactoptions) | **GET** /api/v2/CrmService/Contacts/{contactId}/Options | Retrieve a list of contact options
*OptionsApi* | [**getContactOptionsCount**](docs/OptionsApi.md#getcontactoptionscount) | **GET** /api/v2/CrmService/Contacts/{contactId}/Options/Count | Get the count of contact options
*OptionsApi* | [**patchContactOptionAsync**](docs/OptionsApi.md#patchcontactoptionasync) | **PATCH** /api/v2/CrmService/Contacts/{contactId}/Options/{optionId} | Patch a contact option
*OptionsApi* | [**patchContactOptionByKeyAsync**](docs/OptionsApi.md#patchcontactoptionbykeyasync) | **PATCH** /api/v2/CrmService/Contacts/{contactId}/Options/Key/{key} | Patch a contact option by key
*OptionsApi* | [**updateContactOption**](docs/OptionsApi.md#updatecontactoption) | **PUT** /api/v2/CrmService/Contacts/{contactId}/Options/{optionId} | Update a contact option
*OptionsApi* | [**upsertContactOption**](docs/OptionsApi.md#upsertcontactoption) | **PUT** /api/v2/CrmService/Contacts/{contactId}/Options/Upsert/{key} | Create or update a contact option by key
*SyncApi* | [**syncCurrentHolderToCurrentTenantCrm**](docs/SyncApi.md#synccurrentholdertocurrenttenantcrm) | **POST** /api/v2/CrmService/Sync | Sync the current user into the current tenant&#39;s contact list
*SyncApi* | [**syncCurrentHolderToTenantCrm**](docs/SyncApi.md#synccurrentholdertotenantcrm) | **POST** /api/v2/CrmService/Sync/Me | Sync the current user into a tenant&#39;s contact list
*SyncApi* | [**syncHolderToTenantCrmAsync**](docs/SyncApi.md#syncholdertotenantcrmasync) | **POST** /api/v2/CrmService/Sync/User | Sync a user into a tenant&#39;s contact list
*SyncApi* | [**syncTenantToTenantCrm**](docs/SyncApi.md#synctenanttotenantcrm) | **POST** /api/v2/CrmService/Sync/Tenant | Sync a tenant into another tenant&#39;s contact list


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [CartDto](docs/CartDto.md)
 - [CartDtoEnvelope](docs/CartDtoEnvelope.md)
 - [ContactCreateDto](docs/ContactCreateDto.md)
 - [ContactDto](docs/ContactDto.md)
 - [ContactDtoEnvelope](docs/ContactDtoEnvelope.md)
 - [ContactDtoListEnvelope](docs/ContactDtoListEnvelope.md)
 - [ContactEmailCreateDto](docs/ContactEmailCreateDto.md)
 - [ContactEmailDto](docs/ContactEmailDto.md)
 - [ContactEmailDtoListEnvelope](docs/ContactEmailDtoListEnvelope.md)
 - [ContactEmailUpdateDto](docs/ContactEmailUpdateDto.md)
 - [ContactProfileCreateDto](docs/ContactProfileCreateDto.md)
 - [ContactProfileDto](docs/ContactProfileDto.md)
 - [ContactProfileDtoListEnvelope](docs/ContactProfileDtoListEnvelope.md)
 - [ContactProfileUpdateDto](docs/ContactProfileUpdateDto.md)
 - [ContactRelationCreateDto](docs/ContactRelationCreateDto.md)
 - [ContactRelationDto](docs/ContactRelationDto.md)
 - [ContactRelationDtoListEnvelope](docs/ContactRelationDtoListEnvelope.md)
 - [ContactRelationTypeCreateDto](docs/ContactRelationTypeCreateDto.md)
 - [ContactRelationTypeDto](docs/ContactRelationTypeDto.md)
 - [ContactRelationTypeDtoListEnvelope](docs/ContactRelationTypeDtoListEnvelope.md)
 - [ContactRelationTypeUpdateDto](docs/ContactRelationTypeUpdateDto.md)
 - [ContactRelationUpdateDto](docs/ContactRelationUpdateDto.md)
 - [ContactSourceCreateDto](docs/ContactSourceCreateDto.md)
 - [ContactSourceDto](docs/ContactSourceDto.md)
 - [ContactSourceDtoListEnvelope](docs/ContactSourceDtoListEnvelope.md)
 - [ContactSourceUpdateDto](docs/ContactSourceUpdateDto.md)
 - [ContactUpdateDto](docs/ContactUpdateDto.md)
 - [ContactsGroupCreateDto](docs/ContactsGroupCreateDto.md)
 - [ContactsGroupDto](docs/ContactsGroupDto.md)
 - [ContactsGroupDtoListEnvelope](docs/ContactsGroupDtoListEnvelope.md)
 - [ContactsGroupUpdateDto](docs/ContactsGroupUpdateDto.md)
 - [EmailDispatchRequest](docs/EmailDispatchRequest.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [Envelope](docs/Envelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ExtendedContactDto](docs/ExtendedContactDto.md)
 - [ExtendedContactDtoEnvelope](docs/ExtendedContactDtoEnvelope.md)
 - [ExtendedContactDtoListEnvelope](docs/ExtendedContactDtoListEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LoginRequest](docs/LoginRequest.md)
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
 - [SimpleContactDto](docs/SimpleContactDto.md)
 - [SocialProfileDto](docs/SocialProfileDto.md)
 - [SocialProfileDtoEnvelope](docs/SocialProfileDtoEnvelope.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)
 - [UpdateContactAvatarAsyncRequest](docs/UpdateContactAvatarAsyncRequest.md)
 - [WalletDto](docs/WalletDto.md)
 - [WalletDtoEnvelope](docs/WalletDtoEnvelope.md)


## Documentation For Authorization

 All endpoints do not require authorization.

