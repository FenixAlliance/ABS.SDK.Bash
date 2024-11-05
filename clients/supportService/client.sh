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
# This is a Bash client for SupportService.
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
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsCountGet:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsGet:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsPost:::SupportEntitlementCreateDto"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsPost:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete:::supportEntitlementId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet:::supportEntitlementId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut:::supportEntitlementId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut:::SupportEntitlementUpdateDto"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsCountGet:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsGet:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsPost:::SupportRequestAttachmentCreateDto"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsPost:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete:::supportRequestAttachmentId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet:::supportRequestAttachmentId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut:::supportRequestAttachmentId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut:::SupportRequestAttachmentUpdateDto"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsCountGet:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsGet:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsPost:::SupportRequestCreateDto"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsPost:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet:::supportRequestId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet:::attachmentId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet:::supportRequestId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet:::supportRequestId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost:::supportRequestId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost:::SupportRequestAttachmentCreateDto"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdDelete:::supportRequestId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdDelete:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdGet:::supportRequestId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdPut:::supportRequestId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdPut:::SupportRequestUpdateDto"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdPut:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet:::supportRequestId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesCountGet:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesGet:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesPost:::SupportTicketPriorityCreateDto"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesPost:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete:::supportTicketPriorityId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet:::supportTicketPriorityId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut:::supportTicketPriorityId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut:::SupportTicketPriorityUpdateDto"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesCountGet:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesGet:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesPost:::SupportTicketTypeCreateDto"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesPost:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete:::supportTicketTypeId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet:::supportTicketTypeId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut:::supportTicketTypeId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut:::SupportTicketTypeUpdateDto"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsCountGet:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsGet:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsPost:::SupportTicketCreateDto"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsPost:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet:::supportTicketId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost:::supportTicketId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost:::SupportTicketConversationCreateDto"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete:::supportTicketId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete:::supportTicketConversationId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet:::supportTicketId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet:::supportTicketConversationId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet:::supportTicketConversationId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet:::supportTicketId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet:::pageNumber"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet:::pageSize"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdDelete:::supportTicketId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdDelete:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdGet:::supportTicketId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdPut:::supportTicketId"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdPut:::SupportTicketUpdateDto"]=1
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdPut:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdPut:::x-api-version"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsPost:::SupportEntitlementCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete:::supportEntitlementId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet:::supportEntitlementId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut:::supportEntitlementId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut:::SupportEntitlementUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsPost:::SupportRequestAttachmentCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete:::supportRequestAttachmentId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet:::supportRequestAttachmentId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut:::supportRequestAttachmentId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut:::SupportRequestAttachmentUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsPost:::SupportRequestCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet:::supportRequestId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet:::attachmentId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet:::supportRequestId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet:::supportRequestId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost:::supportRequestId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost:::SupportRequestAttachmentCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdDelete:::supportRequestId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdGet:::supportRequestId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdPut:::supportRequestId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdPut:::SupportRequestUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet:::supportRequestId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesPost:::SupportTicketPriorityCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete:::supportTicketPriorityId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet:::supportTicketPriorityId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut:::supportTicketPriorityId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut:::SupportTicketPriorityUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesPost:::SupportTicketTypeCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete:::supportTicketTypeId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet:::supportTicketTypeId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut:::supportTicketTypeId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut:::SupportTicketTypeUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsPost:::SupportTicketCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet:::supportTicketId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost:::supportTicketId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost:::SupportTicketConversationCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete:::supportTicketId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete:::supportTicketConversationId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet:::supportTicketId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet:::supportTicketConversationId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet:::supportTicketConversationId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet:::supportTicketId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet:::pageNumber"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet:::pageSize"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdDelete:::supportTicketId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdGet:::supportTicketId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdPut:::supportTicketId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdPut:::SupportTicketUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SupportServiceSupportTicketsSupportTicketIdPut:::x-api-version"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsPost:::SupportEntitlementCreateDto"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsPost:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsPost:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete:::supportEntitlementId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet:::supportEntitlementId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut:::supportEntitlementId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut:::SupportEntitlementUpdateDto"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsPost:::SupportRequestAttachmentCreateDto"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsPost:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsPost:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete:::supportRequestAttachmentId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet:::supportRequestAttachmentId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut:::supportRequestAttachmentId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut:::SupportRequestAttachmentUpdateDto"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsPost:::SupportRequestCreateDto"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsPost:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsPost:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet:::supportRequestId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet:::attachmentId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet:::supportRequestId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet:::supportRequestId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost:::supportRequestId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost:::SupportRequestAttachmentCreateDto"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdDelete:::supportRequestId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdGet:::supportRequestId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdPut:::supportRequestId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdPut:::SupportRequestUpdateDto"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet:::supportRequestId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesPost:::SupportTicketPriorityCreateDto"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesPost:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesPost:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete:::supportTicketPriorityId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet:::supportTicketPriorityId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut:::supportTicketPriorityId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut:::SupportTicketPriorityUpdateDto"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesPost:::SupportTicketTypeCreateDto"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesPost:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesPost:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete:::supportTicketTypeId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet:::supportTicketTypeId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut:::supportTicketTypeId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut:::SupportTicketTypeUpdateDto"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsPost:::SupportTicketCreateDto"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsPost:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsPost:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet:::supportTicketId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost:::supportTicketId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost:::SupportTicketConversationCreateDto"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete:::supportTicketId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete:::supportTicketConversationId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet:::supportTicketId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet:::supportTicketConversationId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet:::supportTicketConversationId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet:::supportTicketId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet:::pageNumber"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet:::pageSize"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdDelete:::supportTicketId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdGet:::supportTicketId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdPut:::supportTicketId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdPut:::SupportTicketUpdateDto"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2SupportServiceSupportTicketsSupportTicketIdPut:::x-api-version"]=""


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

