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
*SupportEntitlementsApi* | [**apiV2SupportServiceSupportEntitlementsCountGet**](docs/SupportEntitlementsApi.md#apiv2supportservicesupportentitlementscountget) | **GET** /api/v2/SupportService/SupportEntitlements/Count | 
*SupportEntitlementsApi* | [**apiV2SupportServiceSupportEntitlementsGet**](docs/SupportEntitlementsApi.md#apiv2supportservicesupportentitlementsget) | **GET** /api/v2/SupportService/SupportEntitlements | 
*SupportEntitlementsApi* | [**apiV2SupportServiceSupportEntitlementsPost**](docs/SupportEntitlementsApi.md#apiv2supportservicesupportentitlementspost) | **POST** /api/v2/SupportService/SupportEntitlements | 
*SupportEntitlementsApi* | [**apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete**](docs/SupportEntitlementsApi.md#apiv2supportservicesupportentitlementssupportentitlementiddelete) | **DELETE** /api/v2/SupportService/SupportEntitlements/{supportEntitlementId} | 
*SupportEntitlementsApi* | [**apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet**](docs/SupportEntitlementsApi.md#apiv2supportservicesupportentitlementssupportentitlementidget) | **GET** /api/v2/SupportService/SupportEntitlements/{supportEntitlementId} | 
*SupportEntitlementsApi* | [**apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut**](docs/SupportEntitlementsApi.md#apiv2supportservicesupportentitlementssupportentitlementidput) | **PUT** /api/v2/SupportService/SupportEntitlements/{supportEntitlementId} | 
*SupportRequestAttachmentsApi* | [**apiV2SupportServiceSupportRequestAttachmentsCountGet**](docs/SupportRequestAttachmentsApi.md#apiv2supportservicesupportrequestattachmentscountget) | **GET** /api/v2/SupportService/SupportRequestAttachments/Count | 
*SupportRequestAttachmentsApi* | [**apiV2SupportServiceSupportRequestAttachmentsGet**](docs/SupportRequestAttachmentsApi.md#apiv2supportservicesupportrequestattachmentsget) | **GET** /api/v2/SupportService/SupportRequestAttachments | 
*SupportRequestAttachmentsApi* | [**apiV2SupportServiceSupportRequestAttachmentsPost**](docs/SupportRequestAttachmentsApi.md#apiv2supportservicesupportrequestattachmentspost) | **POST** /api/v2/SupportService/SupportRequestAttachments | 
*SupportRequestAttachmentsApi* | [**apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete**](docs/SupportRequestAttachmentsApi.md#apiv2supportservicesupportrequestattachmentssupportrequestattachmentiddelete) | **DELETE** /api/v2/SupportService/SupportRequestAttachments/{supportRequestAttachmentId} | 
*SupportRequestAttachmentsApi* | [**apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet**](docs/SupportRequestAttachmentsApi.md#apiv2supportservicesupportrequestattachmentssupportrequestattachmentidget) | **GET** /api/v2/SupportService/SupportRequestAttachments/{supportRequestAttachmentId} | 
*SupportRequestAttachmentsApi* | [**apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut**](docs/SupportRequestAttachmentsApi.md#apiv2supportservicesupportrequestattachmentssupportrequestattachmentidput) | **PUT** /api/v2/SupportService/SupportRequestAttachments/{supportRequestAttachmentId} | 
*SupportRequestsApi* | [**apiV2SupportServiceSupportRequestsCountGet**](docs/SupportRequestsApi.md#apiv2supportservicesupportrequestscountget) | **GET** /api/v2/SupportService/SupportRequests/Count | 
*SupportRequestsApi* | [**apiV2SupportServiceSupportRequestsGet**](docs/SupportRequestsApi.md#apiv2supportservicesupportrequestsget) | **GET** /api/v2/SupportService/SupportRequests | 
*SupportRequestsApi* | [**apiV2SupportServiceSupportRequestsPost**](docs/SupportRequestsApi.md#apiv2supportservicesupportrequestspost) | **POST** /api/v2/SupportService/SupportRequests | 
*SupportRequestsApi* | [**apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet**](docs/SupportRequestsApi.md#apiv2supportservicesupportrequestssupportrequestidattachmentsattachmentidget) | **GET** /api/v2/SupportService/SupportRequests/{supportRequestId}/Attachments/{attachmentId} | 
*SupportRequestsApi* | [**apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet**](docs/SupportRequestsApi.md#apiv2supportservicesupportrequestssupportrequestidattachmentscountget) | **GET** /api/v2/SupportService/SupportRequests/{supportRequestId}/Attachments/Count | 
*SupportRequestsApi* | [**apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet**](docs/SupportRequestsApi.md#apiv2supportservicesupportrequestssupportrequestidattachmentsget) | **GET** /api/v2/SupportService/SupportRequests/{supportRequestId}/Attachments | 
*SupportRequestsApi* | [**apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost**](docs/SupportRequestsApi.md#apiv2supportservicesupportrequestssupportrequestidattachmentspost) | **POST** /api/v2/SupportService/SupportRequests/{supportRequestId}/Attachments | 
*SupportRequestsApi* | [**apiV2SupportServiceSupportRequestsSupportRequestIdDelete**](docs/SupportRequestsApi.md#apiv2supportservicesupportrequestssupportrequestiddelete) | **DELETE** /api/v2/SupportService/SupportRequests/{supportRequestId} | 
*SupportRequestsApi* | [**apiV2SupportServiceSupportRequestsSupportRequestIdGet**](docs/SupportRequestsApi.md#apiv2supportservicesupportrequestssupportrequestidget) | **GET** /api/v2/SupportService/SupportRequests/{supportRequestId} | 
*SupportRequestsApi* | [**apiV2SupportServiceSupportRequestsSupportRequestIdPut**](docs/SupportRequestsApi.md#apiv2supportservicesupportrequestssupportrequestidput) | **PUT** /api/v2/SupportService/SupportRequests/{supportRequestId} | 
*SupportRequestsApi* | [**apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet**](docs/SupportRequestsApi.md#apiv2supportservicesupportrequestssupportrequestidticketsget) | **GET** /api/v2/SupportService/SupportRequests/{supportRequestId}/Tickets | 
*SupportTicketPrioritiesApi* | [**apiV2SupportServiceSupportTicketPrioritiesCountGet**](docs/SupportTicketPrioritiesApi.md#apiv2supportservicesupportticketprioritiescountget) | **GET** /api/v2/SupportService/SupportTicketPriorities/Count | 
*SupportTicketPrioritiesApi* | [**apiV2SupportServiceSupportTicketPrioritiesGet**](docs/SupportTicketPrioritiesApi.md#apiv2supportservicesupportticketprioritiesget) | **GET** /api/v2/SupportService/SupportTicketPriorities | 
*SupportTicketPrioritiesApi* | [**apiV2SupportServiceSupportTicketPrioritiesPost**](docs/SupportTicketPrioritiesApi.md#apiv2supportservicesupportticketprioritiespost) | **POST** /api/v2/SupportService/SupportTicketPriorities | 
*SupportTicketPrioritiesApi* | [**apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete**](docs/SupportTicketPrioritiesApi.md#apiv2supportservicesupportticketprioritiessupportticketpriorityiddelete) | **DELETE** /api/v2/SupportService/SupportTicketPriorities/{supportTicketPriorityId} | 
*SupportTicketPrioritiesApi* | [**apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet**](docs/SupportTicketPrioritiesApi.md#apiv2supportservicesupportticketprioritiessupportticketpriorityidget) | **GET** /api/v2/SupportService/SupportTicketPriorities/{supportTicketPriorityId} | 
*SupportTicketPrioritiesApi* | [**apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut**](docs/SupportTicketPrioritiesApi.md#apiv2supportservicesupportticketprioritiessupportticketpriorityidput) | **PUT** /api/v2/SupportService/SupportTicketPriorities/{supportTicketPriorityId} | 
*SupportTicketTypesApi* | [**apiV2SupportServiceSupportTicketTypesCountGet**](docs/SupportTicketTypesApi.md#apiv2supportservicesupporttickettypescountget) | **GET** /api/v2/SupportService/SupportTicketTypes/Count | 
*SupportTicketTypesApi* | [**apiV2SupportServiceSupportTicketTypesGet**](docs/SupportTicketTypesApi.md#apiv2supportservicesupporttickettypesget) | **GET** /api/v2/SupportService/SupportTicketTypes | 
*SupportTicketTypesApi* | [**apiV2SupportServiceSupportTicketTypesPost**](docs/SupportTicketTypesApi.md#apiv2supportservicesupporttickettypespost) | **POST** /api/v2/SupportService/SupportTicketTypes | 
*SupportTicketTypesApi* | [**apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete**](docs/SupportTicketTypesApi.md#apiv2supportservicesupporttickettypessupporttickettypeiddelete) | **DELETE** /api/v2/SupportService/SupportTicketTypes/{supportTicketTypeId} | 
*SupportTicketTypesApi* | [**apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet**](docs/SupportTicketTypesApi.md#apiv2supportservicesupporttickettypessupporttickettypeidget) | **GET** /api/v2/SupportService/SupportTicketTypes/{supportTicketTypeId} | 
*SupportTicketTypesApi* | [**apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut**](docs/SupportTicketTypesApi.md#apiv2supportservicesupporttickettypessupporttickettypeidput) | **PUT** /api/v2/SupportService/SupportTicketTypes/{supportTicketTypeId} | 
*SupportTicketsApi* | [**apiV2SupportServiceSupportTicketsCountGet**](docs/SupportTicketsApi.md#apiv2supportservicesupportticketscountget) | **GET** /api/v2/SupportService/SupportTickets/Count | 
*SupportTicketsApi* | [**apiV2SupportServiceSupportTicketsGet**](docs/SupportTicketsApi.md#apiv2supportservicesupportticketsget) | **GET** /api/v2/SupportService/SupportTickets | 
*SupportTicketsApi* | [**apiV2SupportServiceSupportTicketsPost**](docs/SupportTicketsApi.md#apiv2supportservicesupportticketspost) | **POST** /api/v2/SupportService/SupportTickets | 
*SupportTicketsApi* | [**apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet**](docs/SupportTicketsApi.md#apiv2supportservicesupportticketssupportticketidconversationsget) | **GET** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations | 
*SupportTicketsApi* | [**apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost**](docs/SupportTicketsApi.md#apiv2supportservicesupportticketssupportticketidconversationspost) | **POST** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations | 
*SupportTicketsApi* | [**apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete**](docs/SupportTicketsApi.md#apiv2supportservicesupportticketssupportticketidconversationssupportticketconversationiddelete) | **DELETE** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations/{supportTicketConversationId} | 
*SupportTicketsApi* | [**apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet**](docs/SupportTicketsApi.md#apiv2supportservicesupportticketssupportticketidconversationssupportticketconversationidget) | **GET** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations/{supportTicketConversationId} | 
*SupportTicketsApi* | [**apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet**](docs/SupportTicketsApi.md#apiv2supportservicesupportticketssupportticketidconversationssupportticketconversationidmessagesget) | **GET** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations/{supportTicketConversationId}/Messages | 
*SupportTicketsApi* | [**apiV2SupportServiceSupportTicketsSupportTicketIdDelete**](docs/SupportTicketsApi.md#apiv2supportservicesupportticketssupportticketiddelete) | **DELETE** /api/v2/SupportService/SupportTickets/{supportTicketId} | 
*SupportTicketsApi* | [**apiV2SupportServiceSupportTicketsSupportTicketIdGet**](docs/SupportTicketsApi.md#apiv2supportservicesupportticketssupportticketidget) | **GET** /api/v2/SupportService/SupportTickets/{supportTicketId} | 
*SupportTicketsApi* | [**apiV2SupportServiceSupportTicketsSupportTicketIdPut**](docs/SupportTicketsApi.md#apiv2supportservicesupportticketssupportticketidput) | **PUT** /api/v2/SupportService/SupportTickets/{supportTicketId} | 


## Documentation For Models

 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [PrivateMessageDto](docs/PrivateMessageDto.md)
 - [PrivateMessageDtoListEnvelope](docs/PrivateMessageDtoListEnvelope.md)
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


## Documentation For Authorization


## Bearer


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

