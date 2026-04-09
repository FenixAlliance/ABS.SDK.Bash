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
*ContactsApi* | [**createContactAsync**](docs/ContactsApi.md#createcontactasync) | **POST** /api/v2/CrmService/Contacts | Create a new contact
*ContactsApi* | [**deleteContactAsync**](docs/ContactsApi.md#deletecontactasync) | **DELETE** /api/v2/CrmService/Contacts/{contactId} | Delete a contact
*ContactsApi* | [**getBusinessOwnedIndividualAsync**](docs/ContactsApi.md#getbusinessownedindividualasync) | **GET** /api/v2/CrmService/Contacts/Individuals/{contactId} | Get a Contact of type Individual by ID
*ContactsApi* | [**getBusinessOwnedIndividualsAsync**](docs/ContactsApi.md#getbusinessownedindividualsasync) | **GET** /api/v2/CrmService/Contacts/Individuals | Get all contacts of type individual
*ContactsApi* | [**getBusinessOwnedIndividualsCountAsync**](docs/ContactsApi.md#getbusinessownedindividualscountasync) | **GET** /api/v2/CrmService/Contacts/Individuals/Count | Get all contacts of type individual count
*ContactsApi* | [**getBusinessOwnedOrganizationAsync**](docs/ContactsApi.md#getbusinessownedorganizationasync) | **GET** /api/v2/CrmService/Contacts/Organizations/{contactId} | Get a Contact of type Organization by ID
*ContactsApi* | [**getBusinessOwnedOrganizationsAsync**](docs/ContactsApi.md#getbusinessownedorganizationsasync) | **GET** /api/v2/CrmService/Contacts/Organizations | Get all contacts of type organization
*ContactsApi* | [**getBusinessOwnedOrganizationsCountAsync**](docs/ContactsApi.md#getbusinessownedorganizationscountasync) | **GET** /api/v2/CrmService/Contacts/Organizations/Count | Get all contacts of type organization count
*ContactsApi* | [**getContactAsync**](docs/ContactsApi.md#getcontactasync) | **GET** /api/v2/CrmService/Contacts/{contactId} | Get a contact by ID
*ContactsApi* | [**getContactAvatarAsync**](docs/ContactsApi.md#getcontactavatarasync) | **GET** /api/v2/CrmService/Contacts/{contactId}/Avatar | Get a contact&#39;s avatar
*ContactsApi* | [**getContactCartAsync**](docs/ContactsApi.md#getcontactcartasync) | **GET** /api/v2/CrmService/Contacts/{contactId}/Cart | Get a contact&#39;s cart
*ContactsApi* | [**getContactProfilesAsync**](docs/ContactsApi.md#getcontactprofilesasync) | **GET** /api/v2/CrmService/Contacts/{contactId}/Profiles | Get a contact&#39;s social profiles
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
*ContactsApi* | [**patchContactAsync**](docs/ContactsApi.md#patchcontactasync) | **PATCH** /api/v2/CrmService/Contacts/{contactId} | Patch a contact
*ContactsApi* | [**previewContactEmailTemplate**](docs/ContactsApi.md#previewcontactemailtemplate) | **POST** /api/v2/CrmService/Contacts/{contactId}/Emails/Preview | Preview the rendered email for a contact.
*ContactsApi* | [**sendContactEmail**](docs/ContactsApi.md#sendcontactemail) | **POST** /api/v2/CrmService/Contacts/{contactId}/Emails/Send | Send an email to a contact.
*ContactsApi* | [**updateContactAsync**](docs/ContactsApi.md#updatecontactasync) | **PUT** /api/v2/CrmService/Contacts/{contactId} | Update a contact
*ContactsApi* | [**updateContactAvatarAsync**](docs/ContactsApi.md#updatecontactavatarasync) | **POST** /api/v2/CrmService/Contacts/{contactId}/Avatar | Update a contact&#39;s avatar
*ContactsApi* | [**upsertTenantOntoAnotherTenantContactListAsync**](docs/ContactsApi.md#upserttenantontoanothertenantcontactlistasync) | **POST** /api/v2/CrmService/Contacts/Organizations/Upsert | Upsert a tenant onto another tenant&#39;s contact list
*ContactsApi* | [**upsertUserOntoAnotherTenantContactListAsync**](docs/ContactsApi.md#upsertuserontoanothertenantcontactlistasync) | **POST** /api/v2/CrmService/Contacts/Individuals/Upsert | Upsert a user onto a tenant&#39;s contact list
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
*OptionsApi* | [**createContactOption**](docs/OptionsApi.md#createcontactoption) | **POST** /api/v2/CrmService/Contacts/{contactId}/Options | Create a new contact option
*OptionsApi* | [**deleteContactOption**](docs/OptionsApi.md#deletecontactoption) | **DELETE** /api/v2/CrmService/Contacts/{contactId}/Options/{optionId} | Delete a contact option
*OptionsApi* | [**getContactOptionById**](docs/OptionsApi.md#getcontactoptionbyid) | **GET** /api/v2/CrmService/Contacts/{contactId}/Options/{optionId} | Retrieve a single contact option by its ID
*OptionsApi* | [**getContactOptionByKey**](docs/OptionsApi.md#getcontactoptionbykey) | **GET** /api/v2/CrmService/Contacts/{contactId}/Options/Key/{key} | Retrieve a single contact option by its key
*OptionsApi* | [**getContactOptions**](docs/OptionsApi.md#getcontactoptions) | **GET** /api/v2/CrmService/Contacts/{contactId}/Options | Retrieve a list of contact options
*OptionsApi* | [**getContactOptionsCount**](docs/OptionsApi.md#getcontactoptionscount) | **GET** /api/v2/CrmService/Contacts/{contactId}/Options/Count | Get the count of contact options
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
 - [ContactProfileDto](docs/ContactProfileDto.md)
 - [ContactProfileDtoListEnvelope](docs/ContactProfileDtoListEnvelope.md)
 - [ContactUpdateDto](docs/ContactUpdateDto.md)
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

