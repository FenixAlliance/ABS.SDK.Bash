# BlockchainsService Bash client

## Overview

This is a Bash client script for accessing BlockchainsService service.

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
*BlockchainsApi* | [**createBlockchainAsync**](docs/BlockchainsApi.md#createblockchainasync) | **POST** /api/v2/BlockchainsService/Blockchains | Create a new blockchain
*BlockchainsApi* | [**createBlockchainBlockAsync**](docs/BlockchainsApi.md#createblockchainblockasync) | **POST** /api/v2/BlockchainsService/Blockchains/{blockchainId}/Blocks | Add a block to a blockchain
*BlockchainsApi* | [**deleteBlockchainAsync**](docs/BlockchainsApi.md#deleteblockchainasync) | **DELETE** /api/v2/BlockchainsService/Blockchains/{id} | Delete a blockchain
*BlockchainsApi* | [**deleteBlockchainBlockAsync**](docs/BlockchainsApi.md#deleteblockchainblockasync) | **DELETE** /api/v2/BlockchainsService/Blockchains/{blockchainId}/Blocks/{blockId} | Delete a blockchain block
*BlockchainsApi* | [**getBlockchainBlockByIdAsync**](docs/BlockchainsApi.md#getblockchainblockbyidasync) | **GET** /api/v2/BlockchainsService/Blockchains/{blockchainId}/Blocks/{blockId} | Get a specific block
*BlockchainsApi* | [**getBlockchainBlocksAsync**](docs/BlockchainsApi.md#getblockchainblocksasync) | **GET** /api/v2/BlockchainsService/Blockchains/{blockchainId}/Blocks | Get blocks for a blockchain
*BlockchainsApi* | [**getBlockchainBlocksCountAsync**](docs/BlockchainsApi.md#getblockchainblockscountasync) | **GET** /api/v2/BlockchainsService/Blockchains/{blockchainId}/Blocks/Count | Get block count for a blockchain
*BlockchainsApi* | [**getBlockchainByIdAsync**](docs/BlockchainsApi.md#getblockchainbyidasync) | **GET** /api/v2/BlockchainsService/Blockchains/{id} | Get blockchain by ID
*BlockchainsApi* | [**getBlockchainsAsync**](docs/BlockchainsApi.md#getblockchainsasync) | **GET** /api/v2/BlockchainsService/Blockchains | Get all blockchains
*BlockchainsApi* | [**getBlockchainsCountAsync**](docs/BlockchainsApi.md#getblockchainscountasync) | **GET** /api/v2/BlockchainsService/Blockchains/Count | Get blockchains count
*BlockchainsApi* | [**patchBlockchainAsync**](docs/BlockchainsApi.md#patchblockchainasync) | **PATCH** /api/v2/BlockchainsService/Blockchains/{id} | Patch a blockchain
*BlockchainsApi* | [**patchBlockchainBlockAsync**](docs/BlockchainsApi.md#patchblockchainblockasync) | **PATCH** /api/v2/BlockchainsService/Blockchains/{blockchainId}/Blocks/{blockId} | Patch a blockchain block
*BlockchainsApi* | [**updateBlockchainAsync**](docs/BlockchainsApi.md#updateblockchainasync) | **PUT** /api/v2/BlockchainsService/Blockchains/{id} | Update a blockchain
*BlockchainsApi* | [**updateBlockchainBlockAsync**](docs/BlockchainsApi.md#updateblockchainblockasync) | **PUT** /api/v2/BlockchainsService/Blockchains/{blockchainId}/Blocks/{blockId} | Update a blockchain block
*FenixAllianceABSWebApi* | [**accountLogoutPost**](docs/FenixAllianceABSWebApi.md#accountlogoutpost) | **POST** /Account/Logout | 
*FenixAllianceABSWebApi* | [**accountManageDownloadPersonalDataPost**](docs/FenixAllianceABSWebApi.md#accountmanagedownloadpersonaldatapost) | **POST** /Account/Manage/DownloadPersonalData | 
*FenixAllianceABSWebApi* | [**accountManageLinkExternalLoginPost**](docs/FenixAllianceABSWebApi.md#accountmanagelinkexternalloginpost) | **POST** /Account/Manage/LinkExternalLogin | 
*FenixAllianceABSWebApi* | [**accountPerformExternalLoginPost**](docs/FenixAllianceABSWebApi.md#accountperformexternalloginpost) | **POST** /Account/PerformExternalLogin | 
*FenixAllianceABSWebApi* | [**apiV2AIServiceAgentsAgentIdAguiPost**](docs/FenixAllianceABSWebApi.md#apiv2aiserviceagentsagentidaguipost) | **POST** /api/v2/AIService/Agents/{agentId}/agui | 
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
*NonFungibleTokensApi* | [**createNonFungibleTokenAsync**](docs/NonFungibleTokensApi.md#createnonfungibletokenasync) | **POST** /api/v2/BlockchainsService/NonFungibleTokens | Create a new NFT
*NonFungibleTokensApi* | [**deleteNonFungibleTokenAsync**](docs/NonFungibleTokensApi.md#deletenonfungibletokenasync) | **DELETE** /api/v2/BlockchainsService/NonFungibleTokens/{id} | Delete an NFT
*NonFungibleTokensApi* | [**getNonFungibleTokenByIdAsync**](docs/NonFungibleTokensApi.md#getnonfungibletokenbyidasync) | **GET** /api/v2/BlockchainsService/NonFungibleTokens/{id} | Get NFT by ID
*NonFungibleTokensApi* | [**getNonFungibleTokensAsync**](docs/NonFungibleTokensApi.md#getnonfungibletokensasync) | **GET** /api/v2/BlockchainsService/NonFungibleTokens | Get all non-fungible tokens
*NonFungibleTokensApi* | [**getNonFungibleTokensCountAsync**](docs/NonFungibleTokensApi.md#getnonfungibletokenscountasync) | **GET** /api/v2/BlockchainsService/NonFungibleTokens/Count | Get NFTs count
*NonFungibleTokensApi* | [**patchNonFungibleTokenAsync**](docs/NonFungibleTokensApi.md#patchnonfungibletokenasync) | **PATCH** /api/v2/BlockchainsService/NonFungibleTokens/{id} | Patch a non-fungible token
*NonFungibleTokensApi* | [**updateNonFungibleTokenAsync**](docs/NonFungibleTokensApi.md#updatenonfungibletokenasync) | **PUT** /api/v2/BlockchainsService/NonFungibleTokens/{id} | Update an NFT


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [BlockchainBlockCreateDto](docs/BlockchainBlockCreateDto.md)
 - [BlockchainBlockDto](docs/BlockchainBlockDto.md)
 - [BlockchainBlockDtoListEnvelope](docs/BlockchainBlockDtoListEnvelope.md)
 - [BlockchainBlockUpdateDto](docs/BlockchainBlockUpdateDto.md)
 - [BlockchainCreateDto](docs/BlockchainCreateDto.md)
 - [BlockchainDto](docs/BlockchainDto.md)
 - [BlockchainDtoListEnvelope](docs/BlockchainDtoListEnvelope.md)
 - [BlockchainUpdateDto](docs/BlockchainUpdateDto.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [NonFungibleTokenCreateDto](docs/NonFungibleTokenCreateDto.md)
 - [NonFungibleTokenDto](docs/NonFungibleTokenDto.md)
 - [NonFungibleTokenDtoListEnvelope](docs/NonFungibleTokenDtoListEnvelope.md)
 - [NonFungibleTokenUpdateDto](docs/NonFungibleTokenUpdateDto.md)
 - [Operation](docs/Operation.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

