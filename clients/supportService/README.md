# SupportService Bash client

## Overview

This is a Bash client script for accessing SupportService service.

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
*SupportEntitlementsApi* | [**createSupportEntitlementAsync**](docs/SupportEntitlementsApi.md#createsupportentitlementasync) | **POST** /api/v2/SupportService/SupportEntitlements | Create a new support entitlement
*SupportEntitlementsApi* | [**deleteSupportEntitlementAsync**](docs/SupportEntitlementsApi.md#deletesupportentitlementasync) | **DELETE** /api/v2/SupportService/SupportEntitlements/{supportEntitlementId} | Delete a support entitlement
*SupportEntitlementsApi* | [**getSupportEntitlementAsync**](docs/SupportEntitlementsApi.md#getsupportentitlementasync) | **GET** /api/v2/SupportService/SupportEntitlements/{supportEntitlementId} | Retrieve a support entitlement by ID
*SupportEntitlementsApi* | [**getSupportEntitlementsAsync**](docs/SupportEntitlementsApi.md#getsupportentitlementsasync) | **GET** /api/v2/SupportService/SupportEntitlements | Retrieve a list of support entitlements
*SupportEntitlementsApi* | [**getSupportEntitlementsCountAsync**](docs/SupportEntitlementsApi.md#getsupportentitlementscountasync) | **GET** /api/v2/SupportService/SupportEntitlements/Count | Get the count of support entitlements
*SupportEntitlementsApi* | [**updateSupportEntitlementAsync**](docs/SupportEntitlementsApi.md#updatesupportentitlementasync) | **PUT** /api/v2/SupportService/SupportEntitlements/{supportEntitlementId} | Update a support entitlement
*SupportRequestAttachmentsApi* | [**createSupportRequestAttachmentAsync**](docs/SupportRequestAttachmentsApi.md#createsupportrequestattachmentasync) | **POST** /api/v2/SupportService/SupportRequestAttachments | Create a new support request attachment
*SupportRequestAttachmentsApi* | [**deleteSupportRequestAttachmentAsync**](docs/SupportRequestAttachmentsApi.md#deletesupportrequestattachmentasync) | **DELETE** /api/v2/SupportService/SupportRequestAttachments/{supportRequestAttachmentId} | Delete a support request attachment
*SupportRequestAttachmentsApi* | [**getSupportRequestAttachmentAsync**](docs/SupportRequestAttachmentsApi.md#getsupportrequestattachmentasync) | **GET** /api/v2/SupportService/SupportRequestAttachments/{supportRequestAttachmentId} | Retrieve a support request attachment by ID
*SupportRequestAttachmentsApi* | [**getSupportRequestAttachmentsAsync**](docs/SupportRequestAttachmentsApi.md#getsupportrequestattachmentsasync) | **GET** /api/v2/SupportService/SupportRequestAttachments | Retrieve a list of support request attachments
*SupportRequestAttachmentsApi* | [**getSupportRequestAttachmentsCountAsync**](docs/SupportRequestAttachmentsApi.md#getsupportrequestattachmentscountasync) | **GET** /api/v2/SupportService/SupportRequestAttachments/Count | Get the count of support request attachments
*SupportRequestAttachmentsApi* | [**updateSupportRequestAttachmentAsync**](docs/SupportRequestAttachmentsApi.md#updatesupportrequestattachmentasync) | **PUT** /api/v2/SupportService/SupportRequestAttachments/{supportRequestAttachmentId} | Update a support request attachment
*SupportRequestsApi* | [**createSupportRequestAsync**](docs/SupportRequestsApi.md#createsupportrequestasync) | **POST** /api/v2/SupportService/SupportRequests | Create a new support request
*SupportRequestsApi* | [**deleteSupportRequestAsync**](docs/SupportRequestsApi.md#deletesupportrequestasync) | **DELETE** /api/v2/SupportService/SupportRequests/{supportRequestId} | Delete a support request
*SupportRequestsApi* | [**getSupportRequestAsync**](docs/SupportRequestsApi.md#getsupportrequestasync) | **GET** /api/v2/SupportService/SupportRequests/{supportRequestId} | Retrieve a support request by ID
*SupportRequestsApi* | [**getSupportRequestAttachmentByRequest**](docs/SupportRequestsApi.md#getsupportrequestattachmentbyrequest) | **GET** /api/v2/SupportService/SupportRequests/{supportRequestId}/Attachments/{attachmentId} | Retrieve a specific attachment for a support request
*SupportRequestsApi* | [**getSupportRequestAttachmentsByRequest**](docs/SupportRequestsApi.md#getsupportrequestattachmentsbyrequest) | **GET** /api/v2/SupportService/SupportRequests/{supportRequestId}/Attachments | Retrieve attachments for a support request
*SupportRequestsApi* | [**getSupportRequestAttachmentsCountByRequest**](docs/SupportRequestsApi.md#getsupportrequestattachmentscountbyrequest) | **GET** /api/v2/SupportService/SupportRequests/{supportRequestId}/Attachments/Count | Get the count of attachments for a support request
*SupportRequestsApi* | [**getSupportRequestTicketsAsync**](docs/SupportRequestsApi.md#getsupportrequestticketsasync) | **GET** /api/v2/SupportService/SupportRequests/{supportRequestId}/Tickets | Retrieve tickets for a support request
*SupportRequestsApi* | [**getSupportRequestsAsync**](docs/SupportRequestsApi.md#getsupportrequestsasync) | **GET** /api/v2/SupportService/SupportRequests | Retrieve a list of support requests
*SupportRequestsApi* | [**getSupportRequestsCountAsync**](docs/SupportRequestsApi.md#getsupportrequestscountasync) | **GET** /api/v2/SupportService/SupportRequests/Count | Get the count of support requests
*SupportRequestsApi* | [**relateSupportRequestToAttachmentAsync**](docs/SupportRequestsApi.md#relatesupportrequesttoattachmentasync) | **POST** /api/v2/SupportService/SupportRequests/{supportRequestId}/Attachments | Add an attachment to a support request
*SupportRequestsApi* | [**updateSupportRequestAsync**](docs/SupportRequestsApi.md#updatesupportrequestasync) | **PUT** /api/v2/SupportService/SupportRequests/{supportRequestId} | Update a support request
*SupportTicketPrioritiesApi* | [**createSupportTicketPriorityAsync**](docs/SupportTicketPrioritiesApi.md#createsupportticketpriorityasync) | **POST** /api/v2/SupportService/SupportTicketPriorities | Create a new support ticket priority
*SupportTicketPrioritiesApi* | [**deleteSupportTicketPriorityAsync**](docs/SupportTicketPrioritiesApi.md#deletesupportticketpriorityasync) | **DELETE** /api/v2/SupportService/SupportTicketPriorities/{supportTicketPriorityId} | Delete a support ticket priority
*SupportTicketPrioritiesApi* | [**getSupportTicketPrioritiesAsync**](docs/SupportTicketPrioritiesApi.md#getsupportticketprioritiesasync) | **GET** /api/v2/SupportService/SupportTicketPriorities | Retrieve a list of support ticket priorities
*SupportTicketPrioritiesApi* | [**getSupportTicketPrioritiesCountAsync**](docs/SupportTicketPrioritiesApi.md#getsupportticketprioritiescountasync) | **GET** /api/v2/SupportService/SupportTicketPriorities/Count | Get the count of support ticket priorities
*SupportTicketPrioritiesApi* | [**getSupportTicketPriorityAsync**](docs/SupportTicketPrioritiesApi.md#getsupportticketpriorityasync) | **GET** /api/v2/SupportService/SupportTicketPriorities/{supportTicketPriorityId} | Retrieve a support ticket priority by ID
*SupportTicketPrioritiesApi* | [**updateSupportTicketPriorityAsync**](docs/SupportTicketPrioritiesApi.md#updatesupportticketpriorityasync) | **PUT** /api/v2/SupportService/SupportTicketPriorities/{supportTicketPriorityId} | Update a support ticket priority
*SupportTicketTypesApi* | [**createSupportTicketTypeAsync**](docs/SupportTicketTypesApi.md#createsupporttickettypeasync) | **POST** /api/v2/SupportService/SupportTicketTypes | Create a new support ticket type
*SupportTicketTypesApi* | [**deleteSupportTicketTypeAsync**](docs/SupportTicketTypesApi.md#deletesupporttickettypeasync) | **DELETE** /api/v2/SupportService/SupportTicketTypes/{supportTicketTypeId} | Delete a support ticket type
*SupportTicketTypesApi* | [**getSupportTicketTypeAsync**](docs/SupportTicketTypesApi.md#getsupporttickettypeasync) | **GET** /api/v2/SupportService/SupportTicketTypes/{supportTicketTypeId} | Retrieve a support ticket type by ID
*SupportTicketTypesApi* | [**getSupportTicketTypesAsync**](docs/SupportTicketTypesApi.md#getsupporttickettypesasync) | **GET** /api/v2/SupportService/SupportTicketTypes | Retrieve a list of support ticket types
*SupportTicketTypesApi* | [**getSupportTicketTypesCountAsync**](docs/SupportTicketTypesApi.md#getsupporttickettypescountasync) | **GET** /api/v2/SupportService/SupportTicketTypes/Count | Get the count of support ticket types
*SupportTicketTypesApi* | [**updateSupportTicketTypeAsync**](docs/SupportTicketTypesApi.md#updatesupporttickettypeasync) | **PUT** /api/v2/SupportService/SupportTicketTypes/{supportTicketTypeId} | Update a support ticket type
*SupportTicketsApi* | [**createSupportTicketAsync**](docs/SupportTicketsApi.md#createsupportticketasync) | **POST** /api/v2/SupportService/SupportTickets | Create a new support ticket
*SupportTicketsApi* | [**deleteSupportTicketAsync**](docs/SupportTicketsApi.md#deletesupportticketasync) | **DELETE** /api/v2/SupportService/SupportTickets/{supportTicketId} | Delete a support ticket
*SupportTicketsApi* | [**deleteSupportTicketConversationAsync**](docs/SupportTicketsApi.md#deletesupportticketconversationasync) | **DELETE** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations/{supportTicketConversationId} | Delete a conversation from a support ticket
*SupportTicketsApi* | [**getSupportTicketAsync**](docs/SupportTicketsApi.md#getsupportticketasync) | **GET** /api/v2/SupportService/SupportTickets/{supportTicketId} | Retrieve a support ticket by ID
*SupportTicketsApi* | [**getSupportTicketConversationAsync**](docs/SupportTicketsApi.md#getsupportticketconversationasync) | **GET** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations/{supportTicketConversationId} | Retrieve a specific conversation for a support ticket
*SupportTicketsApi* | [**getSupportTicketConversationMessagesAsync**](docs/SupportTicketsApi.md#getsupportticketconversationmessagesasync) | **GET** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations/{supportTicketConversationId}/Messages | Retrieve messages for a support ticket conversation
*SupportTicketsApi* | [**getSupportTicketConversationsAsync**](docs/SupportTicketsApi.md#getsupportticketconversationsasync) | **GET** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations | Retrieve conversations for a support ticket
*SupportTicketsApi* | [**getSupportTicketsAsync**](docs/SupportTicketsApi.md#getsupportticketsasync) | **GET** /api/v2/SupportService/SupportTickets | Retrieve a list of support tickets
*SupportTicketsApi* | [**getSupportTicketsCountAsync**](docs/SupportTicketsApi.md#getsupportticketscountasync) | **GET** /api/v2/SupportService/SupportTickets/Count | Get the count of support tickets
*SupportTicketsApi* | [**relateSupportTicketToConversationAsync**](docs/SupportTicketsApi.md#relatesupporttickettoconversationasync) | **POST** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations | Create a conversation for a support ticket
*SupportTicketsApi* | [**updateSupportTicketAsync**](docs/SupportTicketsApi.md#updatesupportticketasync) | **PUT** /api/v2/SupportService/SupportTickets/{supportTicketId} | Update a support ticket


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [PrivateMessageDto](docs/PrivateMessageDto.md)
 - [PrivateMessageDtoListEnvelope](docs/PrivateMessageDtoListEnvelope.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [SupportEntitlementCreateDto](docs/SupportEntitlementCreateDto.md)
 - [SupportEntitlementDto](docs/SupportEntitlementDto.md)
 - [SupportEntitlementDtoEnvelope](docs/SupportEntitlementDtoEnvelope.md)
 - [SupportEntitlementDtoListEnvelope](docs/SupportEntitlementDtoListEnvelope.md)
 - [SupportEntitlementUpdateDto](docs/SupportEntitlementUpdateDto.md)
 - [SupportRequestAttachmentCreateDto](docs/SupportRequestAttachmentCreateDto.md)
 - [SupportRequestAttachmentDto](docs/SupportRequestAttachmentDto.md)
 - [SupportRequestAttachmentDtoEnvelope](docs/SupportRequestAttachmentDtoEnvelope.md)
 - [SupportRequestAttachmentDtoListEnvelope](docs/SupportRequestAttachmentDtoListEnvelope.md)
 - [SupportRequestAttachmentUpdateDto](docs/SupportRequestAttachmentUpdateDto.md)
 - [SupportRequestCreateDto](docs/SupportRequestCreateDto.md)
 - [SupportRequestDto](docs/SupportRequestDto.md)
 - [SupportRequestDtoEnvelope](docs/SupportRequestDtoEnvelope.md)
 - [SupportRequestDtoListEnvelope](docs/SupportRequestDtoListEnvelope.md)
 - [SupportRequestUpdateDto](docs/SupportRequestUpdateDto.md)
 - [SupportTicketConversationCreateDto](docs/SupportTicketConversationCreateDto.md)
 - [SupportTicketConversationDto](docs/SupportTicketConversationDto.md)
 - [SupportTicketConversationDtoEnvelope](docs/SupportTicketConversationDtoEnvelope.md)
 - [SupportTicketConversationDtoListEnvelope](docs/SupportTicketConversationDtoListEnvelope.md)
 - [SupportTicketCreateDto](docs/SupportTicketCreateDto.md)
 - [SupportTicketDto](docs/SupportTicketDto.md)
 - [SupportTicketDtoEnvelope](docs/SupportTicketDtoEnvelope.md)
 - [SupportTicketDtoListEnvelope](docs/SupportTicketDtoListEnvelope.md)
 - [SupportTicketPriorityCreateDto](docs/SupportTicketPriorityCreateDto.md)
 - [SupportTicketPriorityDto](docs/SupportTicketPriorityDto.md)
 - [SupportTicketPriorityDtoEnvelope](docs/SupportTicketPriorityDtoEnvelope.md)
 - [SupportTicketPriorityDtoListEnvelope](docs/SupportTicketPriorityDtoListEnvelope.md)
 - [SupportTicketPriorityUpdateDto](docs/SupportTicketPriorityUpdateDto.md)
 - [SupportTicketTypeCreateDto](docs/SupportTicketTypeCreateDto.md)
 - [SupportTicketTypeDto](docs/SupportTicketTypeDto.md)
 - [SupportTicketTypeDtoEnvelope](docs/SupportTicketTypeDtoEnvelope.md)
 - [SupportTicketTypeDtoListEnvelope](docs/SupportTicketTypeDtoListEnvelope.md)
 - [SupportTicketTypeUpdateDto](docs/SupportTicketTypeUpdateDto.md)
 - [SupportTicketUpdateDto](docs/SupportTicketUpdateDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