${BOLD}${WHITE}SupportService command line client (API version 2.0.1.4089)${OFF}

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
    echo -e "${BOLD}${WHITE}[supportEntitlements]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2SupportServiceSupportEntitlementsCountGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportEntitlementsGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportEntitlementsPost${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[supportRequestAttachments]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2SupportServiceSupportRequestAttachmentsCountGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportRequestAttachmentsGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportRequestAttachmentsPost${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[supportRequests]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2SupportServiceSupportRequestsCountGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportRequestsGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportRequestsPost${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportRequestsSupportRequestIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportRequestsSupportRequestIdGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportRequestsSupportRequestIdPut${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[supportTicketPriorities]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2SupportServiceSupportTicketPrioritiesCountGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportTicketPrioritiesGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportTicketPrioritiesPost${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[supportTicketTypes]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2SupportServiceSupportTicketTypesCountGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportTicketTypesGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportTicketTypesPost${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[supportTickets]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2SupportServiceSupportTicketsCountGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportTicketsGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportTicketsPost${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportTicketsSupportTicketIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportTicketsSupportTicketIdGet${OFF}; (AUTH)
  ${CYAN}apiV2SupportServiceSupportTicketsSupportTicketIdPut${OFF}; (AUTH)
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
    echo -e "${BOLD}${WHITE}SupportService command line client (API version 2.0.1.4089)${OFF}"
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
    echo -e "${BOLD}SupportService command line client (API version 2.0.1.4089)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for apiV2SupportServiceSupportEntitlementsCountGet operation
