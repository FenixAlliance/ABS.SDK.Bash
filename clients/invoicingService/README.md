# InvoicingService Bash client

## Overview

This is a Bash client script for accessing InvoicingService service.

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
*InvoicesApi* | [**aggregateInvoiceDiscounts**](docs/InvoicesApi.md#aggregateinvoicediscounts) | **POST** /api/v2/InvoicingService/Invoices/DiscountsAggregate | Aggregate invoice discounts.
*InvoicesApi* | [**aggregateInvoiceGlobalSurcharges**](docs/InvoicesApi.md#aggregateinvoiceglobalsurcharges) | **POST** /api/v2/InvoicingService/Invoices/GlobalSurchargesAggregate | Aggregate invoice global surcharges.
*InvoicesApi* | [**aggregateInvoiceTaxBases**](docs/InvoicesApi.md#aggregateinvoicetaxbases) | **POST** /api/v2/InvoicingService/Invoices/TaxBasesAggregate | Aggregate invoice tax bases.
*InvoicesApi* | [**aggregateInvoiceTaxes**](docs/InvoicesApi.md#aggregateinvoicetaxes) | **POST** /api/v2/InvoicingService/Invoices/TaxesAggregate | Aggregate invoice taxes.
*InvoicesApi* | [**aggregateInvoiceTotals**](docs/InvoicesApi.md#aggregateinvoicetotals) | **POST** /api/v2/InvoicingService/Invoices/TotalsAggregate | Aggregate invoice totals.
*InvoicesApi* | [**calculateInvoice**](docs/InvoicesApi.md#calculateinvoice) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId}/Calculate | Calculate an invoice.
*InvoicesApi* | [**calculateInvoiceLine**](docs/InvoicesApi.md#calculateinvoiceline) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Calculate | Calculate an invoice line.
*InvoicesApi* | [**createInvoice**](docs/InvoicesApi.md#createinvoice) | **POST** /api/v2/InvoicingService/Invoices | Create a new invoice.
*InvoicesApi* | [**createInvoiceAdjustment**](docs/InvoicesApi.md#createinvoiceadjustment) | **POST** /api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments | Create a new invoice adjustment.
*InvoicesApi* | [**createInvoiceLine**](docs/InvoicesApi.md#createinvoiceline) | **POST** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines | Create a new invoice line.
*InvoicesApi* | [**createInvoiceLineTax**](docs/InvoicesApi.md#createinvoicelinetax) | **POST** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Taxes | Create a new tax for an invoice line.
*InvoicesApi* | [**createInvoiceReference**](docs/InvoicesApi.md#createinvoicereference) | **POST** /api/v2/InvoicingService/Invoices/{invoiceId}/References | Create a new invoice reference.
*InvoicesApi* | [**deleteInvoice**](docs/InvoicesApi.md#deleteinvoice) | **DELETE** /api/v2/InvoicingService/Invoices/{invoiceId} | Delete an invoice.
*InvoicesApi* | [**deleteInvoiceAdjustment**](docs/InvoicesApi.md#deleteinvoiceadjustment) | **DELETE** /api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments/{invoiceAdjustmentId} | Delete an invoice adjustment.
*InvoicesApi* | [**deleteInvoiceLine**](docs/InvoicesApi.md#deleteinvoiceline) | **DELETE** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId} | Delete an invoice line.
*InvoicesApi* | [**deleteInvoiceLineTax**](docs/InvoicesApi.md#deleteinvoicelinetax) | **DELETE** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Taxes/{invoiceLineTaxId} | Delete a tax from an invoice line.
*InvoicesApi* | [**deleteInvoiceReference**](docs/InvoicesApi.md#deleteinvoicereference) | **DELETE** /api/v2/InvoicingService/Invoices/{invoiceId}/References/{invoiceReferenceId} | Delete an invoice reference.
*InvoicesApi* | [**getExtendedInvoice**](docs/InvoicesApi.md#getextendedinvoice) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Extended | Get an extended invoice by ID.
*InvoicesApi* | [**getExtendedInvoices**](docs/InvoicesApi.md#getextendedinvoices) | **GET** /api/v2/InvoicingService/Invoices/Extended | Get a list of extended invoices.
*InvoicesApi* | [**getExtendedInvoicesCount**](docs/InvoicesApi.md#getextendedinvoicescount) | **GET** /api/v2/InvoicingService/Invoices/Extended/Count | Get the count of extended invoices.
*InvoicesApi* | [**getInvoice**](docs/InvoicesApi.md#getinvoice) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId} | Get an invoice by ID.
*InvoicesApi* | [**getInvoiceAdjustment**](docs/InvoicesApi.md#getinvoiceadjustment) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments/{invoiceAdjustmentId} | Get an invoice adjustment by ID.
*InvoicesApi* | [**getInvoiceAdjustments**](docs/InvoicesApi.md#getinvoiceadjustments) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments | Get invoice adjustments.
*InvoicesApi* | [**getInvoiceAdjustmentsCount**](docs/InvoicesApi.md#getinvoiceadjustmentscount) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments/Count | Get the count of invoice adjustments.
*InvoicesApi* | [**getInvoiceLine**](docs/InvoicesApi.md#getinvoiceline) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId} | Get an invoice line by ID.
*InvoicesApi* | [**getInvoiceLineTaxes**](docs/InvoicesApi.md#getinvoicelinetaxes) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Taxes | Get taxes for an invoice line.
*InvoicesApi* | [**getInvoiceLineTaxesCount**](docs/InvoicesApi.md#getinvoicelinetaxescount) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Taxes/Count | Get the count of taxes for an invoice line.
*InvoicesApi* | [**getInvoiceLines**](docs/InvoicesApi.md#getinvoicelines) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines | Get invoice lines.
*InvoicesApi* | [**getInvoiceLinesCount**](docs/InvoicesApi.md#getinvoicelinescount) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/Count | Get the count of invoice lines.
*InvoicesApi* | [**getInvoicePayments**](docs/InvoicesApi.md#getinvoicepayments) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Payments | Get payments for an invoice.
*InvoicesApi* | [**getInvoicePaymentsCount**](docs/InvoicesApi.md#getinvoicepaymentscount) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Payments/Count | Get the count of payments for an invoice.
*InvoicesApi* | [**getInvoiceReference**](docs/InvoicesApi.md#getinvoicereference) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/References/{invoiceReferenceId} | Get an invoice reference by ID.
*InvoicesApi* | [**getInvoiceReferences**](docs/InvoicesApi.md#getinvoicereferences) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/References | Get invoice references.
*InvoicesApi* | [**getInvoiceReferencesCount**](docs/InvoicesApi.md#getinvoicereferencescount) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/References/Count | Get the count of invoice references.
*InvoicesApi* | [**getInvoices**](docs/InvoicesApi.md#getinvoices) | **GET** /api/v2/InvoicingService/Invoices | Get a list of invoices.
*InvoicesApi* | [**getInvoicesCount**](docs/InvoicesApi.md#getinvoicescount) | **GET** /api/v2/InvoicingService/Invoices/Count | Get the count of invoices.
*InvoicesApi* | [**previewInvoiceEmail**](docs/InvoicesApi.md#previewinvoiceemail) | **POST** /api/v2/InvoicingService/Invoices/{invoiceId}/Emails/Preview | Preview the rendered email for an invoice.
*InvoicesApi* | [**sendInvoiceEmail**](docs/InvoicesApi.md#sendinvoiceemail) | **POST** /api/v2/InvoicingService/Invoices/{invoiceId}/Emails/Send | Send an invoice transactional email to recipients.
*InvoicesApi* | [**updateInvoice**](docs/InvoicesApi.md#updateinvoice) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId} | Update an invoice.
*InvoicesApi* | [**updateInvoiceAdjustment**](docs/InvoicesApi.md#updateinvoiceadjustment) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments/{invoiceAdjustmentId} | Update an invoice adjustment.
*InvoicesApi* | [**updateInvoiceLine**](docs/InvoicesApi.md#updateinvoiceline) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId} | Update an invoice line.
*InvoicesApi* | [**updateInvoiceLineTax**](docs/InvoicesApi.md#updateinvoicelinetax) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Taxes/{invoiceLineTaxId} | Update a tax for an invoice line.
*InvoicesApi* | [**updateInvoiceReference**](docs/InvoicesApi.md#updateinvoicereference) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId}/References/{invoiceReferenceId} | Update an invoice reference.


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [CurrencyId](docs/CurrencyId.md)
 - [EmailDispatchRequest](docs/EmailDispatchRequest.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [Envelope](docs/Envelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ExtendedInvoiceDto](docs/ExtendedInvoiceDto.md)
 - [ExtendedInvoiceDtoListEnvelope](docs/ExtendedInvoiceDtoListEnvelope.md)
 - [ForexRates](docs/ForexRates.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [InvoiceAdjustmentCreateDto](docs/InvoiceAdjustmentCreateDto.md)
 - [InvoiceAdjustmentDto](docs/InvoiceAdjustmentDto.md)
 - [InvoiceAdjustmentDtoEnvelope](docs/InvoiceAdjustmentDtoEnvelope.md)
 - [InvoiceAdjustmentDtoIReadOnlyListEnvelope](docs/InvoiceAdjustmentDtoIReadOnlyListEnvelope.md)
 - [InvoiceAdjustmentUpdateDto](docs/InvoiceAdjustmentUpdateDto.md)
 - [InvoiceCreateDto](docs/InvoiceCreateDto.md)
 - [InvoiceDto](docs/InvoiceDto.md)
 - [InvoiceDtoEnvelope](docs/InvoiceDtoEnvelope.md)
 - [InvoiceDtoListEnvelope](docs/InvoiceDtoListEnvelope.md)
 - [InvoiceLineAppliedTaxCreateDto](docs/InvoiceLineAppliedTaxCreateDto.md)
 - [InvoiceLineAppliedTaxDto](docs/InvoiceLineAppliedTaxDto.md)
 - [InvoiceLineAppliedTaxDtoIReadOnlyListEnvelope](docs/InvoiceLineAppliedTaxDtoIReadOnlyListEnvelope.md)
 - [InvoiceLineAppliedTaxUpdateDto](docs/InvoiceLineAppliedTaxUpdateDto.md)
 - [InvoiceLineCreateDto](docs/InvoiceLineCreateDto.md)
 - [InvoiceLineDto](docs/InvoiceLineDto.md)
 - [InvoiceLineDtoEnvelope](docs/InvoiceLineDtoEnvelope.md)
 - [InvoiceLineDtoIReadOnlyListEnvelope](docs/InvoiceLineDtoIReadOnlyListEnvelope.md)
 - [InvoiceLineDtoListEnvelope](docs/InvoiceLineDtoListEnvelope.md)
 - [InvoiceLineUpdateDto](docs/InvoiceLineUpdateDto.md)
 - [InvoiceReferenceCreateDto](docs/InvoiceReferenceCreateDto.md)
 - [InvoiceReferenceDto](docs/InvoiceReferenceDto.md)
 - [InvoiceReferenceDtoEnvelope](docs/InvoiceReferenceDtoEnvelope.md)
 - [InvoiceReferenceDtoIReadOnlyListEnvelope](docs/InvoiceReferenceDtoIReadOnlyListEnvelope.md)
 - [InvoiceReferenceUpdateDto](docs/InvoiceReferenceUpdateDto.md)
 - [InvoiceUpdateDto](docs/InvoiceUpdateDto.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [Money](docs/Money.md)
 - [MoneyEnvelope](docs/MoneyEnvelope.md)
 - [PaymentDto](docs/PaymentDto.md)
 - [PaymentDtoIReadOnlyListEnvelope](docs/PaymentDtoIReadOnlyListEnvelope.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [SimpleContactDto](docs/SimpleContactDto.md)
 - [SimpleTenantEnrollmentDto](docs/SimpleTenantEnrollmentDto.md)
 - [SimpleUserDto](docs/SimpleUserDto.md)
 - [TenantDto](docs/TenantDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

