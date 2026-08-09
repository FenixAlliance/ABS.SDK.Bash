# TrustService Bash client

## Overview

This is a Bash client script for accessing TrustService service.

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
*SignaturesApi* | [**getSignatureByIdAsync**](docs/SignaturesApi.md#getsignaturebyidasync) | **GET** /api/v2/TrustService/Signatures/{id} | Get signature by ID
*SignaturesApi* | [**getSignaturesAsync**](docs/SignaturesApi.md#getsignaturesasync) | **GET** /api/v2/TrustService/Signatures | Get all signatures
*SignaturesApi* | [**getSignaturesCountAsync**](docs/SignaturesApi.md#getsignaturescountasync) | **GET** /api/v2/TrustService/Signatures/Count | Get signatures count
*SignedDocumentArtifactsApi* | [**freezeAsync**](docs/SignedDocumentArtifactsApi.md#freezeasync) | **POST** /api/v2/TrustService/SignedDocumentArtifacts/{signedDocumentId}/freeze | Freeze the source for signature
*SignedDocumentArtifactsApi* | [**getReferenceAsync**](docs/SignedDocumentArtifactsApi.md#getreferenceasync) | **GET** /api/v2/TrustService/SignedDocumentArtifacts/reference/{fileUploadId} | Get an artifact reference
*SignedDocumentArtifactsApi* | [**setPrimaryAuthoringFileAsync**](docs/SignedDocumentArtifactsApi.md#setprimaryauthoringfileasync) | **PUT** /api/v2/TrustService/SignedDocumentArtifacts/{signedDocumentId}/primary-file/{fileUploadId} | Set the primary authoring file
*SignedDocumentArtifactsApi* | [**verifyAsync**](docs/SignedDocumentArtifactsApi.md#verifyasync) | **GET** /api/v2/TrustService/SignedDocumentArtifacts/reference/{fileUploadId}/verify | Verify an artifact hash
*SignedDocumentAttachmentsApi* | [**createSignedDocumentAttachmentAsync**](docs/SignedDocumentAttachmentsApi.md#createsigneddocumentattachmentasync) | **POST** /api/v2/TrustService/SignedDocumentAttachments | Create a new signed document attachment
*SignedDocumentAttachmentsApi* | [**deleteSignedDocumentAttachmentAsync**](docs/SignedDocumentAttachmentsApi.md#deletesigneddocumentattachmentasync) | **DELETE** /api/v2/TrustService/SignedDocumentAttachments/{id} | Delete a signed document attachment
*SignedDocumentAttachmentsApi* | [**getSignedDocumentAttachmentByIdAsync**](docs/SignedDocumentAttachmentsApi.md#getsigneddocumentattachmentbyidasync) | **GET** /api/v2/TrustService/SignedDocumentAttachments/{id} | Get signed document attachment by ID
*SignedDocumentAttachmentsApi* | [**getSignedDocumentAttachmentsAsync**](docs/SignedDocumentAttachmentsApi.md#getsigneddocumentattachmentsasync) | **GET** /api/v2/TrustService/SignedDocumentAttachments | Get all signed document attachments
*SignedDocumentAttachmentsApi* | [**getSignedDocumentAttachmentsCountAsync**](docs/SignedDocumentAttachmentsApi.md#getsigneddocumentattachmentscountasync) | **GET** /api/v2/TrustService/SignedDocumentAttachments/Count | Get signed document attachments count
*SignedDocumentAttachmentsApi* | [**patchSignedDocumentAttachmentAsync**](docs/SignedDocumentAttachmentsApi.md#patchsigneddocumentattachmentasync) | **PATCH** /api/v2/TrustService/SignedDocumentAttachments/{id} | Patch a signed document attachment
*SignedDocumentAttachmentsApi* | [**updateSignedDocumentAttachmentAsync**](docs/SignedDocumentAttachmentsApi.md#updatesigneddocumentattachmentasync) | **PUT** /api/v2/TrustService/SignedDocumentAttachments/{id} | Update a signed document attachment
*SignedDocumentsApi* | [**createSignedDocumentAsync**](docs/SignedDocumentsApi.md#createsigneddocumentasync) | **POST** /api/v2/TrustService/SignedDocuments | Create a new signed document
*SignedDocumentsApi* | [**deleteSignedDocumentAsync**](docs/SignedDocumentsApi.md#deletesigneddocumentasync) | **DELETE** /api/v2/TrustService/SignedDocuments/{id} | Delete a signed document
*SignedDocumentsApi* | [**getSignedDocumentByIdAsync**](docs/SignedDocumentsApi.md#getsigneddocumentbyidasync) | **GET** /api/v2/TrustService/SignedDocuments/{id} | Get signed document by ID
*SignedDocumentsApi* | [**getSignedDocumentsAsync**](docs/SignedDocumentsApi.md#getsigneddocumentsasync) | **GET** /api/v2/TrustService/SignedDocuments | Get all signed documents
*SignedDocumentsApi* | [**getSignedDocumentsCountAsync**](docs/SignedDocumentsApi.md#getsigneddocumentscountasync) | **GET** /api/v2/TrustService/SignedDocuments/Count | Get signed documents count
*SignedDocumentsApi* | [**patchSignedDocumentAsync**](docs/SignedDocumentsApi.md#patchsigneddocumentasync) | **PATCH** /api/v2/TrustService/SignedDocuments/{id} | Patch a signed document
*SignedDocumentsApi* | [**prepareAndQuickSignAsync**](docs/SignedDocumentsApi.md#prepareandquicksignasync) | **POST** /api/v2/TrustService/SignedDocuments/prepare-and-quick-sign | Create, freeze, and quick-sign a document in one call
*SignedDocumentsApi* | [**quickSignSignedDocumentAsync**](docs/SignedDocumentsApi.md#quicksignsigneddocumentasync) | **POST** /api/v2/TrustService/SignedDocuments/{id}/quick-sign | Quick-sign a frozen document
*SignedDocumentsApi* | [**updateSignedDocumentAsync**](docs/SignedDocumentsApi.md#updatesigneddocumentasync) | **PUT** /api/v2/TrustService/SignedDocuments/{id} | Update a signed document
*SignedDocumentsApi* | [**verifySignedDocumentSignatureAsync**](docs/SignedDocumentsApi.md#verifysigneddocumentsignatureasync) | **GET** /api/v2/TrustService/SignedDocuments/{id}/verify-signature | Verify a signed document&#39;s signature
*SigningCertificatesApi* | [**createSigningCertificateAsync**](docs/SigningCertificatesApi.md#createsigningcertificateasync) | **POST** /api/v2/TrustService/SigningCertificates | Create a new signing certificate
*SigningCertificatesApi* | [**deleteSigningCertificateAsync**](docs/SigningCertificatesApi.md#deletesigningcertificateasync) | **DELETE** /api/v2/TrustService/SigningCertificates/{id} | Delete a signing certificate
*SigningCertificatesApi* | [**getSigningCertificateByIdAsync**](docs/SigningCertificatesApi.md#getsigningcertificatebyidasync) | **GET** /api/v2/TrustService/SigningCertificates/{id} | Get signing certificate by ID
*SigningCertificatesApi* | [**getSigningCertificatesAsync**](docs/SigningCertificatesApi.md#getsigningcertificatesasync) | **GET** /api/v2/TrustService/SigningCertificates | Get all signing certificates
*SigningCertificatesApi* | [**getSigningCertificatesCountAsync**](docs/SigningCertificatesApi.md#getsigningcertificatescountasync) | **GET** /api/v2/TrustService/SigningCertificates/Count | Get signing certificates count
*SigningCertificatesApi* | [**importSigningCertificateAsync**](docs/SigningCertificatesApi.md#importsigningcertificateasync) | **POST** /api/v2/TrustService/SigningCertificates/Import | Import a PFX/P12 signing certificate into custody
*SigningCertificatesApi* | [**patchSigningCertificateAsync**](docs/SigningCertificatesApi.md#patchsigningcertificateasync) | **PATCH** /api/v2/TrustService/SigningCertificates/{id} | Patch a signing certificate
*SigningCertificatesApi* | [**updateSigningCertificateAsync**](docs/SigningCertificatesApi.md#updatesigningcertificateasync) | **PUT** /api/v2/TrustService/SigningCertificates/{id} | Update a signing certificate
*SigningEngineApi* | [**getProvidersAsync**](docs/SigningEngineApi.md#getprovidersasync) | **GET** /api/v2/TrustService/SigningEngine/Providers | List signing providers
*SigningEngineApi* | [**getProvidersCountAsync**](docs/SigningEngineApi.md#getproviderscountasync) | **GET** /api/v2/TrustService/SigningEngine/Providers/Count | Count signing providers
*SigningEngineApi* | [**previewAsync**](docs/SigningEngineApi.md#previewasync) | **POST** /api/v2/TrustService/SigningEngine/Preview | Preview signing readiness
*SigningLogsApi* | [**getSigningLogByIdAsync**](docs/SigningLogsApi.md#getsigninglogbyidasync) | **GET** /api/v2/TrustService/SigningLogs/{id} | Get signing log by ID
*SigningLogsApi* | [**getSigningLogsAsync**](docs/SigningLogsApi.md#getsigninglogsasync) | **GET** /api/v2/TrustService/SigningLogs | Get all signing logs
*SigningLogsApi* | [**getSigningLogsCountAsync**](docs/SigningLogsApi.md#getsigninglogscountasync) | **GET** /api/v2/TrustService/SigningLogs/Count | Get signing logs count
*SigningParticipantsApi* | [**getSigningParticipantByIdAsync**](docs/SigningParticipantsApi.md#getsigningparticipantbyidasync) | **GET** /api/v2/TrustService/SigningParticipants/{id} | Get signing participant by ID
*SigningParticipantsApi* | [**getSigningParticipantsAsync**](docs/SigningParticipantsApi.md#getsigningparticipantsasync) | **GET** /api/v2/TrustService/SigningParticipants | Get all signing participants
*SigningParticipantsApi* | [**getSigningParticipantsCountAsync**](docs/SigningParticipantsApi.md#getsigningparticipantscountasync) | **GET** /api/v2/TrustService/SigningParticipants/Count | Get signing participants count
*SigningParticipantsApi* | [**markViewedAsync**](docs/SigningParticipantsApi.md#markviewedasync) | **POST** /api/v2/TrustService/SigningParticipants/{id}/viewed | Mark a participant as having viewed the request
*SigningParticipantsApi* | [**recordOutcomeAsync**](docs/SigningParticipantsApi.md#recordoutcomeasync) | **POST** /api/v2/TrustService/SigningParticipants/{id}/outcome | Record a manual/external participant outcome
*SigningProfileGraphicalRepresentationsApi* | [**createSigningProfileGraphicalRepresentationAsync**](docs/SigningProfileGraphicalRepresentationsApi.md#createsigningprofilegraphicalrepresentationasync) | **POST** /api/v2/TrustService/SigningProfileGraphicalRepresentations | Create a new signature representation
*SigningProfileGraphicalRepresentationsApi* | [**deleteSigningProfileGraphicalRepresentationAsync**](docs/SigningProfileGraphicalRepresentationsApi.md#deletesigningprofilegraphicalrepresentationasync) | **DELETE** /api/v2/TrustService/SigningProfileGraphicalRepresentations/{id} | Delete a signature representation
*SigningProfileGraphicalRepresentationsApi* | [**getSigningProfileGraphicalRepresentationByIdAsync**](docs/SigningProfileGraphicalRepresentationsApi.md#getsigningprofilegraphicalrepresentationbyidasync) | **GET** /api/v2/TrustService/SigningProfileGraphicalRepresentations/{id} | Get signature representation by ID
*SigningProfileGraphicalRepresentationsApi* | [**getSigningProfileGraphicalRepresentationsAsync**](docs/SigningProfileGraphicalRepresentationsApi.md#getsigningprofilegraphicalrepresentationsasync) | **GET** /api/v2/TrustService/SigningProfileGraphicalRepresentations | Get all signature representations
*SigningProfileGraphicalRepresentationsApi* | [**getSigningProfileGraphicalRepresentationsCountAsync**](docs/SigningProfileGraphicalRepresentationsApi.md#getsigningprofilegraphicalrepresentationscountasync) | **GET** /api/v2/TrustService/SigningProfileGraphicalRepresentations/Count | Get signature representations count
*SigningProfileGraphicalRepresentationsApi* | [**patchSigningProfileGraphicalRepresentationAsync**](docs/SigningProfileGraphicalRepresentationsApi.md#patchsigningprofilegraphicalrepresentationasync) | **PATCH** /api/v2/TrustService/SigningProfileGraphicalRepresentations/{id} | Patch a signature representation
*SigningProfileGraphicalRepresentationsApi* | [**updateSigningProfileGraphicalRepresentationAsync**](docs/SigningProfileGraphicalRepresentationsApi.md#updatesigningprofilegraphicalrepresentationasync) | **PUT** /api/v2/TrustService/SigningProfileGraphicalRepresentations/{id} | Update a signature representation
*SigningProfilesApi* | [**createSigningProfileAsync**](docs/SigningProfilesApi.md#createsigningprofileasync) | **POST** /api/v2/TrustService/SigningProfiles | Create a new signing profile
*SigningProfilesApi* | [**deleteSigningProfileAsync**](docs/SigningProfilesApi.md#deletesigningprofileasync) | **DELETE** /api/v2/TrustService/SigningProfiles/{id} | Delete a signing profile
*SigningProfilesApi* | [**getSigningProfileByIdAsync**](docs/SigningProfilesApi.md#getsigningprofilebyidasync) | **GET** /api/v2/TrustService/SigningProfiles/{id} | Get signing profile by ID
*SigningProfilesApi* | [**getSigningProfilesAsync**](docs/SigningProfilesApi.md#getsigningprofilesasync) | **GET** /api/v2/TrustService/SigningProfiles | Get all signing profiles
*SigningProfilesApi* | [**getSigningProfilesCountAsync**](docs/SigningProfilesApi.md#getsigningprofilescountasync) | **GET** /api/v2/TrustService/SigningProfiles/Count | Get signing profiles count
*SigningProfilesApi* | [**patchSigningProfileAsync**](docs/SigningProfilesApi.md#patchsigningprofileasync) | **PATCH** /api/v2/TrustService/SigningProfiles/{id} | Patch a signing profile
*SigningProfilesApi* | [**updateSigningProfileAsync**](docs/SigningProfilesApi.md#updatesigningprofileasync) | **PUT** /api/v2/TrustService/SigningProfiles/{id} | Update a signing profile
*SigningRequestsApi* | [**addParticipantAsync**](docs/SigningRequestsApi.md#addparticipantasync) | **POST** /api/v2/TrustService/SigningRequests/{id}/participants | Add a participant to a signing request
*SigningRequestsApi* | [**createFromDocumentAsync**](docs/SigningRequestsApi.md#createfromdocumentasync) | **POST** /api/v2/TrustService/SigningRequests/from-document/{signedDocumentId} | Create a signing request from a frozen document
*SigningRequestsApi* | [**executeProviderAsync**](docs/SigningRequestsApi.md#executeproviderasync) | **POST** /api/v2/TrustService/SigningRequests/{id}/execute-provider | Run a signing provider to produce + finalize the signed artifact
*SigningRequestsApi* | [**expireAsync**](docs/SigningRequestsApi.md#expireasync) | **POST** /api/v2/TrustService/SigningRequests/{id}/expire | Expire a signing request
*SigningRequestsApi* | [**finalizeAsync**](docs/SigningRequestsApi.md#finalizeasync) | **POST** /api/v2/TrustService/SigningRequests/{id}/finalize | Finalize a completed request into a signed artifact
*SigningRequestsApi* | [**getSigningRequestByIdAsync**](docs/SigningRequestsApi.md#getsigningrequestbyidasync) | **GET** /api/v2/TrustService/SigningRequests/{id} | Get signing request by ID
*SigningRequestsApi* | [**getSigningRequestParticipantsAsync**](docs/SigningRequestsApi.md#getsigningrequestparticipantsasync) | **GET** /api/v2/TrustService/SigningRequests/{id}/Participants | Get participants of a signing request
*SigningRequestsApi* | [**getSigningRequestsAsync**](docs/SigningRequestsApi.md#getsigningrequestsasync) | **GET** /api/v2/TrustService/SigningRequests | Get all signing requests
*SigningRequestsApi* | [**getSigningRequestsCountAsync**](docs/SigningRequestsApi.md#getsigningrequestscountasync) | **GET** /api/v2/TrustService/SigningRequests/Count | Get signing requests count
*SigningRequestsApi* | [**prepareAndCreateAsync**](docs/SigningRequestsApi.md#prepareandcreateasync) | **POST** /api/v2/TrustService/SigningRequests/prepare-and-create | Create, store, freeze a document and open a signing request in one call
*SigningRequestsApi* | [**sendAsync**](docs/SigningRequestsApi.md#sendasync) | **POST** /api/v2/TrustService/SigningRequests/{id}/send | Send a signing request
*SigningRequestsApi* | [**voidAsync**](docs/SigningRequestsApi.md#voidasync) | **POST** /api/v2/TrustService/SigningRequests/{id}/void | Void a signing request


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [BooleanEnvelope](docs/BooleanEnvelope.md)
 - [ContactCreateDto](docs/ContactCreateDto.md)
 - [ContactDto](docs/ContactDto.md)
 - [CreateSigningParticipantDto](docs/CreateSigningParticipantDto.md)
 - [CreateSigningRequestDto](docs/CreateSigningRequestDto.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ExecuteSigningRequestDto](docs/ExecuteSigningRequestDto.md)
 - [FinalizeSigningRequestDto](docs/FinalizeSigningRequestDto.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [ImportSigningCertificateAsyncRequest](docs/ImportSigningCertificateAsyncRequest.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [PatchOperation](docs/PatchOperation.md)
 - [PrepareAndCreateAsyncRequest](docs/PrepareAndCreateAsyncRequest.md)
 - [PrepareAndQuickSignAsyncRequest](docs/PrepareAndQuickSignAsyncRequest.md)
 - [QuickSignSignedDocumentDto](docs/QuickSignSignedDocumentDto.md)
 - [RecordSigningParticipantOutcomeDto](docs/RecordSigningParticipantOutcomeDto.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [SignatureDto](docs/SignatureDto.md)
 - [SignatureDtoCollectionQueryParameters](docs/SignatureDtoCollectionQueryParameters.md)
 - [SignatureDtoListEnvelope](docs/SignatureDtoListEnvelope.md)
 - [SignatureVerificationDto](docs/SignatureVerificationDto.md)
 - [SignedDocumentAttachmentCreateDto](docs/SignedDocumentAttachmentCreateDto.md)
 - [SignedDocumentAttachmentDto](docs/SignedDocumentAttachmentDto.md)
 - [SignedDocumentAttachmentDtoCollectionQueryParameters](docs/SignedDocumentAttachmentDtoCollectionQueryParameters.md)
 - [SignedDocumentAttachmentDtoListEnvelope](docs/SignedDocumentAttachmentDtoListEnvelope.md)
 - [SignedDocumentAttachmentUpdateDto](docs/SignedDocumentAttachmentUpdateDto.md)
 - [SignedDocumentCreateDto](docs/SignedDocumentCreateDto.md)
 - [SignedDocumentDto](docs/SignedDocumentDto.md)
 - [SignedDocumentDtoCollectionQueryParameters](docs/SignedDocumentDtoCollectionQueryParameters.md)
 - [SignedDocumentDtoListEnvelope](docs/SignedDocumentDtoListEnvelope.md)
 - [SignedDocumentUpdateDto](docs/SignedDocumentUpdateDto.md)
 - [SigningCertificateCreateDto](docs/SigningCertificateCreateDto.md)
 - [SigningCertificateDto](docs/SigningCertificateDto.md)
 - [SigningCertificateDtoCollectionQueryParameters](docs/SigningCertificateDtoCollectionQueryParameters.md)
 - [SigningCertificateDtoListEnvelope](docs/SigningCertificateDtoListEnvelope.md)
 - [SigningCertificateUpdateDto](docs/SigningCertificateUpdateDto.md)
 - [SigningLogDto](docs/SigningLogDto.md)
 - [SigningLogDtoCollectionQueryParameters](docs/SigningLogDtoCollectionQueryParameters.md)
 - [SigningLogDtoListEnvelope](docs/SigningLogDtoListEnvelope.md)
 - [SigningParticipantDto](docs/SigningParticipantDto.md)
 - [SigningParticipantDtoCollectionQueryParameters](docs/SigningParticipantDtoCollectionQueryParameters.md)
 - [SigningParticipantDtoListEnvelope](docs/SigningParticipantDtoListEnvelope.md)
 - [SigningProfileCreateDto](docs/SigningProfileCreateDto.md)
 - [SigningProfileDto](docs/SigningProfileDto.md)
 - [SigningProfileDtoCollectionQueryParameters](docs/SigningProfileDtoCollectionQueryParameters.md)
 - [SigningProfileDtoListEnvelope](docs/SigningProfileDtoListEnvelope.md)
 - [SigningProfileGraphicalRepresentationCreateDto](docs/SigningProfileGraphicalRepresentationCreateDto.md)
 - [SigningProfileGraphicalRepresentationDto](docs/SigningProfileGraphicalRepresentationDto.md)
 - [SigningProfileGraphicalRepresentationDtoCollectionQueryParameters](docs/SigningProfileGraphicalRepresentationDtoCollectionQueryParameters.md)
 - [SigningProfileGraphicalRepresentationDtoListEnvelope](docs/SigningProfileGraphicalRepresentationDtoListEnvelope.md)
 - [SigningProfileGraphicalRepresentationUpdateDto](docs/SigningProfileGraphicalRepresentationUpdateDto.md)
 - [SigningProfileUpdateDto](docs/SigningProfileUpdateDto.md)
 - [SigningRequestDto](docs/SigningRequestDto.md)
 - [SigningRequestDtoCollectionQueryParameters](docs/SigningRequestDtoCollectionQueryParameters.md)
 - [SigningRequestDtoListEnvelope](docs/SigningRequestDtoListEnvelope.md)
 - [TrustArtifactReferenceDto](docs/TrustArtifactReferenceDto.md)
 - [TrustArtifactReferenceDtoEnvelope](docs/TrustArtifactReferenceDtoEnvelope.md)
 - [TrustSigningProviderDescriptorDto](docs/TrustSigningProviderDescriptorDto.md)
 - [TrustSigningProviderDescriptorDtoCollectionQueryParameters](docs/TrustSigningProviderDescriptorDtoCollectionQueryParameters.md)
 - [TrustSigningProviderDescriptorDtoListEnvelope](docs/TrustSigningProviderDescriptorDtoListEnvelope.md)
 - [TrustSigningReadinessDto](docs/TrustSigningReadinessDto.md)
 - [TrustSigningReadinessDtoEnvelope](docs/TrustSigningReadinessDtoEnvelope.md)
 - [TrustSigningRequestDto](docs/TrustSigningRequestDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)
 - [VoidSigningRequestDto](docs/VoidSigningRequestDto.md)


## Documentation For Authorization

 All endpoints do not require authorization.

