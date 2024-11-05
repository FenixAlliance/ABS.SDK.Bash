# MarketingService Bash client

## Overview

This is a Bash client script for accessing MarketingService service.

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
*EmailGroupsApi* | [**apiV2MarketingServiceEmailGroupsCountGet**](docs/EmailGroupsApi.md#apiv2marketingserviceemailgroupscountget) | **GET** /api/v2/MarketingService/EmailGroups/Count | 
*EmailGroupsApi* | [**apiV2MarketingServiceEmailGroupsEmailgroupIdDelete**](docs/EmailGroupsApi.md#apiv2marketingserviceemailgroupsemailgroupiddelete) | **DELETE** /api/v2/MarketingService/EmailGroups/{emailgroupId} | 
*EmailGroupsApi* | [**apiV2MarketingServiceEmailGroupsEmailgroupIdGet**](docs/EmailGroupsApi.md#apiv2marketingserviceemailgroupsemailgroupidget) | **GET** /api/v2/MarketingService/EmailGroups/{emailgroupId} | 
*EmailGroupsApi* | [**apiV2MarketingServiceEmailGroupsEmailgroupIdPut**](docs/EmailGroupsApi.md#apiv2marketingserviceemailgroupsemailgroupidput) | **PUT** /api/v2/MarketingService/EmailGroups/{emailgroupId} | 
*EmailGroupsApi* | [**apiV2MarketingServiceEmailGroupsGet**](docs/EmailGroupsApi.md#apiv2marketingserviceemailgroupsget) | **GET** /api/v2/MarketingService/EmailGroups | 
*EmailGroupsApi* | [**apiV2MarketingServiceEmailGroupsPost**](docs/EmailGroupsApi.md#apiv2marketingserviceemailgroupspost) | **POST** /api/v2/MarketingService/EmailGroups | 
*EmailSignaturesApi* | [**apiV2MarketingServiceEmailSignaturesCountGet**](docs/EmailSignaturesApi.md#apiv2marketingserviceemailsignaturescountget) | **GET** /api/v2/MarketingService/EmailSignatures/Count | 
*EmailSignaturesApi* | [**apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete**](docs/EmailSignaturesApi.md#apiv2marketingserviceemailsignaturesemailsignatureiddelete) | **DELETE** /api/v2/MarketingService/EmailSignatures/{emailsignatureId} | 
*EmailSignaturesApi* | [**apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet**](docs/EmailSignaturesApi.md#apiv2marketingserviceemailsignaturesemailsignatureidget) | **GET** /api/v2/MarketingService/EmailSignatures/{emailsignatureId} | 
*EmailSignaturesApi* | [**apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut**](docs/EmailSignaturesApi.md#apiv2marketingserviceemailsignaturesemailsignatureidput) | **PUT** /api/v2/MarketingService/EmailSignatures/{emailsignatureId} | 
*EmailSignaturesApi* | [**apiV2MarketingServiceEmailSignaturesGet**](docs/EmailSignaturesApi.md#apiv2marketingserviceemailsignaturesget) | **GET** /api/v2/MarketingService/EmailSignatures | 
*EmailSignaturesApi* | [**apiV2MarketingServiceEmailSignaturesPost**](docs/EmailSignaturesApi.md#apiv2marketingserviceemailsignaturespost) | **POST** /api/v2/MarketingService/EmailSignatures | 
*EmailTemplatesApi* | [**apiV2MarketingServiceEmailTemplatesCountGet**](docs/EmailTemplatesApi.md#apiv2marketingserviceemailtemplatescountget) | **GET** /api/v2/MarketingService/EmailTemplates/Count | 
*EmailTemplatesApi* | [**apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete**](docs/EmailTemplatesApi.md#apiv2marketingserviceemailtemplatesemailtemplateiddelete) | **DELETE** /api/v2/MarketingService/EmailTemplates/{emailTemplateId} | 
*EmailTemplatesApi* | [**apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet**](docs/EmailTemplatesApi.md#apiv2marketingserviceemailtemplatesemailtemplateidget) | **GET** /api/v2/MarketingService/EmailTemplates/{emailTemplateId} | 
*EmailTemplatesApi* | [**apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut**](docs/EmailTemplatesApi.md#apiv2marketingserviceemailtemplatesemailtemplateidput) | **PUT** /api/v2/MarketingService/EmailTemplates/{emailTemplateId} | 
*EmailTemplatesApi* | [**apiV2MarketingServiceEmailTemplatesGet**](docs/EmailTemplatesApi.md#apiv2marketingserviceemailtemplatesget) | **GET** /api/v2/MarketingService/EmailTemplates | 
*EmailTemplatesApi* | [**apiV2MarketingServiceEmailTemplatesPost**](docs/EmailTemplatesApi.md#apiv2marketingserviceemailtemplatespost) | **POST** /api/v2/MarketingService/EmailTemplates | 
*MarketingCampaignsApi* | [**apiV2MarketingServiceMarketingCampaignsCountGet**](docs/MarketingCampaignsApi.md#apiv2marketingservicemarketingcampaignscountget) | **GET** /api/v2/MarketingService/MarketingCampaigns/Count | 
*MarketingCampaignsApi* | [**apiV2MarketingServiceMarketingCampaignsGet**](docs/MarketingCampaignsApi.md#apiv2marketingservicemarketingcampaignsget) | **GET** /api/v2/MarketingService/MarketingCampaigns | 
*MarketingCampaignsApi* | [**apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete**](docs/MarketingCampaignsApi.md#apiv2marketingservicemarketingcampaignsmarketingcampaigniddelete) | **DELETE** /api/v2/MarketingService/MarketingCampaigns/{marketingcampaignId} | 
*MarketingCampaignsApi* | [**apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet**](docs/MarketingCampaignsApi.md#apiv2marketingservicemarketingcampaignsmarketingcampaignidget) | **GET** /api/v2/MarketingService/MarketingCampaigns/{marketingcampaignId} | 
*MarketingCampaignsApi* | [**apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut**](docs/MarketingCampaignsApi.md#apiv2marketingservicemarketingcampaignsmarketingcampaignidput) | **PUT** /api/v2/MarketingService/MarketingCampaigns/{marketingcampaignId} | 
*MarketingCampaignsApi* | [**apiV2MarketingServiceMarketingCampaignsPost**](docs/MarketingCampaignsApi.md#apiv2marketingservicemarketingcampaignspost) | **POST** /api/v2/MarketingService/MarketingCampaigns | 
*MarketingListsApi* | [**apiV2MarketingServiceMarketingListsCountGet**](docs/MarketingListsApi.md#apiv2marketingservicemarketinglistscountget) | **GET** /api/v2/MarketingService/MarketingLists/Count | 
*MarketingListsApi* | [**apiV2MarketingServiceMarketingListsGet**](docs/MarketingListsApi.md#apiv2marketingservicemarketinglistsget) | **GET** /api/v2/MarketingService/MarketingLists | 
*MarketingListsApi* | [**apiV2MarketingServiceMarketingListsMarketinglistIdDelete**](docs/MarketingListsApi.md#apiv2marketingservicemarketinglistsmarketinglistiddelete) | **DELETE** /api/v2/MarketingService/MarketingLists/{marketinglistId} | 
*MarketingListsApi* | [**apiV2MarketingServiceMarketingListsMarketinglistIdGet**](docs/MarketingListsApi.md#apiv2marketingservicemarketinglistsmarketinglistidget) | **GET** /api/v2/MarketingService/MarketingLists/{marketinglistId} | 
*MarketingListsApi* | [**apiV2MarketingServiceMarketingListsMarketinglistIdPut**](docs/MarketingListsApi.md#apiv2marketingservicemarketinglistsmarketinglistidput) | **PUT** /api/v2/MarketingService/MarketingLists/{marketinglistId} | 
*MarketingListsApi* | [**apiV2MarketingServiceMarketingListsPost**](docs/MarketingListsApi.md#apiv2marketingservicemarketinglistspost) | **POST** /api/v2/MarketingService/MarketingLists | 
*NewslettersApi* | [**apiV2MarketingServiceNewslettersCountGet**](docs/NewslettersApi.md#apiv2marketingservicenewsletterscountget) | **GET** /api/v2/MarketingService/Newsletters/Count | 
*NewslettersApi* | [**apiV2MarketingServiceNewslettersGet**](docs/NewslettersApi.md#apiv2marketingservicenewslettersget) | **GET** /api/v2/MarketingService/Newsletters | 
*NewslettersApi* | [**apiV2MarketingServiceNewslettersNewsletterIdDelete**](docs/NewslettersApi.md#apiv2marketingservicenewslettersnewsletteriddelete) | **DELETE** /api/v2/MarketingService/Newsletters/{newsletterId} | 
*NewslettersApi* | [**apiV2MarketingServiceNewslettersNewsletterIdGet**](docs/NewslettersApi.md#apiv2marketingservicenewslettersnewsletteridget) | **GET** /api/v2/MarketingService/Newsletters/{newsletterId} | 
*NewslettersApi* | [**apiV2MarketingServiceNewslettersNewsletterIdPut**](docs/NewslettersApi.md#apiv2marketingservicenewslettersnewsletteridput) | **PUT** /api/v2/MarketingService/Newsletters/{newsletterId} | 
*NewslettersApi* | [**apiV2MarketingServiceNewslettersPost**](docs/NewslettersApi.md#apiv2marketingservicenewsletterspost) | **POST** /api/v2/MarketingService/Newsletters | 
*SocialMediaPostsApi* | [**apiV2MarketingServiceSocialMediaPostsCountGet**](docs/SocialMediaPostsApi.md#apiv2marketingservicesocialmediapostscountget) | **GET** /api/v2/MarketingService/SocialMediaPosts/Count | 
*SocialMediaPostsApi* | [**apiV2MarketingServiceSocialMediaPostsGet**](docs/SocialMediaPostsApi.md#apiv2marketingservicesocialmediapostsget) | **GET** /api/v2/MarketingService/SocialMediaPosts | 
*SocialMediaPostsApi* | [**apiV2MarketingServiceSocialMediaPostsPost**](docs/SocialMediaPostsApi.md#apiv2marketingservicesocialmediapostspost) | **POST** /api/v2/MarketingService/SocialMediaPosts | 
*SocialMediaPostsApi* | [**apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete**](docs/SocialMediaPostsApi.md#apiv2marketingservicesocialmediapostssocialmediapostiddelete) | **DELETE** /api/v2/MarketingService/SocialMediaPosts/{socialmediapostId} | 
*SocialMediaPostsApi* | [**apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet**](docs/SocialMediaPostsApi.md#apiv2marketingservicesocialmediapostssocialmediapostidget) | **GET** /api/v2/MarketingService/SocialMediaPosts/{socialmediapostId} | 
*SocialMediaPostsApi* | [**apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut**](docs/SocialMediaPostsApi.md#apiv2marketingservicesocialmediapostssocialmediapostidput) | **PUT** /api/v2/MarketingService/SocialMediaPosts/{socialmediapostId} | 
*SocialPostBucketsApi* | [**apiV2MarketingServiceSocialPostBucketsCountGet**](docs/SocialPostBucketsApi.md#apiv2marketingservicesocialpostbucketscountget) | **GET** /api/v2/MarketingService/SocialPostBuckets/Count | 
*SocialPostBucketsApi* | [**apiV2MarketingServiceSocialPostBucketsGet**](docs/SocialPostBucketsApi.md#apiv2marketingservicesocialpostbucketsget) | **GET** /api/v2/MarketingService/SocialPostBuckets | 
*SocialPostBucketsApi* | [**apiV2MarketingServiceSocialPostBucketsPost**](docs/SocialPostBucketsApi.md#apiv2marketingservicesocialpostbucketspost) | **POST** /api/v2/MarketingService/SocialPostBuckets | 
*SocialPostBucketsApi* | [**apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete**](docs/SocialPostBucketsApi.md#apiv2marketingservicesocialpostbucketssocialpostbucketiddelete) | **DELETE** /api/v2/MarketingService/SocialPostBuckets/{socialpostbucketId} | 
*SocialPostBucketsApi* | [**apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet**](docs/SocialPostBucketsApi.md#apiv2marketingservicesocialpostbucketssocialpostbucketidget) | **GET** /api/v2/MarketingService/SocialPostBuckets/{socialpostbucketId} | 
*SocialPostBucketsApi* | [**apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut**](docs/SocialPostBucketsApi.md#apiv2marketingservicesocialpostbucketssocialpostbucketidput) | **PUT** /api/v2/MarketingService/SocialPostBuckets/{socialpostbucketId} | 
*TrackingPixelsApi* | [**apiV2MarketingServiceTrackingPixelsPixelIdGet**](docs/TrackingPixelsApi.md#apiv2marketingservicetrackingpixelspixelidget) | **GET** /api/v2/MarketingService/TrackingPixels/{pixelId} | 


## Documentation For Models

 - [Currency](docs/Currency.md)
 - [EmailGroupCreateDto](docs/EmailGroupCreateDto.md)
 - [EmailGroupDto](docs/EmailGroupDto.md)
 - [EmailGroupDtoEnvelope](docs/EmailGroupDtoEnvelope.md)
 - [EmailGroupDtoListEnvelope](docs/EmailGroupDtoListEnvelope.md)
 - [EmailGroupUpdateDto](docs/EmailGroupUpdateDto.md)
 - [EmailSignatureCreateDto](docs/EmailSignatureCreateDto.md)
 - [EmailSignatureDto](docs/EmailSignatureDto.md)
 - [EmailSignatureDtoEnvelope](docs/EmailSignatureDtoEnvelope.md)
 - [EmailSignatureDtoListEnvelope](docs/EmailSignatureDtoListEnvelope.md)
 - [EmailSignatureUpdateDto](docs/EmailSignatureUpdateDto.md)
 - [EmailTemplateCreateDto](docs/EmailTemplateCreateDto.md)
 - [EmailTemplateDto](docs/EmailTemplateDto.md)
 - [EmailTemplateDtoEnvelope](docs/EmailTemplateDtoEnvelope.md)
 - [EmailTemplateDtoListEnvelope](docs/EmailTemplateDtoListEnvelope.md)
 - [EmailTemplateUpdateDto](docs/EmailTemplateUpdateDto.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [MarketingCampaignCreateDto](docs/MarketingCampaignCreateDto.md)
 - [MarketingCampaignDto](docs/MarketingCampaignDto.md)
 - [MarketingCampaignDtoEnvelope](docs/MarketingCampaignDtoEnvelope.md)
 - [MarketingCampaignUpdateDto](docs/MarketingCampaignUpdateDto.md)
 - [MarketingListCreateDto](docs/MarketingListCreateDto.md)
 - [MarketingListDto](docs/MarketingListDto.md)
 - [MarketingListDtoEnvelope](docs/MarketingListDtoEnvelope.md)
 - [MarketingListDtoListEnvelope](docs/MarketingListDtoListEnvelope.md)
 - [MarketingListUpdateDto](docs/MarketingListUpdateDto.md)
 - [Money](docs/Money.md)
 - [NewsletterCreateDto](docs/NewsletterCreateDto.md)
 - [NewsletterDto](docs/NewsletterDto.md)
 - [NewsletterDtoEnvelope](docs/NewsletterDtoEnvelope.md)
 - [NewsletterUpdateDto](docs/NewsletterUpdateDto.md)
 - [OrderDto](docs/OrderDto.md)
 - [OrderDtoEnvelope](docs/OrderDtoEnvelope.md)
 - [SocialMediaPostCreateDto](docs/SocialMediaPostCreateDto.md)
 - [SocialMediaPostDto](docs/SocialMediaPostDto.md)
 - [SocialMediaPostDtoEnvelope](docs/SocialMediaPostDtoEnvelope.md)
 - [SocialMediaPostDtoListEnvelope](docs/SocialMediaPostDtoListEnvelope.md)
 - [SocialMediaPostUpdateDto](docs/SocialMediaPostUpdateDto.md)
 - [SocialPostBucketCreateDto](docs/SocialPostBucketCreateDto.md)
 - [SocialPostBucketDto](docs/SocialPostBucketDto.md)
 - [SocialPostBucketDtoEnvelope](docs/SocialPostBucketDtoEnvelope.md)
 - [SocialPostBucketDtoListEnvelope](docs/SocialPostBucketDtoListEnvelope.md)
 - [SocialPostBucketUpdateDto](docs/SocialPostBucketUpdateDto.md)


## Documentation For Authorization


## Bearer


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

