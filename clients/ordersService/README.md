# OrdersService Bash client

## Overview

This is a Bash client script for accessing OrdersService service.

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
*OrdersApi* | [**apiV2OrdersServiceOrdersCountGet**](docs/OrdersApi.md#apiv2ordersserviceorderscountget) | **GET** /api/v2/OrdersService/Orders/Count | 
*OrdersApi* | [**apiV2OrdersServiceOrdersExtendedGet**](docs/OrdersApi.md#apiv2ordersserviceordersextendedget) | **GET** /api/v2/OrdersService/Orders/Extended | 
*OrdersApi* | [**apiV2OrdersServiceOrdersOrderIdCalculatePut**](docs/OrdersApi.md#apiv2ordersserviceordersorderidcalculateput) | **PUT** /api/v2/OrdersService/Orders/{orderId}/Calculate | 
*OrdersApi* | [**apiV2OrdersServiceOrdersOrderIdDelete**](docs/OrdersApi.md#apiv2ordersserviceordersorderiddelete) | **DELETE** /api/v2/OrdersService/Orders/{orderId} | 
*OrdersApi* | [**apiV2OrdersServiceOrdersOrderIdLinesCountGet**](docs/OrdersApi.md#apiv2ordersserviceordersorderidlinescountget) | **GET** /api/v2/OrdersService/Orders/{orderId}/Lines/Count | 
*OrdersApi* | [**apiV2OrdersServiceOrdersOrderIdLinesGet**](docs/OrdersApi.md#apiv2ordersserviceordersorderidlinesget) | **GET** /api/v2/OrdersService/Orders/{orderId}/Lines | 
*OrdersApi* | [**apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut**](docs/OrdersApi.md#apiv2ordersserviceordersorderidlinesorderlineidcalculateput) | **PUT** /api/v2/OrdersService/Orders/{orderId}/Lines/{orderLineId}/Calculate | 
*OrdersApi* | [**apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete**](docs/OrdersApi.md#apiv2ordersserviceordersorderidlinesorderlineiddelete) | **DELETE** /api/v2/OrdersService/Orders/{orderId}/Lines/{orderLineId} | 
*OrdersApi* | [**apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet**](docs/OrdersApi.md#apiv2ordersserviceordersorderidlinesorderlineidget) | **GET** /api/v2/OrdersService/Orders/{orderId}/Lines/{orderLineId} | 
*OrdersApi* | [**apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut**](docs/OrdersApi.md#apiv2ordersserviceordersorderidlinesorderlineidput) | **PUT** /api/v2/OrdersService/Orders/{orderId}/Lines/{orderLineId} | 
*OrdersApi* | [**apiV2OrdersServiceOrdersOrderIdLinesPost**](docs/OrdersApi.md#apiv2ordersserviceordersorderidlinespost) | **POST** /api/v2/OrdersService/Orders/{orderId}/Lines | 
*OrdersApi* | [**apiV2OrdersServiceOrdersOrderIdPut**](docs/OrdersApi.md#apiv2ordersserviceordersorderidput) | **PUT** /api/v2/OrdersService/Orders/{orderId} | 
*OrdersApi* | [**apiV2OrdersServiceOrdersPost**](docs/OrdersApi.md#apiv2ordersserviceorderspost) | **POST** /api/v2/OrdersService/Orders | 
*OrdersApi* | [**apiV2OrdersServiceOrdersSubmitCartPost**](docs/OrdersApi.md#apiv2ordersserviceorderssubmitcartpost) | **POST** /api/v2/OrdersService/Orders/SubmitCart | 
*OrdersApi* | [**getOrderAsync**](docs/OrdersApi.md#getorderasync) | **GET** /api/v2/OrdersService/Orders/{orderId} | 
*OrdersApi* | [**getOrdersAsync**](docs/OrdersApi.md#getordersasync) | **GET** /api/v2/OrdersService/Orders | 


## Documentation For Models

 - [ContactDto](docs/ContactDto.md)
 - [Currency](docs/Currency.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ExtendedOrderDto](docs/ExtendedOrderDto.md)
 - [ExtendedOrderDtoListEnvelope](docs/ExtendedOrderDtoListEnvelope.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [Money](docs/Money.md)
 - [OrderCreateDto](docs/OrderCreateDto.md)
 - [OrderDto](docs/OrderDto.md)
 - [OrderDtoEnvelope](docs/OrderDtoEnvelope.md)
 - [OrderDtoListEnvelope](docs/OrderDtoListEnvelope.md)
 - [OrderLineCreateDto](docs/OrderLineCreateDto.md)
 - [OrderLineDto](docs/OrderLineDto.md)
 - [OrderLineDtoEnvelope](docs/OrderLineDtoEnvelope.md)
 - [OrderLineDtoListEnvelope](docs/OrderLineDtoListEnvelope.md)
 - [OrderLineUpdateDto](docs/OrderLineUpdateDto.md)
 - [OrderUpdateDto](docs/OrderUpdateDto.md)
 - [TenantDto](docs/TenantDto.md)
 - [TenantEnrolmentDto](docs/TenantEnrolmentDto.md)
 - [UserDto](docs/UserDto.md)


## Documentation For Authorization


## Bearer


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

