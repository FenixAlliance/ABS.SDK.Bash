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
*CompletionsApi* | [**apiV2AiServiceCompletionsCompleteGet**](docs/CompletionsApi.md#apiv2aiservicecompletionscompleteget) | **GET** /api/v2/AiService/Completions/Complete | 
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
*InquiryRequestsApi* | [**createInquiryRequestAsync**](docs/InquiryRequestsApi.md#createinquiryrequestasync) | **POST** /api/v2/SupportService/InquiryRequests | Create an inquiry request
*InquiryRequestsApi* | [**deleteInquiryRequestAsync**](docs/InquiryRequestsApi.md#deleteinquiryrequestasync) | **DELETE** /api/v2/SupportService/InquiryRequests/{inquiryRequestId} | Delete an inquiry request
*InquiryRequestsApi* | [**getInquiryRequestAsync**](docs/InquiryRequestsApi.md#getinquiryrequestasync) | **GET** /api/v2/SupportService/InquiryRequests/{inquiryRequestId} | Retrieve an inquiry request by ID
*InquiryRequestsApi* | [**getInquiryRequestsAsync**](docs/InquiryRequestsApi.md#getinquiryrequestsasync) | **GET** /api/v2/SupportService/InquiryRequests | Retrieve inquiry requests
*InquiryRequestsApi* | [**getInquiryRequestsCountAsync**](docs/InquiryRequestsApi.md#getinquiryrequestscountasync) | **GET** /api/v2/SupportService/InquiryRequests/Count | Get inquiry requests count
*InquiryRequestsApi* | [**patchInquiryRequestAsync**](docs/InquiryRequestsApi.md#patchinquiryrequestasync) | **PATCH** /api/v2/SupportService/InquiryRequests/{inquiryRequestId} | Patch an inquiry request
*InquiryRequestsApi* | [**updateInquiryRequestAsync**](docs/InquiryRequestsApi.md#updateinquiryrequestasync) | **PUT** /api/v2/SupportService/InquiryRequests/{inquiryRequestId} | Update an inquiry request
*KnowledgeArticlesApi* | [**createKnowledgeArticleAsync**](docs/KnowledgeArticlesApi.md#createknowledgearticleasync) | **POST** /api/v2/SupportService/KnowledgeArticles | Create a knowledge article
*KnowledgeArticlesApi* | [**deleteKnowledgeArticleAsync**](docs/KnowledgeArticlesApi.md#deleteknowledgearticleasync) | **DELETE** /api/v2/SupportService/KnowledgeArticles/{knowledgeArticleId} | Delete a knowledge article
*KnowledgeArticlesApi* | [**getKnowledgeArticleAsync**](docs/KnowledgeArticlesApi.md#getknowledgearticleasync) | **GET** /api/v2/SupportService/KnowledgeArticles/{knowledgeArticleId} | Retrieve a knowledge article by ID
*KnowledgeArticlesApi* | [**getKnowledgeArticlesAsync**](docs/KnowledgeArticlesApi.md#getknowledgearticlesasync) | **GET** /api/v2/SupportService/KnowledgeArticles | Retrieve knowledge articles
*KnowledgeArticlesApi* | [**getKnowledgeArticlesCountAsync**](docs/KnowledgeArticlesApi.md#getknowledgearticlescountasync) | **GET** /api/v2/SupportService/KnowledgeArticles/Count | Get knowledge articles count
*KnowledgeArticlesApi* | [**patchKnowledgeArticleAsync**](docs/KnowledgeArticlesApi.md#patchknowledgearticleasync) | **PATCH** /api/v2/SupportService/KnowledgeArticles/{knowledgeArticleId} | Patch a knowledge article
*KnowledgeArticlesApi* | [**updateKnowledgeArticleAsync**](docs/KnowledgeArticlesApi.md#updateknowledgearticleasync) | **PUT** /api/v2/SupportService/KnowledgeArticles/{knowledgeArticleId} | Update a knowledge article
*MaintenanceVisitsApi* | [**createMaintenanceVisitAsync**](docs/MaintenanceVisitsApi.md#createmaintenancevisitasync) | **POST** /api/v2/SupportService/MaintenanceVisits | Create a maintenance visit
*MaintenanceVisitsApi* | [**deleteMaintenanceVisitAsync**](docs/MaintenanceVisitsApi.md#deletemaintenancevisitasync) | **DELETE** /api/v2/SupportService/MaintenanceVisits/{maintenanceVisitId} | Delete a maintenance visit
*MaintenanceVisitsApi* | [**getMaintenanceVisitAsync**](docs/MaintenanceVisitsApi.md#getmaintenancevisitasync) | **GET** /api/v2/SupportService/MaintenanceVisits/{maintenanceVisitId} | Retrieve a maintenance visit by ID
*MaintenanceVisitsApi* | [**getMaintenanceVisitsAsync**](docs/MaintenanceVisitsApi.md#getmaintenancevisitsasync) | **GET** /api/v2/SupportService/MaintenanceVisits | Retrieve maintenance visits
*MaintenanceVisitsApi* | [**getMaintenanceVisitsCountAsync**](docs/MaintenanceVisitsApi.md#getmaintenancevisitscountasync) | **GET** /api/v2/SupportService/MaintenanceVisits/Count | Get maintenance visits count
*MaintenanceVisitsApi* | [**patchMaintenanceVisitAsync**](docs/MaintenanceVisitsApi.md#patchmaintenancevisitasync) | **PATCH** /api/v2/SupportService/MaintenanceVisits/{maintenanceVisitId} | Patch a maintenance visit
*MaintenanceVisitsApi* | [**updateMaintenanceVisitAsync**](docs/MaintenanceVisitsApi.md#updatemaintenancevisitasync) | **PUT** /api/v2/SupportService/MaintenanceVisits/{maintenanceVisitId} | Update a maintenance visit
*RefundPoliciesApi* | [**createRefundPolicyAsync**](docs/RefundPoliciesApi.md#createrefundpolicyasync) | **POST** /api/v2/SupportService/RefundPolicies | Create a new refund policy
*RefundPoliciesApi* | [**deleteRefundPolicyAsync**](docs/RefundPoliciesApi.md#deleterefundpolicyasync) | **DELETE** /api/v2/SupportService/RefundPolicies/{refundPolicyId} | Delete a refund policy
*RefundPoliciesApi* | [**getRefundPoliciesAsync**](docs/RefundPoliciesApi.md#getrefundpoliciesasync) | **GET** /api/v2/SupportService/RefundPolicies | Retrieve a list of refund policies
*RefundPoliciesApi* | [**getRefundPoliciesCountAsync**](docs/RefundPoliciesApi.md#getrefundpoliciescountasync) | **GET** /api/v2/SupportService/RefundPolicies/Count | Get the count of refund policies
*RefundPoliciesApi* | [**getRefundPolicyAsync**](docs/RefundPoliciesApi.md#getrefundpolicyasync) | **GET** /api/v2/SupportService/RefundPolicies/{refundPolicyId} | Retrieve a refund policy by ID
*RefundPoliciesApi* | [**patchRefundPolicyAsync**](docs/RefundPoliciesApi.md#patchrefundpolicyasync) | **PATCH** /api/v2/SupportService/RefundPolicies/{refundPolicyId} | Patch a refund policy
*RefundPoliciesApi* | [**updateRefundPolicyAsync**](docs/RefundPoliciesApi.md#updaterefundpolicyasync) | **PUT** /api/v2/SupportService/RefundPolicies/{refundPolicyId} | Update a refund policy
*RefundRequestsApi* | [**createRefundRequestAsync**](docs/RefundRequestsApi.md#createrefundrequestasync) | **POST** /api/v2/SupportService/RefundRequests | Create a refund request
*RefundRequestsApi* | [**deleteRefundRequestAsync**](docs/RefundRequestsApi.md#deleterefundrequestasync) | **DELETE** /api/v2/SupportService/RefundRequests/{refundRequestId} | Delete a refund request
*RefundRequestsApi* | [**getRefundRequestAsync**](docs/RefundRequestsApi.md#getrefundrequestasync) | **GET** /api/v2/SupportService/RefundRequests/{refundRequestId} | Retrieve a refund request by ID
*RefundRequestsApi* | [**getRefundRequestsAsync**](docs/RefundRequestsApi.md#getrefundrequestsasync) | **GET** /api/v2/SupportService/RefundRequests | Retrieve refund requests
*RefundRequestsApi* | [**getRefundRequestsCountAsync**](docs/RefundRequestsApi.md#getrefundrequestscountasync) | **GET** /api/v2/SupportService/RefundRequests/Count | Get refund requests count
*RefundRequestsApi* | [**patchRefundRequestAsync**](docs/RefundRequestsApi.md#patchrefundrequestasync) | **PATCH** /api/v2/SupportService/RefundRequests/{refundRequestId} | Patch a refund request
*RefundRequestsApi* | [**updateRefundRequestAsync**](docs/RefundRequestsApi.md#updaterefundrequestasync) | **PUT** /api/v2/SupportService/RefundRequests/{refundRequestId} | Update a refund request
*ReturnPoliciesApi* | [**createReturnPolicyAsync**](docs/ReturnPoliciesApi.md#createreturnpolicyasync) | **POST** /api/v2/SupportService/ReturnPolicies | Create a new return policy
*ReturnPoliciesApi* | [**deleteReturnPolicyAsync**](docs/ReturnPoliciesApi.md#deletereturnpolicyasync) | **DELETE** /api/v2/SupportService/ReturnPolicies/{returnPolicyId} | Delete a return policy
*ReturnPoliciesApi* | [**getReturnPoliciesAsync**](docs/ReturnPoliciesApi.md#getreturnpoliciesasync) | **GET** /api/v2/SupportService/ReturnPolicies | Retrieve a list of return policies
*ReturnPoliciesApi* | [**getReturnPoliciesCountAsync**](docs/ReturnPoliciesApi.md#getreturnpoliciescountasync) | **GET** /api/v2/SupportService/ReturnPolicies/Count | Get the count of return policies
*ReturnPoliciesApi* | [**getReturnPolicyAsync**](docs/ReturnPoliciesApi.md#getreturnpolicyasync) | **GET** /api/v2/SupportService/ReturnPolicies/{returnPolicyId} | Retrieve a return policy by ID
*ReturnPoliciesApi* | [**patchReturnPolicyAsync**](docs/ReturnPoliciesApi.md#patchreturnpolicyasync) | **PATCH** /api/v2/SupportService/ReturnPolicies/{returnPolicyId} | Patch a return policy
*ReturnPoliciesApi* | [**updateReturnPolicyAsync**](docs/ReturnPoliciesApi.md#updatereturnpolicyasync) | **PUT** /api/v2/SupportService/ReturnPolicies/{returnPolicyId} | Update a return policy
*ReturnRequestsApi* | [**createReturnRequestAsync**](docs/ReturnRequestsApi.md#createreturnrequestasync) | **POST** /api/v2/SupportService/ReturnRequests | Create a return request
*ReturnRequestsApi* | [**deleteReturnRequestAsync**](docs/ReturnRequestsApi.md#deletereturnrequestasync) | **DELETE** /api/v2/SupportService/ReturnRequests/{returnRequestId} | Delete a return request
*ReturnRequestsApi* | [**getReturnRequestAsync**](docs/ReturnRequestsApi.md#getreturnrequestasync) | **GET** /api/v2/SupportService/ReturnRequests/{returnRequestId} | Retrieve a return request by ID
*ReturnRequestsApi* | [**getReturnRequestsAsync**](docs/ReturnRequestsApi.md#getreturnrequestsasync) | **GET** /api/v2/SupportService/ReturnRequests | Retrieve return requests
*ReturnRequestsApi* | [**getReturnRequestsCountAsync**](docs/ReturnRequestsApi.md#getreturnrequestscountasync) | **GET** /api/v2/SupportService/ReturnRequests/Count | Get return requests count
*ReturnRequestsApi* | [**patchReturnRequestAsync**](docs/ReturnRequestsApi.md#patchreturnrequestasync) | **PATCH** /api/v2/SupportService/ReturnRequests/{returnRequestId} | Patch a return request
*ReturnRequestsApi* | [**updateReturnRequestAsync**](docs/ReturnRequestsApi.md#updatereturnrequestasync) | **PUT** /api/v2/SupportService/ReturnRequests/{returnRequestId} | Update a return request
*SupportEntitlementsApi* | [**createSupportEntitlementAsync**](docs/SupportEntitlementsApi.md#createsupportentitlementasync) | **POST** /api/v2/SupportService/SupportEntitlements | Create a new support entitlement
*SupportEntitlementsApi* | [**deleteSupportEntitlementAsync**](docs/SupportEntitlementsApi.md#deletesupportentitlementasync) | **DELETE** /api/v2/SupportService/SupportEntitlements/{supportEntitlementId} | Delete a support entitlement
*SupportEntitlementsApi* | [**getSupportEntitlementAsync**](docs/SupportEntitlementsApi.md#getsupportentitlementasync) | **GET** /api/v2/SupportService/SupportEntitlements/{supportEntitlementId} | Retrieve a support entitlement by ID
*SupportEntitlementsApi* | [**getSupportEntitlementsAsync**](docs/SupportEntitlementsApi.md#getsupportentitlementsasync) | **GET** /api/v2/SupportService/SupportEntitlements | Retrieve a list of support entitlements
*SupportEntitlementsApi* | [**getSupportEntitlementsCountAsync**](docs/SupportEntitlementsApi.md#getsupportentitlementscountasync) | **GET** /api/v2/SupportService/SupportEntitlements/Count | Get the count of support entitlements
*SupportEntitlementsApi* | [**patchSupportEntitlementAsync**](docs/SupportEntitlementsApi.md#patchsupportentitlementasync) | **PATCH** /api/v2/SupportService/SupportEntitlements/{supportEntitlementId} | Patch a support entitlement
*SupportEntitlementsApi* | [**updateSupportEntitlementAsync**](docs/SupportEntitlementsApi.md#updatesupportentitlementasync) | **PUT** /api/v2/SupportService/SupportEntitlements/{supportEntitlementId} | Update a support entitlement
*SupportRequestAttachmentsApi* | [**createSupportRequestAttachmentAsync**](docs/SupportRequestAttachmentsApi.md#createsupportrequestattachmentasync) | **POST** /api/v2/SupportService/SupportRequestAttachments | Create a new support request attachment
*SupportRequestAttachmentsApi* | [**deleteSupportRequestAttachmentAsync**](docs/SupportRequestAttachmentsApi.md#deletesupportrequestattachmentasync) | **DELETE** /api/v2/SupportService/SupportRequestAttachments/{supportRequestAttachmentId} | Delete a support request attachment
*SupportRequestAttachmentsApi* | [**getSupportRequestAttachmentAsync**](docs/SupportRequestAttachmentsApi.md#getsupportrequestattachmentasync) | **GET** /api/v2/SupportService/SupportRequestAttachments/{supportRequestAttachmentId} | Retrieve a support request attachment by ID
*SupportRequestAttachmentsApi* | [**getSupportRequestAttachmentsAsync**](docs/SupportRequestAttachmentsApi.md#getsupportrequestattachmentsasync) | **GET** /api/v2/SupportService/SupportRequestAttachments | Retrieve a list of support request attachments
*SupportRequestAttachmentsApi* | [**getSupportRequestAttachmentsCountAsync**](docs/SupportRequestAttachmentsApi.md#getsupportrequestattachmentscountasync) | **GET** /api/v2/SupportService/SupportRequestAttachments/Count | Get the count of support request attachments
*SupportRequestAttachmentsApi* | [**patchSupportRequestAttachmentAsync**](docs/SupportRequestAttachmentsApi.md#patchsupportrequestattachmentasync) | **PATCH** /api/v2/SupportService/SupportRequestAttachments/{supportRequestAttachmentId} | Patch a support request attachment
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
*SupportRequestsApi* | [**patchSupportRequestAsync**](docs/SupportRequestsApi.md#patchsupportrequestasync) | **PATCH** /api/v2/SupportService/SupportRequests/{supportRequestId} | Patch a support request
*SupportRequestsApi* | [**relateSupportRequestToAttachmentAsync**](docs/SupportRequestsApi.md#relatesupportrequesttoattachmentasync) | **POST** /api/v2/SupportService/SupportRequests/{supportRequestId}/Attachments | Add an attachment to a support request
*SupportRequestsApi* | [**updateSupportRequestAsync**](docs/SupportRequestsApi.md#updatesupportrequestasync) | **PUT** /api/v2/SupportService/SupportRequests/{supportRequestId} | Update a support request
*SupportTicketPrioritiesApi* | [**createSupportTicketPriorityAsync**](docs/SupportTicketPrioritiesApi.md#createsupportticketpriorityasync) | **POST** /api/v2/SupportService/SupportTicketPriorities | Create a new support ticket priority
*SupportTicketPrioritiesApi* | [**deleteSupportTicketPriorityAsync**](docs/SupportTicketPrioritiesApi.md#deletesupportticketpriorityasync) | **DELETE** /api/v2/SupportService/SupportTicketPriorities/{supportTicketPriorityId} | Delete a support ticket priority
*SupportTicketPrioritiesApi* | [**getSupportTicketPrioritiesAsync**](docs/SupportTicketPrioritiesApi.md#getsupportticketprioritiesasync) | **GET** /api/v2/SupportService/SupportTicketPriorities | Retrieve a list of support ticket priorities
*SupportTicketPrioritiesApi* | [**getSupportTicketPrioritiesCountAsync**](docs/SupportTicketPrioritiesApi.md#getsupportticketprioritiescountasync) | **GET** /api/v2/SupportService/SupportTicketPriorities/Count | Get the count of support ticket priorities
*SupportTicketPrioritiesApi* | [**getSupportTicketPriorityAsync**](docs/SupportTicketPrioritiesApi.md#getsupportticketpriorityasync) | **GET** /api/v2/SupportService/SupportTicketPriorities/{supportTicketPriorityId} | Retrieve a support ticket priority by ID
*SupportTicketPrioritiesApi* | [**patchSupportTicketPriorityAsync**](docs/SupportTicketPrioritiesApi.md#patchsupportticketpriorityasync) | **PATCH** /api/v2/SupportService/SupportTicketPriorities/{supportTicketPriorityId} | Patch a support ticket priority
*SupportTicketPrioritiesApi* | [**updateSupportTicketPriorityAsync**](docs/SupportTicketPrioritiesApi.md#updatesupportticketpriorityasync) | **PUT** /api/v2/SupportService/SupportTicketPriorities/{supportTicketPriorityId} | Update a support ticket priority
*SupportTicketTypesApi* | [**createSupportTicketTypeAsync**](docs/SupportTicketTypesApi.md#createsupporttickettypeasync) | **POST** /api/v2/SupportService/SupportTicketTypes | Create a new support ticket type
*SupportTicketTypesApi* | [**deleteSupportTicketTypeAsync**](docs/SupportTicketTypesApi.md#deletesupporttickettypeasync) | **DELETE** /api/v2/SupportService/SupportTicketTypes/{supportTicketTypeId} | Delete a support ticket type
*SupportTicketTypesApi* | [**getSupportTicketTypeAsync**](docs/SupportTicketTypesApi.md#getsupporttickettypeasync) | **GET** /api/v2/SupportService/SupportTicketTypes/{supportTicketTypeId} | Retrieve a support ticket type by ID
*SupportTicketTypesApi* | [**getSupportTicketTypesAsync**](docs/SupportTicketTypesApi.md#getsupporttickettypesasync) | **GET** /api/v2/SupportService/SupportTicketTypes | Retrieve a list of support ticket types
*SupportTicketTypesApi* | [**getSupportTicketTypesCountAsync**](docs/SupportTicketTypesApi.md#getsupporttickettypescountasync) | **GET** /api/v2/SupportService/SupportTicketTypes/Count | Get the count of support ticket types
*SupportTicketTypesApi* | [**patchSupportTicketTypeAsync**](docs/SupportTicketTypesApi.md#patchsupporttickettypeasync) | **PATCH** /api/v2/SupportService/SupportTicketTypes/{supportTicketTypeId} | Patch a support ticket type
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
*SupportTicketsApi* | [**patchSupportTicketAsync**](docs/SupportTicketsApi.md#patchsupportticketasync) | **PATCH** /api/v2/SupportService/SupportTickets/{supportTicketId} | Patch a support ticket
*SupportTicketsApi* | [**relateSupportTicketToConversationAsync**](docs/SupportTicketsApi.md#relatesupporttickettoconversationasync) | **POST** /api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations | Create a conversation for a support ticket
*SupportTicketsApi* | [**updateSupportTicketAsync**](docs/SupportTicketsApi.md#updatesupportticketasync) | **PUT** /api/v2/SupportService/SupportTickets/{supportTicketId} | Update a support ticket
*WarrantyPoliciesApi* | [**createWarrantyPolicyAsync**](docs/WarrantyPoliciesApi.md#createwarrantypolicyasync) | **POST** /api/v2/SupportService/WarrantyPolicies | Create a new warranty policy
*WarrantyPoliciesApi* | [**deleteWarrantyPolicyAsync**](docs/WarrantyPoliciesApi.md#deletewarrantypolicyasync) | **DELETE** /api/v2/SupportService/WarrantyPolicies/{warrantyPolicyId} | Delete a warranty policy
*WarrantyPoliciesApi* | [**getWarrantyPoliciesAsync**](docs/WarrantyPoliciesApi.md#getwarrantypoliciesasync) | **GET** /api/v2/SupportService/WarrantyPolicies | Retrieve a list of warranty policies
*WarrantyPoliciesApi* | [**getWarrantyPoliciesCountAsync**](docs/WarrantyPoliciesApi.md#getwarrantypoliciescountasync) | **GET** /api/v2/SupportService/WarrantyPolicies/Count | Get the count of warranty policies
*WarrantyPoliciesApi* | [**getWarrantyPolicyAsync**](docs/WarrantyPoliciesApi.md#getwarrantypolicyasync) | **GET** /api/v2/SupportService/WarrantyPolicies/{warrantyPolicyId} | Retrieve a warranty policy by ID
*WarrantyPoliciesApi* | [**patchWarrantyPolicyAsync**](docs/WarrantyPoliciesApi.md#patchwarrantypolicyasync) | **PATCH** /api/v2/SupportService/WarrantyPolicies/{warrantyPolicyId} | Patch a warranty policy
*WarrantyPoliciesApi* | [**updateWarrantyPolicyAsync**](docs/WarrantyPoliciesApi.md#updatewarrantypolicyasync) | **PUT** /api/v2/SupportService/WarrantyPolicies/{warrantyPolicyId} | Update a warranty policy
*WarrantyRequestsApi* | [**createWarrantyRequestAsync**](docs/WarrantyRequestsApi.md#createwarrantyrequestasync) | **POST** /api/v2/SupportService/WarrantyRequests | Create a warranty request
*WarrantyRequestsApi* | [**deleteWarrantyRequestAsync**](docs/WarrantyRequestsApi.md#deletewarrantyrequestasync) | **DELETE** /api/v2/SupportService/WarrantyRequests/{warrantyRequestId} | Delete a warranty request
*WarrantyRequestsApi* | [**getWarrantyRequestAsync**](docs/WarrantyRequestsApi.md#getwarrantyrequestasync) | **GET** /api/v2/SupportService/WarrantyRequests/{warrantyRequestId} | Retrieve a warranty request by ID
*WarrantyRequestsApi* | [**getWarrantyRequestsAsync**](docs/WarrantyRequestsApi.md#getwarrantyrequestsasync) | **GET** /api/v2/SupportService/WarrantyRequests | Retrieve warranty requests
*WarrantyRequestsApi* | [**getWarrantyRequestsCountAsync**](docs/WarrantyRequestsApi.md#getwarrantyrequestscountasync) | **GET** /api/v2/SupportService/WarrantyRequests/Count | Get warranty requests count
*WarrantyRequestsApi* | [**patchWarrantyRequestAsync**](docs/WarrantyRequestsApi.md#patchwarrantyrequestasync) | **PATCH** /api/v2/SupportService/WarrantyRequests/{warrantyRequestId} | Patch a warranty request
*WarrantyRequestsApi* | [**updateWarrantyRequestAsync**](docs/WarrantyRequestsApi.md#updatewarrantyrequestasync) | **PUT** /api/v2/SupportService/WarrantyRequests/{warrantyRequestId} | Update a warranty request


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [InquiryRequestCreateDto](docs/InquiryRequestCreateDto.md)
 - [InquiryRequestDto](docs/InquiryRequestDto.md)
 - [InquiryRequestDtoEnvelope](docs/InquiryRequestDtoEnvelope.md)
 - [InquiryRequestDtoListEnvelope](docs/InquiryRequestDtoListEnvelope.md)
 - [InquiryRequestUpdateDto](docs/InquiryRequestUpdateDto.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [ItemRefundPolicyCreateDto](docs/ItemRefundPolicyCreateDto.md)
 - [ItemRefundPolicyDto](docs/ItemRefundPolicyDto.md)
 - [ItemRefundPolicyDtoEnvelope](docs/ItemRefundPolicyDtoEnvelope.md)
 - [ItemRefundPolicyDtoListEnvelope](docs/ItemRefundPolicyDtoListEnvelope.md)
 - [ItemRefundPolicyUpdateDto](docs/ItemRefundPolicyUpdateDto.md)
 - [ItemReturnPolicyCreateDto](docs/ItemReturnPolicyCreateDto.md)
 - [ItemReturnPolicyDto](docs/ItemReturnPolicyDto.md)
 - [ItemReturnPolicyDtoEnvelope](docs/ItemReturnPolicyDtoEnvelope.md)
 - [ItemReturnPolicyDtoListEnvelope](docs/ItemReturnPolicyDtoListEnvelope.md)
 - [ItemReturnPolicyUpdateDto](docs/ItemReturnPolicyUpdateDto.md)
 - [ItemWarrantyPolicyCreateDto](docs/ItemWarrantyPolicyCreateDto.md)
 - [ItemWarrantyPolicyDto](docs/ItemWarrantyPolicyDto.md)
 - [ItemWarrantyPolicyDtoEnvelope](docs/ItemWarrantyPolicyDtoEnvelope.md)
 - [ItemWarrantyPolicyDtoListEnvelope](docs/ItemWarrantyPolicyDtoListEnvelope.md)
 - [ItemWarrantyPolicyUpdateDto](docs/ItemWarrantyPolicyUpdateDto.md)
 - [KnowledgeArticleCreateDto](docs/KnowledgeArticleCreateDto.md)
 - [KnowledgeArticleDto](docs/KnowledgeArticleDto.md)
 - [KnowledgeArticleDtoEnvelope](docs/KnowledgeArticleDtoEnvelope.md)
 - [KnowledgeArticleDtoListEnvelope](docs/KnowledgeArticleDtoListEnvelope.md)
 - [KnowledgeArticleUpdateDto](docs/KnowledgeArticleUpdateDto.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [MaintenanceVisitCreateDto](docs/MaintenanceVisitCreateDto.md)
 - [MaintenanceVisitDto](docs/MaintenanceVisitDto.md)
 - [MaintenanceVisitDtoEnvelope](docs/MaintenanceVisitDtoEnvelope.md)
 - [MaintenanceVisitDtoListEnvelope](docs/MaintenanceVisitDtoListEnvelope.md)
 - [Operation](docs/Operation.md)
 - [PrivateMessageDto](docs/PrivateMessageDto.md)
 - [PrivateMessageDtoListEnvelope](docs/PrivateMessageDtoListEnvelope.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RefundRequestCreateDto](docs/RefundRequestCreateDto.md)
 - [RefundRequestDto](docs/RefundRequestDto.md)
 - [RefundRequestDtoEnvelope](docs/RefundRequestDtoEnvelope.md)
 - [RefundRequestDtoListEnvelope](docs/RefundRequestDtoListEnvelope.md)
 - [RefundRequestUpdateDto](docs/RefundRequestUpdateDto.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [ReturnRequestCreateDto](docs/ReturnRequestCreateDto.md)
 - [ReturnRequestDto](docs/ReturnRequestDto.md)
 - [ReturnRequestDtoEnvelope](docs/ReturnRequestDtoEnvelope.md)
 - [ReturnRequestDtoListEnvelope](docs/ReturnRequestDtoListEnvelope.md)
 - [ReturnRequestUpdateDto](docs/ReturnRequestUpdateDto.md)
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
 - [WarrantyRequestCreateDto](docs/WarrantyRequestCreateDto.md)
 - [WarrantyRequestDto](docs/WarrantyRequestDto.md)
 - [WarrantyRequestDtoEnvelope](docs/WarrantyRequestDtoEnvelope.md)
 - [WarrantyRequestDtoListEnvelope](docs/WarrantyRequestDtoListEnvelope.md)
 - [WarrantyRequestUpdateDto](docs/WarrantyRequestUpdateDto.md)


## Documentation For Authorization

 All endpoints do not require authorization.

