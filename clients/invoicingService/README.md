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
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesCountGet**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicescountget) | **GET** /api/v2/InvoicingService/Invoices/Count | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesDiscountsAggregatePost**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesdiscountsaggregatepost) | **POST** /api/v2/InvoicingService/Invoices/DiscountsAggregate | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesExtendedCountGet**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesextendedcountget) | **GET** /api/v2/InvoicingService/Invoices/Extended/Count | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesExtendedGet**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesextendedget) | **GET** /api/v2/InvoicingService/Invoices/Extended | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesGet**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesget) | **GET** /api/v2/InvoicingService/Invoices | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesGlobalSurchargesAggregatePost**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesglobalsurchargesaggregatepost) | **POST** /api/v2/InvoicingService/Invoices/GlobalSurchargesAggregate | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsCountGet**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidadjustmentscountget) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments/Count | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsGet**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidadjustmentsget) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdDelete**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidadjustmentsinvoiceadjustmentiddelete) | **DELETE** /api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments/{invoiceAdjustmentId} | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdGet**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidadjustmentsinvoiceadjustmentidget) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments/{invoiceAdjustmentId} | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidadjustmentsinvoiceadjustmentidput) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments/{invoiceAdjustmentId} | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsPost**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidadjustmentspost) | **POST** /api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdCalculatePut**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidcalculateput) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId}/Calculate | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdDelete**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceiddelete) | **DELETE** /api/v2/InvoicingService/Invoices/{invoiceId} | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdExtendedGet**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidextendedget) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Extended | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdLinesCountGet**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidlinescountget) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/Count | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdLinesGet**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidlinesget) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdCalculatePut**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidlinesinvoicelineidcalculateput) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Calculate | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdDelete**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidlinesinvoicelineiddelete) | **DELETE** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId} | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdGet**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidlinesinvoicelineidget) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId} | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidlinesinvoicelineidput) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId} | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesCountGet**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidlinesinvoicelineidtaxescountget) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Taxes/Count | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesGet**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidlinesinvoicelineidtaxesget) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Taxes | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidlinesinvoicelineidtaxesinvoicelinetaxiddelete) | **DELETE** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Taxes/{invoiceLineTaxId} | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidlinesinvoicelineidtaxesinvoicelinetaxidput) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Taxes/{invoiceLineTaxId} | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidlinesinvoicelineidtaxespost) | **POST** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Taxes | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdLinesPost**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidlinespost) | **POST** /api/v2/InvoicingService/Invoices/{invoiceId}/Lines | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdPaymentsCountGet**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidpaymentscountget) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Payments/Count | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdPaymentsGet**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidpaymentsget) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/Payments | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdPut**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidput) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId} | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdReferencesCountGet**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidreferencescountget) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/References/Count | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdReferencesGet**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidreferencesget) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/References | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdDelete**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidreferencesinvoicereferenceiddelete) | **DELETE** /api/v2/InvoicingService/Invoices/{invoiceId}/References/{invoiceReferenceId} | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdGet**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidreferencesinvoicereferenceidget) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId}/References/{invoiceReferenceId} | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidreferencesinvoicereferenceidput) | **PUT** /api/v2/InvoicingService/Invoices/{invoiceId}/References/{invoiceReferenceId} | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesInvoiceIdReferencesPost**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicesinvoiceidreferencespost) | **POST** /api/v2/InvoicingService/Invoices/{invoiceId}/References | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesPost**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicespost) | **POST** /api/v2/InvoicingService/Invoices | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesTaxBasesAggregatePost**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicestaxbasesaggregatepost) | **POST** /api/v2/InvoicingService/Invoices/TaxBasesAggregate | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesTaxesAggregatePost**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicestaxesaggregatepost) | **POST** /api/v2/InvoicingService/Invoices/TaxesAggregate | 
*InvoicesApi* | [**apiV2InvoicingServiceInvoicesTotalsAggregatePost**](docs/InvoicesApi.md#apiv2invoicingserviceinvoicestotalsaggregatepost) | **POST** /api/v2/InvoicingService/Invoices/TotalsAggregate | 
*InvoicesApi* | [**getInvoiceAsync**](docs/InvoicesApi.md#getinvoiceasync) | **GET** /api/v2/InvoicingService/Invoices/{invoiceId} | 


## Documentation For Models

 - [Currency](docs/Currency.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ExtendedInvoiceDto](docs/ExtendedInvoiceDto.md)
 - [ExtendedInvoiceDtoListEnvelope](docs/ExtendedInvoiceDtoListEnvelope.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [InvoiceAdjustmentCreateDto](docs/InvoiceAdjustmentCreateDto.md)
 - [InvoiceAdjustmentDto](docs/InvoiceAdjustmentDto.md)
 - [InvoiceAdjustmentDtoEnvelope](docs/InvoiceAdjustmentDtoEnvelope.md)
 - [InvoiceAdjustmentDtoListEnvelope](docs/InvoiceAdjustmentDtoListEnvelope.md)
 - [InvoiceAdjustmentUpdateDto](docs/InvoiceAdjustmentUpdateDto.md)
 - [InvoiceCreateDto](docs/InvoiceCreateDto.md)
 - [InvoiceDto](docs/InvoiceDto.md)
 - [InvoiceDtoEnvelope](docs/InvoiceDtoEnvelope.md)
 - [InvoiceDtoListEnvelope](docs/InvoiceDtoListEnvelope.md)
 - [InvoiceItemRecordDto](docs/InvoiceItemRecordDto.md)
 - [InvoiceLineAppliedTaxCreateDto](docs/InvoiceLineAppliedTaxCreateDto.md)
 - [InvoiceLineAppliedTaxDto](docs/InvoiceLineAppliedTaxDto.md)
 - [InvoiceLineAppliedTaxDtoListEnvelope](docs/InvoiceLineAppliedTaxDtoListEnvelope.md)
 - [InvoiceLineAppliedTaxUpdateDto](docs/InvoiceLineAppliedTaxUpdateDto.md)
 - [InvoiceLineCreateDto](docs/InvoiceLineCreateDto.md)
 - [InvoiceLineDto](docs/InvoiceLineDto.md)
 - [InvoiceLineDtoEnvelope](docs/InvoiceLineDtoEnvelope.md)
 - [InvoiceLineDtoListEnvelope](docs/InvoiceLineDtoListEnvelope.md)
 - [InvoiceLineUpdateDto](docs/InvoiceLineUpdateDto.md)
 - [InvoiceReferenceCreateDto](docs/InvoiceReferenceCreateDto.md)
 - [InvoiceReferenceDto](docs/InvoiceReferenceDto.md)
 - [InvoiceReferenceDtoEnvelope](docs/InvoiceReferenceDtoEnvelope.md)
 - [InvoiceReferenceDtoListEnvelope](docs/InvoiceReferenceDtoListEnvelope.md)
 - [InvoiceReferenceUpdateDto](docs/InvoiceReferenceUpdateDto.md)
 - [InvoiceUpdateDto](docs/InvoiceUpdateDto.md)
 - [Money](docs/Money.md)
 - [MoneyEnvelope](docs/MoneyEnvelope.md)
 - [SimpleContactDto](docs/SimpleContactDto.md)
 - [SimpleTenantEnrolmentDto](docs/SimpleTenantEnrolmentDto.md)
 - [SimpleUserDto](docs/SimpleUserDto.md)
 - [TenantDto](docs/TenantDto.md)


## Documentation For Authorization


## Bearer


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

