# ShipmentsService Bash client

## Overview

This is a Bash client script for accessing ShipmentsService service.

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
*BillsOfLadingApi* | [**createBillOfLadingAsync**](docs/BillsOfLadingApi.md#createbillofladingasync) | **POST** /api/v2/ShipmentsService/BillsOfLading | Create a bill of lading
*BillsOfLadingApi* | [**createBillOfLadingLineAsync**](docs/BillsOfLadingApi.md#createbillofladinglineasync) | **POST** /api/v2/ShipmentsService/BillsOfLading/{billOfLadingId}/Lines | Create a bill of lading line
*BillsOfLadingApi* | [**deleteBillOfLadingAsync**](docs/BillsOfLadingApi.md#deletebillofladingasync) | **DELETE** /api/v2/ShipmentsService/BillsOfLading/{billOfLadingId} | Delete a bill of lading
*BillsOfLadingApi* | [**deleteBillOfLadingLineAsync**](docs/BillsOfLadingApi.md#deletebillofladinglineasync) | **DELETE** /api/v2/ShipmentsService/BillsOfLading/{billOfLadingId}/Lines/{lineId} | Delete a bill of lading line
*BillsOfLadingApi* | [**getBillOfLadingByIdAsync**](docs/BillsOfLadingApi.md#getbillofladingbyidasync) | **GET** /api/v2/ShipmentsService/BillsOfLading/{billOfLadingId} | Get bill of lading by ID
*BillsOfLadingApi* | [**getBillOfLadingLineByIdAsync**](docs/BillsOfLadingApi.md#getbillofladinglinebyidasync) | **GET** /api/v2/ShipmentsService/BillsOfLading/{billOfLadingId}/Lines/{lineId} | Get bill of lading line by ID
*BillsOfLadingApi* | [**getBillOfLadingLinesAsync**](docs/BillsOfLadingApi.md#getbillofladinglinesasync) | **GET** /api/v2/ShipmentsService/BillsOfLading/{billOfLadingId}/Lines | Get bill of lading lines
*BillsOfLadingApi* | [**getBillOfLadingLinesCountAsync**](docs/BillsOfLadingApi.md#getbillofladinglinescountasync) | **GET** /api/v2/ShipmentsService/BillsOfLading/{billOfLadingId}/Lines/Count | Get bill of lading lines count
*BillsOfLadingApi* | [**getBillsOfLadingAsync**](docs/BillsOfLadingApi.md#getbillsofladingasync) | **GET** /api/v2/ShipmentsService/BillsOfLading | Get all bills of lading
*BillsOfLadingApi* | [**getBillsOfLadingCountAsync**](docs/BillsOfLadingApi.md#getbillsofladingcountasync) | **GET** /api/v2/ShipmentsService/BillsOfLading/Count | Get bills of lading count
*BillsOfLadingApi* | [**updateBillOfLadingAsync**](docs/BillsOfLadingApi.md#updatebillofladingasync) | **PUT** /api/v2/ShipmentsService/BillsOfLading/{billOfLadingId} | Update a bill of lading
*BillsOfLadingApi* | [**updateBillOfLadingLineAsync**](docs/BillsOfLadingApi.md#updatebillofladinglineasync) | **PUT** /api/v2/ShipmentsService/BillsOfLading/{billOfLadingId}/Lines/{lineId} | Update a bill of lading line
*CompletionsApi* | [**apiV2AiServiceCompletionsCompleteGet**](docs/CompletionsApi.md#apiv2aiservicecompletionscompleteget) | **GET** /api/v2/AiService/Completions/Complete | 
*FenixAlliancePortalsWebsiteApi* | [**accountLogoutPost**](docs/FenixAlliancePortalsWebsiteApi.md#accountlogoutpost) | **POST** /Account/Logout | 
*FenixAlliancePortalsWebsiteApi* | [**accountManageDownloadPersonalDataPost**](docs/FenixAlliancePortalsWebsiteApi.md#accountmanagedownloadpersonaldatapost) | **POST** /Account/Manage/DownloadPersonalData | 
*FenixAlliancePortalsWebsiteApi* | [**accountManageLinkExternalLoginPost**](docs/FenixAlliancePortalsWebsiteApi.md#accountmanagelinkexternalloginpost) | **POST** /Account/Manage/LinkExternalLogin | 
*FenixAlliancePortalsWebsiteApi* | [**accountPerformExternalLoginPost**](docs/FenixAlliancePortalsWebsiteApi.md#accountperformexternalloginpost) | **POST** /Account/PerformExternalLogin | 
*FenixAlliancePortalsWebsiteApi* | [**forgotPasswordPost**](docs/FenixAlliancePortalsWebsiteApi.md#forgotpasswordpost) | **POST** /forgotPassword | 
*FenixAlliancePortalsWebsiteApi* | [**healthGet**](docs/FenixAlliancePortalsWebsiteApi.md#healthget) | **GET** /health | 
*FenixAlliancePortalsWebsiteApi* | [**helloGet**](docs/FenixAlliancePortalsWebsiteApi.md#helloget) | **GET** /hello | 
*FenixAlliancePortalsWebsiteApi* | [**loginPost**](docs/FenixAlliancePortalsWebsiteApi.md#loginpost) | **POST** /login | 
*FenixAlliancePortalsWebsiteApi* | [**manage2faPost**](docs/FenixAlliancePortalsWebsiteApi.md#manage2fapost) | **POST** /manage/2fa | 
*FenixAlliancePortalsWebsiteApi* | [**manageInfoGet**](docs/FenixAlliancePortalsWebsiteApi.md#manageinfoget) | **GET** /manage/info | 
*FenixAlliancePortalsWebsiteApi* | [**manageInfoPost**](docs/FenixAlliancePortalsWebsiteApi.md#manageinfopost) | **POST** /manage/info | 
*FenixAlliancePortalsWebsiteApi* | [**mapIdentityApiConfirmEmail**](docs/FenixAlliancePortalsWebsiteApi.md#mapidentityapiconfirmemail) | **GET** /confirmEmail | 
*FenixAlliancePortalsWebsiteApi* | [**refreshPost**](docs/FenixAlliancePortalsWebsiteApi.md#refreshpost) | **POST** /refresh | 
*FenixAlliancePortalsWebsiteApi* | [**registerPost**](docs/FenixAlliancePortalsWebsiteApi.md#registerpost) | **POST** /register | 
*FenixAlliancePortalsWebsiteApi* | [**resendConfirmationEmailPost**](docs/FenixAlliancePortalsWebsiteApi.md#resendconfirmationemailpost) | **POST** /resendConfirmationEmail | 
*FenixAlliancePortalsWebsiteApi* | [**resetPasswordPost**](docs/FenixAlliancePortalsWebsiteApi.md#resetpasswordpost) | **POST** /resetPassword | 
*FenixAlliancePortalsWebsiteApi* | [**versionGet**](docs/FenixAlliancePortalsWebsiteApi.md#versionget) | **GET** /version | 
*ItemShippingPoliciesApi* | [**createItemShippingPolicyAsync**](docs/ItemShippingPoliciesApi.md#createitemshippingpolicyasync) | **POST** /api/v2/ShipmentsService/ItemShippingPolicies | Create an item shipping policy
*ItemShippingPoliciesApi* | [**deleteItemShippingPolicyAsync**](docs/ItemShippingPoliciesApi.md#deleteitemshippingpolicyasync) | **DELETE** /api/v2/ShipmentsService/ItemShippingPolicies/{policyId} | Delete an item shipping policy
*ItemShippingPoliciesApi* | [**getItemShippingPoliciesAsync**](docs/ItemShippingPoliciesApi.md#getitemshippingpoliciesasync) | **GET** /api/v2/ShipmentsService/ItemShippingPolicies | Get all item shipping policies
*ItemShippingPoliciesApi* | [**getItemShippingPoliciesCountAsync**](docs/ItemShippingPoliciesApi.md#getitemshippingpoliciescountasync) | **GET** /api/v2/ShipmentsService/ItemShippingPolicies/Count | Get item shipping policies count
*ItemShippingPoliciesApi* | [**getItemShippingPolicyByIdAsync**](docs/ItemShippingPoliciesApi.md#getitemshippingpolicybyidasync) | **GET** /api/v2/ShipmentsService/ItemShippingPolicies/{policyId} | Get item shipping policy by ID
*ItemShippingPoliciesApi* | [**updateItemShippingPolicyAsync**](docs/ItemShippingPoliciesApi.md#updateitemshippingpolicyasync) | **PUT** /api/v2/ShipmentsService/ItemShippingPolicies/{policyId} | Update an item shipping policy
*ShipmentsApi* | [**createShipmentAsync**](docs/ShipmentsApi.md#createshipmentasync) | **POST** /api/v2/ShipmentsService/Shipments | Create a shipment
*ShipmentsApi* | [**deleteShipmentAsync**](docs/ShipmentsApi.md#deleteshipmentasync) | **DELETE** /api/v2/ShipmentsService/Shipments/{shipmentId} | Delete a shipment
*ShipmentsApi* | [**getShipmentByIdAsync**](docs/ShipmentsApi.md#getshipmentbyidasync) | **GET** /api/v2/ShipmentsService/Shipments/{shipmentId} | Get shipment by ID
*ShipmentsApi* | [**getShipmentsAsync**](docs/ShipmentsApi.md#getshipmentsasync) | **GET** /api/v2/ShipmentsService/Shipments | Get all shipments
*ShipmentsApi* | [**getShipmentsCountAsync**](docs/ShipmentsApi.md#getshipmentscountasync) | **GET** /api/v2/ShipmentsService/Shipments/Count | Get shipments count
*ShipmentsApi* | [**updateShipmentAsync**](docs/ShipmentsApi.md#updateshipmentasync) | **PUT** /api/v2/ShipmentsService/Shipments/{shipmentId} | Update a shipment
*ShippingClassesApi* | [**createShippingClassAsync**](docs/ShippingClassesApi.md#createshippingclassasync) | **POST** /api/v2/ShipmentsService/ShippingClasses | Create a shipping class
*ShippingClassesApi* | [**deleteShippingClassAsync**](docs/ShippingClassesApi.md#deleteshippingclassasync) | **DELETE** /api/v2/ShipmentsService/ShippingClasses/{classId} | Delete a shipping class
*ShippingClassesApi* | [**getShippingClassByIdAsync**](docs/ShippingClassesApi.md#getshippingclassbyidasync) | **GET** /api/v2/ShipmentsService/ShippingClasses/{classId} | Get shipping class by ID
*ShippingClassesApi* | [**getShippingClassesAsync**](docs/ShippingClassesApi.md#getshippingclassesasync) | **GET** /api/v2/ShipmentsService/ShippingClasses | Get all shipping classes
*ShippingClassesApi* | [**getShippingClassesCountAsync**](docs/ShippingClassesApi.md#getshippingclassescountasync) | **GET** /api/v2/ShipmentsService/ShippingClasses/Count | Get shipping classes count
*ShippingClassesApi* | [**updateShippingClassAsync**](docs/ShippingClassesApi.md#updateshippingclassasync) | **PUT** /api/v2/ShipmentsService/ShippingClasses/{classId} | Update a shipping class
*ShippingCouriersApi* | [**createShippingCourierAsync**](docs/ShippingCouriersApi.md#createshippingcourierasync) | **POST** /api/v2/ShipmentsService/ShippingCouriers | Create a shipping courier
*ShippingCouriersApi* | [**deleteShippingCourierAsync**](docs/ShippingCouriersApi.md#deleteshippingcourierasync) | **DELETE** /api/v2/ShipmentsService/ShippingCouriers/{courierId} | Delete a shipping courier
*ShippingCouriersApi* | [**getShippingCourierByIdAsync**](docs/ShippingCouriersApi.md#getshippingcourierbyidasync) | **GET** /api/v2/ShipmentsService/ShippingCouriers/{courierId} | Get shipping courier by ID
*ShippingCouriersApi* | [**getShippingCouriersAsync**](docs/ShippingCouriersApi.md#getshippingcouriersasync) | **GET** /api/v2/ShipmentsService/ShippingCouriers | Get all shipping couriers
*ShippingCouriersApi* | [**getShippingCouriersCountAsync**](docs/ShippingCouriersApi.md#getshippingcourierscountasync) | **GET** /api/v2/ShipmentsService/ShippingCouriers/Count | Get shipping couriers count
*ShippingCouriersApi* | [**updateShippingCourierAsync**](docs/ShippingCouriersApi.md#updateshippingcourierasync) | **PUT** /api/v2/ShipmentsService/ShippingCouriers/{courierId} | Update a shipping courier
*ShippingLabelsApi* | [**createShippingLabelAsync**](docs/ShippingLabelsApi.md#createshippinglabelasync) | **POST** /api/v2/ShipmentsService/ShippingLabels | Create a shipping label
*ShippingLabelsApi* | [**deleteShippingLabelAsync**](docs/ShippingLabelsApi.md#deleteshippinglabelasync) | **DELETE** /api/v2/ShipmentsService/ShippingLabels/{labelId} | Delete a shipping label
*ShippingLabelsApi* | [**getShippingLabelByIdAsync**](docs/ShippingLabelsApi.md#getshippinglabelbyidasync) | **GET** /api/v2/ShipmentsService/ShippingLabels/{labelId} | Get shipping label by ID
*ShippingLabelsApi* | [**getShippingLabelsAsync**](docs/ShippingLabelsApi.md#getshippinglabelsasync) | **GET** /api/v2/ShipmentsService/ShippingLabels | Get all shipping labels
*ShippingLabelsApi* | [**getShippingLabelsCountAsync**](docs/ShippingLabelsApi.md#getshippinglabelscountasync) | **GET** /api/v2/ShipmentsService/ShippingLabels/Count | Get shipping labels count
*ShippingLabelsApi* | [**updateShippingLabelAsync**](docs/ShippingLabelsApi.md#updateshippinglabelasync) | **PUT** /api/v2/ShipmentsService/ShippingLabels/{labelId} | Update a shipping label
*ShippingMethodsApi* | [**createShippingMethodAsync**](docs/ShippingMethodsApi.md#createshippingmethodasync) | **POST** /api/v2/ShipmentsService/ShippingMethods | Create a shipping method
*ShippingMethodsApi* | [**deleteShippingMethodAsync**](docs/ShippingMethodsApi.md#deleteshippingmethodasync) | **DELETE** /api/v2/ShipmentsService/ShippingMethods/{methodId} | Delete a shipping method
*ShippingMethodsApi* | [**getShippingMethodByIdAsync**](docs/ShippingMethodsApi.md#getshippingmethodbyidasync) | **GET** /api/v2/ShipmentsService/ShippingMethods/{methodId} | Get shipping method by ID
*ShippingMethodsApi* | [**getShippingMethodsAsync**](docs/ShippingMethodsApi.md#getshippingmethodsasync) | **GET** /api/v2/ShipmentsService/ShippingMethods | Get all shipping methods
*ShippingMethodsApi* | [**getShippingMethodsCountAsync**](docs/ShippingMethodsApi.md#getshippingmethodscountasync) | **GET** /api/v2/ShipmentsService/ShippingMethods/Count | Get shipping methods count
*ShippingMethodsApi* | [**updateShippingMethodAsync**](docs/ShippingMethodsApi.md#updateshippingmethodasync) | **PUT** /api/v2/ShipmentsService/ShippingMethods/{methodId} | Update a shipping method
*ShippingRegionsApi* | [**createShippingRegionAsync**](docs/ShippingRegionsApi.md#createshippingregionasync) | **POST** /api/v2/ShipmentsService/ShippingRegions | Create a shipping region
*ShippingRegionsApi* | [**deleteShippingRegionAsync**](docs/ShippingRegionsApi.md#deleteshippingregionasync) | **DELETE** /api/v2/ShipmentsService/ShippingRegions/{regionId} | Delete a shipping region
*ShippingRegionsApi* | [**getShippingRegionByIdAsync**](docs/ShippingRegionsApi.md#getshippingregionbyidasync) | **GET** /api/v2/ShipmentsService/ShippingRegions/{regionId} | Get shipping region by ID
*ShippingRegionsApi* | [**getShippingRegionsAsync**](docs/ShippingRegionsApi.md#getshippingregionsasync) | **GET** /api/v2/ShipmentsService/ShippingRegions | Get all shipping regions
*ShippingRegionsApi* | [**getShippingRegionsCountAsync**](docs/ShippingRegionsApi.md#getshippingregionscountasync) | **GET** /api/v2/ShipmentsService/ShippingRegions/Count | Get shipping regions count
*ShippingRegionsApi* | [**updateShippingRegionAsync**](docs/ShippingRegionsApi.md#updateshippingregionasync) | **PUT** /api/v2/ShipmentsService/ShippingRegions/{regionId} | Update a shipping region
*ShippingZonesApi* | [**createShippingZoneAsync**](docs/ShippingZonesApi.md#createshippingzoneasync) | **POST** /api/v2/ShipmentsService/ShippingZones | Create a shipping zone
*ShippingZonesApi* | [**deleteShippingZoneAsync**](docs/ShippingZonesApi.md#deleteshippingzoneasync) | **DELETE** /api/v2/ShipmentsService/ShippingZones/{zoneId} | Delete a shipping zone
*ShippingZonesApi* | [**getShippingZoneByIdAsync**](docs/ShippingZonesApi.md#getshippingzonebyidasync) | **GET** /api/v2/ShipmentsService/ShippingZones/{zoneId} | Get shipping zone by ID
*ShippingZonesApi* | [**getShippingZonesAsync**](docs/ShippingZonesApi.md#getshippingzonesasync) | **GET** /api/v2/ShipmentsService/ShippingZones | Get all shipping zones
*ShippingZonesApi* | [**getShippingZonesCountAsync**](docs/ShippingZonesApi.md#getshippingzonescountasync) | **GET** /api/v2/ShipmentsService/ShippingZones/Count | Get shipping zones count
*ShippingZonesApi* | [**updateShippingZoneAsync**](docs/ShippingZonesApi.md#updateshippingzoneasync) | **PUT** /api/v2/ShipmentsService/ShippingZones/{zoneId} | Update a shipping zone


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [BillOfLadingCreateDto](docs/BillOfLadingCreateDto.md)
 - [BillOfLadingDto](docs/BillOfLadingDto.md)
 - [BillOfLadingDtoEnvelope](docs/BillOfLadingDtoEnvelope.md)
 - [BillOfLadingDtoListEnvelope](docs/BillOfLadingDtoListEnvelope.md)
 - [BillOfLadingLineCreateDto](docs/BillOfLadingLineCreateDto.md)
 - [BillOfLadingLineDto](docs/BillOfLadingLineDto.md)
 - [BillOfLadingLineDtoEnvelope](docs/BillOfLadingLineDtoEnvelope.md)
 - [BillOfLadingLineDtoListEnvelope](docs/BillOfLadingLineDtoListEnvelope.md)
 - [BillOfLadingLineUpdateDto](docs/BillOfLadingLineUpdateDto.md)
 - [BillOfLadingUpdateDto](docs/BillOfLadingUpdateDto.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [ItemShippingPolicyCreateDto](docs/ItemShippingPolicyCreateDto.md)
 - [ItemShippingPolicyDto](docs/ItemShippingPolicyDto.md)
 - [ItemShippingPolicyDtoEnvelope](docs/ItemShippingPolicyDtoEnvelope.md)
 - [ItemShippingPolicyDtoListEnvelope](docs/ItemShippingPolicyDtoListEnvelope.md)
 - [ItemShippingPolicyUpdateDto](docs/ItemShippingPolicyUpdateDto.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [ShipmentCreateDto](docs/ShipmentCreateDto.md)
 - [ShipmentDto](docs/ShipmentDto.md)
 - [ShipmentDtoEnvelope](docs/ShipmentDtoEnvelope.md)
 - [ShipmentDtoListEnvelope](docs/ShipmentDtoListEnvelope.md)
 - [ShipmentUpdateDto](docs/ShipmentUpdateDto.md)
 - [ShippingClassCreateDto](docs/ShippingClassCreateDto.md)
 - [ShippingClassDto](docs/ShippingClassDto.md)
 - [ShippingClassDtoEnvelope](docs/ShippingClassDtoEnvelope.md)
 - [ShippingClassDtoListEnvelope](docs/ShippingClassDtoListEnvelope.md)
 - [ShippingClassUpdateDto](docs/ShippingClassUpdateDto.md)
 - [ShippingCourierCreateDto](docs/ShippingCourierCreateDto.md)
 - [ShippingCourierDto](docs/ShippingCourierDto.md)
 - [ShippingCourierDtoEnvelope](docs/ShippingCourierDtoEnvelope.md)
 - [ShippingCourierDtoListEnvelope](docs/ShippingCourierDtoListEnvelope.md)
 - [ShippingCourierUpdateDto](docs/ShippingCourierUpdateDto.md)
 - [ShippingLabelCreateDto](docs/ShippingLabelCreateDto.md)
 - [ShippingLabelDto](docs/ShippingLabelDto.md)
 - [ShippingLabelDtoEnvelope](docs/ShippingLabelDtoEnvelope.md)
 - [ShippingLabelDtoListEnvelope](docs/ShippingLabelDtoListEnvelope.md)
 - [ShippingLabelUpdateDto](docs/ShippingLabelUpdateDto.md)
 - [ShippingMethodCreateDto](docs/ShippingMethodCreateDto.md)
 - [ShippingMethodDto](docs/ShippingMethodDto.md)
 - [ShippingMethodDtoEnvelope](docs/ShippingMethodDtoEnvelope.md)
 - [ShippingMethodDtoListEnvelope](docs/ShippingMethodDtoListEnvelope.md)
 - [ShippingMethodUpdateDto](docs/ShippingMethodUpdateDto.md)
 - [ShippingRegionCreateDto](docs/ShippingRegionCreateDto.md)
 - [ShippingRegionDto](docs/ShippingRegionDto.md)
 - [ShippingRegionDtoEnvelope](docs/ShippingRegionDtoEnvelope.md)
 - [ShippingRegionDtoListEnvelope](docs/ShippingRegionDtoListEnvelope.md)
 - [ShippingRegionUpdateDto](docs/ShippingRegionUpdateDto.md)
 - [ShippingZoneCreateDto](docs/ShippingZoneCreateDto.md)
 - [ShippingZoneDto](docs/ShippingZoneDto.md)
 - [ShippingZoneDtoEnvelope](docs/ShippingZoneDtoEnvelope.md)
 - [ShippingZoneDtoListEnvelope](docs/ShippingZoneDtoListEnvelope.md)
 - [ShippingZoneUpdateDto](docs/ShippingZoneUpdateDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

