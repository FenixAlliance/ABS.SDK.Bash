# SalesService Bash client

## Overview

This is a Bash client script for accessing SalesService service.

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
*LoyaltyProgramsApi* | [**countLoyaltyProgramsAsync**](docs/LoyaltyProgramsApi.md#countloyaltyprogramsasync) | **GET** /api/v2/SalesService/LoyaltyPrograms/Count | Get loyalty programs count
*LoyaltyProgramsApi* | [**createLoyaltyProgramAsync**](docs/LoyaltyProgramsApi.md#createloyaltyprogramasync) | **POST** /api/v2/SalesService/LoyaltyPrograms | Create a loyalty program
*LoyaltyProgramsApi* | [**deleteLoyaltyProgramAsync**](docs/LoyaltyProgramsApi.md#deleteloyaltyprogramasync) | **DELETE** /api/v2/SalesService/LoyaltyPrograms/{loyaltyProgramId} | Delete a loyalty program
*LoyaltyProgramsApi* | [**getLoyaltyProgramAsync**](docs/LoyaltyProgramsApi.md#getloyaltyprogramasync) | **GET** /api/v2/SalesService/LoyaltyPrograms/{loyaltyProgramId} | Get loyalty program by ID
*LoyaltyProgramsApi* | [**getLoyaltyProgramsAsync**](docs/LoyaltyProgramsApi.md#getloyaltyprogramsasync) | **GET** /api/v2/SalesService/LoyaltyPrograms | Get loyalty programs
*LoyaltyProgramsApi* | [**updateLoyaltyProgramAsync**](docs/LoyaltyProgramsApi.md#updateloyaltyprogramasync) | **PUT** /api/v2/SalesService/LoyaltyPrograms/{loyaltyProgramId} | Update a loyalty program
*MarginsApi* | [**getQuoteAsync**](docs/MarginsApi.md#getquoteasync) | **GET** /api/v2/SalesService/Margins/{marginId}/Details | Get margin details by ID
*PointOfSalesApi* | [**countPointOfSalesAsync**](docs/PointOfSalesApi.md#countpointofsalesasync) | **GET** /api/v2/SalesService/PointOfSales/Count | Get point of sales count
*PointOfSalesApi* | [**createPointOfSaleAsync**](docs/PointOfSalesApi.md#createpointofsaleasync) | **POST** /api/v2/SalesService/PointOfSales | Create a point of sale
*PointOfSalesApi* | [**deletePointOfSaleAsync**](docs/PointOfSalesApi.md#deletepointofsaleasync) | **DELETE** /api/v2/SalesService/PointOfSales/{pointOfSaleId} | Delete a point of sale
*PointOfSalesApi* | [**getPointOfSaleAsync**](docs/PointOfSalesApi.md#getpointofsaleasync) | **GET** /api/v2/SalesService/PointOfSales/{pointOfSaleId} | Get point of sale by ID
*PointOfSalesApi* | [**getPointOfSalesAsync**](docs/PointOfSalesApi.md#getpointofsalesasync) | **GET** /api/v2/SalesService/PointOfSales | Get point of sales
*PointOfSalesApi* | [**updatePointOfSaleAsync**](docs/PointOfSalesApi.md#updatepointofsaleasync) | **PUT** /api/v2/SalesService/PointOfSales/{pointOfSaleId} | Update a point of sale
*SalesLiteraturesApi* | [**countSalesLiteraturesAsync**](docs/SalesLiteraturesApi.md#countsalesliteraturesasync) | **GET** /api/v2/SalesService/SalesLiteratures/Count | Get sales literatures count
*SalesLiteraturesApi* | [**createSalesLiteratureAsync**](docs/SalesLiteraturesApi.md#createsalesliteratureasync) | **POST** /api/v2/SalesService/SalesLiteratures | Create a sales literature
*SalesLiteraturesApi* | [**deleteSalesLiteratureAsync**](docs/SalesLiteraturesApi.md#deletesalesliteratureasync) | **DELETE** /api/v2/SalesService/SalesLiteratures/{salesLiteratureId} | Delete a sales literature
*SalesLiteraturesApi* | [**getExtendedSalesLiteraturesAsync**](docs/SalesLiteraturesApi.md#getextendedsalesliteraturesasync) | **GET** /api/v2/SalesService/SalesLiteratures/Extended | Get extended sales literatures
*SalesLiteraturesApi* | [**getSalesLiteratureAsync**](docs/SalesLiteraturesApi.md#getsalesliteratureasync) | **GET** /api/v2/SalesService/SalesLiteratures/{salesLiteratureId} | Get sales literature by ID
*SalesLiteraturesApi* | [**getSalesLiteraturesAsync**](docs/SalesLiteraturesApi.md#getsalesliteraturesasync) | **GET** /api/v2/SalesService/SalesLiteratures | Get sales literatures
*SalesLiteraturesApi* | [**updateSalesLiteratureAsync**](docs/SalesLiteraturesApi.md#updatesalesliteratureasync) | **PUT** /api/v2/SalesService/SalesLiteratures/{salesLiteratureId} | Update a sales literature
*StoresApi* | [**countStoresAsync**](docs/StoresApi.md#countstoresasync) | **GET** /api/v2/SalesService/Stores/Count | Get stores count
*StoresApi* | [**createStoreAsync**](docs/StoresApi.md#createstoreasync) | **POST** /api/v2/SalesService/Stores | Create a store
*StoresApi* | [**deleteStoreAsync**](docs/StoresApi.md#deletestoreasync) | **DELETE** /api/v2/SalesService/Stores/{storeId} | Delete a store
*StoresApi* | [**getStoreAsync**](docs/StoresApi.md#getstoreasync) | **GET** /api/v2/SalesService/Stores/{storeId} | Get store by ID
*StoresApi* | [**getStoresAsync**](docs/StoresApi.md#getstoresasync) | **GET** /api/v2/SalesService/Stores | Get stores
*StoresApi* | [**updateStoreAsync**](docs/StoresApi.md#updatestoreasync) | **PUT** /api/v2/SalesService/Stores/{storeId} | Update a store


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ExtendedSalesLiteratureDto](docs/ExtendedSalesLiteratureDto.md)
 - [ExtendedSalesLiteratureDtoListEnvelope](docs/ExtendedSalesLiteratureDtoListEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [LoyaltyProgramCreateDto](docs/LoyaltyProgramCreateDto.md)
 - [LoyaltyProgramDto](docs/LoyaltyProgramDto.md)
 - [LoyaltyProgramDtoEnvelope](docs/LoyaltyProgramDtoEnvelope.md)
 - [LoyaltyProgramDtoListEnvelope](docs/LoyaltyProgramDtoListEnvelope.md)
 - [LoyaltyProgramUpdateDto](docs/LoyaltyProgramUpdateDto.md)
 - [PointOfSaleCreateDto](docs/PointOfSaleCreateDto.md)
 - [PointOfSaleDto](docs/PointOfSaleDto.md)
 - [PointOfSaleDtoEnvelope](docs/PointOfSaleDtoEnvelope.md)
 - [PointOfSaleDtoListEnvelope](docs/PointOfSaleDtoListEnvelope.md)
 - [PointOfSaleUpdateDto](docs/PointOfSaleUpdateDto.md)
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
 - [StoreCreateDto](docs/StoreCreateDto.md)
 - [StoreDto](docs/StoreDto.md)
 - [StoreDtoEnvelope](docs/StoreDtoEnvelope.md)
 - [StoreDtoListEnvelope](docs/StoreDtoListEnvelope.md)
 - [StoreUpdateDto](docs/StoreUpdateDto.md)
 - [TenantDto](docs/TenantDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

