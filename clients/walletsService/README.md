# WalletsService Bash client

## Overview

This is a Bash client script for accessing WalletsService service.

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
*WalletsApi* | [**createWalletLocationAsync**](docs/WalletsApi.md#createwalletlocationasync) | **POST** /api/v2/WalletsService/Wallets/{walletId}/Locations | Create Wallet Location
*WalletsApi* | [**deleteWalletLocationAsync**](docs/WalletsApi.md#deletewalletlocationasync) | **DELETE** /api/v2/WalletsService/Wallets/{walletId}/Locations/{locationId} | Delete Wallet Location
*WalletsApi* | [**getIncomingPaymentsAsync**](docs/WalletsApi.md#getincomingpaymentsasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Payments/Incoming | Get Incoming Payments
*WalletsApi* | [**getIncomingPaymentsCountAsync**](docs/WalletsApi.md#getincomingpaymentscountasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Payments/Incoming/Count | Get Incoming Payments Count
*WalletsApi* | [**getIncomingWalletInvoicesAsync**](docs/WalletsApi.md#getincomingwalletinvoicesasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Invoices/Incoming | Get Incoming Wallet Invoices
*WalletsApi* | [**getIncomingWalletInvoicesCountAsync**](docs/WalletsApi.md#getincomingwalletinvoicescountasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Invoices/Incoming/Count | Get Incoming Wallet Invoices Count
*WalletsApi* | [**getOutgoingPaymentsAsync**](docs/WalletsApi.md#getoutgoingpaymentsasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Payments/Outgoing | Get Outgoing Payments
*WalletsApi* | [**getOutgoingPaymentsCountAsync**](docs/WalletsApi.md#getoutgoingpaymentscountasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Payments/Outgoing/Count | Get Outgoing Payments Count
*WalletsApi* | [**getOutgoingWalletInvoicesAsync**](docs/WalletsApi.md#getoutgoingwalletinvoicesasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Invoices/Outgoing | Get Outgoing Wallet Invoices
*WalletsApi* | [**getOutgoingWalletInvoicesCountAsync**](docs/WalletsApi.md#getoutgoingwalletinvoicescountasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Invoices/Outgoing/Count | Get Outgoing Wallet Invoices Count
*WalletsApi* | [**getWalletDetailsAsync**](docs/WalletsApi.md#getwalletdetailsasync) | **GET** /api/v2/WalletsService/Wallets/{walletId} | Get Wallet Details
*WalletsApi* | [**getWalletExtendedOrdersAsync**](docs/WalletsApi.md#getwalletextendedordersasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Orders/Extended | Get Wallet Extended Orders
*WalletsApi* | [**getWalletInvoicesAsync**](docs/WalletsApi.md#getwalletinvoicesasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Invoices | Get Wallet Invoices
*WalletsApi* | [**getWalletInvoicesCountAsync**](docs/WalletsApi.md#getwalletinvoicescountasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Invoices/Count | Get Wallet Invoices Count
*WalletsApi* | [**getWalletLocationAsync**](docs/WalletsApi.md#getwalletlocationasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Locations/{locationId} | Get Wallet Location
*WalletsApi* | [**getWalletLocationsAsync**](docs/WalletsApi.md#getwalletlocationsasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Locations | Get Wallet Locations
*WalletsApi* | [**getWalletLocationsCountAsync**](docs/WalletsApi.md#getwalletlocationscountasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Locations/Count | Get Wallet Locations Count
*WalletsApi* | [**getWalletOrdersAsync**](docs/WalletsApi.md#getwalletordersasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Orders | Get Wallet Orders
*WalletsApi* | [**getWalletOrdersCountAsync**](docs/WalletsApi.md#getwalletorderscountasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Orders/Count | Get Wallet Orders Count
*WalletsApi* | [**getWalletPaymentsAsync**](docs/WalletsApi.md#getwalletpaymentsasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Payments | Get Wallet Payments
*WalletsApi* | [**getWalletPaymentsCountAsync**](docs/WalletsApi.md#getwalletpaymentscountasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Payments/Count | Get Wallet Payments Count
*WalletsApi* | [**updateWalletLocationAsync**](docs/WalletsApi.md#updatewalletlocationasync) | **PUT** /api/v2/WalletsService/Wallets/{walletId}/Locations/{locationId} | Update Wallet Location


## Documentation For Models

 - [ContactDto](docs/ContactDto.md)
 - [Currency](docs/Currency.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ExtendedOrderDto](docs/ExtendedOrderDto.md)
 - [ExtendedOrderDtoListEnvelope](docs/ExtendedOrderDtoListEnvelope.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [InvoiceDto](docs/InvoiceDto.md)
 - [InvoiceDtoListEnvelope](docs/InvoiceDtoListEnvelope.md)
 - [LocationCreateDto](docs/LocationCreateDto.md)
 - [LocationDto](docs/LocationDto.md)
 - [LocationDtoEnvelope](docs/LocationDtoEnvelope.md)
 - [LocationDtoListEnvelope](docs/LocationDtoListEnvelope.md)
 - [LocationUpdateDto](docs/LocationUpdateDto.md)
 - [Money](docs/Money.md)
 - [OrderDto](docs/OrderDto.md)
 - [OrderDtoListEnvelope](docs/OrderDtoListEnvelope.md)
 - [PaymentDto](docs/PaymentDto.md)
 - [PaymentDtoListEnvelope](docs/PaymentDtoListEnvelope.md)
 - [TenantDto](docs/TenantDto.md)
 - [TenantEnrolmentDto](docs/TenantEnrolmentDto.md)
 - [UserDto](docs/UserDto.md)
 - [WalletDto](docs/WalletDto.md)
 - [WalletDtoEnvelope](docs/WalletDtoEnvelope.md)


## Documentation For Authorization


## Bearer


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

