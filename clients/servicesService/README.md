# ServicesService Bash client

## Overview

This is a Bash client script for accessing ServicesService service.

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
*ServiceCaseTypesApi* | [**createServiceCaseTypeAsync**](docs/ServiceCaseTypesApi.md#createservicecasetypeasync) | **POST** /api/v2/ServicesService/ServiceCaseTypes | Create a service case type
*ServiceCaseTypesApi* | [**deleteServiceCaseTypeAsync**](docs/ServiceCaseTypesApi.md#deleteservicecasetypeasync) | **DELETE** /api/v2/ServicesService/ServiceCaseTypes/{serviceCaseTypeId} | Delete a service case type
*ServiceCaseTypesApi* | [**getServiceCaseTypeByIdAsync**](docs/ServiceCaseTypesApi.md#getservicecasetypebyidasync) | **GET** /api/v2/ServicesService/ServiceCaseTypes/{serviceCaseTypeId} | Get a service case type by ID
*ServiceCaseTypesApi* | [**getServiceCaseTypesAsync**](docs/ServiceCaseTypesApi.md#getservicecasetypesasync) | **GET** /api/v2/ServicesService/ServiceCaseTypes | Get all service case types
*ServiceCaseTypesApi* | [**getServiceCaseTypesCountAsync**](docs/ServiceCaseTypesApi.md#getservicecasetypescountasync) | **GET** /api/v2/ServicesService/ServiceCaseTypes/Count | Get service case types count
*ServiceCaseTypesApi* | [**updateServiceCaseTypeAsync**](docs/ServiceCaseTypesApi.md#updateservicecasetypeasync) | **PUT** /api/v2/ServicesService/ServiceCaseTypes/{serviceCaseTypeId} | Update a service case type
*ServiceCasesApi* | [**createServiceCaseAsync**](docs/ServiceCasesApi.md#createservicecaseasync) | **POST** /api/v2/ServicesService/ServiceCases | Create a service case
*ServiceCasesApi* | [**deleteServiceCaseAsync**](docs/ServiceCasesApi.md#deleteservicecaseasync) | **DELETE** /api/v2/ServicesService/ServiceCases/{serviceCaseId} | Delete a service case
*ServiceCasesApi* | [**getServiceCaseByIdAsync**](docs/ServiceCasesApi.md#getservicecasebyidasync) | **GET** /api/v2/ServicesService/ServiceCases/{serviceCaseId} | Get a service case by ID
*ServiceCasesApi* | [**getServiceCasesAsync**](docs/ServiceCasesApi.md#getservicecasesasync) | **GET** /api/v2/ServicesService/ServiceCases | Get all service cases
*ServiceCasesApi* | [**getServiceCasesCountAsync**](docs/ServiceCasesApi.md#getservicecasescountasync) | **GET** /api/v2/ServicesService/ServiceCases/Count | Get service cases count
*ServiceCasesApi* | [**updateServiceCaseAsync**](docs/ServiceCasesApi.md#updateservicecaseasync) | **PUT** /api/v2/ServicesService/ServiceCases/{serviceCaseId} | Update a service case
*ServiceLevelAgreementsApi* | [**createServiceLevelAgreementAsync**](docs/ServiceLevelAgreementsApi.md#createservicelevelagreementasync) | **POST** /api/v2/ServicesService/ServiceLevelAgreements | Create a service level agreement
*ServiceLevelAgreementsApi* | [**deleteServiceLevelAgreementAsync**](docs/ServiceLevelAgreementsApi.md#deleteservicelevelagreementasync) | **DELETE** /api/v2/ServicesService/ServiceLevelAgreements/{serviceLevelAgreementId} | Delete a service level agreement
*ServiceLevelAgreementsApi* | [**getServiceLevelAgreementByIdAsync**](docs/ServiceLevelAgreementsApi.md#getservicelevelagreementbyidasync) | **GET** /api/v2/ServicesService/ServiceLevelAgreements/{serviceLevelAgreementId} | Get a service level agreement by ID
*ServiceLevelAgreementsApi* | [**getServiceLevelAgreementsAsync**](docs/ServiceLevelAgreementsApi.md#getservicelevelagreementsasync) | **GET** /api/v2/ServicesService/ServiceLevelAgreements | Get all service level agreements
*ServiceLevelAgreementsApi* | [**getServiceLevelAgreementsCountAsync**](docs/ServiceLevelAgreementsApi.md#getservicelevelagreementscountasync) | **GET** /api/v2/ServicesService/ServiceLevelAgreements/Count | Get service level agreements count
*ServiceLevelAgreementsApi* | [**updateServiceLevelAgreementAsync**](docs/ServiceLevelAgreementsApi.md#updateservicelevelagreementasync) | **PUT** /api/v2/ServicesService/ServiceLevelAgreements/{serviceLevelAgreementId} | Update a service level agreement
*ServiceLevelsApi* | [**countAllServiceLevelsAsync**](docs/ServiceLevelsApi.md#countallservicelevelsasync) | **GET** /api/v2/ServicesService/ServiceLevels/Count | Get all service levels count
*ServiceLevelsApi* | [**createServiceLevelAsync**](docs/ServiceLevelsApi.md#createservicelevelasync) | **POST** /api/v2/ServicesService/Services/{serviceId}/ServiceLevels | Create a service level
*ServiceLevelsApi* | [**deleteServiceLevelAsync**](docs/ServiceLevelsApi.md#deleteservicelevelasync) | **DELETE** /api/v2/ServicesService/Services/{serviceId}/ServiceLevels/{serviceLevelId} | Delete a service level
*ServiceLevelsApi* | [**getAllServiceLevelsAsync**](docs/ServiceLevelsApi.md#getallservicelevelsasync) | **GET** /api/v2/ServicesService/ServiceLevels | Get all service levels
*ServiceLevelsApi* | [**getServiceLevelByIdAsync**](docs/ServiceLevelsApi.md#getservicelevelbyidasync) | **GET** /api/v2/ServicesService/Services/{serviceId}/ServiceLevels/{serviceLevelId} | Get a service level by ID
*ServiceLevelsApi* | [**getServiceLevelsAsync**](docs/ServiceLevelsApi.md#getservicelevelsasync) | **GET** /api/v2/ServicesService/Services/{serviceId}/ServiceLevels | Get all service levels
*ServiceLevelsApi* | [**getServiceLevelsCountAsync**](docs/ServiceLevelsApi.md#getservicelevelscountasync) | **GET** /api/v2/ServicesService/Services/{serviceId}/ServiceLevels/Count | Get service levels count
*ServiceLevelsApi* | [**updateServiceLevelAsync**](docs/ServiceLevelsApi.md#updateservicelevelasync) | **PUT** /api/v2/ServicesService/Services/{serviceId}/ServiceLevels/{serviceLevelId} | Update a service level
*ServiceQueuesApi* | [**createServiceQueueAsync**](docs/ServiceQueuesApi.md#createservicequeueasync) | **POST** /api/v2/ServicesService/ServiceQueues | Create a service queue
*ServiceQueuesApi* | [**deleteServiceQueueAsync**](docs/ServiceQueuesApi.md#deleteservicequeueasync) | **DELETE** /api/v2/ServicesService/ServiceQueues/{serviceQueueId} | Delete a service queue
*ServiceQueuesApi* | [**getServiceQueueByIdAsync**](docs/ServiceQueuesApi.md#getservicequeuebyidasync) | **GET** /api/v2/ServicesService/ServiceQueues/{serviceQueueId} | Get a service queue by ID
*ServiceQueuesApi* | [**getServiceQueuesAsync**](docs/ServiceQueuesApi.md#getservicequeuesasync) | **GET** /api/v2/ServicesService/ServiceQueues | Get all service queues
*ServiceQueuesApi* | [**getServiceQueuesCountAsync**](docs/ServiceQueuesApi.md#getservicequeuescountasync) | **GET** /api/v2/ServicesService/ServiceQueues/Count | Get service queues count
*ServiceQueuesApi* | [**updateServiceQueueAsync**](docs/ServiceQueuesApi.md#updateservicequeueasync) | **PUT** /api/v2/ServicesService/ServiceQueues/{serviceQueueId} | Update a service queue
*ServicesApi* | [**createServiceAsync**](docs/ServicesApi.md#createserviceasync) | **POST** /api/v2/ServicesService/Services | Create a service
*ServicesApi* | [**deleteServiceAsync**](docs/ServicesApi.md#deleteserviceasync) | **DELETE** /api/v2/ServicesService/Services/{serviceId} | Delete a service
*ServicesApi* | [**getServiceByIdAsync**](docs/ServicesApi.md#getservicebyidasync) | **GET** /api/v2/ServicesService/Services/{serviceId} | Get a service by ID
*ServicesApi* | [**getServicesAsync**](docs/ServicesApi.md#getservicesasync) | **GET** /api/v2/ServicesService/Services | Get all services
*ServicesApi* | [**getServicesCountAsync**](docs/ServicesApi.md#getservicescountasync) | **GET** /api/v2/ServicesService/Services/Count | Get services count
*ServicesApi* | [**updateServiceAsync**](docs/ServicesApi.md#updateserviceasync) | **PUT** /api/v2/ServicesService/Services/{serviceId} | Update a service


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [Envelope](docs/Envelope.md)
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
 - [ServiceCaseCreateDto](docs/ServiceCaseCreateDto.md)
 - [ServiceCaseDto](docs/ServiceCaseDto.md)
 - [ServiceCaseDtoEnvelope](docs/ServiceCaseDtoEnvelope.md)
 - [ServiceCaseDtoIReadOnlyListEnvelope](docs/ServiceCaseDtoIReadOnlyListEnvelope.md)
 - [ServiceCaseTypeCreateDto](docs/ServiceCaseTypeCreateDto.md)
 - [ServiceCaseTypeDto](docs/ServiceCaseTypeDto.md)
 - [ServiceCaseTypeDtoEnvelope](docs/ServiceCaseTypeDtoEnvelope.md)
 - [ServiceCaseTypeDtoIReadOnlyListEnvelope](docs/ServiceCaseTypeDtoIReadOnlyListEnvelope.md)
 - [ServiceCaseTypeUpdateDto](docs/ServiceCaseTypeUpdateDto.md)
 - [ServiceCaseUpdateDto](docs/ServiceCaseUpdateDto.md)
 - [ServiceCreateDto](docs/ServiceCreateDto.md)
 - [ServiceDto](docs/ServiceDto.md)
 - [ServiceDtoEnvelope](docs/ServiceDtoEnvelope.md)
 - [ServiceDtoIReadOnlyListEnvelope](docs/ServiceDtoIReadOnlyListEnvelope.md)
 - [ServiceLevelAgreementCreateDto](docs/ServiceLevelAgreementCreateDto.md)
 - [ServiceLevelAgreementDto](docs/ServiceLevelAgreementDto.md)
 - [ServiceLevelAgreementDtoEnvelope](docs/ServiceLevelAgreementDtoEnvelope.md)
 - [ServiceLevelAgreementDtoIReadOnlyListEnvelope](docs/ServiceLevelAgreementDtoIReadOnlyListEnvelope.md)
 - [ServiceLevelAgreementUpdateDto](docs/ServiceLevelAgreementUpdateDto.md)
 - [ServiceLevelCreateDto](docs/ServiceLevelCreateDto.md)
 - [ServiceLevelDto](docs/ServiceLevelDto.md)
 - [ServiceLevelDtoEnvelope](docs/ServiceLevelDtoEnvelope.md)
 - [ServiceLevelDtoIReadOnlyListEnvelope](docs/ServiceLevelDtoIReadOnlyListEnvelope.md)
 - [ServiceLevelUpdateDto](docs/ServiceLevelUpdateDto.md)
 - [ServiceQueueCreateDto](docs/ServiceQueueCreateDto.md)
 - [ServiceQueueDto](docs/ServiceQueueDto.md)
 - [ServiceQueueDtoEnvelope](docs/ServiceQueueDtoEnvelope.md)
 - [ServiceQueueDtoIReadOnlyListEnvelope](docs/ServiceQueueDtoIReadOnlyListEnvelope.md)
 - [ServiceQueueUpdateDto](docs/ServiceQueueUpdateDto.md)
 - [ServiceUpdateDto](docs/ServiceUpdateDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

