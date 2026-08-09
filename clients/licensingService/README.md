# LicensingService Bash client

## Overview

This is a Bash client script for accessing LicensingService service.

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
*FenixAllianceABSWebApi* | [**accountLogoutPost**](docs/FenixAllianceABSWebApi.md#accountlogoutpost) | **POST** /Account/Logout | 
*FenixAllianceABSWebApi* | [**accountManageDownloadPersonalDataPost**](docs/FenixAllianceABSWebApi.md#accountmanagedownloadpersonaldatapost) | **POST** /Account/Manage/DownloadPersonalData | 
*FenixAllianceABSWebApi* | [**accountManageLinkExternalLoginPost**](docs/FenixAllianceABSWebApi.md#accountmanagelinkexternalloginpost) | **POST** /Account/Manage/LinkExternalLogin | 
*FenixAllianceABSWebApi* | [**accountPerformExternalLoginPost**](docs/FenixAllianceABSWebApi.md#accountperformexternalloginpost) | **POST** /Account/PerformExternalLogin | 
*FenixAllianceABSWebApi* | [**forgotPasswordPost**](docs/FenixAllianceABSWebApi.md#forgotpasswordpost) | **POST** /forgotPassword | 
*FenixAllianceABSWebApi* | [**healthGet**](docs/FenixAllianceABSWebApi.md#healthget) | **GET** /health | 
*FenixAllianceABSWebApi* | [**helloGet**](docs/FenixAllianceABSWebApi.md#helloget) | **GET** /hello | 
*FenixAllianceABSWebApi* | [**loginPost**](docs/FenixAllianceABSWebApi.md#loginpost) | **POST** /login | 
*FenixAllianceABSWebApi* | [**manage2faPost**](docs/FenixAllianceABSWebApi.md#manage2fapost) | **POST** /manage/2fa | 
*FenixAllianceABSWebApi* | [**manageInfoGet**](docs/FenixAllianceABSWebApi.md#manageinfoget) | **GET** /manage/info | 
*FenixAllianceABSWebApi* | [**manageInfoPost**](docs/FenixAllianceABSWebApi.md#manageinfopost) | **POST** /manage/info | 
*FenixAllianceABSWebApi* | [**mapIdentityApiConfirmEmail**](docs/FenixAllianceABSWebApi.md#mapidentityapiconfirmemail) | **GET** /confirmEmail | 
*FenixAllianceABSWebApi* | [**refreshPost**](docs/FenixAllianceABSWebApi.md#refreshpost) | **POST** /refresh | 
*FenixAllianceABSWebApi* | [**registerPost**](docs/FenixAllianceABSWebApi.md#registerpost) | **POST** /register | 
*FenixAllianceABSWebApi* | [**resendConfirmationEmailPost**](docs/FenixAllianceABSWebApi.md#resendconfirmationemailpost) | **POST** /resendConfirmationEmail | 
*FenixAllianceABSWebApi* | [**resetPasswordPost**](docs/FenixAllianceABSWebApi.md#resetpasswordpost) | **POST** /resetPassword | 
*FenixAllianceABSWebApi* | [**versionGet**](docs/FenixAllianceABSWebApi.md#versionget) | **GET** /version | 
*LicenseAttributesApi* | [**createLicenseAttributeAsync**](docs/LicenseAttributesApi.md#createlicenseattributeasync) | **POST** /api/v2/LicensingService/LicenseAttributes | Create a new license attribute
*LicenseAttributesApi* | [**deleteLicenseAttributeAsync**](docs/LicenseAttributesApi.md#deletelicenseattributeasync) | **DELETE** /api/v2/LicensingService/LicenseAttributes/{id} | Delete a license attribute
*LicenseAttributesApi* | [**getLicenseAttributeByIdAsync**](docs/LicenseAttributesApi.md#getlicenseattributebyidasync) | **GET** /api/v2/LicensingService/LicenseAttributes/{id} | Get license attribute by ID
*LicenseAttributesApi* | [**getLicenseAttributesAsync**](docs/LicenseAttributesApi.md#getlicenseattributesasync) | **GET** /api/v2/LicensingService/LicenseAttributes | Get all license attributes
*LicenseAttributesApi* | [**getLicenseAttributesCountAsync**](docs/LicenseAttributesApi.md#getlicenseattributescountasync) | **GET** /api/v2/LicensingService/LicenseAttributes/Count | Get license attributes count
*LicenseAttributesApi* | [**patchLicenseAttributeAsync**](docs/LicenseAttributesApi.md#patchlicenseattributeasync) | **PATCH** /api/v2/LicensingService/LicenseAttributes/{id} | Patch a license attribute
*LicenseAttributesApi* | [**updateLicenseAttributeAsync**](docs/LicenseAttributesApi.md#updatelicenseattributeasync) | **PUT** /api/v2/LicensingService/LicenseAttributes/{id} | Update a license attribute
*LicenseFeaturesApi* | [**createLicenseFeatureAsync**](docs/LicenseFeaturesApi.md#createlicensefeatureasync) | **POST** /api/v2/LicensingService/LicenseFeatures | Create a new license feature
*LicenseFeaturesApi* | [**deleteLicenseFeatureAsync**](docs/LicenseFeaturesApi.md#deletelicensefeatureasync) | **DELETE** /api/v2/LicensingService/LicenseFeatures/{id} | Delete a license feature
*LicenseFeaturesApi* | [**getLicenseFeatureByIdAsync**](docs/LicenseFeaturesApi.md#getlicensefeaturebyidasync) | **GET** /api/v2/LicensingService/LicenseFeatures/{id} | Get license feature by ID
*LicenseFeaturesApi* | [**getLicenseFeaturesAsync**](docs/LicenseFeaturesApi.md#getlicensefeaturesasync) | **GET** /api/v2/LicensingService/LicenseFeatures | Get all license features
*LicenseFeaturesApi* | [**getLicenseFeaturesCountAsync**](docs/LicenseFeaturesApi.md#getlicensefeaturescountasync) | **GET** /api/v2/LicensingService/LicenseFeatures/Count | Get license features count
*LicenseFeaturesApi* | [**patchLicenseFeatureAsync**](docs/LicenseFeaturesApi.md#patchlicensefeatureasync) | **PATCH** /api/v2/LicensingService/LicenseFeatures/{id} | Patch a license feature
*LicenseFeaturesApi* | [**updateLicenseFeatureAsync**](docs/LicenseFeaturesApi.md#updatelicensefeatureasync) | **PUT** /api/v2/LicensingService/LicenseFeatures/{id} | Update a license feature
*LicenseTypesApi* | [**createLicenseTypeAsync**](docs/LicenseTypesApi.md#createlicensetypeasync) | **POST** /api/v2/LicensingService/LicenseTypes | Create a new license type
*LicenseTypesApi* | [**deleteLicenseTypeAsync**](docs/LicenseTypesApi.md#deletelicensetypeasync) | **DELETE** /api/v2/LicensingService/LicenseTypes/{id} | Delete a license type
*LicenseTypesApi* | [**getLicenseTypeByIdAsync**](docs/LicenseTypesApi.md#getlicensetypebyidasync) | **GET** /api/v2/LicensingService/LicenseTypes/{id} | Get license type by ID
*LicenseTypesApi* | [**getLicenseTypesAsync**](docs/LicenseTypesApi.md#getlicensetypesasync) | **GET** /api/v2/LicensingService/LicenseTypes | Get all license types
*LicenseTypesApi* | [**getLicenseTypesCountAsync**](docs/LicenseTypesApi.md#getlicensetypescountasync) | **GET** /api/v2/LicensingService/LicenseTypes/Count | Get license types count
*LicenseTypesApi* | [**patchLicenseTypeAsync**](docs/LicenseTypesApi.md#patchlicensetypeasync) | **PATCH** /api/v2/LicensingService/LicenseTypes/{id} | Patch a license type
*LicenseTypesApi* | [**updateLicenseTypeAsync**](docs/LicenseTypesApi.md#updatelicensetypeasync) | **PUT** /api/v2/LicensingService/LicenseTypes/{id} | Update a license type
*LicensesApi* | [**createLicenseAsync**](docs/LicensesApi.md#createlicenseasync) | **POST** /api/v2/LicensingService/Licenses | Create a new license
*LicensesApi* | [**deleteLicenseAsync**](docs/LicensesApi.md#deletelicenseasync) | **DELETE** /api/v2/LicensingService/Licenses/{licenseId} | Delete a license
*LicensesApi* | [**getLicenseByIdAsync**](docs/LicensesApi.md#getlicensebyidasync) | **GET** /api/v2/LicensingService/Licenses/{licenseId} | Get license by ID
*LicensesApi* | [**getLicensesAsync**](docs/LicensesApi.md#getlicensesasync) | **GET** /api/v2/LicensingService/Licenses | Get licenses
*LicensesApi* | [**getLicensesCountAsync**](docs/LicensesApi.md#getlicensescountasync) | **GET** /api/v2/LicensingService/Licenses/Count | Get licenses count
*LicensesApi* | [**updateLicenseAsync**](docs/LicensesApi.md#updatelicenseasync) | **PUT** /api/v2/LicensingService/Licenses/{licenseId} | Update a license
*LicensingCertificatesApi* | [**createLicensingCertificateAsync**](docs/LicensingCertificatesApi.md#createlicensingcertificateasync) | **POST** /api/v2/LicensingService/LicensingCertificates | Create a new licensing certificate
*LicensingCertificatesApi* | [**deleteLicensingCertificateAsync**](docs/LicensingCertificatesApi.md#deletelicensingcertificateasync) | **DELETE** /api/v2/LicensingService/LicensingCertificates/{id} | Delete a licensing certificate
*LicensingCertificatesApi* | [**getLicensingCertificateByIdAsync**](docs/LicensingCertificatesApi.md#getlicensingcertificatebyidasync) | **GET** /api/v2/LicensingService/LicensingCertificates/{id} | Get licensing certificate by ID
*LicensingCertificatesApi* | [**getLicensingCertificatesAsync**](docs/LicensingCertificatesApi.md#getlicensingcertificatesasync) | **GET** /api/v2/LicensingService/LicensingCertificates | Get all licensing certificates
*LicensingCertificatesApi* | [**getLicensingCertificatesCountAsync**](docs/LicensingCertificatesApi.md#getlicensingcertificatescountasync) | **GET** /api/v2/LicensingService/LicensingCertificates/Count | Get licensing certificates count
*LicensingCertificatesApi* | [**patchLicensingCertificateAsync**](docs/LicensingCertificatesApi.md#patchlicensingcertificateasync) | **PATCH** /api/v2/LicensingService/LicensingCertificates/{id} | Patch a licensing certificate
*LicensingCertificatesApi* | [**updateLicensingCertificateAsync**](docs/LicensingCertificatesApi.md#updatelicensingcertificateasync) | **PUT** /api/v2/LicensingService/LicensingCertificates/{id} | Update a licensing certificate


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LicenseAttributeCreateDto](docs/LicenseAttributeCreateDto.md)
 - [LicenseAttributeDto](docs/LicenseAttributeDto.md)
 - [LicenseAttributeDtoCollectionQueryParameters](docs/LicenseAttributeDtoCollectionQueryParameters.md)
 - [LicenseAttributeDtoListEnvelope](docs/LicenseAttributeDtoListEnvelope.md)
 - [LicenseAttributeUpdateDto](docs/LicenseAttributeUpdateDto.md)
 - [LicenseCreateDto](docs/LicenseCreateDto.md)
 - [LicenseDto](docs/LicenseDto.md)
 - [LicenseDtoCollectionQueryParameters](docs/LicenseDtoCollectionQueryParameters.md)
 - [LicenseDtoListEnvelope](docs/LicenseDtoListEnvelope.md)
 - [LicenseFeatureCreateDto](docs/LicenseFeatureCreateDto.md)
 - [LicenseFeatureDto](docs/LicenseFeatureDto.md)
 - [LicenseFeatureDtoCollectionQueryParameters](docs/LicenseFeatureDtoCollectionQueryParameters.md)
 - [LicenseFeatureDtoListEnvelope](docs/LicenseFeatureDtoListEnvelope.md)
 - [LicenseFeatureUpdateDto](docs/LicenseFeatureUpdateDto.md)
 - [LicenseTypeCreateDto](docs/LicenseTypeCreateDto.md)
 - [LicenseTypeDto](docs/LicenseTypeDto.md)
 - [LicenseTypeDtoCollectionQueryParameters](docs/LicenseTypeDtoCollectionQueryParameters.md)
 - [LicenseTypeDtoListEnvelope](docs/LicenseTypeDtoListEnvelope.md)
 - [LicenseTypeUpdateDto](docs/LicenseTypeUpdateDto.md)
 - [LicenseUpdateDto](docs/LicenseUpdateDto.md)
 - [LicensingCertificateCreateDto](docs/LicensingCertificateCreateDto.md)
 - [LicensingCertificateDto](docs/LicensingCertificateDto.md)
 - [LicensingCertificateDtoCollectionQueryParameters](docs/LicensingCertificateDtoCollectionQueryParameters.md)
 - [LicensingCertificateDtoListEnvelope](docs/LicensingCertificateDtoListEnvelope.md)
 - [LicensingCertificateUpdateDto](docs/LicensingCertificateUpdateDto.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [PatchOperation](docs/PatchOperation.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

