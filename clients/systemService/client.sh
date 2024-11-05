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
# This is a Bash client for SystemService.
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
operation_parameters_minimum_occurrences["apiV2SystemServiceAntiforgeryGetAndStoreTokensGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceAntiforgeryGetAndStoreTokensGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceAntiforgeryIsRequestValidGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceAntiforgeryIsRequestValidGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiLicensingLicensesGeneratePost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiLicensingLicensesGeneratePost:::api-version"]=0
operation_parameters_minimum_occurrences["apiLicensingLicensesGeneratePost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiLicensingLicensesGeneratePost:::LicenseKeyRequest"]=0
operation_parameters_minimum_occurrences["apiLicensingLicensesValidateAttributesGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiLicensingLicensesValidateAttributesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiLicensingLicensesValidateAttributesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiLicensingLicensesValidateAttributesGet:::LicenseKey"]=0
operation_parameters_minimum_occurrences["apiLicensingLicensesValidateErrorsGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiLicensingLicensesValidateErrorsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiLicensingLicensesValidateErrorsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiLicensingLicensesValidateErrorsGet:::LicenseKey"]=0
operation_parameters_minimum_occurrences["apiLicensingLicensesValidateGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiLicensingLicensesValidateGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiLicensingLicensesValidateGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiLicensingLicensesValidateGet:::LicenseKey"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesGet:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet:::licenseId"]=1
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet:::licenseId"]=1
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet:::licenseId"]=1
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdGet:::licenseId"]=1
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet:::licenseId"]=1
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesRedeemPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesRedeemPost:::LicenseValidationRequest"]=1
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesRedeemPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesRedeemPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesValidatePost:::LicenseValidationRequest"]=1
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesValidatePost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceLicensingLicensesValidatePost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceMigrationsGet:::pending"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceMigrationsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceMigrationsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceMigrationsMigratePost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceMigrationsMigratePost:::x-api-version"]=0
operation_parameters_minimum_occurrences["getAllModules:::tenantId"]=1
operation_parameters_minimum_occurrences["getAllModules:::api-version"]=0
operation_parameters_minimum_occurrences["getAllModules:::x-api-version"]=0
operation_parameters_minimum_occurrences["getAvailableModules:::tenantId"]=0
operation_parameters_minimum_occurrences["getAvailableModules:::api-version"]=0
operation_parameters_minimum_occurrences["getAvailableModules:::x-api-version"]=0
operation_parameters_minimum_occurrences["createTenant:::api-version"]=0
operation_parameters_minimum_occurrences["createTenant:::x-api-version"]=0
operation_parameters_minimum_occurrences["createTenant:::TenantCreateDto"]=0
operation_parameters_minimum_occurrences["deleteTenant:::tenantId"]=1
operation_parameters_minimum_occurrences["deleteTenant:::api-version"]=0
operation_parameters_minimum_occurrences["deleteTenant:::x-api-version"]=0
operation_parameters_minimum_occurrences["getAllExtendedTenants:::api-version"]=0
operation_parameters_minimum_occurrences["getAllExtendedTenants:::x-api-version"]=0
operation_parameters_minimum_occurrences["getAllTenants:::api-version"]=0
operation_parameters_minimum_occurrences["getAllTenants:::x-api-version"]=0
operation_parameters_minimum_occurrences["getExtendedTenantsCount:::api-version"]=0
operation_parameters_minimum_occurrences["getExtendedTenantsCount:::x-api-version"]=0
operation_parameters_minimum_occurrences["getTenant:::tenantId"]=1
operation_parameters_minimum_occurrences["getTenant:::api-version"]=0
operation_parameters_minimum_occurrences["getTenant:::x-api-version"]=0
operation_parameters_minimum_occurrences["getTenantsCount:::api-version"]=0
operation_parameters_minimum_occurrences["getTenantsCount:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateTenant:::tenantId"]=1
operation_parameters_minimum_occurrences["updateTenant:::api-version"]=0
operation_parameters_minimum_occurrences["updateTenant:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateTenant:::TenantUpdateDto"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersExtendedCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersExtendedCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersExtendedGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersExtendedGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersPost:::AccountHolderCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersUserIdDelete:::userId"]=1
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersUserIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersUserIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersUserIdExtendedGet:::userId"]=1
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersUserIdExtendedGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersUserIdExtendedGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersUserIdPut:::userId"]=1
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersUserIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersUserIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SystemServiceUsersUserIdPut:::body"]=0
operation_parameters_minimum_occurrences["getUserAsync:::userId"]=1
operation_parameters_minimum_occurrences["getUserAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getUserAsync:::x-api-version"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["apiV2SystemServiceAntiforgeryGetAndStoreTokensGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceAntiforgeryGetAndStoreTokensGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceAntiforgeryIsRequestValidGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceAntiforgeryIsRequestValidGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiLicensingLicensesGeneratePost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiLicensingLicensesGeneratePost:::api-version"]=0
operation_parameters_maximum_occurrences["apiLicensingLicensesGeneratePost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiLicensingLicensesGeneratePost:::LicenseKeyRequest"]=0
operation_parameters_maximum_occurrences["apiLicensingLicensesValidateAttributesGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiLicensingLicensesValidateAttributesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiLicensingLicensesValidateAttributesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiLicensingLicensesValidateAttributesGet:::LicenseKey"]=0
operation_parameters_maximum_occurrences["apiLicensingLicensesValidateErrorsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiLicensingLicensesValidateErrorsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiLicensingLicensesValidateErrorsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiLicensingLicensesValidateErrorsGet:::LicenseKey"]=0
operation_parameters_maximum_occurrences["apiLicensingLicensesValidateGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiLicensingLicensesValidateGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiLicensingLicensesValidateGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiLicensingLicensesValidateGet:::LicenseKey"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet:::licenseId"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet:::licenseId"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet:::licenseId"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdGet:::licenseId"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet:::licenseId"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesRedeemPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesRedeemPost:::LicenseValidationRequest"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesRedeemPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesRedeemPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesValidatePost:::LicenseValidationRequest"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesValidatePost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceLicensingLicensesValidatePost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceMigrationsGet:::pending"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceMigrationsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceMigrationsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceMigrationsMigratePost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceMigrationsMigratePost:::x-api-version"]=0
operation_parameters_maximum_occurrences["getAllModules:::tenantId"]=0
operation_parameters_maximum_occurrences["getAllModules:::api-version"]=0
operation_parameters_maximum_occurrences["getAllModules:::x-api-version"]=0
operation_parameters_maximum_occurrences["getAvailableModules:::tenantId"]=0
operation_parameters_maximum_occurrences["getAvailableModules:::api-version"]=0
operation_parameters_maximum_occurrences["getAvailableModules:::x-api-version"]=0
operation_parameters_maximum_occurrences["createTenant:::api-version"]=0
operation_parameters_maximum_occurrences["createTenant:::x-api-version"]=0
operation_parameters_maximum_occurrences["createTenant:::TenantCreateDto"]=0
operation_parameters_maximum_occurrences["deleteTenant:::tenantId"]=0
operation_parameters_maximum_occurrences["deleteTenant:::api-version"]=0
operation_parameters_maximum_occurrences["deleteTenant:::x-api-version"]=0
operation_parameters_maximum_occurrences["getAllExtendedTenants:::api-version"]=0
operation_parameters_maximum_occurrences["getAllExtendedTenants:::x-api-version"]=0
operation_parameters_maximum_occurrences["getAllTenants:::api-version"]=0
operation_parameters_maximum_occurrences["getAllTenants:::x-api-version"]=0
operation_parameters_maximum_occurrences["getExtendedTenantsCount:::api-version"]=0
operation_parameters_maximum_occurrences["getExtendedTenantsCount:::x-api-version"]=0
operation_parameters_maximum_occurrences["getTenant:::tenantId"]=0
operation_parameters_maximum_occurrences["getTenant:::api-version"]=0
operation_parameters_maximum_occurrences["getTenant:::x-api-version"]=0
operation_parameters_maximum_occurrences["getTenantsCount:::api-version"]=0
operation_parameters_maximum_occurrences["getTenantsCount:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateTenant:::tenantId"]=0
operation_parameters_maximum_occurrences["updateTenant:::api-version"]=0
operation_parameters_maximum_occurrences["updateTenant:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateTenant:::TenantUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersExtendedCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersExtendedCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersExtendedGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersExtendedGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersPost:::AccountHolderCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersUserIdDelete:::userId"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersUserIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersUserIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersUserIdExtendedGet:::userId"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersUserIdExtendedGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersUserIdExtendedGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersUserIdPut:::userId"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersUserIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersUserIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SystemServiceUsersUserIdPut:::body"]=0
operation_parameters_maximum_occurrences["getUserAsync:::userId"]=0
operation_parameters_maximum_occurrences["getUserAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getUserAsync:::x-api-version"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["apiV2SystemServiceAntiforgeryGetAndStoreTokensGet:::api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceAntiforgeryGetAndStoreTokensGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceAntiforgeryIsRequestValidGet:::api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceAntiforgeryIsRequestValidGet:::x-api-version"]=""
operation_parameters_collection_type["apiLicensingLicensesGeneratePost:::tenantId"]=""
operation_parameters_collection_type["apiLicensingLicensesGeneratePost:::api-version"]=""
operation_parameters_collection_type["apiLicensingLicensesGeneratePost:::x-api-version"]=""
operation_parameters_collection_type["apiLicensingLicensesGeneratePost:::LicenseKeyRequest"]=""
operation_parameters_collection_type["apiLicensingLicensesValidateAttributesGet:::tenantId"]=""
operation_parameters_collection_type["apiLicensingLicensesValidateAttributesGet:::api-version"]=""
operation_parameters_collection_type["apiLicensingLicensesValidateAttributesGet:::x-api-version"]=""
operation_parameters_collection_type["apiLicensingLicensesValidateAttributesGet:::LicenseKey"]=""
operation_parameters_collection_type["apiLicensingLicensesValidateErrorsGet:::tenantId"]=""
operation_parameters_collection_type["apiLicensingLicensesValidateErrorsGet:::api-version"]=""
operation_parameters_collection_type["apiLicensingLicensesValidateErrorsGet:::x-api-version"]=""
operation_parameters_collection_type["apiLicensingLicensesValidateErrorsGet:::LicenseKey"]=""
operation_parameters_collection_type["apiLicensingLicensesValidateGet:::tenantId"]=""
operation_parameters_collection_type["apiLicensingLicensesValidateGet:::api-version"]=""
operation_parameters_collection_type["apiLicensingLicensesValidateGet:::x-api-version"]=""
operation_parameters_collection_type["apiLicensingLicensesValidateGet:::LicenseKey"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesGet:::api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet:::licenseId"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet:::api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet:::licenseId"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet:::api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet:::licenseId"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet:::api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesLicenseIdGet:::licenseId"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesLicenseIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesLicenseIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet:::licenseId"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet:::api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesRedeemPost:::tenantId"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesRedeemPost:::LicenseValidationRequest"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesRedeemPost:::api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesRedeemPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesValidatePost:::LicenseValidationRequest"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesValidatePost:::api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceLicensingLicensesValidatePost:::x-api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceMigrationsGet:::pending"]=""
operation_parameters_collection_type["apiV2SystemServiceMigrationsGet:::api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceMigrationsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceMigrationsMigratePost:::api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceMigrationsMigratePost:::x-api-version"]=""
operation_parameters_collection_type["getAllModules:::tenantId"]=""
operation_parameters_collection_type["getAllModules:::api-version"]=""
operation_parameters_collection_type["getAllModules:::x-api-version"]=""
operation_parameters_collection_type["getAvailableModules:::tenantId"]=""
operation_parameters_collection_type["getAvailableModules:::api-version"]=""
operation_parameters_collection_type["getAvailableModules:::x-api-version"]=""
operation_parameters_collection_type["createTenant:::api-version"]=""
operation_parameters_collection_type["createTenant:::x-api-version"]=""
operation_parameters_collection_type["createTenant:::TenantCreateDto"]=""
operation_parameters_collection_type["deleteTenant:::tenantId"]=""
operation_parameters_collection_type["deleteTenant:::api-version"]=""
operation_parameters_collection_type["deleteTenant:::x-api-version"]=""
operation_parameters_collection_type["getAllExtendedTenants:::api-version"]=""
operation_parameters_collection_type["getAllExtendedTenants:::x-api-version"]=""
operation_parameters_collection_type["getAllTenants:::api-version"]=""
operation_parameters_collection_type["getAllTenants:::x-api-version"]=""
operation_parameters_collection_type["getExtendedTenantsCount:::api-version"]=""
operation_parameters_collection_type["getExtendedTenantsCount:::x-api-version"]=""
operation_parameters_collection_type["getTenant:::tenantId"]=""
operation_parameters_collection_type["getTenant:::api-version"]=""
operation_parameters_collection_type["getTenant:::x-api-version"]=""
operation_parameters_collection_type["getTenantsCount:::api-version"]=""
operation_parameters_collection_type["getTenantsCount:::x-api-version"]=""
operation_parameters_collection_type["updateTenant:::tenantId"]=""
operation_parameters_collection_type["updateTenant:::api-version"]=""
operation_parameters_collection_type["updateTenant:::x-api-version"]=""
operation_parameters_collection_type["updateTenant:::TenantUpdateDto"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersExtendedCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersExtendedCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersExtendedGet:::api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersExtendedGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersGet:::api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersPost:::api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersPost:::AccountHolderCreateDto"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersUserIdDelete:::userId"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersUserIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersUserIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersUserIdExtendedGet:::userId"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersUserIdExtendedGet:::api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersUserIdExtendedGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersUserIdPut:::userId"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersUserIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersUserIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2SystemServiceUsersUserIdPut:::body"]=""
operation_parameters_collection_type["getUserAsync:::userId"]=""
operation_parameters_collection_type["getUserAsync:::api-version"]=""
operation_parameters_collection_type["getUserAsync:::x-api-version"]=""


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

${BOLD}${WHITE}SystemService command line client (API version 2.0.1.4089)${OFF}

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
    echo -e "${BOLD}${WHITE}[antiforgery]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2SystemServiceAntiforgeryGetAndStoreTokensGet${OFF}; (AUTH)
  ${CYAN}apiV2SystemServiceAntiforgeryIsRequestValidGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[licenses]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiLicensingLicensesGeneratePost${OFF}; (AUTH)
  ${CYAN}apiLicensingLicensesValidateAttributesGet${OFF}; (AUTH)
  ${CYAN}apiLicensingLicensesValidateErrorsGet${OFF}; (AUTH)
  ${CYAN}apiLicensingLicensesValidateGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[licensing]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2SystemServiceLicensingLicensesGet${OFF}; (AUTH)
  ${CYAN}apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet${OFF}; (AUTH)
  ${CYAN}apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet${OFF}; (AUTH)
  ${CYAN}apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet${OFF}; (AUTH)
  ${CYAN}apiV2SystemServiceLicensingLicensesLicenseIdGet${OFF}; (AUTH)
  ${CYAN}apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet${OFF}; (AUTH)
  ${CYAN}apiV2SystemServiceLicensingLicensesRedeemPost${OFF}; (AUTH)
  ${CYAN}apiV2SystemServiceLicensingLicensesValidatePost${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[migrations]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2SystemServiceMigrationsGet${OFF}; (AUTH)
  ${CYAN}apiV2SystemServiceMigrationsMigratePost${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[modules]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getAllModules${OFF};Get all modules available on this suite server instance. (AUTH)
  ${CYAN}getAvailableModules${OFF};Get all modules available to a tenant user. (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[tenants]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}createTenant${OFF};Create a new tenant. (AUTH)
  ${CYAN}deleteTenant${OFF};Delete a specific tenant by ID. (AUTH)
  ${CYAN}getAllExtendedTenants${OFF};Get all extended tenants available on this suite server instance. (AUTH)
  ${CYAN}getAllTenants${OFF};Get all tenants available on this suite server instance. (AUTH)
  ${CYAN}getExtendedTenantsCount${OFF};Get the total count of extended tenants available on this suite server instance. (AUTH)
  ${CYAN}getTenant${OFF};Get a specific tenant by ID. (AUTH)
  ${CYAN}getTenantsCount${OFF};Get the total count of tenants available on this suite server instance. (AUTH)
  ${CYAN}updateTenant${OFF};Update a specific tenant by ID. (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[users]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2SystemServiceUsersCountGet${OFF}; (AUTH)
  ${CYAN}apiV2SystemServiceUsersExtendedCountGet${OFF}; (AUTH)
  ${CYAN}apiV2SystemServiceUsersExtendedGet${OFF}; (AUTH)
  ${CYAN}apiV2SystemServiceUsersGet${OFF}; (AUTH)
  ${CYAN}apiV2SystemServiceUsersPost${OFF}; (AUTH)
  ${CYAN}apiV2SystemServiceUsersUserIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2SystemServiceUsersUserIdExtendedGet${OFF}; (AUTH)
  ${CYAN}apiV2SystemServiceUsersUserIdPut${OFF}; (AUTH)
  ${CYAN}getUserAsync${OFF}; (AUTH)
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
    echo -e "${BOLD}${WHITE}SystemService command line client (API version 2.0.1.4089)${OFF}"
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
    echo -e "${BOLD}SystemService command line client (API version 2.0.1.4089)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for apiV2SystemServiceAntiforgeryGetAndStoreTokensGet operation
#
##############################################################################
print_apiV2SystemServiceAntiforgeryGetAndStoreTokensGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SystemServiceAntiforgeryGetAndStoreTokensGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
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
# Print help for apiV2SystemServiceAntiforgeryIsRequestValidGet operation
#
##############################################################################
print_apiV2SystemServiceAntiforgeryIsRequestValidGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SystemServiceAntiforgeryIsRequestValidGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
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
# Print help for apiLicensingLicensesGeneratePost operation
#
##############################################################################
print_apiLicensingLicensesGeneratePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiLicensingLicensesGeneratePost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiLicensingLicensesValidateAttributesGet operation
#
##############################################################################
print_apiLicensingLicensesValidateAttributesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiLicensingLicensesValidateAttributesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiLicensingLicensesValidateErrorsGet operation
#
##############################################################################
print_apiLicensingLicensesValidateErrorsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiLicensingLicensesValidateErrorsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiLicensingLicensesValidateGet operation
#
##############################################################################
print_apiLicensingLicensesValidateGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiLicensingLicensesValidateGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SystemServiceLicensingLicensesGet operation
#
##############################################################################
print_apiV2SystemServiceLicensingLicensesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SystemServiceLicensingLicensesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet operation
#
##############################################################################
print_apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}licenseId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: licenseId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet operation
#
##############################################################################
print_apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}licenseId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: licenseId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet operation
#
##############################################################################
print_apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}licenseId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: licenseId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SystemServiceLicensingLicensesLicenseIdGet operation
#
##############################################################################
print_apiV2SystemServiceLicensingLicensesLicenseIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SystemServiceLicensingLicensesLicenseIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}licenseId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: licenseId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet operation
#
##############################################################################
print_apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}licenseId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: licenseId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SystemServiceLicensingLicensesRedeemPost operation
#
##############################################################################
print_apiV2SystemServiceLicensingLicensesRedeemPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SystemServiceLicensingLicensesRedeemPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json;odata.metadata=minimal;odata.streaming=true,application/json;odata.metadata=minimal;odata.streaming=false,application/json;odata.metadata=minimal,application/json;odata.metadata=full;odata.streaming=true,application/json;odata.metadata=full;odata.streaming=false,application/json;odata.metadata=full,application/json;odata.metadata=none;odata.streaming=true,application/json;odata.metadata=none;odata.streaming=false,application/json;odata.metadata=none,application/json;odata.streaming=true,application/json;odata.streaming=false,application/json,application/json;odata.metadata=minimal;odata.streaming=true;IEEE754Compatible=false,application/json;odata.metadata=minimal;odata.streaming=true;IEEE754Compatible=true,application/json;odata.metadata=minimal;odata.streaming=false;IEEE754Compatible=false,application/json;odata.metadata=minimal;odata.streaming=false;IEEE754Compatible=true,application/json;odata.metadata=minimal;IEEE754Compatible=false,application/json;odata.metadata=minimal;IEEE754Compatible=true,application/json;odata.metadata=full;odata.streaming=true;IEEE754Compatible=false,application/json;odata.metadata=full;odata.streaming=true;IEEE754Compatible=true,application/json;odata.metadata=full;odata.streaming=false;IEEE754Compatible=false,application/json;odata.metadata=full;odata.streaming=false;IEEE754Compatible=true,application/json;odata.metadata=full;IEEE754Compatible=false,application/json;odata.metadata=full;IEEE754Compatible=true,application/json;odata.metadata=none;odata.streaming=true;IEEE754Compatible=false,application/json;odata.metadata=none;odata.streaming=true;IEEE754Compatible=true,application/json;odata.metadata=none;odata.streaming=false;IEEE754Compatible=true,application/json;odata.metadata=none;odata.streaming=false;IEEE754Compatible=false,application/json;odata.metadata=none;IEEE754Compatible=false,application/json;odata.metadata=none;IEEE754Compatible=true,application/json;odata.streaming=true;IEEE754Compatible=false,application/json;odata.streaming=true;IEEE754Compatible=true,application/json;odata.streaming=false;IEEE754Compatible=false,application/json;odata.streaming=false;IEEE754Compatible=true,application/json;IEEE754Compatible=false,application/json;IEEE754Compatible=true,application/xml,text/plain,text/xml,application/*+xml,application/json-patch+json,text/json,application/*+json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SystemServiceLicensingLicensesValidatePost operation
#
##############################################################################
print_apiV2SystemServiceLicensingLicensesValidatePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SystemServiceLicensingLicensesValidatePost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json;odata.metadata=minimal;odata.streaming=true,application/json;odata.metadata=minimal;odata.streaming=false,application/json;odata.metadata=minimal,application/json;odata.metadata=full;odata.streaming=true,application/json;odata.metadata=full;odata.streaming=false,application/json;odata.metadata=full,application/json;odata.metadata=none;odata.streaming=true,application/json;odata.metadata=none;odata.streaming=false,application/json;odata.metadata=none,application/json;odata.streaming=true,application/json;odata.streaming=false,application/json,application/json;odata.metadata=minimal;odata.streaming=true;IEEE754Compatible=false,application/json;odata.metadata=minimal;odata.streaming=true;IEEE754Compatible=true,application/json;odata.metadata=minimal;odata.streaming=false;IEEE754Compatible=false,application/json;odata.metadata=minimal;odata.streaming=false;IEEE754Compatible=true,application/json;odata.metadata=minimal;IEEE754Compatible=false,application/json;odata.metadata=minimal;IEEE754Compatible=true,application/json;odata.metadata=full;odata.streaming=true;IEEE754Compatible=false,application/json;odata.metadata=full;odata.streaming=true;IEEE754Compatible=true,application/json;odata.metadata=full;odata.streaming=false;IEEE754Compatible=false,application/json;odata.metadata=full;odata.streaming=false;IEEE754Compatible=true,application/json;odata.metadata=full;IEEE754Compatible=false,application/json;odata.metadata=full;IEEE754Compatible=true,application/json;odata.metadata=none;odata.streaming=true;IEEE754Compatible=false,application/json;odata.metadata=none;odata.streaming=true;IEEE754Compatible=true,application/json;odata.metadata=none;odata.streaming=false;IEEE754Compatible=true,application/json;odata.metadata=none;odata.streaming=false;IEEE754Compatible=false,application/json;odata.metadata=none;IEEE754Compatible=false,application/json;odata.metadata=none;IEEE754Compatible=true,application/json;odata.streaming=true;IEEE754Compatible=false,application/json;odata.streaming=true;IEEE754Compatible=true,application/json;odata.streaming=false;IEEE754Compatible=false,application/json;odata.streaming=false;IEEE754Compatible=true,application/json;IEEE754Compatible=false,application/json;IEEE754Compatible=true,application/xml,text/plain,text/xml,application/*+xml,application/json-patch+json,text/json,application/*+json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SystemServiceMigrationsGet operation
#
##############################################################################
print_apiV2SystemServiceMigrationsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SystemServiceMigrationsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}pending${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pending=value${OFF}" \
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
# Print help for apiV2SystemServiceMigrationsMigratePost operation
#
##############################################################################
print_apiV2SystemServiceMigrationsMigratePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SystemServiceMigrationsMigratePost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
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
# Print help for getAllModules operation
#
##############################################################################
print_getAllModules_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getAllModules - Get all modules available on this suite server instance.${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getAvailableModules operation
#
##############################################################################
print_getAvailableModules_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getAvailableModules - Get all modules available to a tenant user.${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for createTenant operation
#
##############################################################################
print_createTenant_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createTenant - Create a new tenant.${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for global administrators." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
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
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteTenant operation
#
##############################################################################
print_deleteTenant_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteTenant - Delete a specific tenant by ID.${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for global administrators." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: tenantId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;No Content${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getAllExtendedTenants operation
#
##############################################################################
print_getAllExtendedTenants_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getAllExtendedTenants - Get all extended tenants available on this suite server instance.${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for global administrators." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
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
# Print help for getAllTenants operation
#
##############################################################################
print_getAllTenants_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getAllTenants - Get all tenants available on this suite server instance.${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for global administrators." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
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
# Print help for getExtendedTenantsCount operation
#
##############################################################################
print_getExtendedTenantsCount_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getExtendedTenantsCount - Get the total count of extended tenants available on this suite server instance.${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for global administrators." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
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
# Print help for getTenant operation
#
##############################################################################
print_getTenant_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getTenant - Get a specific tenant by ID.${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for global administrators." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: tenantId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getTenantsCount operation
#
##############################################################################
print_getTenantsCount_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getTenantsCount - Get the total count of tenants available on this suite server instance.${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for global administrators." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
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
# Print help for updateTenant operation
#
##############################################################################
print_updateTenant_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateTenant - Update a specific tenant by ID.${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for global administrators." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: tenantId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SystemServiceUsersCountGet operation
#
##############################################################################
print_apiV2SystemServiceUsersCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SystemServiceUsersCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
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
# Print help for apiV2SystemServiceUsersExtendedCountGet operation
#
##############################################################################
print_apiV2SystemServiceUsersExtendedCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SystemServiceUsersExtendedCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
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
# Print help for apiV2SystemServiceUsersExtendedGet operation
#
##############################################################################
print_apiV2SystemServiceUsersExtendedGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SystemServiceUsersExtendedGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
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
# Print help for apiV2SystemServiceUsersGet operation
#
##############################################################################
print_apiV2SystemServiceUsersGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SystemServiceUsersGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
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
# Print help for apiV2SystemServiceUsersPost operation
#
##############################################################################
print_apiV2SystemServiceUsersPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SystemServiceUsersPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
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
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SystemServiceUsersUserIdDelete operation
#
##############################################################################
print_apiV2SystemServiceUsersUserIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SystemServiceUsersUserIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}userId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: userId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SystemServiceUsersUserIdExtendedGet operation
#
##############################################################################
print_apiV2SystemServiceUsersUserIdExtendedGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SystemServiceUsersUserIdExtendedGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}userId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: userId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SystemServiceUsersUserIdPut operation
#
##############################################################################
print_apiV2SystemServiceUsersUserIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SystemServiceUsersUserIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}userId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: userId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getUserAsync operation
#
##############################################################################
print_getUserAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getUserAsync - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}userId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: userId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Call apiV2SystemServiceAntiforgeryGetAndStoreTokensGet operation
#
##############################################################################
call_apiV2SystemServiceAntiforgeryGetAndStoreTokensGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Antiforgery/GetAndStoreTokens" path_parameter_names query_parameter_names); then
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
# Call apiV2SystemServiceAntiforgeryIsRequestValidGet operation
#
##############################################################################
call_apiV2SystemServiceAntiforgeryIsRequestValidGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Antiforgery/IsRequestValid" path_parameter_names query_parameter_names); then
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
# Call apiLicensingLicensesGeneratePost operation
#
##############################################################################
call_apiLicensingLicensesGeneratePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/Licensing/Licenses/Generate" path_parameter_names query_parameter_names); then
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
# Call apiLicensingLicensesValidateAttributesGet operation
#
##############################################################################
call_apiLicensingLicensesValidateAttributesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/Licensing/Licenses/Validate/Attributes" path_parameter_names query_parameter_names); then
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
# Call apiLicensingLicensesValidateErrorsGet operation
#
##############################################################################
call_apiLicensingLicensesValidateErrorsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/Licensing/Licenses/Validate/Errors" path_parameter_names query_parameter_names); then
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
# Call apiLicensingLicensesValidateGet operation
#
##############################################################################
call_apiLicensingLicensesValidateGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/Licensing/Licenses/Validate" path_parameter_names query_parameter_names); then
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
# Call apiV2SystemServiceLicensingLicensesGet operation
#
##############################################################################
call_apiV2SystemServiceLicensingLicensesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Licensing/Licenses" path_parameter_names query_parameter_names); then
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
# Call apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet operation
#
##############################################################################
call_apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(licenseId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Licensing/Licenses/{licenseId}/Assignments" path_parameter_names query_parameter_names); then
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
# Call apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet operation
#
##############################################################################
call_apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(licenseId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Licensing/Licenses/{licenseId}/Attributes" path_parameter_names query_parameter_names); then
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
# Call apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet operation
#
##############################################################################
call_apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(licenseId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Licensing/Licenses/{licenseId}/Features" path_parameter_names query_parameter_names); then
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
# Call apiV2SystemServiceLicensingLicensesLicenseIdGet operation
#
##############################################################################
call_apiV2SystemServiceLicensingLicensesLicenseIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(licenseId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Licensing/Licenses/{licenseId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet operation
#
##############################################################################
call_apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(licenseId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Licensing/Licenses/{licenseId}/Quota" path_parameter_names query_parameter_names); then
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
# Call apiV2SystemServiceLicensingLicensesRedeemPost operation
#
##############################################################################
call_apiV2SystemServiceLicensingLicensesRedeemPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Licensing/Licenses/Redeem" path_parameter_names query_parameter_names); then
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
        echo -e "\\t- application/json;odata.metadata=minimal;odata.streaming=true"
        echo -e "\\t- application/json;odata.metadata=minimal;odata.streaming=false"
        echo -e "\\t- application/json;odata.metadata=minimal"
        echo -e "\\t- application/json;odata.metadata=full;odata.streaming=true"
        echo -e "\\t- application/json;odata.metadata=full;odata.streaming=false"
        echo -e "\\t- application/json;odata.metadata=full"
        echo -e "\\t- application/json;odata.metadata=none;odata.streaming=true"
        echo -e "\\t- application/json;odata.metadata=none;odata.streaming=false"
        echo -e "\\t- application/json;odata.metadata=none"
        echo -e "\\t- application/json;odata.streaming=true"
        echo -e "\\t- application/json;odata.streaming=false"
        echo -e "\\t- application/json"
        echo -e "\\t- application/json;odata.metadata=minimal;odata.streaming=true;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.metadata=minimal;odata.streaming=true;IEEE754Compatible=true"
        echo -e "\\t- application/json;odata.metadata=minimal;odata.streaming=false;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.metadata=minimal;odata.streaming=false;IEEE754Compatible=true"
        echo -e "\\t- application/json;odata.metadata=minimal;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.metadata=minimal;IEEE754Compatible=true"
        echo -e "\\t- application/json;odata.metadata=full;odata.streaming=true;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.metadata=full;odata.streaming=true;IEEE754Compatible=true"
        echo -e "\\t- application/json;odata.metadata=full;odata.streaming=false;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.metadata=full;odata.streaming=false;IEEE754Compatible=true"
        echo -e "\\t- application/json;odata.metadata=full;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.metadata=full;IEEE754Compatible=true"
        echo -e "\\t- application/json;odata.metadata=none;odata.streaming=true;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.metadata=none;odata.streaming=true;IEEE754Compatible=true"
        echo -e "\\t- application/json;odata.metadata=none;odata.streaming=false;IEEE754Compatible=true"
        echo -e "\\t- application/json;odata.metadata=none;odata.streaming=false;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.metadata=none;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.metadata=none;IEEE754Compatible=true"
        echo -e "\\t- application/json;odata.streaming=true;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.streaming=true;IEEE754Compatible=true"
        echo -e "\\t- application/json;odata.streaming=false;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.streaming=false;IEEE754Compatible=true"
        echo -e "\\t- application/json;IEEE754Compatible=false"
        echo -e "\\t- application/json;IEEE754Compatible=true"
        echo -e "\\t- application/xml"
        echo -e "\\t- text/plain"
        echo -e "\\t- text/xml"
        echo -e "\\t- application/*+xml"
        echo -e "\\t- application/json-patch+json"
        echo -e "\\t- text/json"
        echo -e "\\t- application/*+json"
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
# Call apiV2SystemServiceLicensingLicensesValidatePost operation
#
##############################################################################
call_apiV2SystemServiceLicensingLicensesValidatePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Licensing/Licenses/Validate" path_parameter_names query_parameter_names); then
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
        echo -e "\\t- application/json;odata.metadata=minimal;odata.streaming=true"
        echo -e "\\t- application/json;odata.metadata=minimal;odata.streaming=false"
        echo -e "\\t- application/json;odata.metadata=minimal"
        echo -e "\\t- application/json;odata.metadata=full;odata.streaming=true"
        echo -e "\\t- application/json;odata.metadata=full;odata.streaming=false"
        echo -e "\\t- application/json;odata.metadata=full"
        echo -e "\\t- application/json;odata.metadata=none;odata.streaming=true"
        echo -e "\\t- application/json;odata.metadata=none;odata.streaming=false"
        echo -e "\\t- application/json;odata.metadata=none"
        echo -e "\\t- application/json;odata.streaming=true"
        echo -e "\\t- application/json;odata.streaming=false"
        echo -e "\\t- application/json"
        echo -e "\\t- application/json;odata.metadata=minimal;odata.streaming=true;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.metadata=minimal;odata.streaming=true;IEEE754Compatible=true"
        echo -e "\\t- application/json;odata.metadata=minimal;odata.streaming=false;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.metadata=minimal;odata.streaming=false;IEEE754Compatible=true"
        echo -e "\\t- application/json;odata.metadata=minimal;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.metadata=minimal;IEEE754Compatible=true"
        echo -e "\\t- application/json;odata.metadata=full;odata.streaming=true;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.metadata=full;odata.streaming=true;IEEE754Compatible=true"
        echo -e "\\t- application/json;odata.metadata=full;odata.streaming=false;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.metadata=full;odata.streaming=false;IEEE754Compatible=true"
        echo -e "\\t- application/json;odata.metadata=full;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.metadata=full;IEEE754Compatible=true"
        echo -e "\\t- application/json;odata.metadata=none;odata.streaming=true;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.metadata=none;odata.streaming=true;IEEE754Compatible=true"
        echo -e "\\t- application/json;odata.metadata=none;odata.streaming=false;IEEE754Compatible=true"
        echo -e "\\t- application/json;odata.metadata=none;odata.streaming=false;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.metadata=none;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.metadata=none;IEEE754Compatible=true"
        echo -e "\\t- application/json;odata.streaming=true;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.streaming=true;IEEE754Compatible=true"
        echo -e "\\t- application/json;odata.streaming=false;IEEE754Compatible=false"
        echo -e "\\t- application/json;odata.streaming=false;IEEE754Compatible=true"
        echo -e "\\t- application/json;IEEE754Compatible=false"
        echo -e "\\t- application/json;IEEE754Compatible=true"
        echo -e "\\t- application/xml"
        echo -e "\\t- text/plain"
        echo -e "\\t- text/xml"
        echo -e "\\t- application/*+xml"
        echo -e "\\t- application/json-patch+json"
        echo -e "\\t- text/json"
        echo -e "\\t- application/*+json"
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
# Call apiV2SystemServiceMigrationsGet operation
#
##############################################################################
call_apiV2SystemServiceMigrationsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(pending api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Migrations" path_parameter_names query_parameter_names); then
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
# Call apiV2SystemServiceMigrationsMigratePost operation
#
##############################################################################
call_apiV2SystemServiceMigrationsMigratePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Migrations/Migrate" path_parameter_names query_parameter_names); then
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
# Call getAllModules operation
#
##############################################################################
call_getAllModules() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StudioService/Modules" path_parameter_names query_parameter_names); then
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
# Call getAvailableModules operation
#
##############################################################################
call_getAvailableModules() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StudioService/Modules/Data" path_parameter_names query_parameter_names); then
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
# Call createTenant operation
#
##############################################################################
call_createTenant() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Tenants" path_parameter_names query_parameter_names); then
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
# Call deleteTenant operation
#
##############################################################################
call_deleteTenant() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(tenantId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Tenants/{tenantId}" path_parameter_names query_parameter_names); then
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
# Call getAllExtendedTenants operation
#
##############################################################################
call_getAllExtendedTenants() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Tenants/Extended" path_parameter_names query_parameter_names); then
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
# Call getAllTenants operation
#
##############################################################################
call_getAllTenants() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Tenants" path_parameter_names query_parameter_names); then
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
# Call getExtendedTenantsCount operation
#
##############################################################################
call_getExtendedTenantsCount() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Tenants/Extended/Count" path_parameter_names query_parameter_names); then
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
# Call getTenant operation
#
##############################################################################
call_getTenant() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(tenantId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Tenants/{tenantId}" path_parameter_names query_parameter_names); then
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
# Call getTenantsCount operation
#
##############################################################################
call_getTenantsCount() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Tenants/Count" path_parameter_names query_parameter_names); then
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
# Call updateTenant operation
#
##############################################################################
call_updateTenant() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(tenantId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Tenants/{tenantId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SystemServiceUsersCountGet operation
#
##############################################################################
call_apiV2SystemServiceUsersCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Users/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2SystemServiceUsersExtendedCountGet operation
#
##############################################################################
call_apiV2SystemServiceUsersExtendedCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Users/Extended/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2SystemServiceUsersExtendedGet operation
#
##############################################################################
call_apiV2SystemServiceUsersExtendedGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Users/Extended" path_parameter_names query_parameter_names); then
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
# Call apiV2SystemServiceUsersGet operation
#
##############################################################################
call_apiV2SystemServiceUsersGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Users" path_parameter_names query_parameter_names); then
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
# Call apiV2SystemServiceUsersPost operation
#
##############################################################################
call_apiV2SystemServiceUsersPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Users" path_parameter_names query_parameter_names); then
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
# Call apiV2SystemServiceUsersUserIdDelete operation
#
##############################################################################
call_apiV2SystemServiceUsersUserIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(userId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Users/{userId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SystemServiceUsersUserIdExtendedGet operation
#
##############################################################################
call_apiV2SystemServiceUsersUserIdExtendedGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(userId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Users/{userId}/Extended" path_parameter_names query_parameter_names); then
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
# Call apiV2SystemServiceUsersUserIdPut operation
#
##############################################################################
call_apiV2SystemServiceUsersUserIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(userId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Users/{userId}" path_parameter_names query_parameter_names); then
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
# Call getUserAsync operation
#
##############################################################################
call_getUserAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(userId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Users/{userId}" path_parameter_names query_parameter_names); then
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
    apiV2SystemServiceAntiforgeryGetAndStoreTokensGet)
    operation="apiV2SystemServiceAntiforgeryGetAndStoreTokensGet"
    ;;
    apiV2SystemServiceAntiforgeryIsRequestValidGet)
    operation="apiV2SystemServiceAntiforgeryIsRequestValidGet"
    ;;
    apiLicensingLicensesGeneratePost)
    operation="apiLicensingLicensesGeneratePost"
    ;;
    apiLicensingLicensesValidateAttributesGet)
    operation="apiLicensingLicensesValidateAttributesGet"
    ;;
    apiLicensingLicensesValidateErrorsGet)
    operation="apiLicensingLicensesValidateErrorsGet"
    ;;
    apiLicensingLicensesValidateGet)
    operation="apiLicensingLicensesValidateGet"
    ;;
    apiV2SystemServiceLicensingLicensesGet)
    operation="apiV2SystemServiceLicensingLicensesGet"
    ;;
    apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet)
    operation="apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet"
    ;;
    apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet)
    operation="apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet"
    ;;
    apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet)
    operation="apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet"
    ;;
    apiV2SystemServiceLicensingLicensesLicenseIdGet)
    operation="apiV2SystemServiceLicensingLicensesLicenseIdGet"
    ;;
    apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet)
    operation="apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet"
    ;;
    apiV2SystemServiceLicensingLicensesRedeemPost)
    operation="apiV2SystemServiceLicensingLicensesRedeemPost"
    ;;
    apiV2SystemServiceLicensingLicensesValidatePost)
    operation="apiV2SystemServiceLicensingLicensesValidatePost"
    ;;
    apiV2SystemServiceMigrationsGet)
    operation="apiV2SystemServiceMigrationsGet"
    ;;
    apiV2SystemServiceMigrationsMigratePost)
    operation="apiV2SystemServiceMigrationsMigratePost"
    ;;
    getAllModules)
    operation="getAllModules"
    ;;
    getAvailableModules)
    operation="getAvailableModules"
    ;;
    createTenant)
    operation="createTenant"
    ;;
    deleteTenant)
    operation="deleteTenant"
    ;;
    getAllExtendedTenants)
    operation="getAllExtendedTenants"
    ;;
    getAllTenants)
    operation="getAllTenants"
    ;;
    getExtendedTenantsCount)
    operation="getExtendedTenantsCount"
    ;;
    getTenant)
    operation="getTenant"
    ;;
    getTenantsCount)
    operation="getTenantsCount"
    ;;
    updateTenant)
    operation="updateTenant"
    ;;
    apiV2SystemServiceUsersCountGet)
    operation="apiV2SystemServiceUsersCountGet"
    ;;
    apiV2SystemServiceUsersExtendedCountGet)
    operation="apiV2SystemServiceUsersExtendedCountGet"
    ;;
    apiV2SystemServiceUsersExtendedGet)
    operation="apiV2SystemServiceUsersExtendedGet"
    ;;
    apiV2SystemServiceUsersGet)
    operation="apiV2SystemServiceUsersGet"
    ;;
    apiV2SystemServiceUsersPost)
    operation="apiV2SystemServiceUsersPost"
    ;;
    apiV2SystemServiceUsersUserIdDelete)
    operation="apiV2SystemServiceUsersUserIdDelete"
    ;;
    apiV2SystemServiceUsersUserIdExtendedGet)
    operation="apiV2SystemServiceUsersUserIdExtendedGet"
    ;;
    apiV2SystemServiceUsersUserIdPut)
    operation="apiV2SystemServiceUsersUserIdPut"
    ;;
    getUserAsync)
    operation="getUserAsync"
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
    apiV2SystemServiceAntiforgeryGetAndStoreTokensGet)
    call_apiV2SystemServiceAntiforgeryGetAndStoreTokensGet
    ;;
    apiV2SystemServiceAntiforgeryIsRequestValidGet)
    call_apiV2SystemServiceAntiforgeryIsRequestValidGet
    ;;
    apiLicensingLicensesGeneratePost)
    call_apiLicensingLicensesGeneratePost
    ;;
    apiLicensingLicensesValidateAttributesGet)
    call_apiLicensingLicensesValidateAttributesGet
    ;;
    apiLicensingLicensesValidateErrorsGet)
    call_apiLicensingLicensesValidateErrorsGet
    ;;
    apiLicensingLicensesValidateGet)
    call_apiLicensingLicensesValidateGet
    ;;
    apiV2SystemServiceLicensingLicensesGet)
    call_apiV2SystemServiceLicensingLicensesGet
    ;;
    apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet)
    call_apiV2SystemServiceLicensingLicensesLicenseIdAssignmentsGet
    ;;
    apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet)
    call_apiV2SystemServiceLicensingLicensesLicenseIdAttributesGet
    ;;
    apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet)
    call_apiV2SystemServiceLicensingLicensesLicenseIdFeaturesGet
    ;;
    apiV2SystemServiceLicensingLicensesLicenseIdGet)
    call_apiV2SystemServiceLicensingLicensesLicenseIdGet
    ;;
    apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet)
    call_apiV2SystemServiceLicensingLicensesLicenseIdQuotaGet
    ;;
    apiV2SystemServiceLicensingLicensesRedeemPost)
    call_apiV2SystemServiceLicensingLicensesRedeemPost
    ;;
    apiV2SystemServiceLicensingLicensesValidatePost)
    call_apiV2SystemServiceLicensingLicensesValidatePost
    ;;
    apiV2SystemServiceMigrationsGet)
    call_apiV2SystemServiceMigrationsGet
    ;;
    apiV2SystemServiceMigrationsMigratePost)
    call_apiV2SystemServiceMigrationsMigratePost
    ;;
    getAllModules)
    call_getAllModules
    ;;
    getAvailableModules)
    call_getAvailableModules
    ;;
    createTenant)
    call_createTenant
    ;;
    deleteTenant)
    call_deleteTenant
    ;;
    getAllExtendedTenants)
    call_getAllExtendedTenants
    ;;
    getAllTenants)
    call_getAllTenants
    ;;
    getExtendedTenantsCount)
    call_getExtendedTenantsCount
    ;;
    getTenant)
    call_getTenant
    ;;
    getTenantsCount)
    call_getTenantsCount
    ;;
    updateTenant)
    call_updateTenant
    ;;
    apiV2SystemServiceUsersCountGet)
    call_apiV2SystemServiceUsersCountGet
    ;;
    apiV2SystemServiceUsersExtendedCountGet)
    call_apiV2SystemServiceUsersExtendedCountGet
    ;;
    apiV2SystemServiceUsersExtendedGet)
    call_apiV2SystemServiceUsersExtendedGet
    ;;
    apiV2SystemServiceUsersGet)
    call_apiV2SystemServiceUsersGet
    ;;
    apiV2SystemServiceUsersPost)
    call_apiV2SystemServiceUsersPost
    ;;
    apiV2SystemServiceUsersUserIdDelete)
    call_apiV2SystemServiceUsersUserIdDelete
    ;;
    apiV2SystemServiceUsersUserIdExtendedGet)
    call_apiV2SystemServiceUsersUserIdExtendedGet
    ;;
    apiV2SystemServiceUsersUserIdPut)
    call_apiV2SystemServiceUsersUserIdPut
    ;;
    getUserAsync)
    call_getUserAsync
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
