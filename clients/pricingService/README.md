# PricingService Bash client

## Overview

This is a Bash client script for accessing PricingService service.

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
*DiscountListsApi* | [**createDiscountList**](docs/DiscountListsApi.md#creatediscountlist) | **POST** /api/v2/PricingService/DiscountLists | Creates a new discount list
*DiscountListsApi* | [**createDiscountListEntry**](docs/DiscountListsApi.md#creatediscountlistentry) | **POST** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts | Creates a discount list entry
*DiscountListsApi* | [**deleteDiscountList**](docs/DiscountListsApi.md#deletediscountlist) | **DELETE** /api/v2/PricingService/DiscountLists/{discountListId} | Deletes a discount list
*DiscountListsApi* | [**deleteDiscountListEntry**](docs/DiscountListsApi.md#deletediscountlistentry) | **DELETE** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts/{discountListEntryId} | Deletes a discount list entry
*DiscountListsApi* | [**getDiscountList**](docs/DiscountListsApi.md#getdiscountlist) | **GET** /api/v2/PricingService/DiscountLists/{discountListId} | Gets a discount list by ID
*DiscountListsApi* | [**getDiscountListEntries**](docs/DiscountListsApi.md#getdiscountlistentries) | **GET** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts | Retrieves discounts in a discount list
*DiscountListsApi* | [**getDiscountListEntriesCount**](docs/DiscountListsApi.md#getdiscountlistentriescount) | **GET** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts/Count | Counts discounts in a discount list
*DiscountListsApi* | [**getDiscountListEntry**](docs/DiscountListsApi.md#getdiscountlistentry) | **GET** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts/{discountListEntryId} | Gets a discount list entry by ID
*DiscountListsApi* | [**getDiscountLists**](docs/DiscountListsApi.md#getdiscountlists) | **GET** /api/v2/PricingService/DiscountLists | Retrieves all discount lists
*DiscountListsApi* | [**getDiscountListsCount**](docs/DiscountListsApi.md#getdiscountlistscount) | **GET** /api/v2/PricingService/DiscountLists/Count | Counts discount lists
*DiscountListsApi* | [**patchDiscountList**](docs/DiscountListsApi.md#patchdiscountlist) | **PATCH** /api/v2/PricingService/DiscountLists/{discountListId} | Patches a discount list
*DiscountListsApi* | [**patchDiscountListEntry**](docs/DiscountListsApi.md#patchdiscountlistentry) | **PATCH** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts/{discountListEntryId} | Patches a discount list entry
*DiscountListsApi* | [**updateDiscountList**](docs/DiscountListsApi.md#updatediscountlist) | **PUT** /api/v2/PricingService/DiscountLists/{discountListId} | Updates a discount list
*DiscountListsApi* | [**updateDiscountListEntry**](docs/DiscountListsApi.md#updatediscountlistentry) | **PUT** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts/{discountListEntryId} | Updates a discount list entry
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
*PriceListsApi* | [**createPriceListAsync**](docs/PriceListsApi.md#createpricelistasync) | **POST** /api/v2/PricingService/PriceLists | Creates a new price list
*PriceListsApi* | [**createPriceListPricesAsync**](docs/PriceListsApi.md#createpricelistpricesasync) | **POST** /api/v2/PricingService/PriceLists/{priceListId}/Prices | Creates a price list entry
*PriceListsApi* | [**deletePriceListAsync**](docs/PriceListsApi.md#deletepricelistasync) | **DELETE** /api/v2/PricingService/PriceLists/{priceListId} | Deletes a price list
*PriceListsApi* | [**deletePriceListPriceAsync**](docs/PriceListsApi.md#deletepricelistpriceasync) | **DELETE** /api/v2/PricingService/PriceLists/{priceListId}/Prices/{priceId} | Deletes a price list entry
*PriceListsApi* | [**getPriceListAsync**](docs/PriceListsApi.md#getpricelistasync) | **GET** /api/v2/PricingService/PriceLists/{priceListId} | Gets a price list by ID
*PriceListsApi* | [**getPriceListPriceAsync**](docs/PriceListsApi.md#getpricelistpriceasync) | **GET** /api/v2/PricingService/PriceLists/{priceListId}/Prices/{priceId} | Gets a price list entry by ID
*PriceListsApi* | [**getPriceListPricesAsync**](docs/PriceListsApi.md#getpricelistpricesasync) | **GET** /api/v2/PricingService/PriceLists/{priceListId}/Prices | Retrieves prices in a price list
*PriceListsApi* | [**getPriceListsAsync**](docs/PriceListsApi.md#getpricelistsasync) | **GET** /api/v2/PricingService/PriceLists | Retrieves all price lists
*PriceListsApi* | [**getPriceListsCountAsync**](docs/PriceListsApi.md#getpricelistscountasync) | **GET** /api/v2/PricingService/PriceLists/Count | Counts price lists
*PriceListsApi* | [**patchPriceListAsync**](docs/PriceListsApi.md#patchpricelistasync) | **PATCH** /api/v2/PricingService/PriceLists/{priceListId} | Patches a price list
*PriceListsApi* | [**patchPriceListPriceAsync**](docs/PriceListsApi.md#patchpricelistpriceasync) | **PATCH** /api/v2/PricingService/PriceLists/{priceListId}/Prices/{priceId} | Patches a price list entry
*PriceListsApi* | [**updatePriceListAsync**](docs/PriceListsApi.md#updatepricelistasync) | **PUT** /api/v2/PricingService/PriceLists/{priceListId} | Updates a price list
*PriceListsApi* | [**updatePriceListPriceAsync**](docs/PriceListsApi.md#updatepricelistpriceasync) | **PUT** /api/v2/PricingService/PriceLists/{priceListId}/Prices/{priceId} | Updates a price list entry
*PricesApi* | [**getFinalPrice**](docs/PricesApi.md#getfinalprice) | **GET** /api/v2/PricingService/Prices/{itemId}/FinalPrice | Gets the final price for an item
*PricesApi* | [**getPrice**](docs/PricesApi.md#getprice) | **GET** /api/v2/PricingService/Prices/{itemId}/Price | Gets the calculated price for an item
*PricesApi* | [**getTotalSavingsInUsd**](docs/PricesApi.md#gettotalsavingsinusd) | **GET** /api/v2/PricingService/Prices/{itemId}/TotalSavings | Gets total savings for an item
*PricesApi* | [**getTotalTaxesInUsd**](docs/PricesApi.md#gettotaltaxesinusd) | **GET** /api/v2/PricingService/Prices/{itemId}/TotalTaxes | Gets total taxes for an item
*PricingRulesApi* | [**createPricingRule**](docs/PricingRulesApi.md#createpricingrule) | **POST** /api/v2/PricingService/PricingRules | Create a new pricing rule
*PricingRulesApi* | [**deletePricingRule**](docs/PricingRulesApi.md#deletepricingrule) | **DELETE** /api/v2/PricingService/PricingRules/{pricingRuleId} | Delete a pricing rule
*PricingRulesApi* | [**getPricingRuleById**](docs/PricingRulesApi.md#getpricingrulebyid) | **GET** /api/v2/PricingService/PricingRules/{pricingRuleId} | Get pricing rule by ID
*PricingRulesApi* | [**getPricingRules**](docs/PricingRulesApi.md#getpricingrules) | **GET** /api/v2/PricingService/PricingRules | Get all pricing rules
*PricingRulesApi* | [**getPricingRulesCountAsync**](docs/PricingRulesApi.md#getpricingrulescountasync) | **GET** /api/v2/PricingService/PricingRules/Count | Counts pricing rules
*PricingRulesApi* | [**patchPricingRule**](docs/PricingRulesApi.md#patchpricingrule) | **PATCH** /api/v2/PricingService/PricingRules/{pricingRuleId} | Patch a pricing rule
*PricingRulesApi* | [**updatePricingRule**](docs/PricingRulesApi.md#updatepricingrule) | **PUT** /api/v2/PricingService/PricingRules/Update | Update a pricing rule
*RoundingPoliciesApi* | [**createRoundingPolicyAsync**](docs/RoundingPoliciesApi.md#createroundingpolicyasync) | **POST** /api/v2/PricingService/RoundingPolicies | Creates a rounding policy
*RoundingPoliciesApi* | [**deleteRoundingPolicyAsync**](docs/RoundingPoliciesApi.md#deleteroundingpolicyasync) | **DELETE** /api/v2/PricingService/RoundingPolicies/{roundingPolicyId} | Deletes a rounding policy
*RoundingPoliciesApi* | [**getRoundingPoliciesAsync**](docs/RoundingPoliciesApi.md#getroundingpoliciesasync) | **GET** /api/v2/PricingService/RoundingPolicies | Gets all rounding policies
*RoundingPoliciesApi* | [**getRoundingPoliciesCountAsync**](docs/RoundingPoliciesApi.md#getroundingpoliciescountasync) | **GET** /api/v2/PricingService/RoundingPolicies/Count | Counts rounding policies
*RoundingPoliciesApi* | [**getRoundingPolicyByIdAsync**](docs/RoundingPoliciesApi.md#getroundingpolicybyidasync) | **GET** /api/v2/PricingService/RoundingPolicies/{roundingPolicyId} | Gets a rounding policy by ID
*RoundingPoliciesApi* | [**patchRoundingPolicyAsync**](docs/RoundingPoliciesApi.md#patchroundingpolicyasync) | **PATCH** /api/v2/PricingService/RoundingPolicies/{roundingPolicyId} | Patches a rounding policy
*RoundingPoliciesApi* | [**updateRoundingPolicyAsync**](docs/RoundingPoliciesApi.md#updateroundingpolicyasync) | **PUT** /api/v2/PricingService/RoundingPolicies/{roundingPolicyId} | Updates a rounding policy


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [CurrencyId](docs/CurrencyId.md)
 - [DiscountCreateDto](docs/DiscountCreateDto.md)
 - [DiscountDto](docs/DiscountDto.md)
 - [DiscountDtoEnvelope](docs/DiscountDtoEnvelope.md)
 - [DiscountDtoListEnvelope](docs/DiscountDtoListEnvelope.md)
 - [DiscountListCreateDto](docs/DiscountListCreateDto.md)
 - [DiscountListDto](docs/DiscountListDto.md)
 - [DiscountListDtoEnvelope](docs/DiscountListDtoEnvelope.md)
 - [DiscountListDtoListEnvelope](docs/DiscountListDtoListEnvelope.md)
 - [DiscountListUpdateDto](docs/DiscountListUpdateDto.md)
 - [DiscountUpdateDto](docs/DiscountUpdateDto.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [ItemPriceCalculation](docs/ItemPriceCalculation.md)
 - [ItemPriceCalculationEnvelope](docs/ItemPriceCalculationEnvelope.md)
 - [ItemPriceCreateDto](docs/ItemPriceCreateDto.md)
 - [ItemPriceDto](docs/ItemPriceDto.md)
 - [ItemPriceDtoEnvelope](docs/ItemPriceDtoEnvelope.md)
 - [ItemPriceDtoListEnvelope](docs/ItemPriceDtoListEnvelope.md)
 - [ItemPriceUpdateDto](docs/ItemPriceUpdateDto.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [Money](docs/Money.md)
 - [MoneyEnvelope](docs/MoneyEnvelope.md)
 - [Operation](docs/Operation.md)
 - [PriceListCreateDto](docs/PriceListCreateDto.md)
 - [PriceListDto](docs/PriceListDto.md)
 - [PriceListDtoEnvelope](docs/PriceListDtoEnvelope.md)
 - [PriceListDtoListEnvelope](docs/PriceListDtoListEnvelope.md)
 - [PriceListUpdateDto](docs/PriceListUpdateDto.md)
 - [PricingRuleCreateDto](docs/PricingRuleCreateDto.md)
 - [PricingRuleDto](docs/PricingRuleDto.md)
 - [PricingRuleDtoEnvelope](docs/PricingRuleDtoEnvelope.md)
 - [PricingRuleDtoListEnvelope](docs/PricingRuleDtoListEnvelope.md)
 - [PricingRuleUpdateDto](docs/PricingRuleUpdateDto.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [RoundingPolicyCreateDto](docs/RoundingPolicyCreateDto.md)
 - [RoundingPolicyDto](docs/RoundingPolicyDto.md)
 - [RoundingPolicyDtoEnvelope](docs/RoundingPolicyDtoEnvelope.md)
 - [RoundingPolicyDtoListEnvelope](docs/RoundingPolicyDtoListEnvelope.md)
 - [RoundingPolicyUpdateDto](docs/RoundingPolicyUpdateDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

