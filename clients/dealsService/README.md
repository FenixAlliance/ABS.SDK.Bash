# DealsService Bash client

## Overview

This is a Bash client script for accessing DealsService service.

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
*DealUnitFlowsApi* | [**apiV2DealsServiceDealUnitFlowsCountGet**](docs/DealUnitFlowsApi.md#apiv2dealsservicedealunitflowscountget) | **GET** /api/v2/DealsService/DealUnitFlows/Count | 
*DealUnitFlowsApi* | [**apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete**](docs/DealUnitFlowsApi.md#apiv2dealsservicedealunitflowsdealunitflowiddelete) | **DELETE** /api/v2/DealsService/DealUnitFlows/{dealUnitFlowId} | 
*DealUnitFlowsApi* | [**apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet**](docs/DealUnitFlowsApi.md#apiv2dealsservicedealunitflowsdealunitflowidget) | **GET** /api/v2/DealsService/DealUnitFlows/{dealUnitFlowId} | 
*DealUnitFlowsApi* | [**apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut**](docs/DealUnitFlowsApi.md#apiv2dealsservicedealunitflowsdealunitflowidput) | **PUT** /api/v2/DealsService/DealUnitFlows/{dealUnitFlowId} | 
*DealUnitFlowsApi* | [**apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet**](docs/DealUnitFlowsApi.md#apiv2dealsservicedealunitflowsdealunitflowidstagescountget) | **GET** /api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}/Stages/Count | 
*DealUnitFlowsApi* | [**apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete**](docs/DealUnitFlowsApi.md#apiv2dealsservicedealunitflowsdealunitflowidstagesdealunitflowstageiddelete) | **DELETE** /api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}/Stages/{dealUnitFlowStageId} | 
*DealUnitFlowsApi* | [**apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet**](docs/DealUnitFlowsApi.md#apiv2dealsservicedealunitflowsdealunitflowidstagesdealunitflowstageidget) | **GET** /api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}/Stages/{dealUnitFlowStageId} | 
*DealUnitFlowsApi* | [**apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut**](docs/DealUnitFlowsApi.md#apiv2dealsservicedealunitflowsdealunitflowidstagesdealunitflowstageidput) | **PUT** /api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}/Stages/{dealUnitFlowStageId} | 
*DealUnitFlowsApi* | [**apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet**](docs/DealUnitFlowsApi.md#apiv2dealsservicedealunitflowsdealunitflowidstagesget) | **GET** /api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}/Stages | 
*DealUnitFlowsApi* | [**apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost**](docs/DealUnitFlowsApi.md#apiv2dealsservicedealunitflowsdealunitflowidstagespost) | **POST** /api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}/Stages | 
*DealUnitFlowsApi* | [**apiV2DealsServiceDealUnitFlowsGet**](docs/DealUnitFlowsApi.md#apiv2dealsservicedealunitflowsget) | **GET** /api/v2/DealsService/DealUnitFlows | 
*DealUnitFlowsApi* | [**apiV2DealsServiceDealUnitFlowsPost**](docs/DealUnitFlowsApi.md#apiv2dealsservicedealunitflowspost) | **POST** /api/v2/DealsService/DealUnitFlows | 
*DealUnitsApi* | [**apiV2DealsServiceDealUnitsCountGet**](docs/DealUnitsApi.md#apiv2dealsservicedealunitscountget) | **GET** /api/v2/DealsService/DealUnits/Count | 
*DealUnitsApi* | [**apiV2DealsServiceDealUnitsDealUnitIdCalculatePut**](docs/DealUnitsApi.md#apiv2dealsservicedealunitsdealunitidcalculateput) | **PUT** /api/v2/DealsService/DealUnits/{dealUnitId}/Calculate | 
*DealUnitsApi* | [**apiV2DealsServiceDealUnitsDealUnitIdDelete**](docs/DealUnitsApi.md#apiv2dealsservicedealunitsdealunitiddelete) | **DELETE** /api/v2/DealsService/DealUnits/{dealUnitId} | 
*DealUnitsApi* | [**apiV2DealsServiceDealUnitsDealUnitIdExtendedGet**](docs/DealUnitsApi.md#apiv2dealsservicedealunitsdealunitidextendedget) | **GET** /api/v2/DealsService/DealUnits/{dealUnitId}/Extended | 
*DealUnitsApi* | [**apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet**](docs/DealUnitsApi.md#apiv2dealsservicedealunitsdealunitidlinescountget) | **GET** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/Count | 
*DealUnitsApi* | [**apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut**](docs/DealUnitsApi.md#apiv2dealsservicedealunitsdealunitidlinesdealunitlineidcalculateput) | **PUT** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId}/Calculate | 
*DealUnitsApi* | [**apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete**](docs/DealUnitsApi.md#apiv2dealsservicedealunitsdealunitidlinesdealunitlineiddelete) | **DELETE** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId} | 
*DealUnitsApi* | [**apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet**](docs/DealUnitsApi.md#apiv2dealsservicedealunitsdealunitidlinesdealunitlineidget) | **GET** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId} | 
*DealUnitsApi* | [**apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut**](docs/DealUnitsApi.md#apiv2dealsservicedealunitsdealunitidlinesdealunitlineidput) | **PUT** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId} | 
*DealUnitsApi* | [**apiV2DealsServiceDealUnitsDealUnitIdLinesGet**](docs/DealUnitsApi.md#apiv2dealsservicedealunitsdealunitidlinesget) | **GET** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines | 
*DealUnitsApi* | [**apiV2DealsServiceDealUnitsDealUnitIdLinesPost**](docs/DealUnitsApi.md#apiv2dealsservicedealunitsdealunitidlinespost) | **POST** /api/v2/DealsService/DealUnits/{dealUnitId}/Lines | 
*DealUnitsApi* | [**apiV2DealsServiceDealUnitsDealUnitIdPut**](docs/DealUnitsApi.md#apiv2dealsservicedealunitsdealunitidput) | **PUT** /api/v2/DealsService/DealUnits/{dealUnitId} | 
*DealUnitsApi* | [**apiV2DealsServiceDealUnitsExtendedGet**](docs/DealUnitsApi.md#apiv2dealsservicedealunitsextendedget) | **GET** /api/v2/DealsService/DealUnits/Extended | 
*DealUnitsApi* | [**apiV2DealsServiceDealUnitsGet**](docs/DealUnitsApi.md#apiv2dealsservicedealunitsget) | **GET** /api/v2/DealsService/DealUnits | 
*DealUnitsApi* | [**apiV2DealsServiceDealUnitsPost**](docs/DealUnitsApi.md#apiv2dealsservicedealunitspost) | **POST** /api/v2/DealsService/DealUnits | 
*DealUnitsApi* | [**getDealUnitAsync**](docs/DealUnitsApi.md#getdealunitasync) | **GET** /api/v2/DealsService/DealUnits/{dealUnitId} | 
*SalesLiteraturesApi* | [**apiV2DealsServiceSalesLiteraturesExtendedGet**](docs/SalesLiteraturesApi.md#apiv2dealsservicesalesliteraturesextendedget) | **GET** /api/v2/DealsService/SalesLiteratures/Extended | 
*SalesLiteraturesApi* | [**apiV2DealsServiceSalesLiteraturesGet**](docs/SalesLiteraturesApi.md#apiv2dealsservicesalesliteraturesget) | **GET** /api/v2/DealsService/SalesLiteratures | 
*SalesLiteraturesApi* | [**apiV2DealsServiceSalesLiteraturesPost**](docs/SalesLiteraturesApi.md#apiv2dealsservicesalesliteraturespost) | **POST** /api/v2/DealsService/SalesLiteratures | 
*SalesLiteraturesApi* | [**apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete**](docs/SalesLiteraturesApi.md#apiv2dealsservicesalesliteraturessalesliteratureiddelete) | **DELETE** /api/v2/DealsService/SalesLiteratures/{salesLiteratureId} | 
*SalesLiteraturesApi* | [**apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet**](docs/SalesLiteraturesApi.md#apiv2dealsservicesalesliteraturessalesliteratureidget) | **GET** /api/v2/DealsService/SalesLiteratures/{salesLiteratureId} | 
*SalesLiteraturesApi* | [**apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut**](docs/SalesLiteraturesApi.md#apiv2dealsservicesalesliteraturessalesliteratureidput) | **PUT** /api/v2/DealsService/SalesLiteratures/{salesLiteratureId} | 


## Documentation For Models

 - [ContactDto](docs/ContactDto.md)
 - [Currency](docs/Currency.md)
 - [DealUnitCreateDto](docs/DealUnitCreateDto.md)
 - [DealUnitDto](docs/DealUnitDto.md)
 - [DealUnitDtoEnvelope](docs/DealUnitDtoEnvelope.md)
 - [DealUnitDtoListEnvelope](docs/DealUnitDtoListEnvelope.md)
 - [DealUnitFlowCreateDto](docs/DealUnitFlowCreateDto.md)
 - [DealUnitFlowDto](docs/DealUnitFlowDto.md)
 - [DealUnitFlowDtoEnvelope](docs/DealUnitFlowDtoEnvelope.md)
 - [DealUnitFlowDtoListEnvelope](docs/DealUnitFlowDtoListEnvelope.md)
 - [DealUnitFlowStageCreateDto](docs/DealUnitFlowStageCreateDto.md)
 - [DealUnitFlowStageDto](docs/DealUnitFlowStageDto.md)
 - [DealUnitFlowStageDtoEnvelope](docs/DealUnitFlowStageDtoEnvelope.md)
 - [DealUnitFlowStageDtoListEnvelope](docs/DealUnitFlowStageDtoListEnvelope.md)
 - [DealUnitFlowStageUpdateDto](docs/DealUnitFlowStageUpdateDto.md)
 - [DealUnitFlowUpdateDto](docs/DealUnitFlowUpdateDto.md)
 - [DealUnitLineCreateDto](docs/DealUnitLineCreateDto.md)
 - [DealUnitLineDto](docs/DealUnitLineDto.md)
 - [DealUnitLineDtoEnvelope](docs/DealUnitLineDtoEnvelope.md)
 - [DealUnitLineDtoListEnvelope](docs/DealUnitLineDtoListEnvelope.md)
 - [DealUnitLineUpdateDto](docs/DealUnitLineUpdateDto.md)
 - [DealUnitUpdateDto](docs/DealUnitUpdateDto.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ExtendedDealUnitDto](docs/ExtendedDealUnitDto.md)
 - [ExtendedDealUnitDtoEnvelope](docs/ExtendedDealUnitDtoEnvelope.md)
 - [ExtendedDealUnitDtoListEnvelope](docs/ExtendedDealUnitDtoListEnvelope.md)
 - [ExtendedSalesLiteratureDto](docs/ExtendedSalesLiteratureDto.md)
 - [ExtendedSalesLiteratureDtoListEnvelope](docs/ExtendedSalesLiteratureDtoListEnvelope.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [Money](docs/Money.md)
 - [SalesLiteratureCreateDto](docs/SalesLiteratureCreateDto.md)
 - [SalesLiteratureDto](docs/SalesLiteratureDto.md)
 - [SalesLiteratureDtoEnvelope](docs/SalesLiteratureDtoEnvelope.md)
 - [SalesLiteratureDtoListEnvelope](docs/SalesLiteratureDtoListEnvelope.md)
 - [SalesLiteratureTypeDto](docs/SalesLiteratureTypeDto.md)
 - [SalesLiteratureUpdateDto](docs/SalesLiteratureUpdateDto.md)
 - [TenantDto](docs/TenantDto.md)
 - [TenantEnrolmentDto](docs/TenantEnrolmentDto.md)
 - [UserDto](docs/UserDto.md)


## Documentation For Authorization


## Bearer


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

