# AssetsService Bash client

## Overview

This is a Bash client script for accessing AssetsService service.

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
*AssetCategoriesApi* | [**createAssetCategory**](docs/AssetCategoriesApi.md#createassetcategory) | **POST** /api/v2/AssetsService/AssetCategories | Creates a new asset category
*AssetCategoriesApi* | [**deleteAssetCategory**](docs/AssetCategoriesApi.md#deleteassetcategory) | **DELETE** /api/v2/AssetsService/AssetCategories/{categoryId} | Deletes an asset category
*AssetCategoriesApi* | [**getAssetCategories**](docs/AssetCategoriesApi.md#getassetcategories) | **GET** /api/v2/AssetsService/AssetCategories | Gets all asset categories for the current tenant
*AssetCategoriesApi* | [**getAssetCategoriesCount**](docs/AssetCategoriesApi.md#getassetcategoriescount) | **GET** /api/v2/AssetsService/AssetCategories/count | Gets the count of asset categories
*AssetCategoriesApi* | [**getAssetCategory**](docs/AssetCategoriesApi.md#getassetcategory) | **GET** /api/v2/AssetsService/AssetCategories/{categoryId} | Gets a specific asset category
*AssetCategoriesApi* | [**patchAssetCategory**](docs/AssetCategoriesApi.md#patchassetcategory) | **PATCH** /api/v2/AssetsService/AssetCategories/{categoryId} | Partially updates an existing asset category
*AssetCategoriesApi* | [**updateAssetCategory**](docs/AssetCategoriesApi.md#updateassetcategory) | **PUT** /api/v2/AssetsService/AssetCategories/{categoryId} | Updates an existing asset category
*AssetTransfersApi* | [**createAssetTransferAsync**](docs/AssetTransfersApi.md#createassettransferasync) | **POST** /api/v2/AssetsService/AssetTransfers | Creates a new asset transfer
*AssetTransfersApi* | [**deleteAssetTransferAsync**](docs/AssetTransfersApi.md#deleteassettransferasync) | **DELETE** /api/v2/AssetsService/AssetTransfers/{transferId} | Deletes an asset transfer
*AssetTransfersApi* | [**getAssetTransferAsync**](docs/AssetTransfersApi.md#getassettransferasync) | **GET** /api/v2/AssetsService/AssetTransfers/{transferId} | Gets a single asset transfer by ID
*AssetTransfersApi* | [**getAssetTransfersAsync**](docs/AssetTransfersApi.md#getassettransfersasync) | **GET** /api/v2/AssetsService/AssetTransfers | Gets a list of asset transfers
*AssetTransfersApi* | [**getAssetTransfersCountAsync**](docs/AssetTransfersApi.md#getassettransferscountasync) | **GET** /api/v2/AssetsService/AssetTransfers/Count | Gets the count of asset transfers
*AssetTransfersApi* | [**patchAssetTransferAsync**](docs/AssetTransfersApi.md#patchassettransferasync) | **PATCH** /api/v2/AssetsService/AssetTransfers/{transferId} | Partially updates an existing asset transfer
*AssetTransfersApi* | [**updateAssetTransferAsync**](docs/AssetTransfersApi.md#updateassettransferasync) | **PUT** /api/v2/AssetsService/AssetTransfers/{transferId} | Updates an existing asset transfer
*AssetTypesApi* | [**createAssetType**](docs/AssetTypesApi.md#createassettype) | **POST** /api/v2/AssetsService/AssetTypes | Creates a new asset type
*AssetTypesApi* | [**deleteAssetType**](docs/AssetTypesApi.md#deleteassettype) | **DELETE** /api/v2/AssetsService/AssetTypes/{typeId} | Deletes an asset type
*AssetTypesApi* | [**getAssetType**](docs/AssetTypesApi.md#getassettype) | **GET** /api/v2/AssetsService/AssetTypes/{typeId} | Gets a specific asset type
*AssetTypesApi* | [**getAssetTypes**](docs/AssetTypesApi.md#getassettypes) | **GET** /api/v2/AssetsService/AssetTypes | Gets all asset types for the current tenant
*AssetTypesApi* | [**getAssetTypesCount**](docs/AssetTypesApi.md#getassettypescount) | **GET** /api/v2/AssetsService/AssetTypes/count | Gets the count of asset types
*AssetTypesApi* | [**patchAssetType**](docs/AssetTypesApi.md#patchassettype) | **PATCH** /api/v2/AssetsService/AssetTypes/{typeId} | Partially updates an existing asset type
*AssetTypesApi* | [**updateAssetType**](docs/AssetTypesApi.md#updateassettype) | **PUT** /api/v2/AssetsService/AssetTypes/{typeId} | Updates an existing asset type
*AssetsApi* | [**createAsset**](docs/AssetsApi.md#createasset) | **POST** /api/v2/AssetsService/Assets | Creates a new asset
*AssetsApi* | [**createAssetAssetCategory**](docs/AssetsApi.md#createassetassetcategory) | **POST** /api/v2/AssetsService/Assets/Categories | Creates a new asset category
*AssetsApi* | [**createAssetDepreciationRecord**](docs/AssetsApi.md#createassetdepreciationrecord) | **POST** /api/v2/AssetsService/Assets/{assetId}/DepreciationRecords | Creates a new depreciation record for an asset
*AssetsApi* | [**createAssetRepair**](docs/AssetsApi.md#createassetrepair) | **POST** /api/v2/AssetsService/Assets/{assetId}/Repairs | Creates a new repair for an asset
*AssetsApi* | [**createAssetTransfer**](docs/AssetsApi.md#createassettransfer) | **POST** /api/v2/AssetsService/Assets/{assetId}/Transfers | Creates a new transfer for an asset
*AssetsApi* | [**createAssetValueAmend**](docs/AssetsApi.md#createassetvalueamend) | **POST** /api/v2/AssetsService/Assets/{assetId}/ValueAmends | Creates a new value amendment for an asset
*AssetsApi* | [**deleteAsset**](docs/AssetsApi.md#deleteasset) | **DELETE** /api/v2/AssetsService/Assets/{assetId} | Deletes an existing asset
*AssetsApi* | [**deleteAssetAssetCategory**](docs/AssetsApi.md#deleteassetassetcategory) | **DELETE** /api/v2/AssetsService/Assets/Categories/{categoryId} | Deletes an existing asset category
*AssetsApi* | [**deleteAssetDepreciationRecord**](docs/AssetsApi.md#deleteassetdepreciationrecord) | **DELETE** /api/v2/AssetsService/Assets/{assetId}/DepreciationRecords/{recordId} | Deletes a depreciation record for an asset
*AssetsApi* | [**deleteAssetRepair**](docs/AssetsApi.md#deleteassetrepair) | **DELETE** /api/v2/AssetsService/Assets/{assetId}/Repairs/{repairId} | Deletes a repair for an asset
*AssetsApi* | [**deleteAssetTransfer**](docs/AssetsApi.md#deleteassettransfer) | **DELETE** /api/v2/AssetsService/Assets/{assetId}/Transfers/{transferId} | Deletes a transfer for an asset
*AssetsApi* | [**deleteAssetValueAmend**](docs/AssetsApi.md#deleteassetvalueamend) | **DELETE** /api/v2/AssetsService/Assets/{assetId}/ValueAmends/{amendId} | Deletes a value amendment for an asset
*AssetsApi* | [**getAsset**](docs/AssetsApi.md#getasset) | **GET** /api/v2/AssetsService/Assets/{assetId} | Gets a specific asset by ID
*AssetsApi* | [**getAssetAssetCategories**](docs/AssetsApi.md#getassetassetcategories) | **GET** /api/v2/AssetsService/Assets/Categories | Gets all asset categories
*AssetsApi* | [**getAssetAssetCategoriesCount**](docs/AssetsApi.md#getassetassetcategoriescount) | **GET** /api/v2/AssetsService/Assets/Categories/count | Gets the count of asset categories
*AssetsApi* | [**getAssetAssetCategory**](docs/AssetsApi.md#getassetassetcategory) | **GET** /api/v2/AssetsService/Assets/Categories/{categoryId} | Gets a specific asset category
*AssetsApi* | [**getAssetDepreciationRecord**](docs/AssetsApi.md#getassetdepreciationrecord) | **GET** /api/v2/AssetsService/Assets/{assetId}/DepreciationRecords/{recordId} | Gets a specific depreciation record for an asset
*AssetsApi* | [**getAssetDepreciationRecords**](docs/AssetsApi.md#getassetdepreciationrecords) | **GET** /api/v2/AssetsService/Assets/{assetId}/DepreciationRecords | Gets depreciation records for a specific asset
*AssetsApi* | [**getAssetDepreciationRecordsCount**](docs/AssetsApi.md#getassetdepreciationrecordscount) | **GET** /api/v2/AssetsService/Assets/{assetId}/DepreciationRecords/Count | Gets count of depreciation records for a specific asset
*AssetsApi* | [**getAssetRepair**](docs/AssetsApi.md#getassetrepair) | **GET** /api/v2/AssetsService/Assets/{assetId}/Repairs/{repairId} | Gets a specific repair for an asset
*AssetsApi* | [**getAssetRepairs**](docs/AssetsApi.md#getassetrepairs) | **GET** /api/v2/AssetsService/Assets/{assetId}/Repairs | Gets repairs for a specific asset
*AssetsApi* | [**getAssetRepairsCount**](docs/AssetsApi.md#getassetrepairscount) | **GET** /api/v2/AssetsService/Assets/{assetId}/Repairs/Count | Gets count of repairs for a specific asset
*AssetsApi* | [**getAssetTransfer**](docs/AssetsApi.md#getassettransfer) | **GET** /api/v2/AssetsService/Assets/{assetId}/Transfers/{transferId} | Gets a specific transfer for an asset
*AssetsApi* | [**getAssetTransfers**](docs/AssetsApi.md#getassettransfers) | **GET** /api/v2/AssetsService/Assets/{assetId}/Transfers | Gets transfers for a specific asset
*AssetsApi* | [**getAssetTransfersCount**](docs/AssetsApi.md#getassettransferscount) | **GET** /api/v2/AssetsService/Assets/{assetId}/Transfers/Count | Gets count of transfers for a specific asset
*AssetsApi* | [**getAssetValueAmend**](docs/AssetsApi.md#getassetvalueamend) | **GET** /api/v2/AssetsService/Assets/{assetId}/ValueAmends/{amendId} | Gets a specific value amendment for an asset
*AssetsApi* | [**getAssetValueAmends**](docs/AssetsApi.md#getassetvalueamends) | **GET** /api/v2/AssetsService/Assets/{assetId}/ValueAmends | Gets value amendments for a specific asset
*AssetsApi* | [**getAssetValueAmendsCount**](docs/AssetsApi.md#getassetvalueamendscount) | **GET** /api/v2/AssetsService/Assets/{assetId}/ValueAmends/Count | Gets count of value amendments for a specific asset
*AssetsApi* | [**getAssets**](docs/AssetsApi.md#getassets) | **GET** /api/v2/AssetsService/Assets | Gets all assets for the current tenant
*AssetsApi* | [**getAssetsCount**](docs/AssetsApi.md#getassetscount) | **GET** /api/v2/AssetsService/Assets/count | Gets the count of assets
*AssetsApi* | [**patchAsset**](docs/AssetsApi.md#patchasset) | **PATCH** /api/v2/AssetsService/Assets/{assetId} | Partially updates an existing asset
*AssetsApi* | [**patchAssetAssetCategory**](docs/AssetsApi.md#patchassetassetcategory) | **PATCH** /api/v2/AssetsService/Assets/Categories/{categoryId} | Partially updates an existing asset category
*AssetsApi* | [**patchAssetDepreciationRecord**](docs/AssetsApi.md#patchassetdepreciationrecord) | **PATCH** /api/v2/AssetsService/Assets/{assetId}/DepreciationRecords/{recordId} | Partially updates a depreciation record for an asset
*AssetsApi* | [**patchAssetRepair**](docs/AssetsApi.md#patchassetrepair) | **PATCH** /api/v2/AssetsService/Assets/{assetId}/Repairs/{repairId} | Partially updates a repair for an asset
*AssetsApi* | [**patchAssetTransfer**](docs/AssetsApi.md#patchassettransfer) | **PATCH** /api/v2/AssetsService/Assets/{assetId}/Transfers/{transferId} | Partially updates a transfer for an asset
*AssetsApi* | [**patchAssetValueAmend**](docs/AssetsApi.md#patchassetvalueamend) | **PATCH** /api/v2/AssetsService/Assets/{assetId}/ValueAmends/{amendId} | Partially updates a value amendment for an asset
*AssetsApi* | [**updateAsset**](docs/AssetsApi.md#updateasset) | **PUT** /api/v2/AssetsService/Assets/{assetId} | Updates an existing asset
*AssetsApi* | [**updateAssetAssetCategory**](docs/AssetsApi.md#updateassetassetcategory) | **PUT** /api/v2/AssetsService/Assets/Categories/{categoryId} | Updates an existing asset category
*AssetsApi* | [**updateAssetDepreciationRecord**](docs/AssetsApi.md#updateassetdepreciationrecord) | **PUT** /api/v2/AssetsService/Assets/{assetId}/DepreciationRecords/{recordId} | Updates a depreciation record for an asset
*AssetsApi* | [**updateAssetRepair**](docs/AssetsApi.md#updateassetrepair) | **PUT** /api/v2/AssetsService/Assets/{assetId}/Repairs/{repairId} | Updates a repair for an asset
*AssetsApi* | [**updateAssetTransfer**](docs/AssetsApi.md#updateassettransfer) | **PUT** /api/v2/AssetsService/Assets/{assetId}/Transfers/{transferId} | Updates a transfer for an asset
*AssetsApi* | [**updateAssetValueAmend**](docs/AssetsApi.md#updateassetvalueamend) | **PUT** /api/v2/AssetsService/Assets/{assetId}/ValueAmends/{amendId} | Updates a value amendment for an asset
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


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [AssetCategoryCreateDto](docs/AssetCategoryCreateDto.md)
 - [AssetCategoryDto](docs/AssetCategoryDto.md)
 - [AssetCategoryDtoEnvelope](docs/AssetCategoryDtoEnvelope.md)
 - [AssetCategoryDtoListEnvelope](docs/AssetCategoryDtoListEnvelope.md)
 - [AssetCategoryUpdateDto](docs/AssetCategoryUpdateDto.md)
 - [AssetCreateDto](docs/AssetCreateDto.md)
 - [AssetDepreciationRecordCreateDto](docs/AssetDepreciationRecordCreateDto.md)
 - [AssetDepreciationRecordDto](docs/AssetDepreciationRecordDto.md)
 - [AssetDepreciationRecordDtoEnvelope](docs/AssetDepreciationRecordDtoEnvelope.md)
 - [AssetDepreciationRecordDtoListEnvelope](docs/AssetDepreciationRecordDtoListEnvelope.md)
 - [AssetDepreciationRecordUpdateDto](docs/AssetDepreciationRecordUpdateDto.md)
 - [AssetDto](docs/AssetDto.md)
 - [AssetDtoEnvelope](docs/AssetDtoEnvelope.md)
 - [AssetDtoListEnvelope](docs/AssetDtoListEnvelope.md)
 - [AssetRepairCreateDto](docs/AssetRepairCreateDto.md)
 - [AssetRepairDto](docs/AssetRepairDto.md)
 - [AssetRepairDtoEnvelope](docs/AssetRepairDtoEnvelope.md)
 - [AssetRepairDtoListEnvelope](docs/AssetRepairDtoListEnvelope.md)
 - [AssetRepairUpdateDto](docs/AssetRepairUpdateDto.md)
 - [AssetTransferCreateDto](docs/AssetTransferCreateDto.md)
 - [AssetTransferDto](docs/AssetTransferDto.md)
 - [AssetTransferDtoEnvelope](docs/AssetTransferDtoEnvelope.md)
 - [AssetTransferDtoListEnvelope](docs/AssetTransferDtoListEnvelope.md)
 - [AssetTransferUpdateDto](docs/AssetTransferUpdateDto.md)
 - [AssetTypeCreateDto](docs/AssetTypeCreateDto.md)
 - [AssetTypeDto](docs/AssetTypeDto.md)
 - [AssetTypeDtoEnvelope](docs/AssetTypeDtoEnvelope.md)
 - [AssetTypeDtoListEnvelope](docs/AssetTypeDtoListEnvelope.md)
 - [AssetTypeUpdateDto](docs/AssetTypeUpdateDto.md)
 - [AssetUpdateDto](docs/AssetUpdateDto.md)
 - [AssetValueAmendCreateDto](docs/AssetValueAmendCreateDto.md)
 - [AssetValueAmendDto](docs/AssetValueAmendDto.md)
 - [AssetValueAmendDtoEnvelope](docs/AssetValueAmendDtoEnvelope.md)
 - [AssetValueAmendDtoListEnvelope](docs/AssetValueAmendDtoListEnvelope.md)
 - [AssetValueAmendUpdateDto](docs/AssetValueAmendUpdateDto.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [Operation](docs/Operation.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

