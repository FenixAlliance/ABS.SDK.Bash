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
# This is a Bash client for CrmService.
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
operation_parameters_minimum_occurrences["createContactAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["createContactAsync:::api-version"]=0
operation_parameters_minimum_occurrences["createContactAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createContactAsync:::ContactCreateDto"]=0
operation_parameters_minimum_occurrences["deleteContactAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["deleteContactAsync:::contactId"]=1
operation_parameters_minimum_occurrences["deleteContactAsync:::api-version"]=0
operation_parameters_minimum_occurrences["deleteContactAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getBusinessOwnedIndividualAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getBusinessOwnedIndividualAsync:::contactId"]=1
operation_parameters_minimum_occurrences["getBusinessOwnedIndividualAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getBusinessOwnedIndividualAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getBusinessOwnedIndividualsAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getBusinessOwnedIndividualsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getBusinessOwnedIndividualsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getBusinessOwnedIndividualsCountAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getBusinessOwnedIndividualsCountAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getBusinessOwnedIndividualsCountAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getBusinessOwnedOrganizationAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getBusinessOwnedOrganizationAsync:::contactId"]=1
operation_parameters_minimum_occurrences["getBusinessOwnedOrganizationAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getBusinessOwnedOrganizationAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getBusinessOwnedOrganizationsAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getBusinessOwnedOrganizationsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getBusinessOwnedOrganizationsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getBusinessOwnedOrganizationsCountAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getBusinessOwnedOrganizationsCountAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getBusinessOwnedOrganizationsCountAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getContactAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getContactAsync:::contactId"]=1
operation_parameters_minimum_occurrences["getContactAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getContactAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getContactAvatarAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getContactAvatarAsync:::contactId"]=1
operation_parameters_minimum_occurrences["getContactAvatarAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getContactAvatarAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getContactCartAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getContactCartAsync:::contactId"]=1
operation_parameters_minimum_occurrences["getContactCartAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getContactCartAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getContactProfilesAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getContactProfilesAsync:::contactId"]=1
operation_parameters_minimum_occurrences["getContactProfilesAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getContactProfilesAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getContactSocialProfileAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getContactSocialProfileAsync:::contactId"]=1
operation_parameters_minimum_occurrences["getContactSocialProfileAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getContactSocialProfileAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getContactWalletAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getContactWalletAsync:::contactId"]=1
operation_parameters_minimum_occurrences["getContactWalletAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getContactWalletAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getContactsAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getContactsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getContactsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getContactsCountAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getContactsCountAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getContactsCountAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getExtendedBusinessOwnedIndividualsAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getExtendedBusinessOwnedIndividualsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getExtendedBusinessOwnedIndividualsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getExtendedBusinessOwnedOrganizationsAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getExtendedBusinessOwnedOrganizationsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getExtendedBusinessOwnedOrganizationsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getExtendedContactAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getExtendedContactAsync:::contactId"]=1
operation_parameters_minimum_occurrences["getExtendedContactAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getExtendedContactAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getExtendedContactsAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getExtendedContactsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getExtendedContactsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getIndividualRelatedIndividualsAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getIndividualRelatedIndividualsAsync:::contactId"]=1
operation_parameters_minimum_occurrences["getIndividualRelatedIndividualsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getIndividualRelatedIndividualsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getIndividualRelatedOrganizationsAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getIndividualRelatedOrganizationsAsync:::contactId"]=1
operation_parameters_minimum_occurrences["getIndividualRelatedOrganizationsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getIndividualRelatedOrganizationsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getOrganizationRelatedIndividualsAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getOrganizationRelatedIndividualsAsync:::contactId"]=1
operation_parameters_minimum_occurrences["getOrganizationRelatedIndividualsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getOrganizationRelatedIndividualsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getOrganizationRelatedOrganizationsAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getOrganizationRelatedOrganizationsAsync:::contactId"]=1
operation_parameters_minimum_occurrences["getOrganizationRelatedOrganizationsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getOrganizationRelatedOrganizationsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["patchContactAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["patchContactAsync:::contactId"]=1
operation_parameters_minimum_occurrences["patchContactAsync:::api-version"]=0
operation_parameters_minimum_occurrences["patchContactAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["patchContactAsync:::Operation"]=0
operation_parameters_minimum_occurrences["updateContactAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["updateContactAsync:::contactId"]=1
operation_parameters_minimum_occurrences["updateContactAsync:::api-version"]=0
operation_parameters_minimum_occurrences["updateContactAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateContactAsync:::ContactUpdateDto"]=0
operation_parameters_minimum_occurrences["updateContactAvatarAsync:::contactId"]=1
operation_parameters_minimum_occurrences["updateContactAvatarAsync:::tenantId"]=0
operation_parameters_minimum_occurrences["updateContactAvatarAsync:::api-version"]=0
operation_parameters_minimum_occurrences["updateContactAvatarAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateContactAvatarAsync:::avatar"]=0
operation_parameters_minimum_occurrences["upsertTenantOntoAnotherTenantContactListAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["upsertTenantOntoAnotherTenantContactListAsync:::relatedTenantId"]=1
operation_parameters_minimum_occurrences["upsertTenantOntoAnotherTenantContactListAsync:::api-version"]=0
operation_parameters_minimum_occurrences["upsertTenantOntoAnotherTenantContactListAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["upsertUserOntoAnotherTenantContactListAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["upsertUserOntoAnotherTenantContactListAsync:::relatedUserId"]=1
operation_parameters_minimum_occurrences["upsertUserOntoAnotherTenantContactListAsync:::api-version"]=0
operation_parameters_minimum_occurrences["upsertUserOntoAnotherTenantContactListAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2CrmServiceSyncMePost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2CrmServiceSyncMePost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2CrmServiceSyncMePost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2CrmServiceSyncPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2CrmServiceSyncPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2CrmServiceSyncPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2CrmServiceSyncTenantPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2CrmServiceSyncTenantPost:::relatedTenantId"]=1
operation_parameters_minimum_occurrences["apiV2CrmServiceSyncTenantPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2CrmServiceSyncTenantPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2CrmServiceSyncUserPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2CrmServiceSyncUserPost:::relatedUserId"]=1
operation_parameters_minimum_occurrences["apiV2CrmServiceSyncUserPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2CrmServiceSyncUserPost:::x-api-version"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["createContactAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createContactAsync:::api-version"]=0
operation_parameters_maximum_occurrences["createContactAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createContactAsync:::ContactCreateDto"]=0
operation_parameters_maximum_occurrences["deleteContactAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["deleteContactAsync:::contactId"]=0
operation_parameters_maximum_occurrences["deleteContactAsync:::api-version"]=0
operation_parameters_maximum_occurrences["deleteContactAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getBusinessOwnedIndividualAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getBusinessOwnedIndividualAsync:::contactId"]=0
operation_parameters_maximum_occurrences["getBusinessOwnedIndividualAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getBusinessOwnedIndividualAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getBusinessOwnedIndividualsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getBusinessOwnedIndividualsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getBusinessOwnedIndividualsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getBusinessOwnedIndividualsCountAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getBusinessOwnedIndividualsCountAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getBusinessOwnedIndividualsCountAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getBusinessOwnedOrganizationAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getBusinessOwnedOrganizationAsync:::contactId"]=0
operation_parameters_maximum_occurrences["getBusinessOwnedOrganizationAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getBusinessOwnedOrganizationAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getBusinessOwnedOrganizationsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getBusinessOwnedOrganizationsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getBusinessOwnedOrganizationsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getBusinessOwnedOrganizationsCountAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getBusinessOwnedOrganizationsCountAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getBusinessOwnedOrganizationsCountAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getContactAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getContactAsync:::contactId"]=0
operation_parameters_maximum_occurrences["getContactAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getContactAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getContactAvatarAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getContactAvatarAsync:::contactId"]=0
operation_parameters_maximum_occurrences["getContactAvatarAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getContactAvatarAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getContactCartAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getContactCartAsync:::contactId"]=0
operation_parameters_maximum_occurrences["getContactCartAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getContactCartAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getContactProfilesAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getContactProfilesAsync:::contactId"]=0
operation_parameters_maximum_occurrences["getContactProfilesAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getContactProfilesAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getContactSocialProfileAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getContactSocialProfileAsync:::contactId"]=0
operation_parameters_maximum_occurrences["getContactSocialProfileAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getContactSocialProfileAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getContactWalletAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getContactWalletAsync:::contactId"]=0
operation_parameters_maximum_occurrences["getContactWalletAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getContactWalletAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getContactsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getContactsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getContactsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getContactsCountAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getContactsCountAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getContactsCountAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getExtendedBusinessOwnedIndividualsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getExtendedBusinessOwnedIndividualsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getExtendedBusinessOwnedIndividualsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getExtendedBusinessOwnedOrganizationsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getExtendedBusinessOwnedOrganizationsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getExtendedBusinessOwnedOrganizationsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getExtendedContactAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getExtendedContactAsync:::contactId"]=0
operation_parameters_maximum_occurrences["getExtendedContactAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getExtendedContactAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getExtendedContactsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getExtendedContactsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getExtendedContactsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getIndividualRelatedIndividualsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getIndividualRelatedIndividualsAsync:::contactId"]=0
operation_parameters_maximum_occurrences["getIndividualRelatedIndividualsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getIndividualRelatedIndividualsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getIndividualRelatedOrganizationsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getIndividualRelatedOrganizationsAsync:::contactId"]=0
operation_parameters_maximum_occurrences["getIndividualRelatedOrganizationsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getIndividualRelatedOrganizationsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getOrganizationRelatedIndividualsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getOrganizationRelatedIndividualsAsync:::contactId"]=0
operation_parameters_maximum_occurrences["getOrganizationRelatedIndividualsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getOrganizationRelatedIndividualsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getOrganizationRelatedOrganizationsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getOrganizationRelatedOrganizationsAsync:::contactId"]=0
operation_parameters_maximum_occurrences["getOrganizationRelatedOrganizationsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getOrganizationRelatedOrganizationsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["patchContactAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["patchContactAsync:::contactId"]=0
operation_parameters_maximum_occurrences["patchContactAsync:::api-version"]=0
operation_parameters_maximum_occurrences["patchContactAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["patchContactAsync:::Operation"]=0
operation_parameters_maximum_occurrences["updateContactAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["updateContactAsync:::contactId"]=0
operation_parameters_maximum_occurrences["updateContactAsync:::api-version"]=0
operation_parameters_maximum_occurrences["updateContactAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateContactAsync:::ContactUpdateDto"]=0
operation_parameters_maximum_occurrences["updateContactAvatarAsync:::contactId"]=0
operation_parameters_maximum_occurrences["updateContactAvatarAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["updateContactAvatarAsync:::api-version"]=0
operation_parameters_maximum_occurrences["updateContactAvatarAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateContactAvatarAsync:::avatar"]=0
operation_parameters_maximum_occurrences["upsertTenantOntoAnotherTenantContactListAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["upsertTenantOntoAnotherTenantContactListAsync:::relatedTenantId"]=0
operation_parameters_maximum_occurrences["upsertTenantOntoAnotherTenantContactListAsync:::api-version"]=0
operation_parameters_maximum_occurrences["upsertTenantOntoAnotherTenantContactListAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["upsertUserOntoAnotherTenantContactListAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["upsertUserOntoAnotherTenantContactListAsync:::relatedUserId"]=0
operation_parameters_maximum_occurrences["upsertUserOntoAnotherTenantContactListAsync:::api-version"]=0
operation_parameters_maximum_occurrences["upsertUserOntoAnotherTenantContactListAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2CrmServiceSyncMePost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2CrmServiceSyncMePost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2CrmServiceSyncMePost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2CrmServiceSyncPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2CrmServiceSyncPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2CrmServiceSyncPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2CrmServiceSyncTenantPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2CrmServiceSyncTenantPost:::relatedTenantId"]=0
operation_parameters_maximum_occurrences["apiV2CrmServiceSyncTenantPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2CrmServiceSyncTenantPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2CrmServiceSyncUserPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2CrmServiceSyncUserPost:::relatedUserId"]=0
operation_parameters_maximum_occurrences["apiV2CrmServiceSyncUserPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2CrmServiceSyncUserPost:::x-api-version"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["createContactAsync:::tenantId"]=""
operation_parameters_collection_type["createContactAsync:::api-version"]=""
operation_parameters_collection_type["createContactAsync:::x-api-version"]=""
operation_parameters_collection_type["createContactAsync:::ContactCreateDto"]=""
operation_parameters_collection_type["deleteContactAsync:::tenantId"]=""
operation_parameters_collection_type["deleteContactAsync:::contactId"]=""
operation_parameters_collection_type["deleteContactAsync:::api-version"]=""
operation_parameters_collection_type["deleteContactAsync:::x-api-version"]=""
operation_parameters_collection_type["getBusinessOwnedIndividualAsync:::tenantId"]=""
operation_parameters_collection_type["getBusinessOwnedIndividualAsync:::contactId"]=""
operation_parameters_collection_type["getBusinessOwnedIndividualAsync:::api-version"]=""
operation_parameters_collection_type["getBusinessOwnedIndividualAsync:::x-api-version"]=""
operation_parameters_collection_type["getBusinessOwnedIndividualsAsync:::tenantId"]=""
operation_parameters_collection_type["getBusinessOwnedIndividualsAsync:::api-version"]=""
operation_parameters_collection_type["getBusinessOwnedIndividualsAsync:::x-api-version"]=""
operation_parameters_collection_type["getBusinessOwnedIndividualsCountAsync:::tenantId"]=""
operation_parameters_collection_type["getBusinessOwnedIndividualsCountAsync:::api-version"]=""
operation_parameters_collection_type["getBusinessOwnedIndividualsCountAsync:::x-api-version"]=""
operation_parameters_collection_type["getBusinessOwnedOrganizationAsync:::tenantId"]=""
operation_parameters_collection_type["getBusinessOwnedOrganizationAsync:::contactId"]=""
operation_parameters_collection_type["getBusinessOwnedOrganizationAsync:::api-version"]=""
operation_parameters_collection_type["getBusinessOwnedOrganizationAsync:::x-api-version"]=""
operation_parameters_collection_type["getBusinessOwnedOrganizationsAsync:::tenantId"]=""
operation_parameters_collection_type["getBusinessOwnedOrganizationsAsync:::api-version"]=""
operation_parameters_collection_type["getBusinessOwnedOrganizationsAsync:::x-api-version"]=""
operation_parameters_collection_type["getBusinessOwnedOrganizationsCountAsync:::tenantId"]=""
operation_parameters_collection_type["getBusinessOwnedOrganizationsCountAsync:::api-version"]=""
operation_parameters_collection_type["getBusinessOwnedOrganizationsCountAsync:::x-api-version"]=""
operation_parameters_collection_type["getContactAsync:::tenantId"]=""
operation_parameters_collection_type["getContactAsync:::contactId"]=""
operation_parameters_collection_type["getContactAsync:::api-version"]=""
operation_parameters_collection_type["getContactAsync:::x-api-version"]=""
operation_parameters_collection_type["getContactAvatarAsync:::tenantId"]=""
operation_parameters_collection_type["getContactAvatarAsync:::contactId"]=""
operation_parameters_collection_type["getContactAvatarAsync:::api-version"]=""
operation_parameters_collection_type["getContactAvatarAsync:::x-api-version"]=""
operation_parameters_collection_type["getContactCartAsync:::tenantId"]=""
operation_parameters_collection_type["getContactCartAsync:::contactId"]=""
operation_parameters_collection_type["getContactCartAsync:::api-version"]=""
operation_parameters_collection_type["getContactCartAsync:::x-api-version"]=""
operation_parameters_collection_type["getContactProfilesAsync:::tenantId"]=""
operation_parameters_collection_type["getContactProfilesAsync:::contactId"]=""
operation_parameters_collection_type["getContactProfilesAsync:::api-version"]=""
operation_parameters_collection_type["getContactProfilesAsync:::x-api-version"]=""
operation_parameters_collection_type["getContactSocialProfileAsync:::tenantId"]=""
operation_parameters_collection_type["getContactSocialProfileAsync:::contactId"]=""
operation_parameters_collection_type["getContactSocialProfileAsync:::api-version"]=""
operation_parameters_collection_type["getContactSocialProfileAsync:::x-api-version"]=""
operation_parameters_collection_type["getContactWalletAsync:::tenantId"]=""
operation_parameters_collection_type["getContactWalletAsync:::contactId"]=""
operation_parameters_collection_type["getContactWalletAsync:::api-version"]=""
operation_parameters_collection_type["getContactWalletAsync:::x-api-version"]=""
operation_parameters_collection_type["getContactsAsync:::tenantId"]=""
operation_parameters_collection_type["getContactsAsync:::api-version"]=""
operation_parameters_collection_type["getContactsAsync:::x-api-version"]=""
operation_parameters_collection_type["getContactsCountAsync:::tenantId"]=""
operation_parameters_collection_type["getContactsCountAsync:::api-version"]=""
operation_parameters_collection_type["getContactsCountAsync:::x-api-version"]=""
operation_parameters_collection_type["getExtendedBusinessOwnedIndividualsAsync:::tenantId"]=""
operation_parameters_collection_type["getExtendedBusinessOwnedIndividualsAsync:::api-version"]=""
operation_parameters_collection_type["getExtendedBusinessOwnedIndividualsAsync:::x-api-version"]=""
operation_parameters_collection_type["getExtendedBusinessOwnedOrganizationsAsync:::tenantId"]=""
operation_parameters_collection_type["getExtendedBusinessOwnedOrganizationsAsync:::api-version"]=""
operation_parameters_collection_type["getExtendedBusinessOwnedOrganizationsAsync:::x-api-version"]=""
operation_parameters_collection_type["getExtendedContactAsync:::tenantId"]=""
operation_parameters_collection_type["getExtendedContactAsync:::contactId"]=""
operation_parameters_collection_type["getExtendedContactAsync:::api-version"]=""
operation_parameters_collection_type["getExtendedContactAsync:::x-api-version"]=""
operation_parameters_collection_type["getExtendedContactsAsync:::tenantId"]=""
operation_parameters_collection_type["getExtendedContactsAsync:::api-version"]=""
operation_parameters_collection_type["getExtendedContactsAsync:::x-api-version"]=""
operation_parameters_collection_type["getIndividualRelatedIndividualsAsync:::tenantId"]=""
operation_parameters_collection_type["getIndividualRelatedIndividualsAsync:::contactId"]=""
operation_parameters_collection_type["getIndividualRelatedIndividualsAsync:::api-version"]=""
operation_parameters_collection_type["getIndividualRelatedIndividualsAsync:::x-api-version"]=""
operation_parameters_collection_type["getIndividualRelatedOrganizationsAsync:::tenantId"]=""
operation_parameters_collection_type["getIndividualRelatedOrganizationsAsync:::contactId"]=""
operation_parameters_collection_type["getIndividualRelatedOrganizationsAsync:::api-version"]=""
operation_parameters_collection_type["getIndividualRelatedOrganizationsAsync:::x-api-version"]=""
operation_parameters_collection_type["getOrganizationRelatedIndividualsAsync:::tenantId"]=""
operation_parameters_collection_type["getOrganizationRelatedIndividualsAsync:::contactId"]=""
operation_parameters_collection_type["getOrganizationRelatedIndividualsAsync:::api-version"]=""
operation_parameters_collection_type["getOrganizationRelatedIndividualsAsync:::x-api-version"]=""
operation_parameters_collection_type["getOrganizationRelatedOrganizationsAsync:::tenantId"]=""
operation_parameters_collection_type["getOrganizationRelatedOrganizationsAsync:::contactId"]=""
operation_parameters_collection_type["getOrganizationRelatedOrganizationsAsync:::api-version"]=""
operation_parameters_collection_type["getOrganizationRelatedOrganizationsAsync:::x-api-version"]=""
operation_parameters_collection_type["patchContactAsync:::tenantId"]=""
operation_parameters_collection_type["patchContactAsync:::contactId"]=""
operation_parameters_collection_type["patchContactAsync:::api-version"]=""
operation_parameters_collection_type["patchContactAsync:::x-api-version"]=""
operation_parameters_collection_type["patchContactAsync:::Operation"]=
operation_parameters_collection_type["updateContactAsync:::tenantId"]=""
operation_parameters_collection_type["updateContactAsync:::contactId"]=""
operation_parameters_collection_type["updateContactAsync:::api-version"]=""
operation_parameters_collection_type["updateContactAsync:::x-api-version"]=""
operation_parameters_collection_type["updateContactAsync:::ContactUpdateDto"]=""
operation_parameters_collection_type["updateContactAvatarAsync:::contactId"]=""
operation_parameters_collection_type["updateContactAvatarAsync:::tenantId"]=""
operation_parameters_collection_type["updateContactAvatarAsync:::api-version"]=""
operation_parameters_collection_type["updateContactAvatarAsync:::x-api-version"]=""
operation_parameters_collection_type["updateContactAvatarAsync:::avatar"]=""
operation_parameters_collection_type["upsertTenantOntoAnotherTenantContactListAsync:::tenantId"]=""
operation_parameters_collection_type["upsertTenantOntoAnotherTenantContactListAsync:::relatedTenantId"]=""
operation_parameters_collection_type["upsertTenantOntoAnotherTenantContactListAsync:::api-version"]=""
operation_parameters_collection_type["upsertTenantOntoAnotherTenantContactListAsync:::x-api-version"]=""
operation_parameters_collection_type["upsertUserOntoAnotherTenantContactListAsync:::tenantId"]=""
operation_parameters_collection_type["upsertUserOntoAnotherTenantContactListAsync:::relatedUserId"]=""
operation_parameters_collection_type["upsertUserOntoAnotherTenantContactListAsync:::api-version"]=""
operation_parameters_collection_type["upsertUserOntoAnotherTenantContactListAsync:::x-api-version"]=""
operation_parameters_collection_type["apiV2CrmServiceSyncMePost:::tenantId"]=""
operation_parameters_collection_type["apiV2CrmServiceSyncMePost:::api-version"]=""
operation_parameters_collection_type["apiV2CrmServiceSyncMePost:::x-api-version"]=""
operation_parameters_collection_type["apiV2CrmServiceSyncPost:::tenantId"]=""
operation_parameters_collection_type["apiV2CrmServiceSyncPost:::api-version"]=""
operation_parameters_collection_type["apiV2CrmServiceSyncPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2CrmServiceSyncTenantPost:::tenantId"]=""
operation_parameters_collection_type["apiV2CrmServiceSyncTenantPost:::relatedTenantId"]=""
operation_parameters_collection_type["apiV2CrmServiceSyncTenantPost:::api-version"]=""
operation_parameters_collection_type["apiV2CrmServiceSyncTenantPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2CrmServiceSyncUserPost:::tenantId"]=""
operation_parameters_collection_type["apiV2CrmServiceSyncUserPost:::relatedUserId"]=""
operation_parameters_collection_type["apiV2CrmServiceSyncUserPost:::api-version"]=""
operation_parameters_collection_type["apiV2CrmServiceSyncUserPost:::x-api-version"]=""


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

${BOLD}${WHITE}CrmService command line client (API version 2.0.1.4089)${OFF}

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
    echo -e "${BOLD}${WHITE}[contacts]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}createContactAsync${OFF};Create a new contact (AUTH)
  ${CYAN}deleteContactAsync${OFF};Delete a contact (AUTH)
  ${CYAN}getBusinessOwnedIndividualAsync${OFF};Get a Contact of type Individual by ID (AUTH)
  ${CYAN}getBusinessOwnedIndividualsAsync${OFF};Get all contacts of type individual (AUTH)
  ${CYAN}getBusinessOwnedIndividualsCountAsync${OFF};Get all contacts of type individual count (AUTH)
  ${CYAN}getBusinessOwnedOrganizationAsync${OFF};Get a Contact of type Organization by ID (AUTH)
  ${CYAN}getBusinessOwnedOrganizationsAsync${OFF};Get all contacts of type organization (AUTH)
  ${CYAN}getBusinessOwnedOrganizationsCountAsync${OFF};Get all contacts of type organization count (AUTH)
  ${CYAN}getContactAsync${OFF};Get a contact by ID (AUTH)
  ${CYAN}getContactAvatarAsync${OFF};Get a contact's avatar (AUTH)
  ${CYAN}getContactCartAsync${OFF};Get a contact's cart (AUTH)
  ${CYAN}getContactProfilesAsync${OFF};Get a contact's social profiles (AUTH)
  ${CYAN}getContactSocialProfileAsync${OFF};Get a contact's social profile (AUTH)
  ${CYAN}getContactWalletAsync${OFF};Get a contact's wallet (AUTH)
  ${CYAN}getContactsAsync${OFF};Get all business owned contacts (AUTH)
  ${CYAN}getContactsCountAsync${OFF};Get all business owned contacts count (AUTH)
  ${CYAN}getExtendedBusinessOwnedIndividualsAsync${OFF};Get all contacts of type individual (AUTH)
  ${CYAN}getExtendedBusinessOwnedOrganizationsAsync${OFF};Get all contacts of type organization (AUTH)
  ${CYAN}getExtendedContactAsync${OFF};Get a contact by ID (AUTH)
  ${CYAN}getExtendedContactsAsync${OFF};Get all business owned contacts (AUTH)
  ${CYAN}getIndividualRelatedIndividualsAsync${OFF};Get individual related individuals (AUTH)
  ${CYAN}getIndividualRelatedOrganizationsAsync${OFF};Get individual related organizations (AUTH)
  ${CYAN}getOrganizationRelatedIndividualsAsync${OFF};Get organization related individuals (AUTH)
  ${CYAN}getOrganizationRelatedOrganizationsAsync${OFF};Get organization related organizations (AUTH)
  ${CYAN}patchContactAsync${OFF};Patch a contact (AUTH)
  ${CYAN}updateContactAsync${OFF};Update a contact (AUTH)
  ${CYAN}updateContactAvatarAsync${OFF};Update a contact's avatar (AUTH)
  ${CYAN}upsertTenantOntoAnotherTenantContactListAsync${OFF};Upsert a tenant onto another tenant's contact list (AUTH)
  ${CYAN}upsertUserOntoAnotherTenantContactListAsync${OFF};Upsert a user onto a tenant's contact list (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[sync]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2CrmServiceSyncMePost${OFF}; (AUTH)
  ${CYAN}apiV2CrmServiceSyncPost${OFF}; (AUTH)
  ${CYAN}apiV2CrmServiceSyncTenantPost${OFF}; (AUTH)
  ${CYAN}apiV2CrmServiceSyncUserPost${OFF}; (AUTH)
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
    echo -e "${BOLD}${WHITE}CrmService command line client (API version 2.0.1.4089)${OFF}"
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
    echo -e "${BOLD}CrmService command line client (API version 2.0.1.4089)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for createContactAsync operation
#
##############################################################################
print_createContactAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createContactAsync - Create a new contact${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Create a new contact" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for deleteContactAsync operation
#
##############################################################################
print_deleteContactAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteContactAsync - Delete a contact${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Delete a contact" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}contactId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: contactId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getBusinessOwnedIndividualAsync operation
#
##############################################################################
print_getBusinessOwnedIndividualAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBusinessOwnedIndividualAsync - Get a Contact of type Individual by ID${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a Contact of type Individual by ID" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}contactId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: contactId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getBusinessOwnedIndividualsAsync operation
#
##############################################################################
print_getBusinessOwnedIndividualsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBusinessOwnedIndividualsAsync - Get all contacts of type individual${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get all contacts of type individual" | paste -sd' ' | fold -sw 80
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
# Print help for getBusinessOwnedIndividualsCountAsync operation
#
##############################################################################
print_getBusinessOwnedIndividualsCountAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBusinessOwnedIndividualsCountAsync - Get all contacts of type individual count${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get all contacts of type individual count" | paste -sd' ' | fold -sw 80
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
# Print help for getBusinessOwnedOrganizationAsync operation
#
##############################################################################
print_getBusinessOwnedOrganizationAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBusinessOwnedOrganizationAsync - Get a Contact of type Organization by ID${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a Contact of type Organization by ID" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}contactId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: contactId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getBusinessOwnedOrganizationsAsync operation
#
##############################################################################
print_getBusinessOwnedOrganizationsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBusinessOwnedOrganizationsAsync - Get all contacts of type organization${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get all contacts of type organization" | paste -sd' ' | fold -sw 80
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
# Print help for getBusinessOwnedOrganizationsCountAsync operation
#
##############################################################################
print_getBusinessOwnedOrganizationsCountAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBusinessOwnedOrganizationsCountAsync - Get all contacts of type organization count${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get all contacts of type organization count" | paste -sd' ' | fold -sw 80
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
# Print help for getContactAsync operation
#
##############################################################################
print_getContactAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getContactAsync - Get a contact by ID${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a contact by ID" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}contactId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: contactId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getContactAvatarAsync operation
#
##############################################################################
print_getContactAvatarAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getContactAvatarAsync - Get a contact's avatar${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a contact's avatar" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}contactId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: contactId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getContactCartAsync operation
#
##############################################################################
print_getContactCartAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getContactCartAsync - Get a contact's cart${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a contact's cart" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}contactId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: contactId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getContactProfilesAsync operation
#
##############################################################################
print_getContactProfilesAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getContactProfilesAsync - Get a contact's social profiles${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a contact's social profiles" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}contactId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: contactId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getContactSocialProfileAsync operation
#
##############################################################################
print_getContactSocialProfileAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getContactSocialProfileAsync - Get a contact's social profile${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a contact's social profile" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}contactId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: contactId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getContactWalletAsync operation
#
##############################################################################
print_getContactWalletAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getContactWalletAsync - Get a contact's wallet${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a contact's wallet" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}contactId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: contactId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getContactsAsync operation
#
##############################################################################
print_getContactsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getContactsAsync - Get all business owned contacts${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get all business owned contacts" | paste -sd' ' | fold -sw 80
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
# Print help for getContactsCountAsync operation
#
##############################################################################
print_getContactsCountAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getContactsCountAsync - Get all business owned contacts count${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get all business owned contacts count" | paste -sd' ' | fold -sw 80
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
# Print help for getExtendedBusinessOwnedIndividualsAsync operation
#
##############################################################################
print_getExtendedBusinessOwnedIndividualsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getExtendedBusinessOwnedIndividualsAsync - Get all contacts of type individual${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get all contacts of type individual" | paste -sd' ' | fold -sw 80
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
# Print help for getExtendedBusinessOwnedOrganizationsAsync operation
#
##############################################################################
print_getExtendedBusinessOwnedOrganizationsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getExtendedBusinessOwnedOrganizationsAsync - Get all contacts of type organization${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get all contacts of type organization" | paste -sd' ' | fold -sw 80
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
# Print help for getExtendedContactAsync operation
#
##############################################################################
print_getExtendedContactAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getExtendedContactAsync - Get a contact by ID${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a contact by ID" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}contactId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: contactId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getExtendedContactsAsync operation
#
##############################################################################
print_getExtendedContactsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getExtendedContactsAsync - Get all business owned contacts${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get all business owned contacts" | paste -sd' ' | fold -sw 80
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
# Print help for getIndividualRelatedIndividualsAsync operation
#
##############################################################################
print_getIndividualRelatedIndividualsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getIndividualRelatedIndividualsAsync - Get individual related individuals${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get individual related individuals" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}contactId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: contactId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getIndividualRelatedOrganizationsAsync operation
#
##############################################################################
print_getIndividualRelatedOrganizationsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getIndividualRelatedOrganizationsAsync - Get individual related organizations${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get individual related organizations" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}contactId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: contactId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getOrganizationRelatedIndividualsAsync operation
#
##############################################################################
print_getOrganizationRelatedIndividualsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getOrganizationRelatedIndividualsAsync - Get organization related individuals${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get organization related individuals" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}contactId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: contactId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getOrganizationRelatedOrganizationsAsync operation
#
##############################################################################
print_getOrganizationRelatedOrganizationsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getOrganizationRelatedOrganizationsAsync - Get organization related organizations${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get organization related organizations" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}contactId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: contactId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for patchContactAsync operation
#
##############################################################################
print_patchContactAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}patchContactAsync - Patch a contact${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Patch a contact" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}contactId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: contactId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for updateContactAsync operation
#
##############################################################################
print_updateContactAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateContactAsync - Update a contact${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Update a contact" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}contactId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: contactId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for updateContactAvatarAsync operation
#
##############################################################################
print_updateContactAvatarAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateContactAvatarAsync - Update a contact's avatar${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Update a contact's avatar" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}contactId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: contactId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for upsertTenantOntoAnotherTenantContactListAsync operation
#
##############################################################################
print_upsertTenantOntoAnotherTenantContactListAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}upsertTenantOntoAnotherTenantContactListAsync - Upsert a tenant onto another tenant's contact list${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Upsert a tenant onto another tenant's contact list" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}relatedTenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: relatedTenantId=value${OFF}" \
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
# Print help for upsertUserOntoAnotherTenantContactListAsync operation
#
##############################################################################
print_upsertUserOntoAnotherTenantContactListAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}upsertUserOntoAnotherTenantContactListAsync - Upsert a user onto a tenant's contact list${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Upsert a user onto a tenant's contact list" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}relatedUserId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: relatedUserId=value${OFF}" \
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
# Print help for apiV2CrmServiceSyncMePost operation
#
##############################################################################
print_apiV2CrmServiceSyncMePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2CrmServiceSyncMePost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2CrmServiceSyncPost operation
#
##############################################################################
print_apiV2CrmServiceSyncPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2CrmServiceSyncPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2CrmServiceSyncTenantPost operation
#
##############################################################################
print_apiV2CrmServiceSyncTenantPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2CrmServiceSyncTenantPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}relatedTenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: relatedTenantId=value${OFF}" \
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
# Print help for apiV2CrmServiceSyncUserPost operation
#
##############################################################################
print_apiV2CrmServiceSyncUserPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2CrmServiceSyncUserPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}relatedUserId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: relatedUserId=value${OFF}" \
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
# Call createContactAsync operation
#
##############################################################################
call_createContactAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts" path_parameter_names query_parameter_names); then
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
# Call deleteContactAsync operation
#
##############################################################################
call_deleteContactAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(contactId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/{contactId}" path_parameter_names query_parameter_names); then
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
# Call getBusinessOwnedIndividualAsync operation
#
##############################################################################
call_getBusinessOwnedIndividualAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(contactId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/Individuals/{contactId}" path_parameter_names query_parameter_names); then
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
# Call getBusinessOwnedIndividualsAsync operation
#
##############################################################################
call_getBusinessOwnedIndividualsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/Individuals" path_parameter_names query_parameter_names); then
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
# Call getBusinessOwnedIndividualsCountAsync operation
#
##############################################################################
call_getBusinessOwnedIndividualsCountAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/Individuals/Count" path_parameter_names query_parameter_names); then
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
# Call getBusinessOwnedOrganizationAsync operation
#
##############################################################################
call_getBusinessOwnedOrganizationAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(contactId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/Organizations/{contactId}" path_parameter_names query_parameter_names); then
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
# Call getBusinessOwnedOrganizationsAsync operation
#
##############################################################################
call_getBusinessOwnedOrganizationsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/Organizations" path_parameter_names query_parameter_names); then
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
# Call getBusinessOwnedOrganizationsCountAsync operation
#
##############################################################################
call_getBusinessOwnedOrganizationsCountAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/Organizations/Count" path_parameter_names query_parameter_names); then
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
# Call getContactAsync operation
#
##############################################################################
call_getContactAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(contactId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/{contactId}" path_parameter_names query_parameter_names); then
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
# Call getContactAvatarAsync operation
#
##############################################################################
call_getContactAvatarAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(contactId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/{contactId}/Avatar" path_parameter_names query_parameter_names); then
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
# Call getContactCartAsync operation
#
##############################################################################
call_getContactCartAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(contactId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/{contactId}/Cart" path_parameter_names query_parameter_names); then
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
# Call getContactProfilesAsync operation
#
##############################################################################
call_getContactProfilesAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(contactId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/{contactId}/Profiles" path_parameter_names query_parameter_names); then
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
# Call getContactSocialProfileAsync operation
#
##############################################################################
call_getContactSocialProfileAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(contactId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/{contactId}/SocialProfile" path_parameter_names query_parameter_names); then
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
# Call getContactWalletAsync operation
#
##############################################################################
call_getContactWalletAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(contactId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/{contactId}/Wallet" path_parameter_names query_parameter_names); then
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
# Call getContactsAsync operation
#
##############################################################################
call_getContactsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts" path_parameter_names query_parameter_names); then
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
# Call getContactsCountAsync operation
#
##############################################################################
call_getContactsCountAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/Count" path_parameter_names query_parameter_names); then
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
# Call getExtendedBusinessOwnedIndividualsAsync operation
#
##############################################################################
call_getExtendedBusinessOwnedIndividualsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/Individuals/Extended" path_parameter_names query_parameter_names); then
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
# Call getExtendedBusinessOwnedOrganizationsAsync operation
#
##############################################################################
call_getExtendedBusinessOwnedOrganizationsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/Organizations/Extended" path_parameter_names query_parameter_names); then
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
# Call getExtendedContactAsync operation
#
##############################################################################
call_getExtendedContactAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(contactId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/{contactId}/Extended" path_parameter_names query_parameter_names); then
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
# Call getExtendedContactsAsync operation
#
##############################################################################
call_getExtendedContactsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/Extended" path_parameter_names query_parameter_names); then
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
# Call getIndividualRelatedIndividualsAsync operation
#
##############################################################################
call_getIndividualRelatedIndividualsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(contactId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/Individuals/{contactId}/Individuals" path_parameter_names query_parameter_names); then
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
# Call getIndividualRelatedOrganizationsAsync operation
#
##############################################################################
call_getIndividualRelatedOrganizationsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(contactId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/Individuals/{contactId}/Organizations" path_parameter_names query_parameter_names); then
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
# Call getOrganizationRelatedIndividualsAsync operation
#
##############################################################################
call_getOrganizationRelatedIndividualsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(contactId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/Organizations/{contactId}/Individuals" path_parameter_names query_parameter_names); then
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
# Call getOrganizationRelatedOrganizationsAsync operation
#
##############################################################################
call_getOrganizationRelatedOrganizationsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(contactId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/Organizations/{contactId}/Organizations" path_parameter_names query_parameter_names); then
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
# Call patchContactAsync operation
#
##############################################################################
call_patchContactAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(contactId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/{contactId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
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
# Call updateContactAsync operation
#
##############################################################################
call_updateContactAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(contactId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/{contactId}" path_parameter_names query_parameter_names); then
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
# Call updateContactAvatarAsync operation
#
##############################################################################
call_updateContactAvatarAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(contactId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/{contactId}/Avatar" path_parameter_names query_parameter_names); then
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
    body_form_urlencoded=$(body_parameters_to_form_urlencoded)
    if [[ "$print_curl" = true ]]; then
        echo "curl ${body_form_urlencoded} ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${body_form_urlencoded} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call upsertTenantOntoAnotherTenantContactListAsync operation
#
##############################################################################
call_upsertTenantOntoAnotherTenantContactListAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId relatedTenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/Organizations/Upsert" path_parameter_names query_parameter_names); then
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
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call upsertUserOntoAnotherTenantContactListAsync operation
#
##############################################################################
call_upsertUserOntoAnotherTenantContactListAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId relatedUserId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Contacts/Individuals/Upsert" path_parameter_names query_parameter_names); then
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
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2CrmServiceSyncMePost operation
#
##############################################################################
call_apiV2CrmServiceSyncMePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Sync/Me" path_parameter_names query_parameter_names); then
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
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2CrmServiceSyncPost operation
#
##############################################################################
call_apiV2CrmServiceSyncPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Sync" path_parameter_names query_parameter_names); then
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
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2CrmServiceSyncTenantPost operation
#
##############################################################################
call_apiV2CrmServiceSyncTenantPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId relatedTenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Sync/Tenant" path_parameter_names query_parameter_names); then
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
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2CrmServiceSyncUserPost operation
#
##############################################################################
call_apiV2CrmServiceSyncUserPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId relatedUserId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/CrmService/Sync/User" path_parameter_names query_parameter_names); then
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
    createContactAsync)
    operation="createContactAsync"
    ;;
    deleteContactAsync)
    operation="deleteContactAsync"
    ;;
    getBusinessOwnedIndividualAsync)
    operation="getBusinessOwnedIndividualAsync"
    ;;
    getBusinessOwnedIndividualsAsync)
    operation="getBusinessOwnedIndividualsAsync"
    ;;
    getBusinessOwnedIndividualsCountAsync)
    operation="getBusinessOwnedIndividualsCountAsync"
    ;;
    getBusinessOwnedOrganizationAsync)
    operation="getBusinessOwnedOrganizationAsync"
    ;;
    getBusinessOwnedOrganizationsAsync)
    operation="getBusinessOwnedOrganizationsAsync"
    ;;
    getBusinessOwnedOrganizationsCountAsync)
    operation="getBusinessOwnedOrganizationsCountAsync"
    ;;
    getContactAsync)
    operation="getContactAsync"
    ;;
    getContactAvatarAsync)
    operation="getContactAvatarAsync"
    ;;
    getContactCartAsync)
    operation="getContactCartAsync"
    ;;
    getContactProfilesAsync)
    operation="getContactProfilesAsync"
    ;;
    getContactSocialProfileAsync)
    operation="getContactSocialProfileAsync"
    ;;
    getContactWalletAsync)
    operation="getContactWalletAsync"
    ;;
    getContactsAsync)
    operation="getContactsAsync"
    ;;
    getContactsCountAsync)
    operation="getContactsCountAsync"
    ;;
    getExtendedBusinessOwnedIndividualsAsync)
    operation="getExtendedBusinessOwnedIndividualsAsync"
    ;;
    getExtendedBusinessOwnedOrganizationsAsync)
    operation="getExtendedBusinessOwnedOrganizationsAsync"
    ;;
    getExtendedContactAsync)
    operation="getExtendedContactAsync"
    ;;
    getExtendedContactsAsync)
    operation="getExtendedContactsAsync"
    ;;
    getIndividualRelatedIndividualsAsync)
    operation="getIndividualRelatedIndividualsAsync"
    ;;
    getIndividualRelatedOrganizationsAsync)
    operation="getIndividualRelatedOrganizationsAsync"
    ;;
    getOrganizationRelatedIndividualsAsync)
    operation="getOrganizationRelatedIndividualsAsync"
    ;;
    getOrganizationRelatedOrganizationsAsync)
    operation="getOrganizationRelatedOrganizationsAsync"
    ;;
    patchContactAsync)
    operation="patchContactAsync"
    ;;
    updateContactAsync)
    operation="updateContactAsync"
    ;;
    updateContactAvatarAsync)
    operation="updateContactAvatarAsync"
    ;;
    upsertTenantOntoAnotherTenantContactListAsync)
    operation="upsertTenantOntoAnotherTenantContactListAsync"
    ;;
    upsertUserOntoAnotherTenantContactListAsync)
    operation="upsertUserOntoAnotherTenantContactListAsync"
    ;;
    apiV2CrmServiceSyncMePost)
    operation="apiV2CrmServiceSyncMePost"
    ;;
    apiV2CrmServiceSyncPost)
    operation="apiV2CrmServiceSyncPost"
    ;;
    apiV2CrmServiceSyncTenantPost)
    operation="apiV2CrmServiceSyncTenantPost"
    ;;
    apiV2CrmServiceSyncUserPost)
    operation="apiV2CrmServiceSyncUserPost"
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
    createContactAsync)
    call_createContactAsync
    ;;
    deleteContactAsync)
    call_deleteContactAsync
    ;;
    getBusinessOwnedIndividualAsync)
    call_getBusinessOwnedIndividualAsync
    ;;
    getBusinessOwnedIndividualsAsync)
    call_getBusinessOwnedIndividualsAsync
    ;;
    getBusinessOwnedIndividualsCountAsync)
    call_getBusinessOwnedIndividualsCountAsync
    ;;
    getBusinessOwnedOrganizationAsync)
    call_getBusinessOwnedOrganizationAsync
    ;;
    getBusinessOwnedOrganizationsAsync)
    call_getBusinessOwnedOrganizationsAsync
    ;;
    getBusinessOwnedOrganizationsCountAsync)
    call_getBusinessOwnedOrganizationsCountAsync
    ;;
    getContactAsync)
    call_getContactAsync
    ;;
    getContactAvatarAsync)
    call_getContactAvatarAsync
    ;;
    getContactCartAsync)
    call_getContactCartAsync
    ;;
    getContactProfilesAsync)
    call_getContactProfilesAsync
    ;;
    getContactSocialProfileAsync)
    call_getContactSocialProfileAsync
    ;;
    getContactWalletAsync)
    call_getContactWalletAsync
    ;;
    getContactsAsync)
    call_getContactsAsync
    ;;
    getContactsCountAsync)
    call_getContactsCountAsync
    ;;
    getExtendedBusinessOwnedIndividualsAsync)
    call_getExtendedBusinessOwnedIndividualsAsync
    ;;
    getExtendedBusinessOwnedOrganizationsAsync)
    call_getExtendedBusinessOwnedOrganizationsAsync
    ;;
    getExtendedContactAsync)
    call_getExtendedContactAsync
    ;;
    getExtendedContactsAsync)
    call_getExtendedContactsAsync
    ;;
    getIndividualRelatedIndividualsAsync)
    call_getIndividualRelatedIndividualsAsync
    ;;
    getIndividualRelatedOrganizationsAsync)
    call_getIndividualRelatedOrganizationsAsync
    ;;
    getOrganizationRelatedIndividualsAsync)
    call_getOrganizationRelatedIndividualsAsync
    ;;
    getOrganizationRelatedOrganizationsAsync)
    call_getOrganizationRelatedOrganizationsAsync
    ;;
    patchContactAsync)
    call_patchContactAsync
    ;;
    updateContactAsync)
    call_updateContactAsync
    ;;
    updateContactAvatarAsync)
    call_updateContactAvatarAsync
    ;;
    upsertTenantOntoAnotherTenantContactListAsync)
    call_upsertTenantOntoAnotherTenantContactListAsync
    ;;
    upsertUserOntoAnotherTenantContactListAsync)
    call_upsertUserOntoAnotherTenantContactListAsync
    ;;
    apiV2CrmServiceSyncMePost)
    call_apiV2CrmServiceSyncMePost
    ;;
    apiV2CrmServiceSyncPost)
    call_apiV2CrmServiceSyncPost
    ;;
    apiV2CrmServiceSyncTenantPost)
    call_apiV2CrmServiceSyncTenantPost
    ;;
    apiV2CrmServiceSyncUserPost)
    call_apiV2CrmServiceSyncUserPost
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
