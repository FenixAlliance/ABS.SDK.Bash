# ManufacturingService Bash client

## Overview

This is a Bash client script for accessing ManufacturingService service.

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
*ProductionPlansApi* | [**createProductionPlanAsync**](docs/ProductionPlansApi.md#createproductionplanasync) | **POST** /api/v2/ManufacturingService/ProductionPlans | Create a new production plan
*ProductionPlansApi* | [**deleteProductionPlanAsync**](docs/ProductionPlansApi.md#deleteproductionplanasync) | **DELETE** /api/v2/ManufacturingService/ProductionPlans/{id} | Delete a production plan
*ProductionPlansApi* | [**getProductionPlanByIdAsync**](docs/ProductionPlansApi.md#getproductionplanbyidasync) | **GET** /api/v2/ManufacturingService/ProductionPlans/{id} | Get production plan by ID
*ProductionPlansApi* | [**getProductionPlansAsync**](docs/ProductionPlansApi.md#getproductionplansasync) | **GET** /api/v2/ManufacturingService/ProductionPlans | Get all production plans
*ProductionPlansApi* | [**getProductionPlansCountAsync**](docs/ProductionPlansApi.md#getproductionplanscountasync) | **GET** /api/v2/ManufacturingService/ProductionPlans/Count | Get production plans count
*ProductionPlansApi* | [**patchProductionPlanAsync**](docs/ProductionPlansApi.md#patchproductionplanasync) | **PATCH** /api/v2/ManufacturingService/ProductionPlans/{id} | Patch a production plan
*ProductionPlansApi* | [**updateProductionPlanAsync**](docs/ProductionPlansApi.md#updateproductionplanasync) | **PUT** /api/v2/ManufacturingService/ProductionPlans/{id} | Update a production plan
*WorkOrderTypesApi* | [**createWorkOrderTypeAsync**](docs/WorkOrderTypesApi.md#createworkordertypeasync) | **POST** /api/v2/ManufacturingService/WorkOrderTypes | Create a new work order type
*WorkOrderTypesApi* | [**deleteWorkOrderTypeAsync**](docs/WorkOrderTypesApi.md#deleteworkordertypeasync) | **DELETE** /api/v2/ManufacturingService/WorkOrderTypes/{id} | Delete a work order type
*WorkOrderTypesApi* | [**getWorkOrderTypeByIdAsync**](docs/WorkOrderTypesApi.md#getworkordertypebyidasync) | **GET** /api/v2/ManufacturingService/WorkOrderTypes/{id} | Get work order type by ID
*WorkOrderTypesApi* | [**getWorkOrderTypesAsync**](docs/WorkOrderTypesApi.md#getworkordertypesasync) | **GET** /api/v2/ManufacturingService/WorkOrderTypes | Get all work order types
*WorkOrderTypesApi* | [**getWorkOrderTypesCountAsync**](docs/WorkOrderTypesApi.md#getworkordertypescountasync) | **GET** /api/v2/ManufacturingService/WorkOrderTypes/Count | Get work order types count
*WorkOrderTypesApi* | [**patchWorkOrderTypeAsync**](docs/WorkOrderTypesApi.md#patchworkordertypeasync) | **PATCH** /api/v2/ManufacturingService/WorkOrderTypes/{id} | Patch a work order type
*WorkOrderTypesApi* | [**updateWorkOrderTypeAsync**](docs/WorkOrderTypesApi.md#updateworkordertypeasync) | **PUT** /api/v2/ManufacturingService/WorkOrderTypes/{id} | Update a work order type
*WorkOrdersApi* | [**createWorkOrderAsync**](docs/WorkOrdersApi.md#createworkorderasync) | **POST** /api/v2/ManufacturingService/WorkOrders | Create a new work order
*WorkOrdersApi* | [**deleteWorkOrderAsync**](docs/WorkOrdersApi.md#deleteworkorderasync) | **DELETE** /api/v2/ManufacturingService/WorkOrders/{id} | Delete a work order
*WorkOrdersApi* | [**getWorkOrderByIdAsync**](docs/WorkOrdersApi.md#getworkorderbyidasync) | **GET** /api/v2/ManufacturingService/WorkOrders/{id} | Get work order by ID
*WorkOrdersApi* | [**getWorkOrdersAsync**](docs/WorkOrdersApi.md#getworkordersasync) | **GET** /api/v2/ManufacturingService/WorkOrders | Get all work orders
*WorkOrdersApi* | [**getWorkOrdersCountAsync**](docs/WorkOrdersApi.md#getworkorderscountasync) | **GET** /api/v2/ManufacturingService/WorkOrders/Count | Get work orders count
*WorkOrdersApi* | [**patchWorkOrderAsync**](docs/WorkOrdersApi.md#patchworkorderasync) | **PATCH** /api/v2/ManufacturingService/WorkOrders/{id} | Patch a work order
*WorkOrdersApi* | [**updateWorkOrderAsync**](docs/WorkOrdersApi.md#updateworkorderasync) | **PUT** /api/v2/ManufacturingService/WorkOrders/{id} | Update a work order
*WorkstationsApi* | [**createWorkstationAsync**](docs/WorkstationsApi.md#createworkstationasync) | **POST** /api/v2/ManufacturingService/Workstations | Create a new workstation
*WorkstationsApi* | [**deleteWorkstationAsync**](docs/WorkstationsApi.md#deleteworkstationasync) | **DELETE** /api/v2/ManufacturingService/Workstations/{id} | Delete a workstation
*WorkstationsApi* | [**getWorkstationByIdAsync**](docs/WorkstationsApi.md#getworkstationbyidasync) | **GET** /api/v2/ManufacturingService/Workstations/{id} | Get workstation by ID
*WorkstationsApi* | [**getWorkstationsAsync**](docs/WorkstationsApi.md#getworkstationsasync) | **GET** /api/v2/ManufacturingService/Workstations | Get all workstations
*WorkstationsApi* | [**getWorkstationsCountAsync**](docs/WorkstationsApi.md#getworkstationscountasync) | **GET** /api/v2/ManufacturingService/Workstations/Count | Get workstations count
*WorkstationsApi* | [**patchWorkstationAsync**](docs/WorkstationsApi.md#patchworkstationasync) | **PATCH** /api/v2/ManufacturingService/Workstations/{id} | Patch a workstation
*WorkstationsApi* | [**updateWorkstationAsync**](docs/WorkstationsApi.md#updateworkstationasync) | **PUT** /api/v2/ManufacturingService/Workstations/{id} | Update a workstation


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
 - [PatchOperation](docs/PatchOperation.md)
 - [ProductionPlanCreateDto](docs/ProductionPlanCreateDto.md)
 - [ProductionPlanDto](docs/ProductionPlanDto.md)
 - [ProductionPlanDtoCollectionQueryParameters](docs/ProductionPlanDtoCollectionQueryParameters.md)
 - [ProductionPlanDtoListEnvelope](docs/ProductionPlanDtoListEnvelope.md)
 - [ProductionPlanUpdateDto](docs/ProductionPlanUpdateDto.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)
 - [WorkOrderCreateDto](docs/WorkOrderCreateDto.md)
 - [WorkOrderDto](docs/WorkOrderDto.md)
 - [WorkOrderDtoCollectionQueryParameters](docs/WorkOrderDtoCollectionQueryParameters.md)
 - [WorkOrderDtoListEnvelope](docs/WorkOrderDtoListEnvelope.md)
 - [WorkOrderTypeCreateDto](docs/WorkOrderTypeCreateDto.md)
 - [WorkOrderTypeDto](docs/WorkOrderTypeDto.md)
 - [WorkOrderTypeDtoCollectionQueryParameters](docs/WorkOrderTypeDtoCollectionQueryParameters.md)
 - [WorkOrderTypeDtoListEnvelope](docs/WorkOrderTypeDtoListEnvelope.md)
 - [WorkOrderTypeUpdateDto](docs/WorkOrderTypeUpdateDto.md)
 - [WorkOrderUpdateDto](docs/WorkOrderUpdateDto.md)
 - [WorkstationCreateDto](docs/WorkstationCreateDto.md)
 - [WorkstationDto](docs/WorkstationDto.md)
 - [WorkstationDtoCollectionQueryParameters](docs/WorkstationDtoCollectionQueryParameters.md)
 - [WorkstationDtoListEnvelope](docs/WorkstationDtoListEnvelope.md)
 - [WorkstationUpdateDto](docs/WorkstationUpdateDto.md)


## Documentation For Authorization

 All endpoints do not require authorization.

