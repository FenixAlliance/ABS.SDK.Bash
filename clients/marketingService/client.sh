#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# ! Generator version: 7.9.0
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#
# This is a Bash client for MarketingService.
#
# LICENSE:
# https://fenix-alliance.com.co/Legal/Policies/eula
#
# CONTACT:
# support@fenix-alliance.com
#
# MORE INFORMATION:
# 
#

# For improved pattern matching in case statements
shopt -s extglob

###############################################################################
#
# Make sure Bash is at least in version 4.3
#
###############################################################################
if ! ( (("${BASH_VERSION:0:1}" == "4")) && (("${BASH_VERSION:2:1}" >= "3")) ) \
  && ! (("${BASH_VERSION:0:1}" >= "5")); then
    echo ""
    echo "Sorry - your Bash version is ${BASH_VERSION}"
    echo ""
    echo "You need at least Bash 4.3 to run this script."
    echo ""
    exit 1
fi

###############################################################################
#
# Global variables
#
###############################################################################

##
# The filename of this script for help messages
script_name=$(basename "$0")

##
# Map for headers passed after operation as KEY:VALUE
declare -A header_arguments


##
# Map for operation parameters passed after operation as PARAMETER=VALUE
# These will be mapped to appropriate path or query parameters
# The values in operation_parameters are arrays, so that multiple values
# can be provided for the same parameter if allowed by API specification
declare -A operation_parameters

