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
*OrdersApi* | [**calculateOrder**](docs/OrdersApi.md#calculateorder) | **PUT** /api/v2/OrdersService/Orders/{orderId}/Calculate | Calculates totals for an order.
*OrdersApi* | [**calculateOrderLine**](docs/OrdersApi.md#calculateorderline) | **PUT** /api/v2/OrdersService/Orders/{orderId}/Lines/{orderLineId}/Calculate | Calculates totals for an order line.
*OrdersApi* | [**createOrder**](docs/OrdersApi.md#createorder) | **POST** /api/v2/OrdersService/Orders | Creates a new order.
*OrdersApi* | [**createOrderLine**](docs/OrdersApi.md#createorderline) | **POST** /api/v2/OrdersService/Orders/{orderId}/Lines | Creates a new order line.
*OrdersApi* | [**deleteOrder**](docs/OrdersApi.md#deleteorder) | **DELETE** /api/v2/OrdersService/Orders/{orderId} | Deletes an order.
*OrdersApi* | [**deleteOrderLine**](docs/OrdersApi.md#deleteorderline) | **DELETE** /api/v2/OrdersService/Orders/{orderId}/Lines/{orderLineId} | Deletes an order line.
*OrdersApi* | [**getExtendedOrders**](docs/OrdersApi.md#getextendedorders) | **GET** /api/v2/OrdersService/Orders/Extended | Gets a list of extended orders for a tenant.
*OrdersApi* | [**getOrder**](docs/OrdersApi.md#getorder) | **GET** /api/v2/OrdersService/Orders/{orderId} | Gets a specific order by ID.
*OrdersApi* | [**getOrderLine**](docs/OrdersApi.md#getorderline) | **GET** /api/v2/OrdersService/Orders/{orderId}/Lines/{orderLineId} | Gets a specific order line.
*OrdersApi* | [**getOrderLines**](docs/OrdersApi.md#getorderlines) | **GET** /api/v2/OrdersService/Orders/{orderId}/Lines | Gets order lines for an order.
*OrdersApi* | [**getOrderLinesCount**](docs/OrdersApi.md#getorderlinescount) | **GET** /api/v2/OrdersService/Orders/{orderId}/Lines/Count | Gets the count of order lines for an order.
*OrdersApi* | [**getOrders**](docs/OrdersApi.md#getorders) | **GET** /api/v2/OrdersService/Orders | Gets a list of orders for a tenant.
*OrdersApi* | [**getOrdersCount**](docs/OrdersApi.md#getorderscount) | **GET** /api/v2/OrdersService/Orders/Count | Gets the count of orders for a tenant.
*OrdersApi* | [**previewOrderEmailTemplate**](docs/OrdersApi.md#previeworderemailtemplate) | **POST** /api/v2/OrdersService/Orders/{orderId}/Emails/Preview | Preview the rendered email for an Order.
*OrdersApi* | [**sendOrderEmail**](docs/OrdersApi.md#sendorderemail) | **POST** /api/v2/OrdersService/Orders/{orderId}/Emails/Send | Send a transactional email for an order.
*OrdersApi* | [**submitCart**](docs/OrdersApi.md#submitcart) | **POST** /api/v2/OrdersService/Orders/SubmitCart | Submits a cart and creates an order.
*OrdersApi* | [**updateOrder**](docs/OrdersApi.md#updateorder) | **PUT** /api/v2/OrdersService/Orders/{orderId} | Updates an existing order.
*OrdersApi* | [**updateOrderLine**](docs/OrdersApi.md#updateorderline) | **PUT** /api/v2/OrdersService/Orders/{orderId}/Lines/{orderLineId} | Updates an order line.


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [ContactDto](docs/ContactDto.md)
 - [CurrencyId](docs/CurrencyId.md)
 - [EmailDispatchRequest](docs/EmailDispatchRequest.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ExtendedOrderDto](docs/ExtendedOrderDto.md)
 - [ExtendedOrderDtoListEnvelope](docs/ExtendedOrderDtoListEnvelope.md)
 - [ForexRates](docs/ForexRates.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LoginRequest](docs/LoginRequest.md)
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
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [TenantDto](docs/TenantDto.md)
 - [TenantEnrollmentDto](docs/TenantEnrollmentDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)
 - [UserDto](docs/UserDto.md)


## Documentation For Authorization

 All endpoints do not require authorization.

