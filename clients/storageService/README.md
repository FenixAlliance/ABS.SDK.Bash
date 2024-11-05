# StorageService Bash client

## Overview

This is a Bash client script for accessing StorageService service.

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
*AvatarsApi* | [**getAvatar**](docs/AvatarsApi.md#getavatar) | **GET** /api/v2/StorageService/Avatars/{socialProfileId} | Get the avatar for a given social profile.
*AvatarsApi* | [**getContactAvatar**](docs/AvatarsApi.md#getcontactavatar) | **GET** /api/v2/StorageService/Avatars/Contact/{contactId} | Get the avatar for a given contact.
*AvatarsApi* | [**getCurrentUserAvatar**](docs/AvatarsApi.md#getcurrentuseravatar) | **GET** /api/v2/StorageService/Avatars/User | Get the avatar for the current user.
*AvatarsApi* | [**getTenantAvatar**](docs/AvatarsApi.md#gettenantavatar) | **GET** /api/v2/StorageService/Avatars/Tenant/{tenantId} | Get the avatar for a given tenant.
*AvatarsApi* | [**getUserAvatar**](docs/AvatarsApi.md#getuseravatar) | **GET** /api/v2/StorageService/Avatars/User/{userId} | Get the avatar for a given user.
*AvatarsApi* | [**updateContactAvatar**](docs/AvatarsApi.md#updatecontactavatar) | **POST** /api/v2/StorageService/Avatars/Contacts/{contactId} | Update the avatar for a given contact.
*AvatarsApi* | [**updateTenantAvatar**](docs/AvatarsApi.md#updatetenantavatar) | **POST** /api/v2/StorageService/Avatars/Tenant/{tenantId} | Update the avatar for a given tenant.
*AvatarsApi* | [**updateUserAvatar**](docs/AvatarsApi.md#updateuseravatar) | **POST** /api/v2/StorageService/Avatars/User | Update the avatar for the current user.
*BlobsApi* | [**getBlobAsync**](docs/BlobsApi.md#getblobasync) | **GET** /api/v2/StorageService/Blobs/Single | 
*BlobsApi* | [**getBlobsAsync**](docs/BlobsApi.md#getblobsasync) | **GET** /api/v2/StorageService/Blobs | 
*FilesApi* | [**createFileAsync**](docs/FilesApi.md#createfileasync) | **POST** /api/v2/StorageService/Files | 
*FilesApi* | [**deleteFileAsync**](docs/FilesApi.md#deletefileasync) | **DELETE** /api/v2/StorageService/Files/{fileId} | 
*FilesApi* | [**downloadFileAsync**](docs/FilesApi.md#downloadfileasync) | **GET** /api/v2/StorageService/Files/{fileId}/Raw | 
*FilesApi* | [**getFileAsync**](docs/FilesApi.md#getfileasync) | **GET** /api/v2/StorageService/Files/{fileId} | 
*FilesApi* | [**getFilesAsync**](docs/FilesApi.md#getfilesasync) | **GET** /api/v2/StorageService/Files | 
*FilesApi* | [**updateFileAsync**](docs/FilesApi.md#updatefileasync) | **PUT** /api/v2/StorageService/Files/{fileId} | 
*RadzenEditorApi* | [**apiV2StorageServiceRadzenEditorUploadsIdPost**](docs/RadzenEditorApi.md#apiv2storageserviceradzeneditoruploadsidpost) | **POST** /api/v2/StorageService/RadzenEditor/Uploads/{id} | 
*RadzenEditorApi* | [**apiV2StorageServiceRadzenEditorUploadsImagePost**](docs/RadzenEditorApi.md#apiv2storageserviceradzeneditoruploadsimagepost) | **POST** /api/v2/StorageService/RadzenEditor/Uploads/Image | 
*RadzenEditorApi* | [**apiV2StorageServiceRadzenEditorUploadsMultiplePost**](docs/RadzenEditorApi.md#apiv2storageserviceradzeneditoruploadsmultiplepost) | **POST** /api/v2/StorageService/RadzenEditor/Uploads/Multiple | 
*RadzenEditorApi* | [**apiV2StorageServiceRadzenEditorUploadsSinglePost**](docs/RadzenEditorApi.md#apiv2storageserviceradzeneditoruploadssinglepost) | **POST** /api/v2/StorageService/RadzenEditor/Uploads/Single | 
*RadzenEditorApi* | [**apiV2StorageServiceRadzenEditorUploadsSpecificPost**](docs/RadzenEditorApi.md#apiv2storageserviceradzeneditoruploadsspecificpost) | **POST** /api/v2/StorageService/RadzenEditor/Uploads/Specific | 
*UploadsApi* | [**apiV2StorageServiceUploadsPost**](docs/UploadsApi.md#apiv2storageserviceuploadspost) | **POST** /api/v2/StorageService/Uploads | 


## Documentation For Models

 - [Blob](docs/Blob.md)
 - [BlobEnvelope](docs/BlobEnvelope.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [FileUploadDto](docs/FileUploadDto.md)
 - [FileUploadDtoEnvelope](docs/FileUploadDtoEnvelope.md)


## Documentation For Authorization


## Bearer


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

