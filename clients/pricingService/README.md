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
*DiscountListsApi* | [**apiV2PricingServiceDiscountListsCountGet**](docs/DiscountListsApi.md#apiv2pricingservicediscountlistscountget) | **GET** /api/v2/PricingService/DiscountLists/Count | 
*DiscountListsApi* | [**apiV2PricingServiceDiscountListsDiscountListIdDelete**](docs/DiscountListsApi.md#apiv2pricingservicediscountlistsdiscountlistiddelete) | **DELETE** /api/v2/PricingService/DiscountLists/{discountListId} | 
*DiscountListsApi* | [**apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet**](docs/DiscountListsApi.md#apiv2pricingservicediscountlistsdiscountlistiddiscountscountget) | **GET** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts/Count | 
*DiscountListsApi* | [**apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete**](docs/DiscountListsApi.md#apiv2pricingservicediscountlistsdiscountlistiddiscountsdiscountlistentryiddelete) | **DELETE** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts/{discountListEntryId} | 
*DiscountListsApi* | [**apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut**](docs/DiscountListsApi.md#apiv2pricingservicediscountlistsdiscountlistiddiscountsdiscountlistentryidput) | **PUT** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts/{discountListEntryId} | 
*DiscountListsApi* | [**apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet**](docs/DiscountListsApi.md#apiv2pricingservicediscountlistsdiscountlistiddiscountsget) | **GET** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts | 
*DiscountListsApi* | [**apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost**](docs/DiscountListsApi.md#apiv2pricingservicediscountlistsdiscountlistiddiscountspost) | **POST** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts | 
*DiscountListsApi* | [**apiV2PricingServiceDiscountListsDiscountListIdGet**](docs/DiscountListsApi.md#apiv2pricingservicediscountlistsdiscountlistidget) | **GET** /api/v2/PricingService/DiscountLists/{discountListId} | 
*DiscountListsApi* | [**apiV2PricingServiceDiscountListsDiscountListIdPut**](docs/DiscountListsApi.md#apiv2pricingservicediscountlistsdiscountlistidput) | **PUT** /api/v2/PricingService/DiscountLists/{discountListId} | 
*DiscountListsApi* | [**apiV2PricingServiceDiscountListsGet**](docs/DiscountListsApi.md#apiv2pricingservicediscountlistsget) | **GET** /api/v2/PricingService/DiscountLists | 
*DiscountListsApi* | [**apiV2PricingServiceDiscountListsPost**](docs/DiscountListsApi.md#apiv2pricingservicediscountlistspost) | **POST** /api/v2/PricingService/DiscountLists | 
*DiscountListsApi* | [**getDiscountListEntry**](docs/DiscountListsApi.md#getdiscountlistentry) | **GET** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts/{discountListEntryId} | 
*PriceListsApi* | [**apiV2PricingServicePriceListsCountGet**](docs/PriceListsApi.md#apiv2pricingservicepricelistscountget) | **GET** /api/v2/PricingService/PriceLists/Count | 
*PriceListsApi* | [**apiV2PricingServicePriceListsGet**](docs/PriceListsApi.md#apiv2pricingservicepricelistsget) | **GET** /api/v2/PricingService/PriceLists | 
*PriceListsApi* | [**apiV2PricingServicePriceListsPost**](docs/PriceListsApi.md#apiv2pricingservicepricelistspost) | **POST** /api/v2/PricingService/PriceLists | 
*PriceListsApi* | [**apiV2PricingServicePriceListsPriceListIdDelete**](docs/PriceListsApi.md#apiv2pricingservicepricelistspricelistiddelete) | **DELETE** /api/v2/PricingService/PriceLists/{priceListId} | 
*PriceListsApi* | [**apiV2PricingServicePriceListsPriceListIdPricesPost**](docs/PriceListsApi.md#apiv2pricingservicepricelistspricelistidpricespost) | **POST** /api/v2/PricingService/PriceLists/{priceListId}/Prices | 
*PriceListsApi* | [**apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete**](docs/PriceListsApi.md#apiv2pricingservicepricelistspricelistidpricespriceiddelete) | **DELETE** /api/v2/PricingService/PriceLists/{priceListId}/Prices/{priceId} | 
*PriceListsApi* | [**apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut**](docs/PriceListsApi.md#apiv2pricingservicepricelistspricelistidpricespriceidput) | **PUT** /api/v2/PricingService/PriceLists/{priceListId}/Prices/{priceId} | 
*PriceListsApi* | [**apiV2PricingServicePriceListsPriceListIdPut**](docs/PriceListsApi.md#apiv2pricingservicepricelistspricelistidput) | **PUT** /api/v2/PricingService/PriceLists/{priceListId} | 
*PriceListsApi* | [**getPriceListAsync**](docs/PriceListsApi.md#getpricelistasync) | **GET** /api/v2/PricingService/PriceLists/{priceListId} | 
*PriceListsApi* | [**getPriceListPriceAsync**](docs/PriceListsApi.md#getpricelistpriceasync) | **GET** /api/v2/PricingService/PriceLists/{priceListId}/Prices/{priceId} | 
*PriceListsApi* | [**getPriceListPricesAsync**](docs/PriceListsApi.md#getpricelistpricesasync) | **GET** /api/v2/PricingService/PriceLists/{priceListId}/Prices | 
*PricesApi* | [**apiV2PricingServicePricesItemIdFinalPriceGet**](docs/PricesApi.md#apiv2pricingservicepricesitemidfinalpriceget) | **GET** /api/v2/PricingService/Prices/{itemId}/FinalPrice | 
*PricesApi* | [**apiV2PricingServicePricesItemIdPriceGet**](docs/PricesApi.md#apiv2pricingservicepricesitemidpriceget) | **GET** /api/v2/PricingService/Prices/{itemId}/Price | 
*PricesApi* | [**apiV2PricingServicePricesItemIdTotalSavingsGet**](docs/PricesApi.md#apiv2pricingservicepricesitemidtotalsavingsget) | **GET** /api/v2/PricingService/Prices/{itemId}/TotalSavings | 
*PricesApi* | [**apiV2PricingServicePricesItemIdTotalTaxesGet**](docs/PricesApi.md#apiv2pricingservicepricesitemidtotaltaxesget) | **GET** /api/v2/PricingService/Prices/{itemId}/TotalTaxes | 


## Documentation For Models

 - [Currency](docs/Currency.md)
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
 - [Int32Envelope](docs/Int32Envelope.md)
 - [ItemPriceCreateDto](docs/ItemPriceCreateDto.md)
 - [ItemPriceDto](docs/ItemPriceDto.md)
 - [ItemPriceDtoEnvelope](docs/ItemPriceDtoEnvelope.md)
 - [ItemPriceDtoListEnvelope](docs/ItemPriceDtoListEnvelope.md)
 - [ItemPriceUpdateDto](docs/ItemPriceUpdateDto.md)
 - [Money](docs/Money.md)
 - [MoneyEnvelope](docs/MoneyEnvelope.md)
 - [PriceCalculationDto](docs/PriceCalculationDto.md)
 - [PriceCalculationDtoEnvelope](docs/PriceCalculationDtoEnvelope.md)
 - [PriceListCreateDto](docs/PriceListCreateDto.md)
 - [PriceListDto](docs/PriceListDto.md)
 - [PriceListDtoEnvelope](docs/PriceListDtoEnvelope.md)
 - [PriceListDtoListEnvelope](docs/PriceListDtoListEnvelope.md)
 - [PriceListUpdateDto](docs/PriceListUpdateDto.md)


## Documentation For Authorization


## Bearer


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

