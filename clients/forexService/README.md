# ForexService Bash client

## Overview

This is a Bash client script for accessing ForexService service.

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
*ExchangeApi* | [**apiV2ForexServiceExchangeHistoryGet**](docs/ExchangeApi.md#apiv2forexserviceexchangehistoryget) | **GET** /api/v2/ForexService/Exchange/History | 
*ExchangeApi* | [**apiV2ForexServiceExchangeLatestGet**](docs/ExchangeApi.md#apiv2forexserviceexchangelatestget) | **GET** /api/v2/ForexService/Exchange/Latest | 
*ExchangeVApi* | [**apiV3ForexServiceExchangeHistoryGet**](docs/ExchangeVApi.md#apiv3forexserviceexchangehistoryget) | **GET** /api/v3/ForexService/Exchange/History | 
*ExchangeVApi* | [**apiV3ForexServiceExchangeLatestGet**](docs/ExchangeVApi.md#apiv3forexserviceexchangelatestget) | **GET** /api/v3/ForexService/Exchange/Latest | 
*RatesApi* | [**apiV2ForexServiceRatesHistoryCurrencyIdGet**](docs/RatesApi.md#apiv2forexservicerateshistorycurrencyidget) | **GET** /api/v2/ForexService/Rates/History/{currencyId} | 
*RatesApi* | [**apiV2ForexServiceRatesHistoryGet**](docs/RatesApi.md#apiv2forexservicerateshistoryget) | **GET** /api/v2/ForexService/Rates/History | 
*RatesApi* | [**apiV2ForexServiceRatesLatestCurrencyIdGet**](docs/RatesApi.md#apiv2forexservicerateslatestcurrencyidget) | **GET** /api/v2/ForexService/Rates/Latest/{currencyId} | 
*RatesApi* | [**apiV2ForexServiceRatesLatestGet**](docs/RatesApi.md#apiv2forexservicerateslatestget) | **GET** /api/v2/ForexService/Rates/Latest | 


## Documentation For Models

 - [Currency](docs/Currency.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ExchangeRate](docs/ExchangeRate.md)
 - [ExchangeRateEnvelope](docs/ExchangeRateEnvelope.md)
 - [ForexRatesDto](docs/ForexRatesDto.md)
 - [ForexRatesDtoEnvelope](docs/ForexRatesDtoEnvelope.md)
 - [Money](docs/Money.md)
 - [MoneyEnvelope](docs/MoneyEnvelope.md)


## Documentation For Authorization


## Bearer


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

