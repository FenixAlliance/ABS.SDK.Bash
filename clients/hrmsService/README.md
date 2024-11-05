# HrmsService Bash client

## Overview

This is a Bash client script for accessing HrmsService service.

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
*EmployeesApi* | [**createEmployeeAsync**](docs/EmployeesApi.md#createemployeeasync) | **POST** /api/v2/HrmsService/Employees | 
*EmployeesApi* | [**deleteEmployeeAsync**](docs/EmployeesApi.md#deleteemployeeasync) | **DELETE** /api/v2/HrmsService/Employees/{employeeId} | 
*EmployeesApi* | [**getEmployeeByIdAsync**](docs/EmployeesApi.md#getemployeebyidasync) | **GET** /api/v2/HrmsService/Employees/{employeeId} | 
*EmployeesApi* | [**getEmployeesAsync**](docs/EmployeesApi.md#getemployeesasync) | **GET** /api/v2/HrmsService/Employees | 
*EmployeesApi* | [**getEmployeesCountAsync**](docs/EmployeesApi.md#getemployeescountasync) | **GET** /api/v2/HrmsService/Employees/Count | 
*EmployeesApi* | [**updateEmployeeAsync**](docs/EmployeesApi.md#updateemployeeasync) | **PUT** /api/v2/HrmsService/Employees/{employeeId} | 
*EmployersApi* | [**createEmployerAsync**](docs/EmployersApi.md#createemployerasync) | **POST** /api/v2/HrmsService/Employers | 
*EmployersApi* | [**deleteEmployerAsync**](docs/EmployersApi.md#deleteemployerasync) | **DELETE** /api/v2/HrmsService/Employers/{employerId} | 
*EmployersApi* | [**getEmployerByIdAsync**](docs/EmployersApi.md#getemployerbyidasync) | **GET** /api/v2/HrmsService/Employers/{employerId} | 
*EmployersApi* | [**getEmployersAsync**](docs/EmployersApi.md#getemployersasync) | **GET** /api/v2/HrmsService/Employers | 
*EmployersApi* | [**getEmployersCountAsync**](docs/EmployersApi.md#getemployerscountasync) | **GET** /api/v2/HrmsService/Employers/Count | 
*EmployersApi* | [**updateEmployerAsync**](docs/EmployersApi.md#updateemployerasync) | **PUT** /api/v2/HrmsService/Employers/{employerId} | 
*GigsApi* | [**createGigAsync**](docs/GigsApi.md#creategigasync) | **POST** /api/v2/HrmsService/Gigs | 
*GigsApi* | [**deleteGigAsync**](docs/GigsApi.md#deletegigasync) | **DELETE** /api/v2/HrmsService/Gigs/{gigId} | 
*GigsApi* | [**getGigByIdAsync**](docs/GigsApi.md#getgigbyidasync) | **GET** /api/v2/HrmsService/Gigs/{gigId} | 
*GigsApi* | [**getGigsAsync**](docs/GigsApi.md#getgigsasync) | **GET** /api/v2/HrmsService/Gigs | 
*GigsApi* | [**getGigsCountAsync**](docs/GigsApi.md#getgigscountasync) | **GET** /api/v2/HrmsService/Gigs/Count | 
*GigsApi* | [**updateGigAsync**](docs/GigsApi.md#updategigasync) | **PUT** /api/v2/HrmsService/Gigs/{gigId} | 
*JobOffersApi* | [**createJobOfferAsync**](docs/JobOffersApi.md#createjobofferasync) | **POST** /api/v2/HrmsService/JobOffers | 
*JobOffersApi* | [**deleteJobOfferAsync**](docs/JobOffersApi.md#deletejobofferasync) | **DELETE** /api/v2/HrmsService/JobOffers/{jobOfferId} | 
*JobOffersApi* | [**getJobOfferByIdAsync**](docs/JobOffersApi.md#getjobofferbyidasync) | **GET** /api/v2/HrmsService/JobOffers/{jobOfferId} | 
*JobOffersApi* | [**getJobOffersAsync**](docs/JobOffersApi.md#getjoboffersasync) | **GET** /api/v2/HrmsService/JobOffers | 
*JobOffersApi* | [**getJobOffersCountAsync**](docs/JobOffersApi.md#getjobofferscountasync) | **GET** /api/v2/HrmsService/JobOffers/Count | 
*JobOffersApi* | [**updateJobOfferAsync**](docs/JobOffersApi.md#updatejobofferasync) | **PUT** /api/v2/HrmsService/JobOffers/{jobOfferId} | 


## Documentation For Models

 - [EmployeeProfileCreateDto](docs/EmployeeProfileCreateDto.md)
 - [EmployeeProfileDto](docs/EmployeeProfileDto.md)
 - [EmployeeProfileDtoEnvelope](docs/EmployeeProfileDtoEnvelope.md)
 - [EmployeeProfileDtoListEnvelope](docs/EmployeeProfileDtoListEnvelope.md)
 - [EmployerProfileCreateDto](docs/EmployerProfileCreateDto.md)
 - [EmployerProfileDto](docs/EmployerProfileDto.md)
 - [EmployerProfileDtoEnvelope](docs/EmployerProfileDtoEnvelope.md)
 - [EmployerProfileDtoListEnvelope](docs/EmployerProfileDtoListEnvelope.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [GigCreateDto](docs/GigCreateDto.md)
 - [GigDto](docs/GigDto.md)
 - [GigDtoEnvelope](docs/GigDtoEnvelope.md)
 - [GigDtoListEnvelope](docs/GigDtoListEnvelope.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [JobOfferCreateDto](docs/JobOfferCreateDto.md)
 - [JobOfferDto](docs/JobOfferDto.md)
 - [JobOfferDtoEnvelope](docs/JobOfferDtoEnvelope.md)
 - [JobOfferDtoListEnvelope](docs/JobOfferDtoListEnvelope.md)


## Documentation For Authorization


## Bearer


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

