# DealsService Bash client

## Overview

This is a Bash client script for accessing DealsService service.

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
*DealUnitFlowsApi* | [**createDealUnitFlowAsync**](docs/DealUnitFlowsApi.md#createdealunitflowasync) | **POST** /api/v2/DealsService/DealUnitFlows | Create a deal unit flow
*DealUnitFlowsApi* | [**createDealUnitFlowStageAsync**](docs/DealUnitFlowsApi.md#createdealunitflowstageasync) | **POST** /api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}/Stages | Create a deal unit flow stage
*DealUnitFlowsApi* | [**deleteDealUnitFlowAsync**](docs/DealUnitFlowsApi.md#deletedealunitflowasync) | **DELETE** /api/v2/DealsService/DealUnitFlows/{dealUnitFlowId} | Delete a deal unit flow
*DealUnitFlowsApi* | [**deleteDealUnitFlowStageAsync**](docs/DealUnitFlowsApi.md#deletedealunitflowstageasync) | **DELETE** /api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}/Stages/{dealUnitFlowStageId} | Delete a deal unit flow stage
*DealUnitFlowsApi* | [**getDealUnitFlowAsync**](docs/DealUnitFlowsApi.md#getdealunitflowasync) | **GET** /api/v2/DealsService/DealUnitFlows/{dealUnitFlowId} | Get deal unit flow by ID
*DealUnitFlowsApi* | [**getDealUnitFlowStageAsync**](docs/DealUnitFlowsApi.md#getdealunitflowstageasync) | **GET** /api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}/Stages/{dealUnitFlowStageId} | Get a deal unit flow stage by ID
*DealUnitFlowsApi* | [**getDealUnitFlowStagesAsync**](docs/DealUnitFlowsApi.md#getdealunitflowstagesasync) | **GET** /api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}/Stages | Get stages for a deal unit flow
*DealUnitFlowsApi* | [**getDealUnitFlowStagesCountAsync**](docs/DealUnitFlowsApi.md#getdealunitflowstagescountasync) | **GET** /api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}/Stages/Count | Get stages count for a deal unit flow
*DealUnitFlowsApi* | [**getDealUnitFlowsAsync**](docs/DealUnitFlowsApi.md#getdealunitflowsasync) | **GET** /api/v2/DealsService/DealUnitFlows | Get deal unit flows
*DealUnitFlowsApi* | [**getDealUnitFlowsCountAsync**](docs/DealUnitFlowsApi.md#getdealunitflowscountasync) | **GET** /api/v2/DealsService/DealUnitFlows/Count | Get deal unit flows count
*DealUnitFlowsApi* | [**updateDealUnitFlowAsync**](docs/DealUnitFlowsApi.md#updatedealunitflowasync) | **PUT** /api/v2/DealsService/DealUnitFlows/{dealUnitFlowId} | Update a deal unit flow
*DealUnitFlowsApi* | [**updateDealUnitFlowStageAsync**](docs/DealUnitFlowsApi.md#updatedealunitflowstageasync) | **PUT** /api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}/Stages/{dealUnitFlowStageId} | Update a deal unit flow stage
*DealUnitsApi* | [**calculateDealUnitAsync**](docs/DealUnitsApi.md#calculatedealunitasync) | **PUT** /api/v2/DealsService/DealUnits/{dealUnitId}/Calculate | Calculate a deal unit
*DealUnitsApi* | [**calculateDealUnitLineAsync**](docs/DealUnitsApi.md#calculatedealunitlineasync) | **PUT** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId}/Calculate | Calculate a deal unit line
*DealUnitsApi* | [**createDealUnitAsync**](docs/DealUnitsApi.md#createdealunitasync) | **POST** /api/v2/DealsService/DealUnits | Create a deal unit
*DealUnitsApi* | [**createGetDealUnitLinesAsync**](docs/DealUnitsApi.md#creategetdealunitlinesasync) | **POST** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines | Create a deal unit line
*DealUnitsApi* | [**deleteDealUnitAsync**](docs/DealUnitsApi.md#deletedealunitasync) | **DELETE** /api/v2/DealsService/DealUnits/{dealUnitId} | Delete a deal unit
*DealUnitsApi* | [**deleteDealUnitPriceAsync**](docs/DealUnitsApi.md#deletedealunitpriceasync) | **DELETE** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId} | Delete a deal unit line
*DealUnitsApi* | [**getDealUnitAsync**](docs/DealUnitsApi.md#getdealunitasync) | **GET** /api/v2/DealsService/DealUnits/{dealUnitId} | Get deal unit by ID
*DealUnitsApi* | [**getDealUnitLinesAsync**](docs/DealUnitsApi.md#getdealunitlinesasync) | **GET** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines | Get deal unit lines
*DealUnitsApi* | [**getDealUnitLinesCountAsync**](docs/DealUnitsApi.md#getdealunitlinescountasync) | **GET** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/Count | Get deal unit lines count
*DealUnitsApi* | [**getDealUnitPriceAsync**](docs/DealUnitsApi.md#getdealunitpriceasync) | **GET** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId} | Get a deal unit line by ID
*DealUnitsApi* | [**getDealUnitsAsync**](docs/DealUnitsApi.md#getdealunitsasync) | **GET** /api/v2/DealsService/DealUnits | Get deal units
*DealUnitsApi* | [**getDealUnitsCountAsync**](docs/DealUnitsApi.md#getdealunitscountasync) | **GET** /api/v2/DealsService/DealUnits/Count | Get deal units count
*DealUnitsApi* | [**getExtendedDealUnitAsync**](docs/DealUnitsApi.md#getextendeddealunitasync) | **GET** /api/v2/DealsService/DealUnits/{dealUnitId}/Extended | Get extended deal unit by ID
*DealUnitsApi* | [**getExtendedDealUnitsAsync**](docs/DealUnitsApi.md#getextendeddealunitsasync) | **GET** /api/v2/DealsService/DealUnits/Extended | Get extended deal units
*DealUnitsApi* | [**updateDealUnitAsync**](docs/DealUnitsApi.md#updatedealunitasync) | **PUT** /api/v2/DealsService/DealUnits/{dealUnitId} | Update a deal unit
*DealUnitsApi* | [**updateDealUnitPriceAsync**](docs/DealUnitsApi.md#updatedealunitpriceasync) | **PUT** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId} | Update a deal unit line
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
*SalesLiteraturesApi* | [**countSalesLiteraturesAsync**](docs/SalesLiteraturesApi.md#countsalesliteraturesasync) | **GET** /api/v2/DealsService/SalesLiteratures/Count | Get sales literatures count
*SalesLiteraturesApi* | [**createSalesLiteratureAsync**](docs/SalesLiteraturesApi.md#createsalesliteratureasync) | **POST** /api/v2/DealsService/SalesLiteratures | Create a sales literature
*SalesLiteraturesApi* | [**deleteSalesLiteratureAsync**](docs/SalesLiteraturesApi.md#deletesalesliteratureasync) | **DELETE** /api/v2/DealsService/SalesLiteratures/{salesLiteratureId} | Delete a sales literature
*SalesLiteraturesApi* | [**getExtendedSalesLiteraturesAsync**](docs/SalesLiteraturesApi.md#getextendedsalesliteraturesasync) | **GET** /api/v2/DealsService/SalesLiteratures/Extended | Get extended sales literatures
*SalesLiteraturesApi* | [**getSalesLiteratureAsync**](docs/SalesLiteraturesApi.md#getsalesliteratureasync) | **GET** /api/v2/DealsService/SalesLiteratures/{salesLiteratureId} | Get sales literature by ID
*SalesLiteraturesApi* | [**getSalesLiteraturesAsync**](docs/SalesLiteraturesApi.md#getsalesliteraturesasync) | **GET** /api/v2/DealsService/SalesLiteratures | Get sales literatures
*SalesLiteraturesApi* | [**updateSalesLiteratureAsync**](docs/SalesLiteraturesApi.md#updatesalesliteratureasync) | **PUT** /api/v2/DealsService/SalesLiteratures/{salesLiteratureId} | Update a sales literature


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [ContactDto](docs/ContactDto.md)
 - [CurrencyId](docs/CurrencyId.md)
 - [DealUnitCreateDto](docs/DealUnitCreateDto.md)
 - [DealUnitDto](docs/DealUnitDto.md)
 - [DealUnitDtoEnvelope](docs/DealUnitDtoEnvelope.md)
 - [DealUnitDtoListEnvelope](docs/DealUnitDtoListEnvelope.md)
 - [DealUnitFlowCreateDto](docs/DealUnitFlowCreateDto.md)
 - [DealUnitFlowDto](docs/DealUnitFlowDto.md)
 - [DealUnitFlowDtoEnvelope](docs/DealUnitFlowDtoEnvelope.md)
 - [DealUnitFlowDtoListEnvelope](docs/DealUnitFlowDtoListEnvelope.md)
 - [DealUnitFlowStageCreateDto](docs/DealUnitFlowStageCreateDto.md)
 - [DealUnitFlowStageDto](docs/DealUnitFlowStageDto.md)
 - [DealUnitFlowStageDtoEnvelope](docs/DealUnitFlowStageDtoEnvelope.md)
 - [DealUnitFlowStageDtoListEnvelope](docs/DealUnitFlowStageDtoListEnvelope.md)
 - [DealUnitFlowStageUpdateDto](docs/DealUnitFlowStageUpdateDto.md)
 - [DealUnitFlowUpdateDto](docs/DealUnitFlowUpdateDto.md)
 - [DealUnitLineCreateDto](docs/DealUnitLineCreateDto.md)
 - [DealUnitLineDto](docs/DealUnitLineDto.md)
 - [DealUnitLineDtoEnvelope](docs/DealUnitLineDtoEnvelope.md)
 - [DealUnitLineDtoListEnvelope](docs/DealUnitLineDtoListEnvelope.md)
 - [DealUnitLineUpdateDto](docs/DealUnitLineUpdateDto.md)
 - [DealUnitUpdateDto](docs/DealUnitUpdateDto.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ExtendedDealUnitDto](docs/ExtendedDealUnitDto.md)
 - [ExtendedDealUnitDtoEnvelope](docs/ExtendedDealUnitDtoEnvelope.md)
 - [ExtendedDealUnitDtoListEnvelope](docs/ExtendedDealUnitDtoListEnvelope.md)
 - [ExtendedSalesLiteratureDto](docs/ExtendedSalesLiteratureDto.md)
 - [ExtendedSalesLiteratureDtoListEnvelope](docs/ExtendedSalesLiteratureDtoListEnvelope.md)
 - [ForexRates](docs/ForexRates.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [Money](docs/Money.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [SalesLiteratureCreateDto](docs/SalesLiteratureCreateDto.md)
 - [SalesLiteratureDto](docs/SalesLiteratureDto.md)
 - [SalesLiteratureDtoEnvelope](docs/SalesLiteratureDtoEnvelope.md)
 - [SalesLiteratureDtoListEnvelope](docs/SalesLiteratureDtoListEnvelope.md)
 - [SalesLiteratureTypeDto](docs/SalesLiteratureTypeDto.md)
 - [SalesLiteratureUpdateDto](docs/SalesLiteratureUpdateDto.md)
 - [TenantDto](docs/TenantDto.md)
 - [TenantEnrollmentDto](docs/TenantEnrollmentDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)
 - [UserDto](docs/UserDto.md)


## Documentation For Authorization

 All endpoints do not require authorization.