##
# Declare colors with autodetection if output is terminal
if [ -t 1 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    MAGENTA="$(tput setaf 5)"
    CYAN="$(tput setaf 6)"
    WHITE="$(tput setaf 7)"
    BOLD="$(tput bold)"
    OFF="$(tput sgr0)"
else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    MAGENTA=""
    CYAN=""
    WHITE=""
    BOLD=""
    OFF=""
fi

declare -a result_color_table=( "$WHITE" "$WHITE" "$GREEN" "$YELLOW" "$WHITE" "$MAGENTA" "$WHITE" )

##
# This array stores the minimum number of required occurrences for parameter
# 0 - optional
# 1 - required
declare -A operation_parameters_minimum_occurrences
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdDelete:::emailgroupId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdGet:::emailgroupId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdPut:::emailgroupId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdPut:::EmailGroupUpdateDto"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsPost:::EmailGroupCreateDto"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailGroupsPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete:::emailsignatureId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet:::emailsignatureId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut:::emailsignatureId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut:::EmailSignatureUpdateDto"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesPost:::EmailSignatureCreateDto"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailSignaturesPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete:::emailTemplateId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet:::emailTemplatesId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet:::emailTemplateId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut:::emailTemplateId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut:::EmailTemplateUpdateDto"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesPost:::EmailTemplateCreateDto"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceEmailTemplatesPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete:::marketingcampaignId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet:::marketingcampaignId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut:::marketingcampaignId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut:::MarketingCampaignUpdateDto"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsPost:::MarketingCampaignCreateDto"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingCampaignsPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdDelete:::marketinglistId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdGet:::marketinglistId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdPut:::marketinglistId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdPut:::MarketingListUpdateDto"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsPost:::MarketingListCreateDto"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceMarketingListsPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdDelete:::newsletterId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdGet:::newsletterId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdPut:::newsletterId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdPut:::NewsletterUpdateDto"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersPost:::NewsletterCreateDto"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceNewslettersPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsPost:::SocialMediaPostCreateDto"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete:::socialmediapostId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet:::socialmediapostId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut:::socialmediapostId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut:::SocialMediaPostUpdateDto"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsPost:::SocialPostBucketCreateDto"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete:::socialpostbucketId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet:::socialpostbucketId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut:::socialpostbucketId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut:::SocialPostBucketUpdateDto"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceTrackingPixelsPixelIdGet:::pixelId"]=1
operation_parameters_minimum_occurrences["apiV2MarketingServiceTrackingPixelsPixelIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2MarketingServiceTrackingPixelsPixelIdGet:::x-api-version"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdDelete:::emailgroupId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdGet:::emailgroupId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdPut:::emailgroupId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdPut:::EmailGroupUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsEmailgroupIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsPost:::EmailGroupCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailGroupsPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete:::emailsignatureId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet:::emailsignatureId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut:::emailsignatureId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut:::EmailSignatureUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesPost:::EmailSignatureCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailSignaturesPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete:::emailTemplateId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet:::emailTemplatesId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet:::emailTemplateId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut:::emailTemplateId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut:::EmailTemplateUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesPost:::EmailTemplateCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceEmailTemplatesPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete:::marketingcampaignId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet:::marketingcampaignId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut:::marketingcampaignId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut:::MarketingCampaignUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsPost:::MarketingCampaignCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingCampaignsPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdDelete:::marketinglistId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdGet:::marketinglistId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdPut:::marketinglistId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdPut:::MarketingListUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsMarketinglistIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsPost:::MarketingListCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceMarketingListsPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdDelete:::newsletterId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdGet:::newsletterId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdPut:::newsletterId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdPut:::NewsletterUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersNewsletterIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersPost:::NewsletterCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceNewslettersPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsPost:::SocialMediaPostCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete:::socialmediapostId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet:::socialmediapostId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut:::socialmediapostId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut:::SocialMediaPostUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsPost:::SocialPostBucketCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete:::socialpostbucketId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet:::socialpostbucketId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut:::socialpostbucketId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut:::SocialPostBucketUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceTrackingPixelsPixelIdGet:::pixelId"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceTrackingPixelsPixelIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2MarketingServiceTrackingPixelsPixelIdGet:::x-api-version"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsEmailgroupIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsEmailgroupIdDelete:::emailgroupId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsEmailgroupIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsEmailgroupIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsEmailgroupIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsEmailgroupIdGet:::emailgroupId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsEmailgroupIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsEmailgroupIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsEmailgroupIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsEmailgroupIdPut:::emailgroupId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsEmailgroupIdPut:::EmailGroupUpdateDto"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsEmailgroupIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsEmailgroupIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsPost:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsPost:::EmailGroupCreateDto"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsPost:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailGroupsPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete:::emailsignatureId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet:::emailsignatureId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut:::emailsignatureId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut:::EmailSignatureUpdateDto"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesPost:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesPost:::EmailSignatureCreateDto"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesPost:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailSignaturesPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete:::emailTemplateId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet:::emailTemplatesId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet:::emailTemplateId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut:::emailTemplateId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut:::EmailTemplateUpdateDto"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesPost:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesPost:::EmailTemplateCreateDto"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesPost:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceEmailTemplatesPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete:::marketingcampaignId"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet:::marketingcampaignId"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut:::marketingcampaignId"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut:::MarketingCampaignUpdateDto"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsPost:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsPost:::MarketingCampaignCreateDto"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsPost:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingCampaignsPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsMarketinglistIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsMarketinglistIdDelete:::marketinglistId"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsMarketinglistIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsMarketinglistIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsMarketinglistIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsMarketinglistIdGet:::marketinglistId"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsMarketinglistIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsMarketinglistIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsMarketinglistIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsMarketinglistIdPut:::marketinglistId"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsMarketinglistIdPut:::MarketingListUpdateDto"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsMarketinglistIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsMarketinglistIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsPost:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsPost:::MarketingListCreateDto"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsPost:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceMarketingListsPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersNewsletterIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersNewsletterIdDelete:::newsletterId"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersNewsletterIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersNewsletterIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersNewsletterIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersNewsletterIdGet:::newsletterId"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersNewsletterIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersNewsletterIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersNewsletterIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersNewsletterIdPut:::newsletterId"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersNewsletterIdPut:::NewsletterUpdateDto"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersNewsletterIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersNewsletterIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersPost:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersPost:::NewsletterCreateDto"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersPost:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceNewslettersPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsPost:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsPost:::SocialMediaPostCreateDto"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsPost:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete:::socialmediapostId"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet:::socialmediapostId"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut:::socialmediapostId"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut:::SocialMediaPostUpdateDto"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsPost:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsPost:::SocialPostBucketCreateDto"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsPost:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete:::socialpostbucketId"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet:::socialpostbucketId"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut:::socialpostbucketId"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut:::SocialPostBucketUpdateDto"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceTrackingPixelsPixelIdGet:::pixelId"]=""
operation_parameters_collection_type["apiV2MarketingServiceTrackingPixelsPixelIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2MarketingServiceTrackingPixelsPixelIdGet:::x-api-version"]=""


##
# Map for body parameters passed after operation as
# PARAMETER==STRING_VALUE or PARAMETER:=NUMERIC_VALUE
# These will be mapped to top level json keys ( { "PARAMETER": "VALUE" })
declare -A body_parameters

##
# These arguments will be directly passed to cURL
curl_arguments=""

##
# The host for making the request
host=""

##
# The user credentials for basic authentication
basic_auth_credential=""

##
# The user API key
apikey_auth_credential=""

##
# If true, the script will only output the actual cURL command that would be
# used
print_curl=false

##
# The operation ID passed on the command line
operation=""

##
# The provided Accept header value
header_accept=""

##
# The provided Content-type header value
header_content_type=""

##
# If there is any body content on the stdin pass it to the body of the request
body_content_temp_file=""

##
# If this variable is set to true, the request will be performed even
# if parameters for required query, header or body values are not provided
# (path parameters are still required).
force=false

##
# Declare some mime types abbreviations for easier content-type and accepts
# headers specification
declare -A mime_type_abbreviations
# text/*
mime_type_abbreviations["text"]="text/plain"
mime_type_abbreviations["html"]="text/html"
mime_type_abbreviations["md"]="text/x-markdown"
mime_type_abbreviations["csv"]="text/csv"
mime_type_abbreviations["css"]="text/css"
mime_type_abbreviations["rtf"]="text/rtf"
# application/*
mime_type_abbreviations["json"]="application/json"
mime_type_abbreviations["xml"]="application/xml"
mime_type_abbreviations["yaml"]="application/yaml"
mime_type_abbreviations["js"]="application/javascript"
mime_type_abbreviations["bin"]="application/octet-stream"
mime_type_abbreviations["rdf"]="application/rdf+xml"
# image/*
mime_type_abbreviations["jpg"]="image/jpeg"
mime_type_abbreviations["png"]="image/png"
mime_type_abbreviations["gif"]="image/gif"
mime_type_abbreviations["bmp"]="image/bmp"
mime_type_abbreviations["tiff"]="image/tiff"


##############################################################################
#
# Escape special URL characters
# Based on table at http://www.w3schools.com/tags/ref_urlencode.asp
#
##############################################################################
url_escape() {
    local raw_url="$1"

    value=$(sed -e 's/ /%20/g' \
       -e 's/!/%21/g' \
       -e 's/"/%22/g' \
       -e 's/#/%23/g' \
       -e 's/\&/%26/g' \
       -e 's/'\''/%28/g' \
       -e 's/(/%28/g' \
       -e 's/)/%29/g' \
       -e 's/:/%3A/g' \
       -e 's/\\t/%09/g' \
       -e 's/?/%3F/g' <<<"$raw_url");

    echo "$value"
}

##############################################################################
#
# Lookup the mime type abbreviation in the mime_type_abbreviations array.
# If not present assume the user provided a valid mime type
#
##############################################################################
lookup_mime_type() {
    local mime_type="$1"

    if [[ ${mime_type_abbreviations[$mime_type]} ]]; then
        echo "${mime_type_abbreviations[$mime_type]}"
    else
        echo "$mime_type"
    fi
}

##############################################################################
#
# Converts an associative array into a list of cURL header
# arguments (-H "KEY: VALUE")
#
##############################################################################
header_arguments_to_curl() {
    local headers_curl=""
    local api_key_header=""
    local api_key_header_in_cli=""
    api_key_header="Authorization"

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
        if [[ "${key}XX" == "${api_key_header}XX" ]]; then
            api_key_header_in_cli="YES"
        fi
    done
    #
    # If the api_key was not provided in the header, try one from the
    # environment variable
    #
    if [[ -z $api_key_header_in_cli && -n $apikey_auth_credential ]]; then
        headers_curl+="-H \"${api_key_header}: ${apikey_auth_credential}\""
    fi
    headers_curl+=" "

    echo "${headers_curl}"
}

##############################################################################
#
# Converts an associative array into a simple JSON with keys as top
# level object attributes
#
# \todo Add conversion of more complex attributes using paths
#
##############################################################################
body_parameters_to_json() {
    if [[ $RAW_BODY == "1" ]]; then
        echo "-d '${body_parameters["RAW_BODY"]}'"
    else
        local body_json="-d '{"
        local count=0
        for key in "${!body_parameters[@]}"; do
            if [[ $((count++)) -gt 0 ]]; then
                body_json+=", "
            fi
            body_json+="\"${key}\": ${body_parameters[${key}]}"
        done
        body_json+="}'"

        if [[ "${#body_parameters[@]}" -eq 0 ]]; then
            echo ""
        else
            echo "${body_json}"
        fi
    fi
}

##############################################################################
#
# Converts an associative array into form urlencoded string
#
##############################################################################
body_parameters_to_form_urlencoded() {
    local body_form_urlencoded="-d '"
    local count=0
    for key in "${!body_parameters[@]}"; do
        if [[ $((count++)) -gt 0 ]]; then
            body_form_urlencoded+="&"
        fi
        body_form_urlencoded+="${key}=${body_parameters[${key}]}"
    done
    body_form_urlencoded+="'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_form_urlencoded}"
    fi
}

##############################################################################
#
# Helper method for showing error because for example echo in
# build_request_path() is evaluated as part of command line not printed on
# output. Anyway better idea for resource clean up ;-).
#
##############################################################################
ERROR_MSG=""
function finish {
    if [[ -n "$ERROR_MSG" ]]; then
        echo >&2 "${OFF}${RED}$ERROR_MSG"
        echo >&2 "${OFF}Check usage: '${script_name} --help'"
    fi
}
trap finish EXIT


##############################################################################
#
# Validate and build request path including query parameters
#
##############################################################################
build_request_path() {
    local path_template=$1
    local -n path_params=$2
    local -n query_params=$3


    #
    # Check input parameters count against minimum and maximum required
    #
    if [[ "$force" = false ]]; then
        local was_error=""
        for qparam in "${query_params[@]}" "${path_params[@]}"; do
            local parameter_values
            mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")

            #
            # Check if the number of provided values is not less than minimum required
            #
            if [[ ${#parameter_values[@]} -lt ${operation_parameters_minimum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too few values provided for '${qparam}' parameter."
                was_error=true
            fi

            #
            # Check if the number of provided values is not more than maximum
            #
            if [[ ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} -gt 0 \
                  && ${#parameter_values[@]} -gt ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too many values provided for '${qparam}' parameter"
                was_error=true
            fi
        done
        if [[ -n "$was_error" ]]; then
            exit 1
        fi
    fi

    # First replace all path parameters in the path
    for pparam in "${path_params[@]}"; do
        local path_regex="(.*)(\\{$pparam\\})(.*)"
        if [[ $path_template =~ $path_regex ]]; then
            path_template=${BASH_REMATCH[1]}${operation_parameters[$pparam]}${BASH_REMATCH[3]}
        fi
    done

    local query_request_part=""

    for qparam in "${query_params[@]}"; do
        if [[ "${operation_parameters[$qparam]}" == "" ]]; then
            continue
        fi

        # Get the array of parameter values
        local parameter_value=""
        local parameter_values
        mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")



        #
        # Append parameters without specific cardinality
        #
        local collection_type="${operation_parameters_collection_type["${operation}:::${qparam}"]}"
        if [[ "${collection_type}" == "" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'multi' collections i.e. param=value1&param=value2&...
        #
        elif [[ "${collection_type}" == "multi" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'csv' collections i.e. param=value1,value2,...
        #
        elif [[ "${collection_type}" == "csv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=","
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'ssv' collections i.e. param="value1 value2 ..."
        #
        elif [[ "${collection_type}" == "ssv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=" "
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'tsv' collections i.e. param="value1\tvalue2\t..."
        #
        elif [[ "${collection_type}" == "tsv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="\\t"
                fi
                parameter_value+="${qvalue}"
            done
        else
            echo "Unsupported collection format \"${collection_type}\""
            exit 1
        fi

        if [[ -n "${parameter_value}" ]]; then
            if [[ -n "${query_request_part}" ]]; then
                query_request_part+="&"
            fi
            query_request_part+="${parameter_value}"
        fi

    done


    # Now append query parameters - if any
    if [[ -n "${query_request_part}" ]]; then
        path_template+="?${query_request_part}"
    fi

    echo "$path_template"
}



###############################################################################
#
# Print main help message
#
###############################################################################
print_help() {
cat <<EOF

${BOLD}${WHITE}MarketingService command line client (API version 2.0.1.4089)${OFF}

${BOLD}${WHITE}Usage${OFF}

  ${GREEN}${script_name}${OFF} [-h|--help] [-V|--version] [--about] [${RED}<curl-options>${OFF}]
           [-ac|--accept ${GREEN}<mime-type>${OFF}] [-ct,--content-type ${GREEN}<mime-type>${OFF}]
           [--host ${CYAN}<url>${OFF}] [--dry-run] [-nc|--no-colors] ${YELLOW}<operation>${OFF} [-h|--help]
           [${BLUE}<headers>${OFF}] [${MAGENTA}<parameters>${OFF}] [${MAGENTA}<body-parameters>${OFF}]

  - ${CYAN}<url>${OFF} - endpoint of the REST service without basepath

  - ${RED}<curl-options>${OFF} - any valid cURL options can be passed before ${YELLOW}<operation>${OFF}
  - ${GREEN}<mime-type>${OFF} - either full mime-type or one of supported abbreviations:
                   (text, html, md, csv, css, rtf, json, xml, yaml, js, bin,
                    rdf, jpg, png, gif, bmp, tiff)
  - ${BLUE}<headers>${OFF} - HTTP headers can be passed in the form ${YELLOW}HEADER${OFF}:${BLUE}VALUE${OFF}
  - ${MAGENTA}<parameters>${OFF} - REST operation parameters can be passed in the following
                   forms:
                   * ${YELLOW}KEY${OFF}=${BLUE}VALUE${OFF} - path or query parameters
  - ${MAGENTA}<body-parameters>${OFF} - simple JSON body content (first level only) can be build
                        using the following arguments:
                        * ${YELLOW}KEY${OFF}==${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": "${BLUE}VALUE${OFF}", ... }'
                        * ${YELLOW}KEY${OFF}:=${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": ${BLUE}VALUE${OFF}, ... }'

EOF
    echo -e "${BOLD}${WHITE}Authentication methods${OFF}"
    echo -e ""
    echo -e "  - ${BLUE}Api-key${OFF} - add '${RED}Authorization:<api-key>${OFF}' after ${YELLOW}<operation>${OFF}"
    
    echo ""
    echo -e "${BOLD}${WHITE}Operations (grouped by tags)${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}[emailGroups]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2MarketingServiceEmailGroupsCountGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceEmailGroupsEmailgroupIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceEmailGroupsEmailgroupIdGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceEmailGroupsEmailgroupIdPut${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceEmailGroupsGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceEmailGroupsPost${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[emailSignatures]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2MarketingServiceEmailSignaturesCountGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceEmailSignaturesGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceEmailSignaturesPost${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[emailTemplates]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2MarketingServiceEmailTemplatesCountGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceEmailTemplatesGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceEmailTemplatesPost${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[marketingCampaigns]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2MarketingServiceMarketingCampaignsCountGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceMarketingCampaignsGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceMarketingCampaignsPost${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[marketingLists]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2MarketingServiceMarketingListsCountGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceMarketingListsGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceMarketingListsMarketinglistIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceMarketingListsMarketinglistIdGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceMarketingListsMarketinglistIdPut${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceMarketingListsPost${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[newsletters]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2MarketingServiceNewslettersCountGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceNewslettersGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceNewslettersNewsletterIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceNewslettersNewsletterIdGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceNewslettersNewsletterIdPut${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceNewslettersPost${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[socialMediaPosts]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2MarketingServiceSocialMediaPostsCountGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceSocialMediaPostsGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceSocialMediaPostsPost${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[socialPostBuckets]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2MarketingServiceSocialPostBucketsCountGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceSocialPostBucketsGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceSocialPostBucketsPost${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet${OFF}; (AUTH)
  ${CYAN}apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[trackingPixels]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2MarketingServiceTrackingPixelsPixelIdGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}Options${OFF}"
    echo -e "  -h,--help\\t\\t\\t\\tPrint this help"
    echo -e "  -V,--version\\t\\t\\t\\tPrint API version"
    echo -e "  --about\\t\\t\\t\\tPrint the information about service"
    echo -e "  --host ${CYAN}<url>${OFF}\\t\\t\\t\\tSpecify the host URL "
echo -e "              \\t\\t\\t\\t(e.g. 'https://localhost')"

    echo -e "  --force\\t\\t\\t\\tForce command invocation in spite of missing"
    echo -e "         \\t\\t\\t\\trequired parameters or wrong content type"
    echo -e "  --dry-run\\t\\t\\t\\tPrint out the cURL command without"
    echo -e "           \\t\\t\\t\\texecuting it"
    echo -e "  -nc,--no-colors\\t\\t\\tEnforce print without colors, otherwise autodetected"
    echo -e "  -ac,--accept ${YELLOW}<mime-type>${OFF}\\t\\tSet the 'Accept' header in the request"
    echo -e "  -ct,--content-type ${YELLOW}<mime-type>${OFF}\\tSet the 'Content-type' header in "
    echo -e "                                \\tthe request"
    echo ""
}


##############################################################################
#
# Print REST service description
#
##############################################################################
print_about() {
    echo ""
    echo -e "${BOLD}${WHITE}MarketingService command line client (API version 2.0.1.4089)${OFF}"
    echo ""
    echo -e "License: Fenix Alliance Inc."
    echo -e "Contact: support@fenix-alliance.com"
    echo ""
read -r -d '' appdescription <<EOF

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
EOF
echo "$appdescription" | paste -sd' ' | fold -sw 80
}


##############################################################################
#
# Print REST api version
#
##############################################################################
print_version() {
    echo ""
    echo -e "${BOLD}MarketingService command line client (API version 2.0.1.4089)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for apiV2MarketingServiceEmailGroupsCountGet operation
#
##############################################################################
print_apiV2MarketingServiceEmailGroupsCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceEmailGroupsCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceEmailGroupsEmailgroupIdDelete operation
#
##############################################################################
print_apiV2MarketingServiceEmailGroupsEmailgroupIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceEmailGroupsEmailgroupIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}emailgroupId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: emailgroupId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceEmailGroupsEmailgroupIdGet operation
#
##############################################################################
print_apiV2MarketingServiceEmailGroupsEmailgroupIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceEmailGroupsEmailgroupIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}emailgroupId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: emailgroupId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceEmailGroupsEmailgroupIdPut operation
#
##############################################################################
print_apiV2MarketingServiceEmailGroupsEmailgroupIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceEmailGroupsEmailgroupIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}emailgroupId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: emailgroupId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceEmailGroupsGet operation
#
##############################################################################
print_apiV2MarketingServiceEmailGroupsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceEmailGroupsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceEmailGroupsPost operation
#
##############################################################################
print_apiV2MarketingServiceEmailGroupsPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceEmailGroupsPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceEmailSignaturesCountGet operation
#
##############################################################################
print_apiV2MarketingServiceEmailSignaturesCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceEmailSignaturesCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete operation
#
##############################################################################
print_apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}emailsignatureId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: emailsignatureId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet operation
#
##############################################################################
print_apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}emailsignatureId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: emailsignatureId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut operation
#
##############################################################################
print_apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}emailsignatureId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: emailsignatureId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceEmailSignaturesGet operation
#
##############################################################################
print_apiV2MarketingServiceEmailSignaturesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceEmailSignaturesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceEmailSignaturesPost operation
#
##############################################################################
print_apiV2MarketingServiceEmailSignaturesPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceEmailSignaturesPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceEmailTemplatesCountGet operation
#
##############################################################################
print_apiV2MarketingServiceEmailTemplatesCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceEmailTemplatesCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete operation
#
##############################################################################
print_apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}emailTemplateId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: emailTemplateId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet operation
#
##############################################################################
print_apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}emailTemplatesId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: emailTemplatesId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}emailTemplateId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: emailTemplateId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut operation
#
##############################################################################
print_apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}emailTemplateId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: emailTemplateId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceEmailTemplatesGet operation
#
##############################################################################
print_apiV2MarketingServiceEmailTemplatesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceEmailTemplatesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceEmailTemplatesPost operation
#
##############################################################################
print_apiV2MarketingServiceEmailTemplatesPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceEmailTemplatesPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceMarketingCampaignsCountGet operation
#
##############################################################################
print_apiV2MarketingServiceMarketingCampaignsCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceMarketingCampaignsCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceMarketingCampaignsGet operation
#
##############################################################################
print_apiV2MarketingServiceMarketingCampaignsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceMarketingCampaignsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete operation
#
##############################################################################
print_apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}marketingcampaignId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: marketingcampaignId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet operation
#
##############################################################################
print_apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}marketingcampaignId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: marketingcampaignId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut operation
#
##############################################################################
print_apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}marketingcampaignId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: marketingcampaignId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceMarketingCampaignsPost operation
#
##############################################################################
print_apiV2MarketingServiceMarketingCampaignsPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceMarketingCampaignsPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceMarketingListsCountGet operation
#
##############################################################################
print_apiV2MarketingServiceMarketingListsCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceMarketingListsCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceMarketingListsGet operation
#
##############################################################################
print_apiV2MarketingServiceMarketingListsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceMarketingListsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceMarketingListsMarketinglistIdDelete operation
#
##############################################################################
print_apiV2MarketingServiceMarketingListsMarketinglistIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceMarketingListsMarketinglistIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}marketinglistId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: marketinglistId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceMarketingListsMarketinglistIdGet operation
#
##############################################################################
print_apiV2MarketingServiceMarketingListsMarketinglistIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceMarketingListsMarketinglistIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}marketinglistId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: marketinglistId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceMarketingListsMarketinglistIdPut operation
#
##############################################################################
print_apiV2MarketingServiceMarketingListsMarketinglistIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceMarketingListsMarketinglistIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}marketinglistId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: marketinglistId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceMarketingListsPost operation
#
##############################################################################
print_apiV2MarketingServiceMarketingListsPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceMarketingListsPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceNewslettersCountGet operation
#
##############################################################################
print_apiV2MarketingServiceNewslettersCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceNewslettersCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceNewslettersGet operation
#
##############################################################################
print_apiV2MarketingServiceNewslettersGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceNewslettersGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceNewslettersNewsletterIdDelete operation
#
##############################################################################
print_apiV2MarketingServiceNewslettersNewsletterIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceNewslettersNewsletterIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}newsletterId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: newsletterId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceNewslettersNewsletterIdGet operation
#
##############################################################################
print_apiV2MarketingServiceNewslettersNewsletterIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceNewslettersNewsletterIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}newsletterId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: newsletterId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceNewslettersNewsletterIdPut operation
#
##############################################################################
print_apiV2MarketingServiceNewslettersNewsletterIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceNewslettersNewsletterIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}newsletterId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: newsletterId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceNewslettersPost operation
#
##############################################################################
print_apiV2MarketingServiceNewslettersPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceNewslettersPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceSocialMediaPostsCountGet operation
#
##############################################################################
print_apiV2MarketingServiceSocialMediaPostsCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceSocialMediaPostsCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceSocialMediaPostsGet operation
#
##############################################################################
print_apiV2MarketingServiceSocialMediaPostsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceSocialMediaPostsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceSocialMediaPostsPost operation
#
##############################################################################
print_apiV2MarketingServiceSocialMediaPostsPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceSocialMediaPostsPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete operation
#
##############################################################################
print_apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}socialmediapostId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: socialmediapostId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet operation
#
##############################################################################
print_apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}socialmediapostId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: socialmediapostId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut operation
#
##############################################################################
print_apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}socialmediapostId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: socialmediapostId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceSocialPostBucketsCountGet operation
#
##############################################################################
print_apiV2MarketingServiceSocialPostBucketsCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceSocialPostBucketsCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceSocialPostBucketsGet operation
#
##############################################################################
print_apiV2MarketingServiceSocialPostBucketsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceSocialPostBucketsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceSocialPostBucketsPost operation
#
##############################################################################
print_apiV2MarketingServiceSocialPostBucketsPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceSocialPostBucketsPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete operation
#
##############################################################################
print_apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}socialpostbucketId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: socialpostbucketId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet operation
#
##############################################################################
print_apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}socialpostbucketId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: socialpostbucketId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut operation
#
##############################################################################
print_apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}socialpostbucketId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: socialpostbucketId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2MarketingServiceTrackingPixelsPixelIdGet operation
#
##############################################################################
print_apiV2MarketingServiceTrackingPixelsPixelIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2MarketingServiceTrackingPixelsPixelIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}pixelId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: pixelId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call apiV2MarketingServiceEmailGroupsCountGet operation
#
##############################################################################
call_apiV2MarketingServiceEmailGroupsCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/EmailGroups/Count" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceEmailGroupsEmailgroupIdDelete operation
#
##############################################################################
call_apiV2MarketingServiceEmailGroupsEmailgroupIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(emailgroupId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/EmailGroups/{emailgroupId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceEmailGroupsEmailgroupIdGet operation
#
##############################################################################
call_apiV2MarketingServiceEmailGroupsEmailgroupIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(emailgroupId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/EmailGroups/{emailgroupId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceEmailGroupsEmailgroupIdPut operation
#
##############################################################################
call_apiV2MarketingServiceEmailGroupsEmailgroupIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(emailgroupId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/EmailGroups/{emailgroupId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceEmailGroupsGet operation
#
##############################################################################
call_apiV2MarketingServiceEmailGroupsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/EmailGroups" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceEmailGroupsPost operation
#
##############################################################################
call_apiV2MarketingServiceEmailGroupsPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/EmailGroups" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceEmailSignaturesCountGet operation
#
##############################################################################
call_apiV2MarketingServiceEmailSignaturesCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/EmailSignatures/Count" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete operation
#
##############################################################################
call_apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(emailsignatureId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/EmailSignatures/{emailsignatureId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet operation
#
##############################################################################
call_apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(emailsignatureId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/EmailSignatures/{emailsignatureId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut operation
#
##############################################################################
call_apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(emailsignatureId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/EmailSignatures/{emailsignatureId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceEmailSignaturesGet operation
#
##############################################################################
call_apiV2MarketingServiceEmailSignaturesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/EmailSignatures" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceEmailSignaturesPost operation
#
##############################################################################
call_apiV2MarketingServiceEmailSignaturesPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/EmailSignatures" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceEmailTemplatesCountGet operation
#
##############################################################################
call_apiV2MarketingServiceEmailTemplatesCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/EmailTemplates/Count" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete operation
#
##############################################################################
call_apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(emailTemplateId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/EmailTemplates/{emailTemplateId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet operation
#
##############################################################################
call_apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(emailTemplateId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId emailTemplatesId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/EmailTemplates/{emailTemplateId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut operation
#
##############################################################################
call_apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(emailTemplateId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/EmailTemplates/{emailTemplateId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceEmailTemplatesGet operation
#
##############################################################################
call_apiV2MarketingServiceEmailTemplatesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/EmailTemplates" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceEmailTemplatesPost operation
#
##############################################################################
call_apiV2MarketingServiceEmailTemplatesPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/EmailTemplates" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceMarketingCampaignsCountGet operation
#
##############################################################################
call_apiV2MarketingServiceMarketingCampaignsCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/MarketingCampaigns/Count" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceMarketingCampaignsGet operation
#
##############################################################################
call_apiV2MarketingServiceMarketingCampaignsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/MarketingCampaigns" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete operation
#
##############################################################################
call_apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(marketingcampaignId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/MarketingCampaigns/{marketingcampaignId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet operation
#
##############################################################################
call_apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(marketingcampaignId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/MarketingCampaigns/{marketingcampaignId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut operation
#
##############################################################################
call_apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(marketingcampaignId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/MarketingCampaigns/{marketingcampaignId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceMarketingCampaignsPost operation
#
##############################################################################
call_apiV2MarketingServiceMarketingCampaignsPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/MarketingCampaigns" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceMarketingListsCountGet operation
#
##############################################################################
call_apiV2MarketingServiceMarketingListsCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/MarketingLists/Count" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceMarketingListsGet operation
#
##############################################################################
call_apiV2MarketingServiceMarketingListsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/MarketingLists" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceMarketingListsMarketinglistIdDelete operation
#
##############################################################################
call_apiV2MarketingServiceMarketingListsMarketinglistIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(marketinglistId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/MarketingLists/{marketinglistId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceMarketingListsMarketinglistIdGet operation
#
##############################################################################
call_apiV2MarketingServiceMarketingListsMarketinglistIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(marketinglistId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/MarketingLists/{marketinglistId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceMarketingListsMarketinglistIdPut operation
#
##############################################################################
call_apiV2MarketingServiceMarketingListsMarketinglistIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(marketinglistId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/MarketingLists/{marketinglistId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceMarketingListsPost operation
#
##############################################################################
call_apiV2MarketingServiceMarketingListsPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/MarketingLists" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceNewslettersCountGet operation
#
##############################################################################
call_apiV2MarketingServiceNewslettersCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/Newsletters/Count" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceNewslettersGet operation
#
##############################################################################
call_apiV2MarketingServiceNewslettersGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/Newsletters" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceNewslettersNewsletterIdDelete operation
#
##############################################################################
call_apiV2MarketingServiceNewslettersNewsletterIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(newsletterId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/Newsletters/{newsletterId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceNewslettersNewsletterIdGet operation
#
##############################################################################
call_apiV2MarketingServiceNewslettersNewsletterIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(newsletterId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/Newsletters/{newsletterId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceNewslettersNewsletterIdPut operation
#
##############################################################################
call_apiV2MarketingServiceNewslettersNewsletterIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(newsletterId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/Newsletters/{newsletterId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceNewslettersPost operation
#
##############################################################################
call_apiV2MarketingServiceNewslettersPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/Newsletters" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceSocialMediaPostsCountGet operation
#
##############################################################################
call_apiV2MarketingServiceSocialMediaPostsCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/SocialMediaPosts/Count" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceSocialMediaPostsGet operation
#
##############################################################################
call_apiV2MarketingServiceSocialMediaPostsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/SocialMediaPosts" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceSocialMediaPostsPost operation
#
##############################################################################
call_apiV2MarketingServiceSocialMediaPostsPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/SocialMediaPosts" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete operation
#
##############################################################################
call_apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(socialmediapostId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/SocialMediaPosts/{socialmediapostId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet operation
#
##############################################################################
call_apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(socialmediapostId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/SocialMediaPosts/{socialmediapostId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut operation
#
##############################################################################
call_apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(socialmediapostId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/SocialMediaPosts/{socialmediapostId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceSocialPostBucketsCountGet operation
#
##############################################################################
call_apiV2MarketingServiceSocialPostBucketsCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/SocialPostBuckets/Count" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceSocialPostBucketsGet operation
#
##############################################################################
call_apiV2MarketingServiceSocialPostBucketsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/SocialPostBuckets" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceSocialPostBucketsPost operation
#
##############################################################################
call_apiV2MarketingServiceSocialPostBucketsPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/SocialPostBuckets" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete operation
#
##############################################################################
call_apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(socialpostbucketId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/SocialPostBuckets/{socialpostbucketId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet operation
#
##############################################################################
call_apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(socialpostbucketId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/SocialPostBuckets/{socialpostbucketId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut operation
#
##############################################################################
call_apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(socialpostbucketId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/SocialPostBuckets/{socialpostbucketId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call apiV2MarketingServiceTrackingPixelsPixelIdGet operation
#
##############################################################################
call_apiV2MarketingServiceTrackingPixelsPixelIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(pixelId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/MarketingService/TrackingPixels/{pixelId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}



##############################################################################
#
# Main
#
##############################################################################


# Check dependencies
type curl >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'cURL' installed."; exit 1; }
type sed >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'sed' installed."; exit 1; }
type column >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'bsdmainutils' installed."; exit 1; }

#
# Process command line
#
# Pass all arguments before 'operation' to cURL except the ones we override
#
take_user=false
take_host=false
take_accept_header=false
take_contenttype_header=false

for key in "$@"; do
# Take the value of -u|--user argument
if [[ "$take_user" = true ]]; then
    basic_auth_credential="$key"
    take_user=false
    continue
fi
# Take the value of --host argument
if [[ "$take_host" = true ]]; then
    host="$key"
    take_host=false
    continue
fi
# Take the value of --accept argument
if [[ "$take_accept_header" = true ]]; then
    header_accept=$(lookup_mime_type "$key")
    take_accept_header=false
    continue
fi
# Take the value of --content-type argument
if [[ "$take_contenttype_header" = true ]]; then
    header_content_type=$(lookup_mime_type "$key")
    take_contenttype_header=false
    continue
fi
case $key in
    -h|--help)
    if [[ "x$operation" == "x" ]]; then
        print_help
        exit 0
    else
        eval "print_${operation}_help"
        exit 0
    fi
    ;;
    -V|--version)
    print_version
    exit 0
    ;;
    --about)
    print_about
    exit 0
    ;;
    -u|--user)
    take_user=true
    ;;
    --host)
    take_host=true
    ;;
    --force)
    force=true
    ;;
    -ac|--accept)
    take_accept_header=true
    ;;
    -ct|--content-type)
    take_contenttype_header=true
    ;;
    --dry-run)
    print_curl=true
    ;;
    -nc|--no-colors)
        RED=""
        GREEN=""
        YELLOW=""
        BLUE=""
        MAGENTA=""
        CYAN=""
        WHITE=""
        BOLD=""
        OFF=""
        result_color_table=( "" "" "" "" "" "" "" )
    ;;
    apiV2MarketingServiceEmailGroupsCountGet)
    operation="apiV2MarketingServiceEmailGroupsCountGet"
    ;;
    apiV2MarketingServiceEmailGroupsEmailgroupIdDelete)
    operation="apiV2MarketingServiceEmailGroupsEmailgroupIdDelete"
    ;;
    apiV2MarketingServiceEmailGroupsEmailgroupIdGet)
    operation="apiV2MarketingServiceEmailGroupsEmailgroupIdGet"
    ;;
    apiV2MarketingServiceEmailGroupsEmailgroupIdPut)
    operation="apiV2MarketingServiceEmailGroupsEmailgroupIdPut"
    ;;
    apiV2MarketingServiceEmailGroupsGet)
    operation="apiV2MarketingServiceEmailGroupsGet"
    ;;
    apiV2MarketingServiceEmailGroupsPost)
    operation="apiV2MarketingServiceEmailGroupsPost"
    ;;
    apiV2MarketingServiceEmailSignaturesCountGet)
    operation="apiV2MarketingServiceEmailSignaturesCountGet"
    ;;
    apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete)
    operation="apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete"
    ;;
    apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet)
    operation="apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet"
    ;;
    apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut)
    operation="apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut"
    ;;
    apiV2MarketingServiceEmailSignaturesGet)
    operation="apiV2MarketingServiceEmailSignaturesGet"
    ;;
    apiV2MarketingServiceEmailSignaturesPost)
    operation="apiV2MarketingServiceEmailSignaturesPost"
    ;;
    apiV2MarketingServiceEmailTemplatesCountGet)
    operation="apiV2MarketingServiceEmailTemplatesCountGet"
    ;;
    apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete)
    operation="apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete"
    ;;
    apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet)
    operation="apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet"
    ;;
    apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut)
    operation="apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut"
    ;;
    apiV2MarketingServiceEmailTemplatesGet)
    operation="apiV2MarketingServiceEmailTemplatesGet"
    ;;
    apiV2MarketingServiceEmailTemplatesPost)
    operation="apiV2MarketingServiceEmailTemplatesPost"
    ;;
    apiV2MarketingServiceMarketingCampaignsCountGet)
    operation="apiV2MarketingServiceMarketingCampaignsCountGet"
    ;;
    apiV2MarketingServiceMarketingCampaignsGet)
    operation="apiV2MarketingServiceMarketingCampaignsGet"
    ;;
    apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete)
    operation="apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete"
    ;;
    apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet)
    operation="apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet"
    ;;
    apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut)
    operation="apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut"
    ;;
    apiV2MarketingServiceMarketingCampaignsPost)
    operation="apiV2MarketingServiceMarketingCampaignsPost"
    ;;
    apiV2MarketingServiceMarketingListsCountGet)
    operation="apiV2MarketingServiceMarketingListsCountGet"
    ;;
    apiV2MarketingServiceMarketingListsGet)
    operation="apiV2MarketingServiceMarketingListsGet"
    ;;
    apiV2MarketingServiceMarketingListsMarketinglistIdDelete)
    operation="apiV2MarketingServiceMarketingListsMarketinglistIdDelete"
    ;;
    apiV2MarketingServiceMarketingListsMarketinglistIdGet)
    operation="apiV2MarketingServiceMarketingListsMarketinglistIdGet"
    ;;
    apiV2MarketingServiceMarketingListsMarketinglistIdPut)
    operation="apiV2MarketingServiceMarketingListsMarketinglistIdPut"
    ;;
    apiV2MarketingServiceMarketingListsPost)
    operation="apiV2MarketingServiceMarketingListsPost"
    ;;
    apiV2MarketingServiceNewslettersCountGet)
    operation="apiV2MarketingServiceNewslettersCountGet"
    ;;
    apiV2MarketingServiceNewslettersGet)
    operation="apiV2MarketingServiceNewslettersGet"
    ;;
    apiV2MarketingServiceNewslettersNewsletterIdDelete)
    operation="apiV2MarketingServiceNewslettersNewsletterIdDelete"
    ;;
    apiV2MarketingServiceNewslettersNewsletterIdGet)
    operation="apiV2MarketingServiceNewslettersNewsletterIdGet"
    ;;
    apiV2MarketingServiceNewslettersNewsletterIdPut)
    operation="apiV2MarketingServiceNewslettersNewsletterIdPut"
    ;;
    apiV2MarketingServiceNewslettersPost)
    operation="apiV2MarketingServiceNewslettersPost"
    ;;
    apiV2MarketingServiceSocialMediaPostsCountGet)
    operation="apiV2MarketingServiceSocialMediaPostsCountGet"
    ;;
    apiV2MarketingServiceSocialMediaPostsGet)
    operation="apiV2MarketingServiceSocialMediaPostsGet"
    ;;
    apiV2MarketingServiceSocialMediaPostsPost)
    operation="apiV2MarketingServiceSocialMediaPostsPost"
    ;;
    apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete)
    operation="apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete"
    ;;
    apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet)
    operation="apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet"
    ;;
    apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut)
    operation="apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut"
    ;;
    apiV2MarketingServiceSocialPostBucketsCountGet)
    operation="apiV2MarketingServiceSocialPostBucketsCountGet"
    ;;
    apiV2MarketingServiceSocialPostBucketsGet)
    operation="apiV2MarketingServiceSocialPostBucketsGet"
    ;;
    apiV2MarketingServiceSocialPostBucketsPost)
    operation="apiV2MarketingServiceSocialPostBucketsPost"
    ;;
    apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete)
    operation="apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete"
    ;;
    apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet)
    operation="apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet"
    ;;
    apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut)
    operation="apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut"
    ;;
    apiV2MarketingServiceTrackingPixelsPixelIdGet)
    operation="apiV2MarketingServiceTrackingPixelsPixelIdGet"
    ;;
    *==*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content as strings
    if [[ "$operation" ]]; then
        IFS='==' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]="\"${body_value}\""
    fi
    ;;
    --body=*)
    # Parse value of body as argument and convert it into only
    # the raw body content
    if [[ "$operation" ]]; then
        IFS='--body=' read -r body_value <<< "$key"
        body_value=${body_value##--body=}
        body_parameters["RAW_BODY"]="${body_value}"
        RAW_BODY=1
    fi
    ;;
    *:=*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content without quotes
    if [[ "$operation" ]]; then
        # ignore error about 'sep' being unused
        # shellcheck disable=SC2034
        IFS=':=' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]=${body_value}
    fi
    ;;
    +([^=]):*)
    # Parse header arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS=':' read -r header_name header_value <<< "$key"
        #
        # If the header key is the same as the api_key expected by API in the
        # header, override the ${apikey_auth_credential} variable
        #
        if [[ $header_name == "Authorization" ]]; then
            apikey_auth_credential=$header_value
        fi
        header_arguments[$header_name]=$header_value
    else
        curl_arguments+=" $key"
    fi
    ;;
    -)
    body_content_temp_file=$(mktemp)
    cat - > "$body_content_temp_file"
    ;;
    *=*)
    # Parse operation arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS='=' read -r parameter_name parameter_value <<< "$key"
        if [[ -z "${operation_parameters[$parameter_name]+foo}" ]]; then
            operation_parameters[$parameter_name]=$(url_escape "${parameter_value}")
        else
            operation_parameters[$parameter_name]+=":::"$(url_escape "${parameter_value}")
        fi
    else
        curl_arguments+=" $key"
    fi
    ;;
    *)
    # If we are before the operation, treat the arguments as cURL arguments
    if [[ "x$operation" == "x" ]]; then
        # Maintain quotes around cURL arguments if necessary
        space_regexp="[[:space:]]"
        if [[ $key =~ $space_regexp ]]; then
            curl_arguments+=" \"$key\""
        else
            curl_arguments+=" $key"
        fi
    fi
    ;;
