# QuotesService Bash client

## Overview

This is a Bash client script for accessing QuotesService service.

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
*QuotesApi* | [**apiV2QuotesServiceQuotesCountGet**](docs/QuotesApi.md#apiv2quotesservicequotescountget) | **GET** /api/v2/QuotesService/Quotes/Count | 
*QuotesApi* | [**apiV2QuotesServiceQuotesExtendedGet**](docs/QuotesApi.md#apiv2quotesservicequotesextendedget) | **GET** /api/v2/QuotesService/Quotes/Extended | 
*QuotesApi* | [**apiV2QuotesServiceQuotesGet**](docs/QuotesApi.md#apiv2quotesservicequotesget) | **GET** /api/v2/QuotesService/Quotes | 
*QuotesApi* | [**apiV2QuotesServiceQuotesPost**](docs/QuotesApi.md#apiv2quotesservicequotespost) | **POST** /api/v2/QuotesService/Quotes | 
*QuotesApi* | [**apiV2QuotesServiceQuotesQuoteIdCalculatePut**](docs/QuotesApi.md#apiv2quotesservicequotesquoteidcalculateput) | **PUT** /api/v2/QuotesService/Quotes/{quoteId}/Calculate | 
*QuotesApi* | [**apiV2QuotesServiceQuotesQuoteIdDelete**](docs/QuotesApi.md#apiv2quotesservicequotesquoteiddelete) | **DELETE** /api/v2/QuotesService/Quotes/{quoteId} | 
*QuotesApi* | [**apiV2QuotesServiceQuotesQuoteIdLinesCountGet**](docs/QuotesApi.md#apiv2quotesservicequotesquoteidlinescountget) | **GET** /api/v2/QuotesService/Quotes/{quoteId}/Lines/Count | 
*QuotesApi* | [**apiV2QuotesServiceQuotesQuoteIdLinesGet**](docs/QuotesApi.md#apiv2quotesservicequotesquoteidlinesget) | **GET** /api/v2/QuotesService/Quotes/{quoteId}/Lines | 
*QuotesApi* | [**apiV2QuotesServiceQuotesQuoteIdLinesPost**](docs/QuotesApi.md#apiv2quotesservicequotesquoteidlinespost) | **POST** /api/v2/QuotesService/Quotes/{quoteId}/Lines | 
*QuotesApi* | [**apiV2QuotesServiceQuotesQuoteIdLinesQuoteLineIdCalculatePut**](docs/QuotesApi.md#apiv2quotesservicequotesquoteidlinesquotelineidcalculateput) | **PUT** /api/v2/QuotesService/Quotes/{quoteId}/Lines/{quoteLineId}/Calculate | 
*QuotesApi* | [**apiV2QuotesServiceQuotesQuoteIdLinesQuoteLineIdDelete**](docs/QuotesApi.md#apiv2quotesservicequotesquoteidlinesquotelineiddelete) | **DELETE** /api/v2/QuotesService/Quotes/{quoteId}/Lines/{quoteLineId} | 
*QuotesApi* | [**apiV2QuotesServiceQuotesQuoteIdLinesQuoteLineIdGet**](docs/QuotesApi.md#apiv2quotesservicequotesquoteidlinesquotelineidget) | **GET** /api/v2/QuotesService/Quotes/{quoteId}/Lines/{quoteLineId} | 
*QuotesApi* | [**apiV2QuotesServiceQuotesQuoteIdLinesQuoteLineIdPut**](docs/QuotesApi.md#apiv2quotesservicequotesquoteidlinesquotelineidput) | **PUT** /api/v2/QuotesService/Quotes/{quoteId}/Lines/{quoteLineId} | 
*QuotesApi* | [**apiV2QuotesServiceQuotesQuoteIdPut**](docs/QuotesApi.md#apiv2quotesservicequotesquoteidput) | **PUT** /api/v2/QuotesService/Quotes/{quoteId} | 
*QuotesApi* | [**getQuoteAsync**](docs/QuotesApi.md#getquoteasync) | **GET** /api/v2/QuotesService/Quotes/{quoteId} | 


## Documentation For Models

 - [ContactDto](docs/ContactDto.md)
 - [Currency](docs/Currency.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ExtendedQuoteDto](docs/ExtendedQuoteDto.md)
 - [ExtendedQuoteDtoListEnvelope](docs/ExtendedQuoteDtoListEnvelope.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [Money](docs/Money.md)
 - [QuoteCreateDto](docs/QuoteCreateDto.md)
 - [QuoteDto](docs/QuoteDto.md)
 - [QuoteDtoEnvelope](docs/QuoteDtoEnvelope.md)
 - [QuoteDtoListEnvelope](docs/QuoteDtoListEnvelope.md)
 - [QuoteLineCreateDto](docs/QuoteLineCreateDto.md)
 - [QuoteLineDto](docs/QuoteLineDto.md)
 - [QuoteLineDtoEnvelope](docs/QuoteLineDtoEnvelope.md)
 - [QuoteLineDtoListEnvelope](docs/QuoteLineDtoListEnvelope.md)
 - [QuoteLineUpdateDto](docs/QuoteLineUpdateDto.md)
 - [QuoteUpdateDto](docs/QuoteUpdateDto.md)
 - [TenantDto](docs/TenantDto.md)
 - [TenantEnrolmentDto](docs/TenantEnrolmentDto.md)
 - [UserDto](docs/UserDto.md)


## Documentation For Authorization


## Bearer


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

