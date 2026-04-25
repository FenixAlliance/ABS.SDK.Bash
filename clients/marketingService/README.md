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
*EmailGroupsApi* | [**createEmailGroupAsync**](docs/EmailGroupsApi.md#createemailgroupasync) | **POST** /api/v2/MarketingService/EmailGroups | Create an email group
*EmailGroupsApi* | [**deleteEmailGroupAsync**](docs/EmailGroupsApi.md#deleteemailgroupasync) | **DELETE** /api/v2/MarketingService/EmailGroups/{emailgroupId} | Delete an email group
*EmailGroupsApi* | [**getEmailGroupDetailsAsync**](docs/EmailGroupsApi.md#getemailgroupdetailsasync) | **GET** /api/v2/MarketingService/EmailGroups/{emailgroupId} | Get email group by ID
*EmailGroupsApi* | [**getEmailGroupsCountAsync**](docs/EmailGroupsApi.md#getemailgroupscountasync) | **GET** /api/v2/MarketingService/EmailGroups/Count | Get email groups count
*EmailGroupsApi* | [**getEmailGroupsODataAsync**](docs/EmailGroupsApi.md#getemailgroupsodataasync) | **GET** /api/v2/MarketingService/EmailGroups | Get email groups
*EmailGroupsApi* | [**updateEmailGroupAsync**](docs/EmailGroupsApi.md#updateemailgroupasync) | **PUT** /api/v2/MarketingService/EmailGroups/{emailgroupId} | Update an email group
*EmailSignaturesApi* | [**createEmailSignatureAsync**](docs/EmailSignaturesApi.md#createemailsignatureasync) | **POST** /api/v2/MarketingService/EmailSignatures | Create an email signature
*EmailSignaturesApi* | [**deleteEmailSignatureAsync**](docs/EmailSignaturesApi.md#deleteemailsignatureasync) | **DELETE** /api/v2/MarketingService/EmailSignatures/{emailsignatureId} | Delete an email signature
*EmailSignaturesApi* | [**getEmailSignatureDetailsAsync**](docs/EmailSignaturesApi.md#getemailsignaturedetailsasync) | **GET** /api/v2/MarketingService/EmailSignatures/{emailsignatureId} | Get email signature by ID
*EmailSignaturesApi* | [**getEmailSignaturesCountAsync**](docs/EmailSignaturesApi.md#getemailsignaturescountasync) | **GET** /api/v2/MarketingService/EmailSignatures/Count | Get email signatures count
*EmailSignaturesApi* | [**getEmailSignaturesODataAsync**](docs/EmailSignaturesApi.md#getemailsignaturesodataasync) | **GET** /api/v2/MarketingService/EmailSignatures | Get email signatures
*EmailSignaturesApi* | [**updateEmailSignatureAsync**](docs/EmailSignaturesApi.md#updateemailsignatureasync) | **PUT** /api/v2/MarketingService/EmailSignatures/{emailsignatureId} | Update an email signature
*EmailTemplatesApi* | [**createEmailTemplateAsync**](docs/EmailTemplatesApi.md#createemailtemplateasync) | **POST** /api/v2/MarketingService/EmailTemplates | Create an email template
*EmailTemplatesApi* | [**deleteEmailTemplateAsync**](docs/EmailTemplatesApi.md#deleteemailtemplateasync) | **DELETE** /api/v2/MarketingService/EmailTemplates/{emailTemplateId} | Delete an email template
*EmailTemplatesApi* | [**getEmailTemplateDetailsAsync**](docs/EmailTemplatesApi.md#getemailtemplatedetailsasync) | **GET** /api/v2/MarketingService/EmailTemplates/{emailTemplateId} | Get email template by ID
*EmailTemplatesApi* | [**getEmailTemplatesCountAsync**](docs/EmailTemplatesApi.md#getemailtemplatescountasync) | **GET** /api/v2/MarketingService/EmailTemplates/Count | Get email templates count
*EmailTemplatesApi* | [**getEmailTemplatesODataAsync**](docs/EmailTemplatesApi.md#getemailtemplatesodataasync) | **GET** /api/v2/MarketingService/EmailTemplates | Get email templates
*EmailTemplatesApi* | [**updateEmailTemplateAsync**](docs/EmailTemplatesApi.md#updateemailtemplateasync) | **PUT** /api/v2/MarketingService/EmailTemplates/{emailTemplateId} | Update an email template
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
*MarketingCampaignsApi* | [**createMarketingCampaignAsync**](docs/MarketingCampaignsApi.md#createmarketingcampaignasync) | **POST** /api/v2/MarketingService/MarketingCampaigns | Create a marketing campaign
*MarketingCampaignsApi* | [**deleteMarketingCampaignAsync**](docs/MarketingCampaignsApi.md#deletemarketingcampaignasync) | **DELETE** /api/v2/MarketingService/MarketingCampaigns/{marketingcampaignId} | Delete a marketing campaign
*MarketingCampaignsApi* | [**getMarketingCampaignDetailsAsync**](docs/MarketingCampaignsApi.md#getmarketingcampaigndetailsasync) | **GET** /api/v2/MarketingService/MarketingCampaigns/{marketingcampaignId} | Get marketing campaign by ID
*MarketingCampaignsApi* | [**getMarketingCampaignODataAsync**](docs/MarketingCampaignsApi.md#getmarketingcampaignodataasync) | **GET** /api/v2/MarketingService/MarketingCampaigns | Get marketing campaigns
*MarketingCampaignsApi* | [**getMarketingCampaignsCountAsync**](docs/MarketingCampaignsApi.md#getmarketingcampaignscountasync) | **GET** /api/v2/MarketingService/MarketingCampaigns/Count | Get marketing campaigns count
*MarketingCampaignsApi* | [**updateMarketingCampaignAsync**](docs/MarketingCampaignsApi.md#updatemarketingcampaignasync) | **PUT** /api/v2/MarketingService/MarketingCampaigns/{marketingcampaignId} | Update a marketing campaign
*MarketingListsApi* | [**createMarketingListAsync**](docs/MarketingListsApi.md#createmarketinglistasync) | **POST** /api/v2/MarketingService/MarketingLists | Create a marketing list
*MarketingListsApi* | [**deleteMarketingListAsync**](docs/MarketingListsApi.md#deletemarketinglistasync) | **DELETE** /api/v2/MarketingService/MarketingLists/{marketinglistId} | Delete a marketing list
*MarketingListsApi* | [**getMarketingListDetailsAsync**](docs/MarketingListsApi.md#getmarketinglistdetailsasync) | **GET** /api/v2/MarketingService/MarketingLists/{marketinglistId} | Get marketing list by ID
*MarketingListsApi* | [**getMarketingListODataAsync**](docs/MarketingListsApi.md#getmarketinglistodataasync) | **GET** /api/v2/MarketingService/MarketingLists | Get marketing lists
*MarketingListsApi* | [**getMarketingListsCountAsync**](docs/MarketingListsApi.md#getmarketinglistscountasync) | **GET** /api/v2/MarketingService/MarketingLists/Count | Get marketing lists count
*MarketingListsApi* | [**updateMarketingListAsync**](docs/MarketingListsApi.md#updatemarketinglistasync) | **PUT** /api/v2/MarketingService/MarketingLists/{marketinglistId} | Update a marketing list
*NewslettersApi* | [**createNewsletterAsync**](docs/NewslettersApi.md#createnewsletterasync) | **POST** /api/v2/MarketingService/Newsletters | Create a newsletter
*NewslettersApi* | [**deleteNewsletterAsync**](docs/NewslettersApi.md#deletenewsletterasync) | **DELETE** /api/v2/MarketingService/Newsletters/{newsletterId} | Delete a newsletter
*NewslettersApi* | [**getNewsletterDetailsAsync**](docs/NewslettersApi.md#getnewsletterdetailsasync) | **GET** /api/v2/MarketingService/Newsletters/{newsletterId} | Get newsletter by ID
*NewslettersApi* | [**getNewsletterODataAsync**](docs/NewslettersApi.md#getnewsletterodataasync) | **GET** /api/v2/MarketingService/Newsletters | Get newsletters
*NewslettersApi* | [**getNewslettersCountAsync**](docs/NewslettersApi.md#getnewsletterscountasync) | **GET** /api/v2/MarketingService/Newsletters/Count | Get newsletters count
*NewslettersApi* | [**updateNewsletterAsync**](docs/NewslettersApi.md#updatenewsletterasync) | **PUT** /api/v2/MarketingService/Newsletters/{newsletterId} | Update a newsletter
*SocialMediaPostsApi* | [**createSocialMediaPostAsync**](docs/SocialMediaPostsApi.md#createsocialmediapostasync) | **POST** /api/v2/MarketingService/SocialMediaPosts | Create a social media post
*SocialMediaPostsApi* | [**deleteSocialMediaPostAsync**](docs/SocialMediaPostsApi.md#deletesocialmediapostasync) | **DELETE** /api/v2/MarketingService/SocialMediaPosts/{socialmediapostId} | Delete a social media post
*SocialMediaPostsApi* | [**getSocialMediaPostDetailsAsync**](docs/SocialMediaPostsApi.md#getsocialmediapostdetailsasync) | **GET** /api/v2/MarketingService/SocialMediaPosts/{socialmediapostId} | Get social media post by ID
*SocialMediaPostsApi* | [**getSocialMediaPostsCountAsync**](docs/SocialMediaPostsApi.md#getsocialmediapostscountasync) | **GET** /api/v2/MarketingService/SocialMediaPosts/Count | Get social media posts count
*SocialMediaPostsApi* | [**getSocialMediaPostsODataAsync**](docs/SocialMediaPostsApi.md#getsocialmediapostsodataasync) | **GET** /api/v2/MarketingService/SocialMediaPosts | Get social media posts
*SocialMediaPostsApi* | [**updateSocialMediaPostAsync**](docs/SocialMediaPostsApi.md#updatesocialmediapostasync) | **PUT** /api/v2/MarketingService/SocialMediaPosts/{socialmediapostId} | Update a social media post
*SocialPostBucketsApi* | [**createSocialPostBucketAsync**](docs/SocialPostBucketsApi.md#createsocialpostbucketasync) | **POST** /api/v2/MarketingService/SocialPostBuckets | Create a social post bucket
*SocialPostBucketsApi* | [**deleteSocialPostBucketAsync**](docs/SocialPostBucketsApi.md#deletesocialpostbucketasync) | **DELETE** /api/v2/MarketingService/SocialPostBuckets/{socialpostbucketId} | Delete a social post bucket
*SocialPostBucketsApi* | [**getSocialPostBucketDetailsAsync**](docs/SocialPostBucketsApi.md#getsocialpostbucketdetailsasync) | **GET** /api/v2/MarketingService/SocialPostBuckets/{socialpostbucketId} | Get social post bucket by ID
*SocialPostBucketsApi* | [**getSocialPostBucketsCountAsync**](docs/SocialPostBucketsApi.md#getsocialpostbucketscountasync) | **GET** /api/v2/MarketingService/SocialPostBuckets/Count | Get social post buckets count
*SocialPostBucketsApi* | [**getSocialPostBucketsODataAsync**](docs/SocialPostBucketsApi.md#getsocialpostbucketsodataasync) | **GET** /api/v2/MarketingService/SocialPostBuckets | Get social post buckets
*SocialPostBucketsApi* | [**updateSocialPostBucketAsync**](docs/SocialPostBucketsApi.md#updatesocialpostbucketasync) | **PUT** /api/v2/MarketingService/SocialPostBuckets/{socialpostbucketId} | Update a social post bucket
*TrackingPixelsApi* | [**getTrackingPixelAsync**](docs/TrackingPixelsApi.md#gettrackingpixelasync) | **GET** /api/v2/MarketingService/TrackingPixels/{pixelId} | Get a tracking pixel


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
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
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [MarketingCampaignCreateDto](docs/MarketingCampaignCreateDto.md)
 - [MarketingCampaignDto](docs/MarketingCampaignDto.md)
 - [MarketingCampaignDtoEnvelope](docs/MarketingCampaignDtoEnvelope.md)
 - [MarketingCampaignUpdateDto](docs/MarketingCampaignUpdateDto.md)
 - [MarketingListCreateDto](docs/MarketingListCreateDto.md)
 - [MarketingListDto](docs/MarketingListDto.md)
 - [MarketingListDtoEnvelope](docs/MarketingListDtoEnvelope.md)
 - [MarketingListDtoListEnvelope](docs/MarketingListDtoListEnvelope.md)
 - [MarketingListUpdateDto](docs/MarketingListUpdateDto.md)
 - [NewsletterCreateDto](docs/NewsletterCreateDto.md)
 - [NewsletterDto](docs/NewsletterDto.md)
 - [NewsletterDtoEnvelope](docs/NewsletterDtoEnvelope.md)
 - [NewsletterUpdateDto](docs/NewsletterUpdateDto.md)
 - [OrderDto](docs/OrderDto.md)
 - [OrderDtoEnvelope](docs/OrderDtoEnvelope.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
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
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