esac
done


# Check if user provided host name
if [[ -z "$host" ]]; then
    ERROR_MSG="ERROR: No hostname provided!!! You have to  provide on command line option '--host ...'"
    exit 1
fi

# Check if user specified operation ID
if [[ -z "$operation" ]]; then
    ERROR_MSG="ERROR: No operation specified!!!"
    exit 1
fi


# Run cURL command based on the operation ID
case $operation in
    apiV2MarketingServiceEmailGroupsCountGet)
    call_apiV2MarketingServiceEmailGroupsCountGet
    ;;
    apiV2MarketingServiceEmailGroupsEmailgroupIdDelete)
    call_apiV2MarketingServiceEmailGroupsEmailgroupIdDelete
    ;;
    apiV2MarketingServiceEmailGroupsEmailgroupIdGet)
    call_apiV2MarketingServiceEmailGroupsEmailgroupIdGet
    ;;
    apiV2MarketingServiceEmailGroupsEmailgroupIdPut)
    call_apiV2MarketingServiceEmailGroupsEmailgroupIdPut
    ;;
    apiV2MarketingServiceEmailGroupsGet)
    call_apiV2MarketingServiceEmailGroupsGet
    ;;
    apiV2MarketingServiceEmailGroupsPost)
    call_apiV2MarketingServiceEmailGroupsPost
    ;;
    apiV2MarketingServiceEmailSignaturesCountGet)
    call_apiV2MarketingServiceEmailSignaturesCountGet
    ;;
    apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete)
    call_apiV2MarketingServiceEmailSignaturesEmailsignatureIdDelete
    ;;
    apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet)
    call_apiV2MarketingServiceEmailSignaturesEmailsignatureIdGet
    ;;
    apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut)
    call_apiV2MarketingServiceEmailSignaturesEmailsignatureIdPut
    ;;
    apiV2MarketingServiceEmailSignaturesGet)
    call_apiV2MarketingServiceEmailSignaturesGet
    ;;
    apiV2MarketingServiceEmailSignaturesPost)
    call_apiV2MarketingServiceEmailSignaturesPost
    ;;
    apiV2MarketingServiceEmailTemplatesCountGet)
    call_apiV2MarketingServiceEmailTemplatesCountGet
    ;;
    apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete)
    call_apiV2MarketingServiceEmailTemplatesEmailTemplateIdDelete
    ;;
    apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet)
    call_apiV2MarketingServiceEmailTemplatesEmailTemplateIdGet
    ;;
    apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut)
    call_apiV2MarketingServiceEmailTemplatesEmailTemplateIdPut
    ;;
    apiV2MarketingServiceEmailTemplatesGet)
    call_apiV2MarketingServiceEmailTemplatesGet
    ;;
    apiV2MarketingServiceEmailTemplatesPost)
    call_apiV2MarketingServiceEmailTemplatesPost
    ;;
    apiV2MarketingServiceMarketingCampaignsCountGet)
    call_apiV2MarketingServiceMarketingCampaignsCountGet
    ;;
    apiV2MarketingServiceMarketingCampaignsGet)
    call_apiV2MarketingServiceMarketingCampaignsGet
    ;;
    apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete)
    call_apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdDelete
    ;;
    apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet)
    call_apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdGet
    ;;
    apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut)
    call_apiV2MarketingServiceMarketingCampaignsMarketingcampaignIdPut
    ;;
    apiV2MarketingServiceMarketingCampaignsPost)
    call_apiV2MarketingServiceMarketingCampaignsPost
    ;;
    apiV2MarketingServiceMarketingListsCountGet)
    call_apiV2MarketingServiceMarketingListsCountGet
    ;;
    apiV2MarketingServiceMarketingListsGet)
    call_apiV2MarketingServiceMarketingListsGet
    ;;
    apiV2MarketingServiceMarketingListsMarketinglistIdDelete)
    call_apiV2MarketingServiceMarketingListsMarketinglistIdDelete
    ;;
    apiV2MarketingServiceMarketingListsMarketinglistIdGet)
    call_apiV2MarketingServiceMarketingListsMarketinglistIdGet
    ;;
    apiV2MarketingServiceMarketingListsMarketinglistIdPut)
    call_apiV2MarketingServiceMarketingListsMarketinglistIdPut
    ;;
    apiV2MarketingServiceMarketingListsPost)
    call_apiV2MarketingServiceMarketingListsPost
    ;;
    apiV2MarketingServiceNewslettersCountGet)
    call_apiV2MarketingServiceNewslettersCountGet
    ;;
    apiV2MarketingServiceNewslettersGet)
    call_apiV2MarketingServiceNewslettersGet
    ;;
    apiV2MarketingServiceNewslettersNewsletterIdDelete)
    call_apiV2MarketingServiceNewslettersNewsletterIdDelete
    ;;
    apiV2MarketingServiceNewslettersNewsletterIdGet)
    call_apiV2MarketingServiceNewslettersNewsletterIdGet
    ;;
    apiV2MarketingServiceNewslettersNewsletterIdPut)
    call_apiV2MarketingServiceNewslettersNewsletterIdPut
    ;;
    apiV2MarketingServiceNewslettersPost)
    call_apiV2MarketingServiceNewslettersPost
    ;;
    apiV2MarketingServiceSocialMediaPostsCountGet)
    call_apiV2MarketingServiceSocialMediaPostsCountGet
    ;;
    apiV2MarketingServiceSocialMediaPostsGet)
    call_apiV2MarketingServiceSocialMediaPostsGet
    ;;
    apiV2MarketingServiceSocialMediaPostsPost)
    call_apiV2MarketingServiceSocialMediaPostsPost
    ;;
    apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete)
    call_apiV2MarketingServiceSocialMediaPostsSocialmediapostIdDelete
    ;;
    apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet)
    call_apiV2MarketingServiceSocialMediaPostsSocialmediapostIdGet
    ;;
    apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut)
    call_apiV2MarketingServiceSocialMediaPostsSocialmediapostIdPut
    ;;
    apiV2MarketingServiceSocialPostBucketsCountGet)
    call_apiV2MarketingServiceSocialPostBucketsCountGet
    ;;
    apiV2MarketingServiceSocialPostBucketsGet)
    call_apiV2MarketingServiceSocialPostBucketsGet
    ;;
    apiV2MarketingServiceSocialPostBucketsPost)
    call_apiV2MarketingServiceSocialPostBucketsPost
    ;;
    apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete)
    call_apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdDelete
    ;;
    apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet)
    call_apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdGet
    ;;
    apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut)
    call_apiV2MarketingServiceSocialPostBucketsSocialpostbucketIdPut
    ;;
    apiV2MarketingServiceTrackingPixelsPixelIdGet)
    call_apiV2MarketingServiceTrackingPixelsPixelIdGet
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
