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
*WalletsApi* | [**createWalletBankAccountAsync**](docs/WalletsApi.md#createwalletbankaccountasync) | **POST** /api/v2/WalletsService/Wallets/{walletId}/BankAccounts | Create Wallet Bank Account
*WalletsApi* | [**createWalletLocationAsync**](docs/WalletsApi.md#createwalletlocationasync) | **POST** /api/v2/WalletsService/Wallets/{walletId}/Locations | Create Wallet Location
*WalletsApi* | [**createWalletPaymentAsync**](docs/WalletsApi.md#createwalletpaymentasync) | **POST** /api/v2/WalletsService/Wallets/{walletId}/Payments | Create Wallet Payment
*WalletsApi* | [**createWalletTokenAsync**](docs/WalletsApi.md#createwallettokenasync) | **POST** /api/v2/WalletsService/Wallets/{walletId}/Tokens | Create Wallet Token
*WalletsApi* | [**createWalletWithdrawRequestAsync**](docs/WalletsApi.md#createwalletwithdrawrequestasync) | **POST** /api/v2/WalletsService/Wallets/{walletId}/Withdraws | Create Wallet Withdraw Request
*WalletsApi* | [**deleteWalletBankAccountAsync**](docs/WalletsApi.md#deletewalletbankaccountasync) | **DELETE** /api/v2/WalletsService/Wallets/{walletId}/BankAccounts/{bankAccountId} | Delete Wallet Bank Account
*WalletsApi* | [**deleteWalletLocationAsync**](docs/WalletsApi.md#deletewalletlocationasync) | **DELETE** /api/v2/WalletsService/Wallets/{walletId}/Locations/{locationId} | Delete Wallet Location
*WalletsApi* | [**deleteWalletTokenAsync**](docs/WalletsApi.md#deletewallettokenasync) | **DELETE** /api/v2/WalletsService/Wallets/{walletId}/Tokens/{tokenId} | Delete Wallet Token
*WalletsApi* | [**getIncomingPaymentsAsync**](docs/WalletsApi.md#getincomingpaymentsasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Payments/Incoming | Get Incoming Payments
*WalletsApi* | [**getIncomingPaymentsCountAsync**](docs/WalletsApi.md#getincomingpaymentscountasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Payments/Incoming/Count | Get Incoming Payments Count
*WalletsApi* | [**getIncomingWalletInvoicesAsync**](docs/WalletsApi.md#getincomingwalletinvoicesasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Invoices/Incoming | Get Incoming Wallet Invoices
*WalletsApi* | [**getIncomingWalletInvoicesCountAsync**](docs/WalletsApi.md#getincomingwalletinvoicescountasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Invoices/Incoming/Count | Get Incoming Wallet Invoices Count
*WalletsApi* | [**getOutgoingPaymentsAsync**](docs/WalletsApi.md#getoutgoingpaymentsasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Payments/Outgoing | Get Outgoing Payments
*WalletsApi* | [**getOutgoingPaymentsCountAsync**](docs/WalletsApi.md#getoutgoingpaymentscountasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Payments/Outgoing/Count | Get Outgoing Payments Count
*WalletsApi* | [**getOutgoingWalletInvoicesAsync**](docs/WalletsApi.md#getoutgoingwalletinvoicesasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Invoices/Outgoing | Get Outgoing Wallet Invoices
*WalletsApi* | [**getOutgoingWalletInvoicesCountAsync**](docs/WalletsApi.md#getoutgoingwalletinvoicescountasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Invoices/Outgoing/Count | Get Outgoing Wallet Invoices Count
*WalletsApi* | [**getWalletBankAccountAsync**](docs/WalletsApi.md#getwalletbankaccountasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/BankAccounts/{bankAccountId} | Get Wallet Bank Account
*WalletsApi* | [**getWalletBankAccountsAsync**](docs/WalletsApi.md#getwalletbankaccountsasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/BankAccounts | Get Wallet Bank Accounts
*WalletsApi* | [**getWalletBankAccountsCountAsync**](docs/WalletsApi.md#getwalletbankaccountscountasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/BankAccounts/Count | Get Wallet Bank Accounts Count
*WalletsApi* | [**getWalletChargebacksAsync**](docs/WalletsApi.md#getwalletchargebacksasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Chargebacks | Get Wallet Chargebacks
*WalletsApi* | [**getWalletChargebacksCountAsync**](docs/WalletsApi.md#getwalletchargebackscountasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Chargebacks/Count | Get Wallet Chargebacks Count
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
*WalletsApi* | [**getWalletQuotesAsync**](docs/WalletsApi.md#getwalletquotesasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Quotes | Get Wallet Quotes
*WalletsApi* | [**getWalletQuotesCountAsync**](docs/WalletsApi.md#getwalletquotescountasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Quotes/Count | Get Wallet Quotes Count
*WalletsApi* | [**getWalletRefundsAsync**](docs/WalletsApi.md#getwalletrefundsasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Refunds | Get Wallet Refunds
*WalletsApi* | [**getWalletRefundsCountAsync**](docs/WalletsApi.md#getwalletrefundscountasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Refunds/Count | Get Wallet Refunds Count
*WalletsApi* | [**getWalletTokenAsync**](docs/WalletsApi.md#getwallettokenasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Tokens/{tokenId} | Get Wallet Token
*WalletsApi* | [**getWalletTokensAsync**](docs/WalletsApi.md#getwallettokensasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Tokens | Get Wallet Tokens
*WalletsApi* | [**getWalletTokensCountAsync**](docs/WalletsApi.md#getwallettokenscountasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Tokens/Count | Get Wallet Tokens Count
*WalletsApi* | [**getWalletWithdrawRequestsAsync**](docs/WalletsApi.md#getwalletwithdrawrequestsasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/WithdrawRequests | Get Wallet Withdraw Requests
*WalletsApi* | [**getWalletWithdrawRequestsCountAsync**](docs/WalletsApi.md#getwalletwithdrawrequestscountasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/WithdrawRequests/Count | Get Wallet Withdraw Requests Count
*WalletsApi* | [**getWalletWithdrawsAsync**](docs/WalletsApi.md#getwalletwithdrawsasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Withdraws | Get Wallet Withdraws
*WalletsApi* | [**getWalletWithdrawsCountAsync**](docs/WalletsApi.md#getwalletwithdrawscountasync) | **GET** /api/v2/WalletsService/Wallets/{walletId}/Withdraws/Count | Get Wallet Withdraws Count
*WalletsApi* | [**updateWalletBankAccountAsync**](docs/WalletsApi.md#updatewalletbankaccountasync) | **PUT** /api/v2/WalletsService/Wallets/{walletId}/BankAccounts/{bankAccountId} | Update Wallet Bank Account
*WalletsApi* | [**updateWalletLocationAsync**](docs/WalletsApi.md#updatewalletlocationasync) | **PUT** /api/v2/WalletsService/Wallets/{walletId}/Locations/{locationId} | Update Wallet Location
*WalletsApi* | [**updateWalletTokenAsync**](docs/WalletsApi.md#updatewallettokenasync) | **PUT** /api/v2/WalletsService/Wallets/{walletId}/Tokens/{tokenId} | Update Wallet Token


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [BankAccountCreateDto](docs/BankAccountCreateDto.md)
 - [BankAccountDto](docs/BankAccountDto.md)
 - [BankAccountDtoEnvelope](docs/BankAccountDtoEnvelope.md)
 - [BankAccountDtoListEnvelope](docs/BankAccountDtoListEnvelope.md)
 - [BankAccountUpdateDto](docs/BankAccountUpdateDto.md)
 - [ContactDto](docs/ContactDto.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ExtendedOrderDto](docs/ExtendedOrderDto.md)
 - [ExtendedOrderDtoListEnvelope](docs/ExtendedOrderDtoListEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [InvoiceDto](docs/InvoiceDto.md)
 - [InvoiceDtoListEnvelope](docs/InvoiceDtoListEnvelope.md)
 - [LocationCreateDto](docs/LocationCreateDto.md)
 - [LocationDto](docs/LocationDto.md)
 - [LocationDtoEnvelope](docs/LocationDtoEnvelope.md)
 - [LocationDtoListEnvelope](docs/LocationDtoListEnvelope.md)
 - [LocationUpdateDto](docs/LocationUpdateDto.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [OrderDto](docs/OrderDto.md)
 - [OrderDtoListEnvelope](docs/OrderDtoListEnvelope.md)
 - [PaymentChargebackDto](docs/PaymentChargebackDto.md)
 - [PaymentChargebackDtoListEnvelope](docs/PaymentChargebackDtoListEnvelope.md)
 - [PaymentCreateDto](docs/PaymentCreateDto.md)
 - [PaymentDto](docs/PaymentDto.md)
 - [PaymentDtoListEnvelope](docs/PaymentDtoListEnvelope.md)
 - [PaymentRefundDto](docs/PaymentRefundDto.md)
 - [PaymentRefundDtoListEnvelope](docs/PaymentRefundDtoListEnvelope.md)
 - [PaymentTokenCreateDto](docs/PaymentTokenCreateDto.md)
 - [PaymentTokenDto](docs/PaymentTokenDto.md)
 - [PaymentTokenDtoEnvelope](docs/PaymentTokenDtoEnvelope.md)
 - [PaymentTokenDtoListEnvelope](docs/PaymentTokenDtoListEnvelope.md)
 - [PaymentTokenUpdateDto](docs/PaymentTokenUpdateDto.md)
 - [QuoteDto](docs/QuoteDto.md)
 - [QuoteDtoListEnvelope](docs/QuoteDtoListEnvelope.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [TenantDto](docs/TenantDto.md)
 - [TenantEnrollmentDto](docs/TenantEnrollmentDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)
 - [UserDto](docs/UserDto.md)
 - [WalletDto](docs/WalletDto.md)
 - [WalletDtoEnvelope](docs/WalletDtoEnvelope.md)
 - [WalletWithdrawDto](docs/WalletWithdrawDto.md)
 - [WalletWithdrawDtoListEnvelope](docs/WalletWithdrawDtoListEnvelope.md)
 - [WalletWithdrawRequestCreateDto](docs/WalletWithdrawRequestCreateDto.md)
 - [WalletWithdrawRequestDto](docs/WalletWithdrawRequestDto.md)
 - [WalletWithdrawRequestDtoListEnvelope](docs/WalletWithdrawRequestDtoListEnvelope.md)


## Documentation For Authorization

 All endpoints do not require authorization.

