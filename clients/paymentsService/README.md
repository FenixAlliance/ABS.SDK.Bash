# PaymentsService Bash client

## Overview

This is a Bash client script for accessing PaymentsService service.

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
*PaymentMethodsApi* | [**createPaymentMethodAsync**](docs/PaymentMethodsApi.md#createpaymentmethodasync) | **POST** /api/v2/PaymentsService/PaymentMethods | Creates a new payment method
*PaymentMethodsApi* | [**deletePaymentMethodAsync**](docs/PaymentMethodsApi.md#deletepaymentmethodasync) | **DELETE** /api/v2/PaymentsService/PaymentMethods/{paymentMethodId} | Deletes a payment method
*PaymentMethodsApi* | [**getPaymentMethodDetailsAsync**](docs/PaymentMethodsApi.md#getpaymentmethoddetailsasync) | **GET** /api/v2/PaymentsService/PaymentMethods/{paymentMethodId} | Gets a payment method by ID
*PaymentMethodsApi* | [**getPaymentMethodsAsync**](docs/PaymentMethodsApi.md#getpaymentmethodsasync) | **GET** /api/v2/PaymentsService/PaymentMethods | Retrieves all payment methods
*PaymentMethodsApi* | [**getPaymentMethodsCountAsync**](docs/PaymentMethodsApi.md#getpaymentmethodscountasync) | **GET** /api/v2/PaymentsService/PaymentMethods/Count | Counts payment methods
*PaymentMethodsApi* | [**updatePaymentMethodAsync**](docs/PaymentMethodsApi.md#updatepaymentmethodasync) | **PUT** /api/v2/PaymentsService/PaymentMethods/{paymentMethodId} | Updates a payment method
*PaymentModesApi* | [**createPaymentModeAsync**](docs/PaymentModesApi.md#createpaymentmodeasync) | **POST** /api/v2/PaymentsService/PaymentModes | Creates a new payment mode
*PaymentModesApi* | [**deletePaymentModeAsync**](docs/PaymentModesApi.md#deletepaymentmodeasync) | **DELETE** /api/v2/PaymentsService/PaymentModes/{paymentModeId} | Deletes a payment mode
*PaymentModesApi* | [**getPaymentModeDetailsAsync**](docs/PaymentModesApi.md#getpaymentmodedetailsasync) | **GET** /api/v2/PaymentsService/PaymentModes/{paymentModeId} | Gets a payment mode by ID
*PaymentModesApi* | [**getPaymentModesAsync**](docs/PaymentModesApi.md#getpaymentmodesasync) | **GET** /api/v2/PaymentsService/PaymentModes | Retrieves all payment modes
*PaymentModesApi* | [**getPaymentModesCountAsync**](docs/PaymentModesApi.md#getpaymentmodescountasync) | **GET** /api/v2/PaymentsService/PaymentModes/Count | Counts payment modes
*PaymentModesApi* | [**updatePaymentModeAsync**](docs/PaymentModesApi.md#updatepaymentmodeasync) | **PUT** /api/v2/PaymentsService/PaymentModes/{paymentModeId} | Updates a payment mode
*PaymentTermsApi* | [**createPaymentTermAsync**](docs/PaymentTermsApi.md#createpaymenttermasync) | **POST** /api/v2/PaymentsService/PaymentTerms | Creates a new payment term
*PaymentTermsApi* | [**deletePaymentTermAsync**](docs/PaymentTermsApi.md#deletepaymenttermasync) | **DELETE** /api/v2/PaymentsService/PaymentTerms/{paymentTermId} | Deletes a payment term
*PaymentTermsApi* | [**getPaymentTermDetailsAsync**](docs/PaymentTermsApi.md#getpaymenttermdetailsasync) | **GET** /api/v2/PaymentsService/PaymentTerms/{paymentTermId} | Gets a payment term by ID
*PaymentTermsApi* | [**getPaymentTermsAsync**](docs/PaymentTermsApi.md#getpaymenttermsasync) | **GET** /api/v2/PaymentsService/PaymentTerms | Retrieves all payment terms
*PaymentTermsApi* | [**getPaymentTermsCountAsync**](docs/PaymentTermsApi.md#getpaymenttermscountasync) | **GET** /api/v2/PaymentsService/PaymentTerms/Count | Counts payment terms
*PaymentTermsApi* | [**updatePaymentTermAsync**](docs/PaymentTermsApi.md#updatepaymenttermasync) | **PUT** /api/v2/PaymentsService/PaymentTerms/{paymentTermId} | Updates a payment term
*PaymentsApi* | [**createPaymentAsync**](docs/PaymentsApi.md#createpaymentasync) | **POST** /api/v2/PaymentsService/Payments | Creates a new payment
*PaymentsApi* | [**deletePaymentAsync**](docs/PaymentsApi.md#deletepaymentasync) | **DELETE** /api/v2/PaymentsService/Payments/{paymentId} | Deletes a payment
*PaymentsApi* | [**getPaymentAsync**](docs/PaymentsApi.md#getpaymentasync) | **GET** /api/v2/PaymentsService/Payments/{paymentId}/Details | Gets a payment by ID (deprecated)
*PaymentsApi* | [**getPaymentAsyncV2**](docs/PaymentsApi.md#getpaymentasyncv2) | **GET** /api/v2/PaymentsService/Payments/{paymentId} | Gets a payment by ID
*PaymentsApi* | [**getPaymentsAsync**](docs/PaymentsApi.md#getpaymentsasync) | **GET** /api/v2/PaymentsService/Payments | Retrieves all payments
*PaymentsApi* | [**updatePaymentAsync**](docs/PaymentsApi.md#updatepaymentasync) | **PUT** /api/v2/PaymentsService/Payments/{paymentId} | Updates a payment


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
 - [PaymentCreateDto](docs/PaymentCreateDto.md)
 - [PaymentDto](docs/PaymentDto.md)
 - [PaymentDtoListEnvelope](docs/PaymentDtoListEnvelope.md)
 - [PaymentMethodCreateDto](docs/PaymentMethodCreateDto.md)
 - [PaymentMethodDto](docs/PaymentMethodDto.md)
 - [PaymentMethodDtoEnvelope](docs/PaymentMethodDtoEnvelope.md)
 - [PaymentMethodDtoIReadOnlyListEnvelope](docs/PaymentMethodDtoIReadOnlyListEnvelope.md)
 - [PaymentMethodUpdateDto](docs/PaymentMethodUpdateDto.md)
 - [PaymentModeCreateDto](docs/PaymentModeCreateDto.md)
 - [PaymentModeDto](docs/PaymentModeDto.md)
 - [PaymentModeDtoEnvelope](docs/PaymentModeDtoEnvelope.md)
 - [PaymentModeDtoIReadOnlyListEnvelope](docs/PaymentModeDtoIReadOnlyListEnvelope.md)
 - [PaymentModeUpdateDto](docs/PaymentModeUpdateDto.md)
 - [PaymentTermCreateDto](docs/PaymentTermCreateDto.md)
 - [PaymentTermDto](docs/PaymentTermDto.md)
 - [PaymentTermDtoEnvelope](docs/PaymentTermDtoEnvelope.md)
 - [PaymentTermDtoIReadOnlyListEnvelope](docs/PaymentTermDtoIReadOnlyListEnvelope.md)
 - [PaymentTermUpdateDto](docs/PaymentTermUpdateDto.md)
 - [PaymentUpdateDto](docs/PaymentUpdateDto.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

