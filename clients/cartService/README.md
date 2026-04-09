# CartService Bash client

## Overview

This is a Bash client script for accessing CartService service.

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
*CartsApi* | [**addItemToCartAsync**](docs/CartsApi.md#additemtocartasync) | **POST** /api/v2/CartService/Carts/{cartId}/Items/{itemId} | Add an Item to a cart
*CartsApi* | [**addItemToCartCompareTable**](docs/CartsApi.md#additemtocartcomparetable) | **POST** /api/v2/CartService/Carts/{cartId}/Compare/{itemId} | Add an item to the compare table
*CartsApi* | [**addItemToWishList**](docs/CartsApi.md#additemtowishlist) | **POST** /api/v2/CartService/Carts/{cartId}/WishLists/{wishListId}/Records | Add a record to a wish list
*CartsApi* | [**cartWishListExistsHead**](docs/CartsApi.md#cartwishlistexistshead) | **HEAD** /api/v2/CartService/Carts/{cartId}/WishLists/{wishListId}/Exists | Assesses if a WishList exists
*CartsApi* | [**clearCartRecords**](docs/CartsApi.md#clearcartrecords) | **DELETE** /api/v2/CartService/Carts/{cartId}/Items | Clear all items from a cart
*CartsApi* | [**createWishListAsync**](docs/CartsApi.md#createwishlistasync) | **POST** /api/v2/CartService/Carts/{cartId}/WishLists | Create a new wish list
*CartsApi* | [**decreaseCartItemQuantity**](docs/CartsApi.md#decreasecartitemquantity) | **PUT** /api/v2/CartService/Carts/{cartId}/Items/{itemId}/Decrease | Decrease an Item in a cart
*CartsApi* | [**decreaseCartLineAsync**](docs/CartsApi.md#decreasecartlineasync) | **PUT** /api/v2/CartService/Carts/{cartId}/Lines/{lineId}/Decrease | Decrease the quantity of a cart line
*CartsApi* | [**deleteCartWishList**](docs/CartsApi.md#deletecartwishlist) | **DELETE** /api/v2/CartService/Carts/{cartId}/WishLists/{wishListId} | Delete a wish list
*CartsApi* | [**deleteCartWishListRecord**](docs/CartsApi.md#deletecartwishlistrecord) | **DELETE** /api/v2/CartService/Carts/{cartId}/WishLists/{wishListId}/Records/{recordId} | Remove a record from a wish list
*CartsApi* | [**getActingCart**](docs/CartsApi.md#getactingcart) | **GET** /api/v2/CartService/Carts/ActingCart | Get the acting cart
*CartsApi* | [**getCartByIdAsync**](docs/CartsApi.md#getcartbyidasync) | **GET** /api/v2/CartService/Carts/{cartId} | Get all business owned contacts
*CartsApi* | [**getCartCompareRecord**](docs/CartsApi.md#getcartcomparerecord) | **GET** /api/v2/CartService/Carts/{cartId}/Compare/{itemId} | Get an item from the compare table
*CartsApi* | [**getCartCompareRecords**](docs/CartsApi.md#getcartcomparerecords) | **GET** /api/v2/CartService/Carts/{cartId}/Compare | Get all items in the compare table
*CartsApi* | [**getCartCountryAsync**](docs/CartsApi.md#getcartcountryasync) | **GET** /api/v2/CartService/Carts/{cartId}/Country | Get the country of a cart
*CartsApi* | [**getCartCurrencyAsync**](docs/CartsApi.md#getcartcurrencyasync) | **GET** /api/v2/CartService/Carts/{cartId}/Currency | Get the currency of a cart
*CartsApi* | [**getCartItems**](docs/CartsApi.md#getcartitems) | **GET** /api/v2/CartService/Carts/{cartId}/Items | Get all cart lines
*CartsApi* | [**getCartLineAsync**](docs/CartsApi.md#getcartlineasync) | **GET** /api/v2/CartService/Carts/{cartId}/Lines/{lineId} | Get a cart line by ID
*CartsApi* | [**getCartLinesAsync**](docs/CartsApi.md#getcartlinesasync) | **GET** /api/v2/CartService/Carts/{cartId}/Lines | Get all cart lines
*CartsApi* | [**getCartWishList**](docs/CartsApi.md#getcartwishlist) | **GET** /api/v2/CartService/Carts/{cartId}/WishLists | Get all wishlists in a cart
*CartsApi* | [**getCartWishListDetails**](docs/CartsApi.md#getcartwishlistdetails) | **GET** /api/v2/CartService/Carts/{cartId}/WishLists/{wishListId} | Get a wish list by ID
*CartsApi* | [**getCartWishListItemAsync**](docs/CartsApi.md#getcartwishlistitemasync) | **GET** /api/v2/CartService/Carts/{cartId}/WishLists/{wishListId}/Records/{recordId} | Get a record in a wish list
*CartsApi* | [**getCartWishListItems**](docs/CartsApi.md#getcartwishlistitems) | **GET** /api/v2/CartService/Carts/{cartId}/WishLists/{wishListId}/Records | Get all records in a wish list
*CartsApi* | [**getGuestCartAsync**](docs/CartsApi.md#getguestcartasync) | **GET** /api/v2/CartService/Carts/GuestCart | Get the guest cart
*CartsApi* | [**getTenantCartAsync**](docs/CartsApi.md#gettenantcartasync) | **GET** /api/v2/CartService/Carts/BusinessCart/{tenantId} | Get the business cart
*CartsApi* | [**getUserCart**](docs/CartsApi.md#getusercart) | **GET** /api/v2/CartService/Carts/UserCart | Get the current user&#39;s cart
*CartsApi* | [**increaseCartLineAsync**](docs/CartsApi.md#increasecartlineasync) | **PUT** /api/v2/CartService/Carts/{cartId}/Lines/{lineId}/Increase | Increase the quantity of a cart line
*CartsApi* | [**increaseItemCartRecordQuantityAsync**](docs/CartsApi.md#increaseitemcartrecordquantityasync) | **PUT** /api/v2/CartService/Carts/{cartId}/Items/{itemId}/Increase | Increase an Item in a cart
*CartsApi* | [**isItemAlreadyInCartAsync**](docs/CartsApi.md#isitemalreadyincartasync) | **GET** /api/v2/CartService/Carts/{cartId}/Contains/{itemId} | Assesses if an Item is already in a cart
*CartsApi* | [**isItemInCompareTableAsync**](docs/CartsApi.md#isitemincomparetableasync) | **GET** /api/v2/CartService/Carts/{cartId}/Compare/Contains/{itemId} | Assesses if an Item is already in the compare table
*CartsApi* | [**isItemInWishLists**](docs/CartsApi.md#isiteminwishlists) | **GET** /api/v2/CartService/Carts/{cartId}/WishLists/Contains/{itemId} | Assesses if an Item is already in any of the cart&#39;s wishlists
*CartsApi* | [**removeCartLineAsync**](docs/CartsApi.md#removecartlineasync) | **DELETE** /api/v2/CartService/Carts/{cartId}/Lines/{lineId} | Remove a cart line
*CartsApi* | [**removeItemFromCartAsync**](docs/CartsApi.md#removeitemfromcartasync) | **DELETE** /api/v2/CartService/Carts/{cartId}/Items/{itemId} | Remove an Item from a cart
*CartsApi* | [**removeItemFromCompareTableAsync**](docs/CartsApi.md#removeitemfromcomparetableasync) | **DELETE** /api/v2/CartService/Carts/{cartId}/Compare/{itemId} | Remove an item from the compare table
*CartsApi* | [**setCartCountryAsync**](docs/CartsApi.md#setcartcountryasync) | **PUT** /api/v2/CartService/Carts/{cartId}/Country | Set the country of a cart
*CartsApi* | [**setCartCurrencyAsync**](docs/CartsApi.md#setcartcurrencyasync) | **PUT** /api/v2/CartService/Carts/{cartId}/Currency | Set the currency of a cart
*CartsApi* | [**submitCartAsync**](docs/CartsApi.md#submitcartasync) | **POST** /api/v2/CartService/Carts/{cartId}/Submit | Submit a cart for processing
*CartsApi* | [**updateCartAsync**](docs/CartsApi.md#updatecartasync) | **PUT** /api/v2/CartService/Carts/{cartId} | Update a cart
*CartsApi* | [**updateCartLineAsync**](docs/CartsApi.md#updatecartlineasync) | **PUT** /api/v2/CartService/Carts/{cartId}/Lines/{lineId} | Update a cart line
*CartsApi* | [**updateItemCartRecordAsync**](docs/CartsApi.md#updateitemcartrecordasync) | **PUT** /api/v2/CartService/Carts/{cartId}/Items/{itemId} | Update an Item in a cart
*CartsApi* | [**updateItemToWishList**](docs/CartsApi.md#updateitemtowishlist) | **PUT** /api/v2/CartService/Carts/{cartId}/WishLists/{wishListId} | Update a wish list
*CartsApi* | [**wishListExistsAsync**](docs/CartsApi.md#wishlistexistsasync) | **GET** /api/v2/CartService/Carts/{cartId}/WishLists/{wishListId}/Exists | Assesses if a WishList exists
*CompareApi* | [**addItemToCompareTableAsync**](docs/CompareApi.md#additemtocomparetableasync) | **POST** /api/v2/CartService/Compare | Add an item to the compare table
*CompareApi* | [**getItemToCompareRecord**](docs/CompareApi.md#getitemtocomparerecord) | **GET** /api/v2/CartService/Compare/{recordId}/Details | Get compare record details
*CompareApi* | [**getItemToCompareRecords**](docs/CompareApi.md#getitemtocomparerecords) | **GET** /api/v2/CartService/Compare/{cartId} | Get items to compare in a cart
*CompareApi* | [**removeItemFromCompareTable**](docs/CompareApi.md#removeitemfromcomparetable) | **DELETE** /api/v2/CartService/Compare/{recordId} | Remove an item from the compare table
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
*RecordsApi* | [**addItemToCart**](docs/RecordsApi.md#additemtocart) | **POST** /api/v2/CartService/Records/AddItem | Add an item to a cart
*RecordsApi* | [**addProductToCartAsync**](docs/RecordsApi.md#addproducttocartasync) | **POST** /api/v2/CartService/Records | Add a product to a cart with tracking
*RecordsApi* | [**clearCartAsync**](docs/RecordsApi.md#clearcartasync) | **POST** /api/v2/CartService/Records/ClearCart | Clear all items from a cart
*RecordsApi* | [**decreaseItemCartRecord**](docs/RecordsApi.md#decreaseitemcartrecord) | **PUT** /api/v2/CartService/Records/{recordId}/Decrease | Decrease cart record quantity
*RecordsApi* | [**getItemCartRecord**](docs/RecordsApi.md#getitemcartrecord) | **GET** /api/v2/CartService/Records/{recordId}/Details | Get a cart record by ID
*RecordsApi* | [**getItemsInCartAsync**](docs/RecordsApi.md#getitemsincartasync) | **GET** /api/v2/CartService/Records/{cartId} | Get all items in a cart
*RecordsApi* | [**increaseItemCartRecord**](docs/RecordsApi.md#increaseitemcartrecord) | **PUT** /api/v2/CartService/Records/{recordId}/Increase | Increase cart record quantity
*RecordsApi* | [**isItemAlreadyInCart**](docs/RecordsApi.md#isitemalreadyincart) | **GET** /api/v2/CartService/Records/IsInCart | Check if an item is in a cart
*RecordsApi* | [**removeProductFromCartByParams**](docs/RecordsApi.md#removeproductfromcartbyparams) | **DELETE** /api/v2/CartService/Records | Remove a product from a cart
*RecordsApi* | [**removeProductFromCartByRecordId**](docs/RecordsApi.md#removeproductfromcartbyrecordid) | **DELETE** /api/v2/CartService/Records/{recordId} | Remove a product from a cart by record ID
*RecordsApi* | [**updateItemCartRecord**](docs/RecordsApi.md#updateitemcartrecord) | **PUT** /api/v2/CartService/Records/{recordId} | Update a cart record
*WishListsApi* | [**addProductToWishList**](docs/WishListsApi.md#addproducttowishlist) | **POST** /api/v2/CartService/WishLists/Records | Add a product to a wish list
*WishListsApi* | [**createWishList**](docs/WishListsApi.md#createwishlist) | **POST** /api/v2/CartService/WishLists | Create a wish list
*WishListsApi* | [**deleteWishList**](docs/WishListsApi.md#deletewishlist) | **DELETE** /api/v2/CartService/WishLists/{wishListId} | Delete a wish list
*WishListsApi* | [**deleteWishListRecord**](docs/WishListsApi.md#deletewishlistrecord) | **DELETE** /api/v2/CartService/WishLists/Records/{recordId} | Delete a wish list record
*WishListsApi* | [**getCartWishListDetailsAsync**](docs/WishListsApi.md#getcartwishlistdetailsasync) | **GET** /api/v2/CartService/WishLists/{wishListId}/Details | Get wish list details
*WishListsApi* | [**getCartWishListItemsAsync**](docs/WishListsApi.md#getcartwishlistitemsasync) | **GET** /api/v2/CartService/WishLists/{wishListId}/Records | Get wish list item records
*WishListsApi* | [**getWishListAsync**](docs/WishListsApi.md#getwishlistasync) | **GET** /api/v2/CartService/WishLists/{cartId} | Get wish lists for a cart
*WishListsApi* | [**isProductInWishLists**](docs/WishListsApi.md#isproductinwishlists) | **GET** /api/v2/CartService/WishLists/Contains | Check if a product is in any wish list
*WishListsApi* | [**updateProductToWishList**](docs/WishListsApi.md#updateproducttowishlist) | **PUT** /api/v2/CartService/WishLists/{wishListId} | Update a wish list
*WishListsApi* | [**wishListExists**](docs/WishListsApi.md#wishlistexists) | **GET** /api/v2/CartService/WishLists/Exists | Check if a wish list exists
*WishListsApi* | [**wishListExistsHeadAsync**](docs/WishListsApi.md#wishlistexistsheadasync) | **HEAD** /api/v2/CartService/WishLists/Exists | Check if a wish list exists (HEAD)


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [AddProductToCompareRequest](docs/AddProductToCompareRequest.md)
 - [BooleanEnvelope](docs/BooleanEnvelope.md)
 - [CartDto](docs/CartDto.md)
 - [CartDtoEnvelope](docs/CartDtoEnvelope.md)
 - [CartUpdateRequest](docs/CartUpdateRequest.md)
 - [CountryDto](docs/CountryDto.md)
 - [CountryDtoEnvelope](docs/CountryDtoEnvelope.md)
 - [CountrySwitchRequest](docs/CountrySwitchRequest.md)
 - [CurrencyDto](docs/CurrencyDto.md)
 - [CurrencyDtoEnvelope](docs/CurrencyDtoEnvelope.md)
 - [CurrencyId](docs/CurrencyId.md)
 - [CurrencySwitchRequest](docs/CurrencySwitchRequest.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ForexRates](docs/ForexRates.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [ItemCartRecordCreateDto](docs/ItemCartRecordCreateDto.md)
 - [ItemCartRecordDto](docs/ItemCartRecordDto.md)
 - [ItemCartRecordDtoEnvelope](docs/ItemCartRecordDtoEnvelope.md)
 - [ItemCartRecordDtoListEnvelope](docs/ItemCartRecordDtoListEnvelope.md)
 - [ItemCartRecordUpdateDto](docs/ItemCartRecordUpdateDto.md)
 - [ItemToCompareCartRecordDto](docs/ItemToCompareCartRecordDto.md)
 - [ItemToCompareCartRecordDtoEnvelope](docs/ItemToCompareCartRecordDtoEnvelope.md)
 - [ItemToCompareCartRecordDtoListEnvelope](docs/ItemToCompareCartRecordDtoListEnvelope.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [Money](docs/Money.md)
 - [NewWishListRequest](docs/NewWishListRequest.md)
 - [ProductToWishListRequest](docs/ProductToWishListRequest.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)
 - [WishListDto](docs/WishListDto.md)
 - [WishListDtoEnvelope](docs/WishListDtoEnvelope.md)
 - [WishListItemRecordDto](docs/WishListItemRecordDto.md)
 - [WishListUpdateDto](docs/WishListUpdateDto.md)


## Documentation For Authorization

 All endpoints do not require authorization.

