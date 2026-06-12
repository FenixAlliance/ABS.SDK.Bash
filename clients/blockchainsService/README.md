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
*NonFungibleTokensApi* | [**createNonFungibleTokenAsync**](docs/NonFungibleTokensApi.md#createnonfungibletokenasync) | **POST** /api/v2/BlockchainsService/NonFungibleTokens | Create a new NFT
*NonFungibleTokensApi* | [**deleteNonFungibleTokenAsync**](docs/NonFungibleTokensApi.md#deletenonfungibletokenasync) | **DELETE** /api/v2/BlockchainsService/NonFungibleTokens/{id} | Delete an NFT
*NonFungibleTokensApi* | [**getNonFungibleTokenByIdAsync**](docs/NonFungibleTokensApi.md#getnonfungibletokenbyidasync) | **GET** /api/v2/BlockchainsService/NonFungibleTokens/{id} | Get NFT by ID
*NonFungibleTokensApi* | [**getNonFungibleTokensAsync**](docs/NonFungibleTokensApi.md#getnonfungibletokensasync) | **GET** /api/v2/BlockchainsService/NonFungibleTokens | Get all non-fungible tokens
*NonFungibleTokensApi* | [**getNonFungibleTokensCountAsync**](docs/NonFungibleTokensApi.md#getnonfungibletokenscountasync) | **GET** /api/v2/BlockchainsService/NonFungibleTokens/Count | Get NFTs count
*NonFungibleTokensApi* | [**patchNonFungibleTokenAsync**](docs/NonFungibleTokensApi.md#patchnonfungibletokenasync) | **PATCH** /api/v2/BlockchainsService/NonFungibleTokens/{id} | Patch a non-fungible token
*NonFungibleTokensApi* | [**updateNonFungibleTokenAsync**](docs/NonFungibleTokensApi.md#updatenonfungibletokenasync) | **PUT** /api/v2/BlockchainsService/NonFungibleTokens/{id} | Update an NFT


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [ApplyClause](docs/ApplyClause.md)
 - [ApplyQueryOption](docs/ApplyQueryOption.md)
 - [AsnEncodedData](docs/AsnEncodedData.md)
 - [Assembly](docs/Assembly.md)
 - [AsymmetricAlgorithm](docs/AsymmetricAlgorithm.md)
 - [BlockchainBlockCreateDto](docs/BlockchainBlockCreateDto.md)
 - [BlockchainBlockDto](docs/BlockchainBlockDto.md)
 - [BlockchainBlockDtoETag](docs/BlockchainBlockDtoETag.md)
 - [BlockchainBlockDtoListEnvelope](docs/BlockchainBlockDtoListEnvelope.md)
 - [BlockchainBlockDtoODataQueryOptions](docs/BlockchainBlockDtoODataQueryOptions.md)
 - [BlockchainBlockUpdateDto](docs/BlockchainBlockUpdateDto.md)
 - [BlockchainCreateDto](docs/BlockchainCreateDto.md)
 - [BlockchainDto](docs/BlockchainDto.md)
 - [BlockchainDtoETag](docs/BlockchainDtoETag.md)
 - [BlockchainDtoListEnvelope](docs/BlockchainDtoListEnvelope.md)
 - [BlockchainDtoODataQueryOptions](docs/BlockchainDtoODataQueryOptions.md)
 - [BlockchainUpdateDto](docs/BlockchainUpdateDto.md)
 - [ByteReadOnlyMemory](docs/ByteReadOnlyMemory.md)
 - [ByteReadOnlySpan](docs/ByteReadOnlySpan.md)
 - [CancellationToken](docs/CancellationToken.md)
 - [Claim](docs/Claim.md)
 - [ClaimsIdentity](docs/ClaimsIdentity.md)
 - [ClaimsPrincipal](docs/ClaimsPrincipal.md)
 - [ComputeClause](docs/ComputeClause.md)
 - [ComputeExpression](docs/ComputeExpression.md)
 - [ComputeQueryOption](docs/ComputeQueryOption.md)
 - [ConnectionInfo](docs/ConnectionInfo.md)
 - [ConstructorInfo](docs/ConstructorInfo.md)
 - [CountQueryOption](docs/CountQueryOption.md)
 - [CustomAttributeData](docs/CustomAttributeData.md)
 - [CustomAttributeNamedArgument](docs/CustomAttributeNamedArgument.md)
 - [CustomAttributeTypedArgument](docs/CustomAttributeTypedArgument.md)
 - [DefaultQueryConfigurations](docs/DefaultQueryConfigurations.md)
 - [ETag](docs/ETag.md)
 - [EdmReferentialConstraintPropertyPair](docs/EdmReferentialConstraintPropertyPair.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [EventInfo](docs/EventInfo.md)
 - [FieldInfo](docs/FieldInfo.md)
 - [FilterClause](docs/FilterClause.md)
 - [FilterQueryOption](docs/FilterQueryOption.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HostString](docs/HostString.md)
 - [HttpContext](docs/HttpContext.md)
 - [HttpRequest](docs/HttpRequest.md)
 - [HttpResponse](docs/HttpResponse.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [IEdmEntityContainer](docs/IEdmEntityContainer.md)
 - [IEdmEntityContainerElement](docs/IEdmEntityContainerElement.md)
 - [IEdmEntityType](docs/IEdmEntityType.md)
 - [IEdmExpression](docs/IEdmExpression.md)
 - [IEdmModel](docs/IEdmModel.md)
 - [IEdmNavigationProperty](docs/IEdmNavigationProperty.md)
 - [IEdmNavigationPropertyBinding](docs/IEdmNavigationPropertyBinding.md)
 - [IEdmNavigationSource](docs/IEdmNavigationSource.md)
 - [IEdmPathExpression](docs/IEdmPathExpression.md)
 - [IEdmProperty](docs/IEdmProperty.md)
 - [IEdmReferentialConstraint](docs/IEdmReferentialConstraint.md)
 - [IEdmSchemaElement](docs/IEdmSchemaElement.md)
 - [IEdmStructuralProperty](docs/IEdmStructuralProperty.md)
 - [IEdmStructuredType](docs/IEdmStructuredType.md)
 - [IEdmTerm](docs/IEdmTerm.md)
 - [IEdmType](docs/IEdmType.md)
 - [IEdmTypeReference](docs/IEdmTypeReference.md)
 - [IEdmVocabularyAnnotation](docs/IEdmVocabularyAnnotation.md)
 - [IIdentity](docs/IIdentity.md)
 - [IPAddress](docs/IPAddress.md)
 - [ISession](docs/ISession.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [KeySizes](docs/KeySizes.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [MemberInfo](docs/MemberInfo.md)
 - [MethodBase](docs/MethodBase.md)
 - [MethodInfo](docs/MethodInfo.md)
 - [Module](docs/Module.md)
 - [ModuleHandle](docs/ModuleHandle.md)
 - [NonFungibleTokenCreateDto](docs/NonFungibleTokenCreateDto.md)
 - [NonFungibleTokenDto](docs/NonFungibleTokenDto.md)
 - [NonFungibleTokenDtoETag](docs/NonFungibleTokenDtoETag.md)
 - [NonFungibleTokenDtoListEnvelope](docs/NonFungibleTokenDtoListEnvelope.md)
 - [NonFungibleTokenDtoODataQueryOptions](docs/NonFungibleTokenDtoODataQueryOptions.md)
 - [NonFungibleTokenUpdateDto](docs/NonFungibleTokenUpdateDto.md)
 - [ODataPathSegment](docs/ODataPathSegment.md)
 - [ODataQueryContext](docs/ODataQueryContext.md)
 - [ODataRawQueryOptions](docs/ODataRawQueryOptions.md)
 - [Oid](docs/Oid.md)
 - [Operation](docs/Operation.md)
 - [OrderByClause](docs/OrderByClause.md)
 - [OrderByNode](docs/OrderByNode.md)
 - [OrderByQueryOption](docs/OrderByQueryOption.md)
 - [ParameterInfo](docs/ParameterInfo.md)
 - [PathString](docs/PathString.md)
 - [PipeWriter](docs/PipeWriter.md)
 - [PropertyInfo](docs/PropertyInfo.md)
 - [PublicKey](docs/PublicKey.md)
 - [QueryString](docs/QueryString.md)
 - [RangeVariable](docs/RangeVariable.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [RuntimeFieldHandle](docs/RuntimeFieldHandle.md)
 - [RuntimeMethodHandle](docs/RuntimeMethodHandle.md)
 - [RuntimeTypeHandle](docs/RuntimeTypeHandle.md)
 - [SafeWaitHandle](docs/SafeWaitHandle.md)
 - [SearchClause](docs/SearchClause.md)
 - [SearchQueryOption](docs/SearchQueryOption.md)
 - [SelectExpandClause](docs/SelectExpandClause.md)
 - [SelectExpandQueryOption](docs/SelectExpandQueryOption.md)
 - [SingleValueNode](docs/SingleValueNode.md)
 - [SkipQueryOption](docs/SkipQueryOption.md)
 - [SkipTokenQueryOption](docs/SkipTokenQueryOption.md)
 - [StringStringKeyValuePair](docs/StringStringKeyValuePair.md)
 - [StringStringValuesKeyValuePair](docs/StringStringValuesKeyValuePair.md)
 - [StructLayoutAttribute](docs/StructLayoutAttribute.md)
 - [TopQueryOption](docs/TopQueryOption.md)
 - [TransformationNode](docs/TransformationNode.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)
 - [Type](docs/Type.md)
 - [TypeInfo](docs/TypeInfo.md)
 - [TypeObjectKeyValuePair](docs/TypeObjectKeyValuePair.md)
 - [WaitHandle](docs/WaitHandle.md)
 - [WebSocketManager](docs/WebSocketManager.md)
 - [X500DistinguishedName](docs/X500DistinguishedName.md)
 - [X509Certificate2](docs/X509Certificate2.md)
 - [X509Extension](docs/X509Extension.md)


## Documentation For Authorization

 All endpoints do not require authorization.