#
##############################################################################
print_apiV2SupportServiceSupportEntitlementsCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportEntitlementsCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportEntitlementsGet operation
#
##############################################################################
print_apiV2SupportServiceSupportEntitlementsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportEntitlementsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportEntitlementsPost operation
#
##############################################################################
print_apiV2SupportServiceSupportEntitlementsPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportEntitlementsPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete operation
#
##############################################################################
print_apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportEntitlementId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportEntitlementId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet operation
#
##############################################################################
print_apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportEntitlementId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportEntitlementId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut operation
#
##############################################################################
print_apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportEntitlementId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportEntitlementId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SupportServiceSupportRequestAttachmentsCountGet operation
#
##############################################################################
print_apiV2SupportServiceSupportRequestAttachmentsCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportRequestAttachmentsCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportRequestAttachmentsGet operation
#
##############################################################################
print_apiV2SupportServiceSupportRequestAttachmentsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportRequestAttachmentsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportRequestAttachmentsPost operation
#
##############################################################################
print_apiV2SupportServiceSupportRequestAttachmentsPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportRequestAttachmentsPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete operation
#
##############################################################################
print_apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportRequestAttachmentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportRequestAttachmentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet operation
#
##############################################################################
print_apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportRequestAttachmentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportRequestAttachmentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut operation
#
##############################################################################
print_apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportRequestAttachmentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportRequestAttachmentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SupportServiceSupportRequestsCountGet operation
#
##############################################################################
print_apiV2SupportServiceSupportRequestsCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportRequestsCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportRequestsGet operation
#
##############################################################################
print_apiV2SupportServiceSupportRequestsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportRequestsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportRequestsPost operation
#
##############################################################################
print_apiV2SupportServiceSupportRequestsPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportRequestsPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet operation
#
##############################################################################
print_apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportRequestId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportRequestId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}attachmentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: attachmentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet operation
#
##############################################################################
print_apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportRequestId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportRequestId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet operation
#
##############################################################################
print_apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportRequestId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportRequestId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost operation
#
##############################################################################
print_apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportRequestId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportRequestId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SupportServiceSupportRequestsSupportRequestIdDelete operation
#
##############################################################################
print_apiV2SupportServiceSupportRequestsSupportRequestIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportRequestsSupportRequestIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportRequestId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportRequestId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportRequestsSupportRequestIdGet operation
#
##############################################################################
print_apiV2SupportServiceSupportRequestsSupportRequestIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportRequestsSupportRequestIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportRequestId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportRequestId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SupportServiceSupportRequestsSupportRequestIdPut operation
#
##############################################################################
print_apiV2SupportServiceSupportRequestsSupportRequestIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportRequestsSupportRequestIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportRequestId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportRequestId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet operation
#
##############################################################################
print_apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportRequestId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportRequestId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportTicketPrioritiesCountGet operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketPrioritiesCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketPrioritiesCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportTicketPrioritiesGet operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketPrioritiesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketPrioritiesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportTicketPrioritiesPost operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketPrioritiesPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketPrioritiesPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportTicketPriorityId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportTicketPriorityId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportTicketPriorityId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportTicketPriorityId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportTicketPriorityId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportTicketPriorityId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SupportServiceSupportTicketTypesCountGet operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketTypesCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketTypesCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportTicketTypesGet operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketTypesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketTypesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportTicketTypesPost operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketTypesPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketTypesPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportTicketTypeId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportTicketTypeId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportTicketTypeId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportTicketTypeId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportTicketTypeId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportTicketTypeId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SupportServiceSupportTicketsCountGet operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketsCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketsCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportTicketsGet operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportTicketsPost operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketsPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketsPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportTicketId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportTicketId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportTicketId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportTicketId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportTicketId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportTicketId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}supportTicketConversationId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportTicketConversationId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportTicketId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportTicketId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}supportTicketConversationId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportTicketConversationId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportTicketConversationId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportTicketConversationId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}supportTicketId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportTicketId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pageNumber${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pageNumber=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pageSize${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pageSize=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportTicketsSupportTicketIdDelete operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketsSupportTicketIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketsSupportTicketIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportTicketId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportTicketId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
# Print help for apiV2SupportServiceSupportTicketsSupportTicketIdGet operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketsSupportTicketIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketsSupportTicketIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportTicketId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportTicketId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SupportServiceSupportTicketsSupportTicketIdPut operation
#
##############################################################################
print_apiV2SupportServiceSupportTicketsSupportTicketIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SupportServiceSupportTicketsSupportTicketIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}supportTicketId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: supportTicketId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
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
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call apiV2SupportServiceSupportEntitlementsCountGet operation
#
##############################################################################
call_apiV2SupportServiceSupportEntitlementsCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportEntitlements/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportEntitlementsGet operation
#
##############################################################################
call_apiV2SupportServiceSupportEntitlementsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportEntitlements" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportEntitlementsPost operation
#
##############################################################################
call_apiV2SupportServiceSupportEntitlementsPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportEntitlements" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete operation
#
##############################################################################
call_apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportEntitlementId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportEntitlements/{supportEntitlementId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet operation
#
##############################################################################
call_apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportEntitlementId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportEntitlements/{supportEntitlementId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut operation
#
##############################################################################
call_apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportEntitlementId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportEntitlements/{supportEntitlementId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportRequestAttachmentsCountGet operation
#
##############################################################################
call_apiV2SupportServiceSupportRequestAttachmentsCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportRequestAttachments/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportRequestAttachmentsGet operation
#
##############################################################################
call_apiV2SupportServiceSupportRequestAttachmentsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportRequestAttachments" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportRequestAttachmentsPost operation
#
##############################################################################
call_apiV2SupportServiceSupportRequestAttachmentsPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportRequestAttachments" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete operation
#
##############################################################################
call_apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportRequestAttachmentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportRequestAttachments/{supportRequestAttachmentId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet operation
#
##############################################################################
call_apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportRequestAttachmentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportRequestAttachments/{supportRequestAttachmentId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut operation
#
##############################################################################
call_apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportRequestAttachmentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportRequestAttachments/{supportRequestAttachmentId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportRequestsCountGet operation
#
##############################################################################
call_apiV2SupportServiceSupportRequestsCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportRequests/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportRequestsGet operation
#
##############################################################################
call_apiV2SupportServiceSupportRequestsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportRequests" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportRequestsPost operation
#
##############################################################################
call_apiV2SupportServiceSupportRequestsPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportRequests" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet operation
#
##############################################################################
call_apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportRequestId attachmentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportRequests/{supportRequestId}/Attachments/{attachmentId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet operation
#
##############################################################################
call_apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportRequestId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportRequests/{supportRequestId}/Attachments/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet operation
#
##############################################################################
call_apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportRequestId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportRequests/{supportRequestId}/Attachments" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost operation
#
##############################################################################
call_apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportRequestId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportRequests/{supportRequestId}/Attachments" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportRequestsSupportRequestIdDelete operation
#
##############################################################################
call_apiV2SupportServiceSupportRequestsSupportRequestIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportRequestId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportRequests/{supportRequestId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportRequestsSupportRequestIdGet operation
#
##############################################################################
call_apiV2SupportServiceSupportRequestsSupportRequestIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportRequestId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportRequests/{supportRequestId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportRequestsSupportRequestIdPut operation
#
##############################################################################
call_apiV2SupportServiceSupportRequestsSupportRequestIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportRequestId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportRequests/{supportRequestId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet operation
#
##############################################################################
call_apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportRequestId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportRequests/{supportRequestId}/Tickets" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketPrioritiesCountGet operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketPrioritiesCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTicketPriorities/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketPrioritiesGet operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketPrioritiesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTicketPriorities" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketPrioritiesPost operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketPrioritiesPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTicketPriorities" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportTicketPriorityId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTicketPriorities/{supportTicketPriorityId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportTicketPriorityId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTicketPriorities/{supportTicketPriorityId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportTicketPriorityId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTicketPriorities/{supportTicketPriorityId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketTypesCountGet operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketTypesCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTicketTypes/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketTypesGet operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketTypesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTicketTypes" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketTypesPost operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketTypesPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTicketTypes" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportTicketTypeId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTicketTypes/{supportTicketTypeId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportTicketTypeId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTicketTypes/{supportTicketTypeId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportTicketTypeId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTicketTypes/{supportTicketTypeId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketsCountGet operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketsCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTickets/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketsGet operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTickets" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketsPost operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketsPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTickets" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportTicketId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportTicketId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportTicketId supportTicketConversationId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations/{supportTicketConversationId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportTicketId supportTicketConversationId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations/{supportTicketConversationId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportTicketConversationId supportTicketId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(pageNumber pageSize api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTickets/{supportTicketId}/Conversations/{supportTicketConversationId}/Messages" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketsSupportTicketIdDelete operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketsSupportTicketIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportTicketId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTickets/{supportTicketId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketsSupportTicketIdGet operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketsSupportTicketIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportTicketId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTickets/{supportTicketId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SupportServiceSupportTicketsSupportTicketIdPut operation
#
##############################################################################
call_apiV2SupportServiceSupportTicketsSupportTicketIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(supportTicketId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SupportService/SupportTickets/{supportTicketId}" path_parameter_names query_parameter_names); then
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
    apiV2SupportServiceSupportEntitlementsCountGet)
    operation="apiV2SupportServiceSupportEntitlementsCountGet"
    ;;
    apiV2SupportServiceSupportEntitlementsGet)
    operation="apiV2SupportServiceSupportEntitlementsGet"
    ;;
    apiV2SupportServiceSupportEntitlementsPost)
    operation="apiV2SupportServiceSupportEntitlementsPost"
    ;;
    apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete)
    operation="apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete"
    ;;
    apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet)
    operation="apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet"
    ;;
    apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut)
    operation="apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut"
    ;;
    apiV2SupportServiceSupportRequestAttachmentsCountGet)
    operation="apiV2SupportServiceSupportRequestAttachmentsCountGet"
    ;;
    apiV2SupportServiceSupportRequestAttachmentsGet)
    operation="apiV2SupportServiceSupportRequestAttachmentsGet"
    ;;
    apiV2SupportServiceSupportRequestAttachmentsPost)
    operation="apiV2SupportServiceSupportRequestAttachmentsPost"
    ;;
    apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete)
    operation="apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete"
    ;;
    apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet)
    operation="apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet"
    ;;
    apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut)
    operation="apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut"
    ;;
    apiV2SupportServiceSupportRequestsCountGet)
    operation="apiV2SupportServiceSupportRequestsCountGet"
    ;;
    apiV2SupportServiceSupportRequestsGet)
    operation="apiV2SupportServiceSupportRequestsGet"
    ;;
    apiV2SupportServiceSupportRequestsPost)
    operation="apiV2SupportServiceSupportRequestsPost"
    ;;
    apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet)
    operation="apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet"
    ;;
    apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet)
    operation="apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet"
    ;;
    apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet)
    operation="apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet"
    ;;
    apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost)
    operation="apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost"
    ;;
    apiV2SupportServiceSupportRequestsSupportRequestIdDelete)
    operation="apiV2SupportServiceSupportRequestsSupportRequestIdDelete"
    ;;
    apiV2SupportServiceSupportRequestsSupportRequestIdGet)
    operation="apiV2SupportServiceSupportRequestsSupportRequestIdGet"
    ;;
    apiV2SupportServiceSupportRequestsSupportRequestIdPut)
    operation="apiV2SupportServiceSupportRequestsSupportRequestIdPut"
    ;;
    apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet)
    operation="apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet"
    ;;
    apiV2SupportServiceSupportTicketPrioritiesCountGet)
    operation="apiV2SupportServiceSupportTicketPrioritiesCountGet"
    ;;
    apiV2SupportServiceSupportTicketPrioritiesGet)
    operation="apiV2SupportServiceSupportTicketPrioritiesGet"
    ;;
    apiV2SupportServiceSupportTicketPrioritiesPost)
    operation="apiV2SupportServiceSupportTicketPrioritiesPost"
    ;;
    apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete)
    operation="apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete"
    ;;
    apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet)
    operation="apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet"
    ;;
    apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut)
    operation="apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut"
    ;;
    apiV2SupportServiceSupportTicketTypesCountGet)
    operation="apiV2SupportServiceSupportTicketTypesCountGet"
    ;;
    apiV2SupportServiceSupportTicketTypesGet)
    operation="apiV2SupportServiceSupportTicketTypesGet"
    ;;
    apiV2SupportServiceSupportTicketTypesPost)
    operation="apiV2SupportServiceSupportTicketTypesPost"
    ;;
    apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete)
    operation="apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete"
    ;;
    apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet)
    operation="apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet"
    ;;
    apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut)
    operation="apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut"
    ;;
    apiV2SupportServiceSupportTicketsCountGet)
    operation="apiV2SupportServiceSupportTicketsCountGet"
    ;;
    apiV2SupportServiceSupportTicketsGet)
    operation="apiV2SupportServiceSupportTicketsGet"
    ;;
    apiV2SupportServiceSupportTicketsPost)
    operation="apiV2SupportServiceSupportTicketsPost"
    ;;
    apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet)
    operation="apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet"
    ;;
    apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost)
    operation="apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost"
    ;;
    apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete)
    operation="apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete"
    ;;
    apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet)
    operation="apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet"
    ;;
    apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet)
    operation="apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet"
    ;;
    apiV2SupportServiceSupportTicketsSupportTicketIdDelete)
    operation="apiV2SupportServiceSupportTicketsSupportTicketIdDelete"
    ;;
    apiV2SupportServiceSupportTicketsSupportTicketIdGet)
    operation="apiV2SupportServiceSupportTicketsSupportTicketIdGet"
    ;;
    apiV2SupportServiceSupportTicketsSupportTicketIdPut)
    operation="apiV2SupportServiceSupportTicketsSupportTicketIdPut"
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
    apiV2SupportServiceSupportEntitlementsCountGet)
    call_apiV2SupportServiceSupportEntitlementsCountGet
    ;;
    apiV2SupportServiceSupportEntitlementsGet)
    call_apiV2SupportServiceSupportEntitlementsGet
    ;;
    apiV2SupportServiceSupportEntitlementsPost)
    call_apiV2SupportServiceSupportEntitlementsPost
    ;;
    apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete)
    call_apiV2SupportServiceSupportEntitlementsSupportEntitlementIdDelete
    ;;
    apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet)
    call_apiV2SupportServiceSupportEntitlementsSupportEntitlementIdGet
    ;;
    apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut)
    call_apiV2SupportServiceSupportEntitlementsSupportEntitlementIdPut
    ;;
    apiV2SupportServiceSupportRequestAttachmentsCountGet)
    call_apiV2SupportServiceSupportRequestAttachmentsCountGet
    ;;
    apiV2SupportServiceSupportRequestAttachmentsGet)
    call_apiV2SupportServiceSupportRequestAttachmentsGet
    ;;
    apiV2SupportServiceSupportRequestAttachmentsPost)
    call_apiV2SupportServiceSupportRequestAttachmentsPost
    ;;
    apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete)
    call_apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdDelete
    ;;
    apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet)
    call_apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdGet
    ;;
    apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut)
    call_apiV2SupportServiceSupportRequestAttachmentsSupportRequestAttachmentIdPut
    ;;
    apiV2SupportServiceSupportRequestsCountGet)
    call_apiV2SupportServiceSupportRequestsCountGet
    ;;
    apiV2SupportServiceSupportRequestsGet)
    call_apiV2SupportServiceSupportRequestsGet
    ;;
    apiV2SupportServiceSupportRequestsPost)
    call_apiV2SupportServiceSupportRequestsPost
    ;;
    apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet)
    call_apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsAttachmentIdGet
    ;;
    apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet)
    call_apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsCountGet
    ;;
    apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet)
    call_apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsGet
    ;;
    apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost)
    call_apiV2SupportServiceSupportRequestsSupportRequestIdAttachmentsPost
    ;;
    apiV2SupportServiceSupportRequestsSupportRequestIdDelete)
    call_apiV2SupportServiceSupportRequestsSupportRequestIdDelete
    ;;
    apiV2SupportServiceSupportRequestsSupportRequestIdGet)
    call_apiV2SupportServiceSupportRequestsSupportRequestIdGet
    ;;
    apiV2SupportServiceSupportRequestsSupportRequestIdPut)
    call_apiV2SupportServiceSupportRequestsSupportRequestIdPut
    ;;
    apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet)
    call_apiV2SupportServiceSupportRequestsSupportRequestIdTicketsGet
    ;;
    apiV2SupportServiceSupportTicketPrioritiesCountGet)
    call_apiV2SupportServiceSupportTicketPrioritiesCountGet
    ;;
    apiV2SupportServiceSupportTicketPrioritiesGet)
    call_apiV2SupportServiceSupportTicketPrioritiesGet
    ;;
    apiV2SupportServiceSupportTicketPrioritiesPost)
    call_apiV2SupportServiceSupportTicketPrioritiesPost
    ;;
    apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete)
    call_apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdDelete
    ;;
    apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet)
    call_apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdGet
    ;;
    apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut)
    call_apiV2SupportServiceSupportTicketPrioritiesSupportTicketPriorityIdPut
    ;;
    apiV2SupportServiceSupportTicketTypesCountGet)
    call_apiV2SupportServiceSupportTicketTypesCountGet
    ;;
    apiV2SupportServiceSupportTicketTypesGet)
    call_apiV2SupportServiceSupportTicketTypesGet
    ;;
    apiV2SupportServiceSupportTicketTypesPost)
    call_apiV2SupportServiceSupportTicketTypesPost
    ;;
    apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete)
    call_apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdDelete
    ;;
    apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet)
    call_apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdGet
    ;;
    apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut)
    call_apiV2SupportServiceSupportTicketTypesSupportTicketTypeIdPut
    ;;
    apiV2SupportServiceSupportTicketsCountGet)
    call_apiV2SupportServiceSupportTicketsCountGet
    ;;
    apiV2SupportServiceSupportTicketsGet)
    call_apiV2SupportServiceSupportTicketsGet
    ;;
    apiV2SupportServiceSupportTicketsPost)
    call_apiV2SupportServiceSupportTicketsPost
    ;;
    apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet)
    call_apiV2SupportServiceSupportTicketsSupportTicketIdConversationsGet
    ;;
    apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost)
    call_apiV2SupportServiceSupportTicketsSupportTicketIdConversationsPost
    ;;
    apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete)
    call_apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdDelete
    ;;
    apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet)
    call_apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdGet
    ;;
    apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet)
    call_apiV2SupportServiceSupportTicketsSupportTicketIdConversationsSupportTicketConversationIdMessagesGet
    ;;
    apiV2SupportServiceSupportTicketsSupportTicketIdDelete)
    call_apiV2SupportServiceSupportTicketsSupportTicketIdDelete
    ;;
    apiV2SupportServiceSupportTicketsSupportTicketIdGet)
    call_apiV2SupportServiceSupportTicketsSupportTicketIdGet
    ;;
    apiV2SupportServiceSupportTicketsSupportTicketIdPut)
    call_apiV2SupportServiceSupportTicketsSupportTicketIdPut
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
