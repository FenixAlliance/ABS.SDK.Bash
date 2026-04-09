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
*CountriesApi* | [**countCountries**](docs/CountriesApi.md#countcountries) | **GET** /api/v2/GlobeService/Countries/Count | Count countries
*CountriesApi* | [**getAllCountries**](docs/CountriesApi.md#getallcountries) | **GET** /api/v2/GlobeService/Countries | Get all countries
*CountriesApi* | [**getCallingCodesByCountryIdAsync**](docs/CountriesApi.md#getcallingcodesbycountryidasync) | **GET** /api/v2/GlobeService/Countries/{countryId}/CallingCodes | Get calling codes for a country
*CountriesApi* | [**getCitiesByCountryStateIdAsync**](docs/CountriesApi.md#getcitiesbycountrystateidasync) | **GET** /api/v2/GlobeService/Countries/{countryId}/States/{countryStateId}/Cities | Get cities for a state
*CountriesApi* | [**getCountryById**](docs/CountriesApi.md#getcountrybyid) | **GET** /api/v2/GlobeService/Countries/{countryId} | Get country by ID
*CountriesApi* | [**getCountryStateByIdAsync**](docs/CountriesApi.md#getcountrystatebyidasync) | **GET** /api/v2/GlobeService/Countries/{countryId}/States/{countryStateId} | Get state by ID
*CountriesApi* | [**getCountryStatesAsync**](docs/CountriesApi.md#getcountrystatesasync) | **GET** /api/v2/GlobeService/Countries/{countryId}/States | Get states for a country
*CountriesApi* | [**getEnabledCurrenciesByCountryIdAsync**](docs/CountriesApi.md#getenabledcurrenciesbycountryidasync) | **GET** /api/v2/GlobeService/Countries/{countryId}/Currencies | Get currencies for a country
*CountriesApi* | [**getTimeZonesByCountryIdAsync**](docs/CountriesApi.md#gettimezonesbycountryidasync) | **GET** /api/v2/GlobeService/Countries/{countryId}/Timezones | Get timezones for a country
*CountriesApi* | [**getTopLevelDomainsByCountryIdAsync**](docs/CountriesApi.md#gettopleveldomainsbycountryidasync) | **GET** /api/v2/GlobeService/Countries/{countryId}/TopLevelDomains | Get top-level domains for a country
*CountriesApi* | [**searchCountriesByNameAsync**](docs/CountriesApi.md#searchcountriesbynameasync) | **GET** /api/v2/GlobeService/Countries/Search | Search countries by name
*CurrenciesApi* | [**countCurrenciesAsync**](docs/CurrenciesApi.md#countcurrenciesasync) | **GET** /api/v2/GlobeService/Currencies/Count | Count currencies
*CurrenciesApi* | [**getCurrencyByIdAsync**](docs/CurrenciesApi.md#getcurrencybyidasync) | **GET** /api/v2/GlobeService/Currencies/{currencyId} | Get currency by ID
*CurrenciesApi* | [**getEnabledCurrenciesAsync**](docs/CurrenciesApi.md#getenabledcurrenciesasync) | **GET** /api/v2/GlobeService/Currencies | Get all currencies
*FenixAllianceABPWebApi* | [**forgotPasswordPost**](docs/FenixAllianceABPWebApi.md#forgotpasswordpost) | **POST** /forgotPassword | 
*FenixAllianceABPWebApi* | [**healthGet**](docs/FenixAllianceABPWebApi.md#healthget) | **GET** /health | 
*FenixAllianceABPWebApi* | [**helloGet**](docs/FenixAllianceABPWebApi.md#helloget) | **GET** /hello | 
*FenixAllianceABPWebApi* | [**loginPost**](docs/FenixAllianceABPWebApi.md#loginpost) | **POST** /login | 
*FenixAllianceABPWebApi* | [**manage2faPost**](docs/FenixAllianceABPWebApi.md#manage2fapost) | **POST** /manage/2fa | 
*FenixAllianceABPWebApi* | [**manageInfoGet**](docs/FenixAllianceABPWebApi.md#manageinfoget) | **GET** /manage/info | 
*FenixAllianceABPWebApi* | [**manageInfoPost**](docs/FenixAllianceABPWebApi.md#manageinfopost) | **POST** /manage/info | 
*FenixAllianceABPWebApi* | [**mapIdentityApiConfirmEmail**](docs/FenixAllianceABPWebApi.md#mapidentityapiconfirmemail) | **GET** /confirmEmail | 
*FenixAllianceABPWebApi* | [**refreshPost**](docs/FenixAllianceABPWebApi.md#refreshpost) | **POST** /refresh | 
*FenixAllianceABPWebApi* | [**registerPost**](docs/FenixAllianceABPWebApi.md#registerpost) | **POST** /register | 
*FenixAllianceABPWebApi* | [**resendConfirmationEmailPost**](docs/FenixAllianceABPWebApi.md#resendconfirmationemailpost) | **POST** /resendConfirmationEmail | 
*FenixAllianceABPWebApi* | [**resetPasswordPost**](docs/FenixAllianceABPWebApi.md#resetpasswordpost) | **POST** /resetPassword | 
*FenixAllianceABPWebApi* | [**versionGet**](docs/FenixAllianceABPWebApi.md#versionget) | **GET** /version | 
*LanguagesApi* | [**countLanguagesAsync**](docs/LanguagesApi.md#countlanguagesasync) | **GET** /api/v2/GlobeService/Languages/Count | Count languages
*LanguagesApi* | [**getLanguageByIdAsync**](docs/LanguagesApi.md#getlanguagebyidasync) | **GET** /api/v2/GlobeService/Languages/{languageId} | Get language by ID
*LanguagesApi* | [**getLanguagesAsync**](docs/LanguagesApi.md#getlanguagesasync) | **GET** /api/v2/GlobeService/Languages | Get all languages
*TimezonesApi* | [**countTimezonesAsync**](docs/TimezonesApi.md#counttimezonesasync) | **GET** /api/v2/GlobeService/Timezones/Count | Count timezones
*TimezonesApi* | [**getTimeZoneByIdAsync**](docs/TimezonesApi.md#gettimezonebyidasync) | **GET** /api/v2/GlobeService/Timezones/{timeZoneId} | Get timezone by ID
*TimezonesApi* | [**getTimeZonesAsync**](docs/TimezonesApi.md#gettimezonesasync) | **GET** /api/v2/GlobeService/Timezones | Get all timezones


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
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
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [TimezoneDto](docs/TimezoneDto.md)
 - [TimezoneDtoEnvelope](docs/TimezoneDtoEnvelope.md)
 - [TimezoneDtoListEnvelope](docs/TimezoneDtoListEnvelope.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

