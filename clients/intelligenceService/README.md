# IntelligenceService Bash client

## Overview

This is a Bash client script for accessing IntelligenceService service.

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
*AiProvidersApi* | [**getAiProvidersAsync**](docs/AiProvidersApi.md#getaiprovidersasync) | **GET** /api/v2/IntelligenceService/AiProviders | Get the available AI providers
*CapabilitiesApi* | [**getCapabilitiesAsync**](docs/CapabilitiesApi.md#getcapabilitiesasync) | **GET** /api/v2/IntelligenceService/Capabilities | Get the annotated capability catalog
*CapabilitiesApi* | [**getCapabilitiesCountAsync**](docs/CapabilitiesApi.md#getcapabilitiescountasync) | **GET** /api/v2/IntelligenceService/Capabilities/Count | Get the capability catalog count
*CapabilitiesApi* | [**getCapabilityByKeyAsync**](docs/CapabilitiesApi.md#getcapabilitybykeyasync) | **GET** /api/v2/IntelligenceService/Capabilities/{key} | Get a capability by key
*CognitiveAgentConversationAttachmentsApi* | [**uploadCognitiveAgentConversationAttachmentAsync**](docs/CognitiveAgentConversationAttachmentsApi.md#uploadcognitiveagentconversationattachmentasync) | **POST** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{conversationId}/Attachments | Upload an attachment to a cognitive agent conversation
*CognitiveAgentConversationsApi* | [**createCognitiveAgentConversationAsync**](docs/CognitiveAgentConversationsApi.md#createcognitiveagentconversationasync) | **POST** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations | Create a new cognitive agent conversation
*CognitiveAgentConversationsApi* | [**deleteCognitiveAgentConversationAsync**](docs/CognitiveAgentConversationsApi.md#deletecognitiveagentconversationasync) | **DELETE** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{id} | Delete a cognitive agent conversation
*CognitiveAgentConversationsApi* | [**getCognitiveAgentConversationByIdAsync**](docs/CognitiveAgentConversationsApi.md#getcognitiveagentconversationbyidasync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{id} | Get a cognitive agent conversation by ID
*CognitiveAgentConversationsApi* | [**getCognitiveAgentConversationsAsync**](docs/CognitiveAgentConversationsApi.md#getcognitiveagentconversationsasync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations | Get all conversations for a cognitive agent
*CognitiveAgentConversationsApi* | [**getCognitiveAgentConversationsCountAsync**](docs/CognitiveAgentConversationsApi.md#getcognitiveagentconversationscountasync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/Count | Get conversation count for a cognitive agent
*CognitiveAgentConversationsApi* | [**updateCognitiveAgentConversationAsync**](docs/CognitiveAgentConversationsApi.md#updatecognitiveagentconversationasync) | **PUT** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{id} | Update a cognitive agent conversation
*CognitiveAgentMessagesApi* | [**getCognitiveAgentMessageByIdAsync**](docs/CognitiveAgentMessagesApi.md#getcognitiveagentmessagebyidasync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{conversationId}/Messages/{id} | Get a cognitive agent conversation message by ID
*CognitiveAgentMessagesApi* | [**getCognitiveAgentMessagesAsync**](docs/CognitiveAgentMessagesApi.md#getcognitiveagentmessagesasync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{conversationId}/Messages | Get all messages for a cognitive agent conversation
*CognitiveAgentMessagesApi* | [**getCognitiveAgentMessagesCountAsync**](docs/CognitiveAgentMessagesApi.md#getcognitiveagentmessagescountasync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{conversationId}/Messages/Count | Get message count for a cognitive agent conversation
*CognitiveAgentSkillsApi* | [**createCognitiveAgentSkillAsync**](docs/CognitiveAgentSkillsApi.md#createcognitiveagentskillasync) | **POST** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Skills | Assign a skill to a cognitive agent
*CognitiveAgentSkillsApi* | [**deleteCognitiveAgentSkillAsync**](docs/CognitiveAgentSkillsApi.md#deletecognitiveagentskillasync) | **DELETE** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Skills/{id} | Remove a skill assignment from a cognitive agent
*CognitiveAgentSkillsApi* | [**getCognitiveAgentSkillByIdAsync**](docs/CognitiveAgentSkillsApi.md#getcognitiveagentskillbyidasync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Skills/{id} | Get a cognitive agent skill assignment by ID
*CognitiveAgentSkillsApi* | [**getCognitiveAgentSkillsAsync**](docs/CognitiveAgentSkillsApi.md#getcognitiveagentskillsasync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Skills | Get all skill assignments for a cognitive agent
*CognitiveAgentSkillsApi* | [**getCognitiveAgentSkillsCountAsync**](docs/CognitiveAgentSkillsApi.md#getcognitiveagentskillscountasync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Skills/Count | Get skill assignment count for a cognitive agent
*CognitiveAgentSkillsApi* | [**updateCognitiveAgentSkillAsync**](docs/CognitiveAgentSkillsApi.md#updatecognitiveagentskillasync) | **PUT** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Skills/{id} | Update a cognitive agent skill assignment
*CognitiveAgentVariablesApi* | [**createCognitiveAgentVariableAsync**](docs/CognitiveAgentVariablesApi.md#createcognitiveagentvariableasync) | **POST** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Variables | Add a variable to a cognitive agent
*CognitiveAgentVariablesApi* | [**deleteCognitiveAgentVariableAsync**](docs/CognitiveAgentVariablesApi.md#deletecognitiveagentvariableasync) | **DELETE** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Variables/{id} | Remove a variable from a cognitive agent
*CognitiveAgentVariablesApi* | [**getCognitiveAgentVariableByIdAsync**](docs/CognitiveAgentVariablesApi.md#getcognitiveagentvariablebyidasync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Variables/{id} | Get a cognitive agent variable by ID
*CognitiveAgentVariablesApi* | [**getCognitiveAgentVariablesAsync**](docs/CognitiveAgentVariablesApi.md#getcognitiveagentvariablesasync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Variables | Get all variables for a cognitive agent
*CognitiveAgentVariablesApi* | [**getCognitiveAgentVariablesCountAsync**](docs/CognitiveAgentVariablesApi.md#getcognitiveagentvariablescountasync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Variables/Count | Get variable count for a cognitive agent
*CognitiveAgentVariablesApi* | [**updateCognitiveAgentVariableAsync**](docs/CognitiveAgentVariablesApi.md#updatecognitiveagentvariableasync) | **PUT** /api/v2/IntelligenceService/CognitiveAgents/{agentId}/Variables/{id} | Update a cognitive agent variable
*CognitiveAgentsApi* | [**createCognitiveAgentAsync**](docs/CognitiveAgentsApi.md#createcognitiveagentasync) | **POST** /api/v2/IntelligenceService/CognitiveAgents | Create a new cognitive agent
*CognitiveAgentsApi* | [**deleteCognitiveAgentAsync**](docs/CognitiveAgentsApi.md#deletecognitiveagentasync) | **DELETE** /api/v2/IntelligenceService/CognitiveAgents/{id} | Delete a cognitive agent
*CognitiveAgentsApi* | [**getCognitiveAgentByIdAsync**](docs/CognitiveAgentsApi.md#getcognitiveagentbyidasync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/{id} | Get cognitive agent by ID
*CognitiveAgentsApi* | [**getCognitiveAgentsAsync**](docs/CognitiveAgentsApi.md#getcognitiveagentsasync) | **GET** /api/v2/IntelligenceService/CognitiveAgents | Get all cognitive agents
*CognitiveAgentsApi* | [**getCognitiveAgentsCountAsync**](docs/CognitiveAgentsApi.md#getcognitiveagentscountasync) | **GET** /api/v2/IntelligenceService/CognitiveAgents/Count | Get cognitive agents count
*CognitiveAgentsApi* | [**updateCognitiveAgentAsync**](docs/CognitiveAgentsApi.md#updatecognitiveagentasync) | **PUT** /api/v2/IntelligenceService/CognitiveAgents/{id} | Update a cognitive agent
*CognitiveSkillsApi* | [**createCognitiveSkillAsync**](docs/CognitiveSkillsApi.md#createcognitiveskillasync) | **POST** /api/v2/IntelligenceService/CognitiveSkills | Create a new cognitive skill
*CognitiveSkillsApi* | [**deleteCognitiveSkillAsync**](docs/CognitiveSkillsApi.md#deletecognitiveskillasync) | **DELETE** /api/v2/IntelligenceService/CognitiveSkills/{id} | Delete a cognitive skill
*CognitiveSkillsApi* | [**getCognitiveSkillByIdAsync**](docs/CognitiveSkillsApi.md#getcognitiveskillbyidasync) | **GET** /api/v2/IntelligenceService/CognitiveSkills/{id} | Get cognitive skill by ID
*CognitiveSkillsApi* | [**getCognitiveSkillsAsync**](docs/CognitiveSkillsApi.md#getcognitiveskillsasync) | **GET** /api/v2/IntelligenceService/CognitiveSkills | Get all cognitive skills
*CognitiveSkillsApi* | [**getCognitiveSkillsCountAsync**](docs/CognitiveSkillsApi.md#getcognitiveskillscountasync) | **GET** /api/v2/IntelligenceService/CognitiveSkills/Count | Get cognitive skills count
*CognitiveSkillsApi* | [**updateCognitiveSkillAsync**](docs/CognitiveSkillsApi.md#updatecognitiveskillasync) | **PUT** /api/v2/IntelligenceService/CognitiveSkills/{id} | Update a cognitive skill
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
*IntelligenceServiceApi* | [**invokeAgentSurfaceAsync**](docs/IntelligenceServiceApi.md#invokeagentsurfaceasync) | **POST** /api/v2/IntelligenceService/Agents/{agentId}/agui | Run a governed agent over the AG-UI protocol


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [AiProviderDto](docs/AiProviderDto.md)
 - [AiProviderDtoListEnvelope](docs/AiProviderDtoListEnvelope.md)
 - [CapabilityDto](docs/CapabilityDto.md)
 - [CapabilityDtoEnvelope](docs/CapabilityDtoEnvelope.md)
 - [CapabilityDtoListEnvelope](docs/CapabilityDtoListEnvelope.md)
 - [CognitiveAgentConversationCreateDto](docs/CognitiveAgentConversationCreateDto.md)
 - [CognitiveAgentConversationDto](docs/CognitiveAgentConversationDto.md)
 - [CognitiveAgentConversationDtoCollectionQueryParameters](docs/CognitiveAgentConversationDtoCollectionQueryParameters.md)
 - [CognitiveAgentConversationDtoEnvelope](docs/CognitiveAgentConversationDtoEnvelope.md)
 - [CognitiveAgentConversationDtoListEnvelope](docs/CognitiveAgentConversationDtoListEnvelope.md)
 - [CognitiveAgentConversationUpdateDto](docs/CognitiveAgentConversationUpdateDto.md)
 - [CognitiveAgentCreateDto](docs/CognitiveAgentCreateDto.md)
 - [CognitiveAgentDto](docs/CognitiveAgentDto.md)
 - [CognitiveAgentDtoCollectionQueryParameters](docs/CognitiveAgentDtoCollectionQueryParameters.md)
 - [CognitiveAgentDtoEnvelope](docs/CognitiveAgentDtoEnvelope.md)
 - [CognitiveAgentDtoListEnvelope](docs/CognitiveAgentDtoListEnvelope.md)
 - [CognitiveAgentMessageDto](docs/CognitiveAgentMessageDto.md)
 - [CognitiveAgentMessageDtoCollectionQueryParameters](docs/CognitiveAgentMessageDtoCollectionQueryParameters.md)
 - [CognitiveAgentMessageDtoEnvelope](docs/CognitiveAgentMessageDtoEnvelope.md)
 - [CognitiveAgentMessageDtoListEnvelope](docs/CognitiveAgentMessageDtoListEnvelope.md)
 - [CognitiveAgentSkillCreateDto](docs/CognitiveAgentSkillCreateDto.md)
 - [CognitiveAgentSkillDto](docs/CognitiveAgentSkillDto.md)
 - [CognitiveAgentSkillDtoCollectionQueryParameters](docs/CognitiveAgentSkillDtoCollectionQueryParameters.md)
 - [CognitiveAgentSkillDtoEnvelope](docs/CognitiveAgentSkillDtoEnvelope.md)
 - [CognitiveAgentSkillDtoListEnvelope](docs/CognitiveAgentSkillDtoListEnvelope.md)
 - [CognitiveAgentSkillUpdateDto](docs/CognitiveAgentSkillUpdateDto.md)
 - [CognitiveAgentUpdateDto](docs/CognitiveAgentUpdateDto.md)
 - [CognitiveAgentVariableCreateDto](docs/CognitiveAgentVariableCreateDto.md)
 - [CognitiveAgentVariableDto](docs/CognitiveAgentVariableDto.md)
 - [CognitiveAgentVariableDtoCollectionQueryParameters](docs/CognitiveAgentVariableDtoCollectionQueryParameters.md)
 - [CognitiveAgentVariableDtoEnvelope](docs/CognitiveAgentVariableDtoEnvelope.md)
 - [CognitiveAgentVariableDtoListEnvelope](docs/CognitiveAgentVariableDtoListEnvelope.md)
 - [CognitiveAgentVariableUpdateDto](docs/CognitiveAgentVariableUpdateDto.md)
 - [CognitiveSkillCreateDto](docs/CognitiveSkillCreateDto.md)
 - [CognitiveSkillDto](docs/CognitiveSkillDto.md)
 - [CognitiveSkillDtoCollectionQueryParameters](docs/CognitiveSkillDtoCollectionQueryParameters.md)
 - [CognitiveSkillDtoEnvelope](docs/CognitiveSkillDtoEnvelope.md)
 - [CognitiveSkillDtoListEnvelope](docs/CognitiveSkillDtoListEnvelope.md)
 - [CognitiveSkillToolDto](docs/CognitiveSkillToolDto.md)
 - [CognitiveSkillUpdateDto](docs/CognitiveSkillUpdateDto.md)
 - [ConversationAttachmentUploadResultDto](docs/ConversationAttachmentUploadResultDto.md)
 - [ConversationAttachmentUploadResultDtoEnvelope](docs/ConversationAttachmentUploadResultDtoEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

