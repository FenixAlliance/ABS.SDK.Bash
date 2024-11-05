# GlobeService Bash client

## Overview

This is a Bash client script for accessing GlobeService service.

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
*CountriesApi* | [**apiV2GlobeServiceCountriesCountryIdCallingCodesGet**](docs/CountriesApi.md#apiv2globeservicecountriescountryidcallingcodesget) | **GET** /api/v2/GlobeService/Countries/{countryId}/CallingCodes | 
*CountriesApi* | [**apiV2GlobeServiceCountriesCountryIdCurrenciesGet**](docs/CountriesApi.md#apiv2globeservicecountriescountryidcurrenciesget) | **GET** /api/v2/GlobeService/Countries/{countryId}/Currencies | 
*CountriesApi* | [**apiV2GlobeServiceCountriesCountryIdGet**](docs/CountriesApi.md#apiv2globeservicecountriescountryidget) | **GET** /api/v2/GlobeService/Countries/{countryId} | 
*CountriesApi* | [**apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet**](docs/CountriesApi.md#apiv2globeservicecountriescountryidstatescountrystateidcitiesget) | **GET** /api/v2/GlobeService/Countries/{countryId}/States/{countryStateId}/Cities | 
*CountriesApi* | [**apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet**](docs/CountriesApi.md#apiv2globeservicecountriescountryidstatescountrystateidget) | **GET** /api/v2/GlobeService/Countries/{countryId}/States/{countryStateId} | 
*CountriesApi* | [**apiV2GlobeServiceCountriesCountryIdStatesGet**](docs/CountriesApi.md#apiv2globeservicecountriescountryidstatesget) | **GET** /api/v2/GlobeService/Countries/{countryId}/States | 
*CountriesApi* | [**apiV2GlobeServiceCountriesCountryIdTimezonesGet**](docs/CountriesApi.md#apiv2globeservicecountriescountryidtimezonesget) | **GET** /api/v2/GlobeService/Countries/{countryId}/Timezones | 
*CountriesApi* | [**apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet**](docs/CountriesApi.md#apiv2globeservicecountriescountryidtopleveldomainsget) | **GET** /api/v2/GlobeService/Countries/{countryId}/TopLevelDomains | 
*CountriesApi* | [**apiV2GlobeServiceCountriesGet**](docs/CountriesApi.md#apiv2globeservicecountriesget) | **GET** /api/v2/GlobeService/Countries | 
*CountriesApi* | [**apiV2GlobeServiceCountriesSearchGet**](docs/CountriesApi.md#apiv2globeservicecountriessearchget) | **GET** /api/v2/GlobeService/Countries/Search | 
*CurrenciesApi* | [**apiV2GlobeServiceCurrenciesCurrencyIdGet**](docs/CurrenciesApi.md#apiv2globeservicecurrenciescurrencyidget) | **GET** /api/v2/GlobeService/Currencies/{currencyId} | 
*CurrenciesApi* | [**apiV2GlobeServiceCurrenciesGet**](docs/CurrenciesApi.md#apiv2globeservicecurrenciesget) | **GET** /api/v2/GlobeService/Currencies | 
*LanguagesApi* | [**apiV2GlobeServiceLanguagesGet**](docs/LanguagesApi.md#apiv2globeservicelanguagesget) | **GET** /api/v2/GlobeService/Languages | 
*LanguagesApi* | [**apiV2GlobeServiceLanguagesLanguageIdGet**](docs/LanguagesApi.md#apiv2globeservicelanguageslanguageidget) | **GET** /api/v2/GlobeService/Languages/{languageId} | 
*MigrationsApi* | [**apiV2GlobalSystemMigratePost**](docs/MigrationsApi.md#apiv2globalsystemmigratepost) | **POST** /api/v2/Global/System/Migrate | 
*TimezonesApi* | [**apiV2GlobeServiceTimezonesGet**](docs/TimezonesApi.md#apiv2globeservicetimezonesget) | **GET** /api/v2/GlobeService/Timezones | 
*TimezonesApi* | [**apiV2GlobeServiceTimezonesTimeZoneIdGet**](docs/TimezonesApi.md#apiv2globeservicetimezonestimezoneidget) | **GET** /api/v2/GlobeService/Timezones/{timeZoneId} | 


## Documentation For Models

 - [CityDto](docs/CityDto.md)
 - [CityDtoListEnvelope](docs/CityDtoListEnvelope.md)
 - [CountryCallingCodeDto](docs/CountryCallingCodeDto.md)
 - [CountryCallingCodeDtoListEnvelope](docs/CountryCallingCodeDtoListEnvelope.md)
 - [CountryDto](docs/CountryDto.md)
 - [CountryDtoEnvelope](docs/CountryDtoEnvelope.md)
 - [CountryDtoListEnvelope](docs/CountryDtoListEnvelope.md)
 - [CountryLanguageDto](docs/CountryLanguageDto.md)
 - [CountryLanguageDtoEnvelope](docs/CountryLanguageDtoEnvelope.md)
 - [CountryLanguageDtoListEnvelope](docs/CountryLanguageDtoListEnvelope.md)
 - [CountryStateDto](docs/CountryStateDto.md)
 - [CountryStateDtoEnvelope](docs/CountryStateDtoEnvelope.md)
 - [CountryStateDtoListEnvelope](docs/CountryStateDtoListEnvelope.md)
 - [CountryTopLevelDomainDto](docs/CountryTopLevelDomainDto.md)
 - [CountryTopLevelDomainDtoListEnvelope](docs/CountryTopLevelDomainDtoListEnvelope.md)
 - [CurrencyDto](docs/CurrencyDto.md)
 - [CurrencyDtoEnvelope](docs/CurrencyDtoEnvelope.md)
 - [CurrencyDtoListEnvelope](docs/CurrencyDtoListEnvelope.md)
 - [Error](docs/Error.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [PaymentResponse](docs/PaymentResponse.md)
 - [ResponseStatus](docs/ResponseStatus.md)
 - [TimezoneDto](docs/TimezoneDto.md)
 - [TimezoneDtoEnvelope](docs/TimezoneDtoEnvelope.md)
 - [TimezoneDtoListEnvelope](docs/TimezoneDtoListEnvelope.md)


## Documentation For Authorization


## Bearer


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

