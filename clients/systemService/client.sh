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
operation_parameters_minimum_occurrences["getAndStoreTokens:::api-version"]=0
operation_parameters_minimum_occurrences["getAndStoreTokens:::x-api-version"]=0
operation_parameters_minimum_occurrences["isRequestValidAsync:::api-version"]=0
operation_parameters_minimum_occurrences["isRequestValidAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["adminPreviewBasicEmailTemplate:::api-version"]=0
operation_parameters_minimum_occurrences["adminPreviewBasicEmailTemplate:::x-api-version"]=0
operation_parameters_minimum_occurrences["adminPreviewBasicEmailTemplate:::ObjectEmailDispatchRequest"]=0
operation_parameters_minimum_occurrences["adminSendBasicEmail:::api-version"]=0
operation_parameters_minimum_occurrences["adminSendBasicEmail:::x-api-version"]=0
operation_parameters_minimum_occurrences["adminSendBasicEmail:::ObjectEmailDispatchRequest"]=0
operation_parameters_minimum_occurrences["forgotPasswordPost:::ForgotPasswordRequest"]=1
operation_parameters_minimum_occurrences["loginPost:::LoginRequest"]=1
operation_parameters_minimum_occurrences["loginPost:::useCookies"]=0
operation_parameters_minimum_occurrences["loginPost:::useSessionCookies"]=0
operation_parameters_minimum_occurrences["manage2faPost:::TwoFactorRequest"]=1
operation_parameters_minimum_occurrences["manageInfoPost:::InfoRequest"]=1
operation_parameters_minimum_occurrences["mapIdentityApiConfirmEmail:::userId"]=1
operation_parameters_minimum_occurrences["mapIdentityApiConfirmEmail:::code"]=1
operation_parameters_minimum_occurrences["mapIdentityApiConfirmEmail:::changedEmail"]=0
operation_parameters_minimum_occurrences["refreshPost:::RefreshRequest"]=1
operation_parameters_minimum_occurrences["registerPost:::RegisterRequest"]=1
operation_parameters_minimum_occurrences["resendConfirmationEmailPost:::ResendConfirmationEmailRequest"]=1
operation_parameters_minimum_occurrences["resetPasswordPost:::ResetPasswordRequest"]=1
operation_parameters_minimum_occurrences["getLicenseAssignmentsAsync:::licenseId"]=1
operation_parameters_minimum_occurrences["getLicenseAssignmentsAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getLicenseAssignmentsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getLicenseAssignmentsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getLicenseAttributesAsync:::licenseId"]=1
operation_parameters_minimum_occurrences["getLicenseAttributesAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getLicenseAttributesAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getLicenseAttributesAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getLicenseByIdAsync:::licenseId"]=1
operation_parameters_minimum_occurrences["getLicenseByIdAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getLicenseByIdAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getLicenseFeaturesAsync:::licenseId"]=1
operation_parameters_minimum_occurrences["getLicenseFeaturesAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getLicenseFeaturesAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getLicenseFeaturesAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getLicenseRecordsQuotaAsync:::licenseId"]=1
operation_parameters_minimum_occurrences["getLicenseRecordsQuotaAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getLicenseRecordsQuotaAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getLicenseRecordsQuotaAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getLicensesAsync:::tenantId"]=0
operation_parameters_minimum_occurrences["getLicensesAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getLicensesAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["redeemLicenseAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["redeemLicenseAsync:::LicenseValidationRequest"]=1
operation_parameters_minimum_occurrences["redeemLicenseAsync:::api-version"]=0
operation_parameters_minimum_occurrences["redeemLicenseAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["validateLicenseAsync:::LicenseValidationRequest"]=1
operation_parameters_minimum_occurrences["validateLicenseAsync:::api-version"]=0
operation_parameters_minimum_occurrences["validateLicenseAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["migrate:::api-version"]=0
operation_parameters_minimum_occurrences["migrate:::x-api-version"]=0
operation_parameters_minimum_occurrences["migrations:::pending"]=0
operation_parameters_minimum_occurrences["migrations:::api-version"]=0
operation_parameters_minimum_occurrences["migrations:::x-api-version"]=0
operation_parameters_minimum_occurrences["getAllModules:::tenantId"]=1
operation_parameters_minimum_occurrences["getAllModules:::api-version"]=0
operation_parameters_minimum_occurrences["getAllModules:::x-api-version"]=0
operation_parameters_minimum_occurrences["getAvailableModules:::tenantId"]=0
operation_parameters_minimum_occurrences["getAvailableModules:::api-version"]=0
operation_parameters_minimum_occurrences["getAvailableModules:::x-api-version"]=0
operation_parameters_minimum_occurrences["createSystemOption:::key"]=1
operation_parameters_minimum_occurrences["createSystemOption:::portalId"]=0
operation_parameters_minimum_occurrences["createSystemOption:::api-version"]=0
operation_parameters_minimum_occurrences["createSystemOption:::x-api-version"]=0
operation_parameters_minimum_occurrences["createSystemOption:::OptionCreateDto"]=0
operation_parameters_minimum_occurrences["deleteSystemOption:::optionId"]=1
operation_parameters_minimum_occurrences["deleteSystemOption:::api-version"]=0
operation_parameters_minimum_occurrences["deleteSystemOption:::x-api-version"]=0
operation_parameters_minimum_occurrences["getSystemOptionById:::optionId"]=1
operation_parameters_minimum_occurrences["getSystemOptionById:::api-version"]=0
operation_parameters_minimum_occurrences["getSystemOptionById:::x-api-version"]=0
operation_parameters_minimum_occurrences["getSystemOptionByKey:::portalId"]=1
operation_parameters_minimum_occurrences["getSystemOptionByKey:::key"]=1
operation_parameters_minimum_occurrences["getSystemOptionByKey:::api-version"]=0
operation_parameters_minimum_occurrences["getSystemOptionByKey:::x-api-version"]=0
operation_parameters_minimum_occurrences["getSystemOptions:::portalId"]=1
operation_parameters_minimum_occurrences["getSystemOptions:::api-version"]=0
operation_parameters_minimum_occurrences["getSystemOptions:::x-api-version"]=0
operation_parameters_minimum_occurrences["getSystemOptionsCount:::portalId"]=1
operation_parameters_minimum_occurrences["getSystemOptionsCount:::api-version"]=0
operation_parameters_minimum_occurrences["getSystemOptionsCount:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateSystemOption:::optionId"]=1
operation_parameters_minimum_occurrences["updateSystemOption:::api-version"]=0
operation_parameters_minimum_occurrences["updateSystemOption:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateSystemOption:::OptionUpdateDto"]=0
operation_parameters_minimum_occurrences["upsertSystemOption:::key"]=1
operation_parameters_minimum_occurrences["upsertSystemOption:::portalId"]=0
operation_parameters_minimum_occurrences["upsertSystemOption:::api-version"]=0
operation_parameters_minimum_occurrences["upsertSystemOption:::x-api-version"]=0
operation_parameters_minimum_occurrences["upsertSystemOption:::OptionUpdateDto"]=0
operation_parameters_minimum_occurrences["adminPreviewTenantEmail:::tenantId"]=1
operation_parameters_minimum_occurrences["adminPreviewTenantEmail:::api-version"]=0
operation_parameters_minimum_occurrences["adminPreviewTenantEmail:::x-api-version"]=0
operation_parameters_minimum_occurrences["adminPreviewTenantEmail:::EmailDispatchRequest"]=0
operation_parameters_minimum_occurrences["adminSendTenantEmail:::tenantId"]=1
operation_parameters_minimum_occurrences["adminSendTenantEmail:::api-version"]=0
operation_parameters_minimum_occurrences["adminSendTenantEmail:::x-api-version"]=0
operation_parameters_minimum_occurrences["adminSendTenantEmail:::EmailDispatchRequest"]=0
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
operation_parameters_minimum_occurrences["adminPreviewUserEmailTemplate:::userId"]=1
operation_parameters_minimum_occurrences["adminPreviewUserEmailTemplate:::api-version"]=0
operation_parameters_minimum_occurrences["adminPreviewUserEmailTemplate:::x-api-version"]=0
operation_parameters_minimum_occurrences["adminPreviewUserEmailTemplate:::EmailDispatchRequest"]=0
operation_parameters_minimum_occurrences["adminSendUserEmail:::userId"]=1
operation_parameters_minimum_occurrences["adminSendUserEmail:::api-version"]=0
operation_parameters_minimum_occurrences["adminSendUserEmail:::x-api-version"]=0
operation_parameters_minimum_occurrences["adminSendUserEmail:::EmailDispatchRequest"]=0
operation_parameters_minimum_occurrences["createAccountHolderAsync:::api-version"]=0
operation_parameters_minimum_occurrences["createAccountHolderAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createAccountHolderAsync:::UserCreateDto"]=0
operation_parameters_minimum_occurrences["deleteAccountHolderAsync:::userId"]=1
operation_parameters_minimum_occurrences["deleteAccountHolderAsync:::api-version"]=0
operation_parameters_minimum_occurrences["deleteAccountHolderAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getExtendedAccountHolderAsync:::userId"]=1
operation_parameters_minimum_occurrences["getExtendedAccountHolderAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getExtendedAccountHolderAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getExtendedUsersAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getExtendedUsersAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getExtendedUsersCountAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getExtendedUsersCountAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getUserAsync:::userId"]=1
operation_parameters_minimum_occurrences["getUserAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getUserAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getUsersAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getUsersAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getUsersCountAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getUsersCountAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateAccountHolderAsync:::userId"]=1
operation_parameters_minimum_occurrences["updateAccountHolderAsync:::api-version"]=0
operation_parameters_minimum_occurrences["updateAccountHolderAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateAccountHolderAsync:::UserUpdateDto"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["getAndStoreTokens:::api-version"]=0
operation_parameters_maximum_occurrences["getAndStoreTokens:::x-api-version"]=0
operation_parameters_maximum_occurrences["isRequestValidAsync:::api-version"]=0
operation_parameters_maximum_occurrences["isRequestValidAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["adminPreviewBasicEmailTemplate:::api-version"]=0
operation_parameters_maximum_occurrences["adminPreviewBasicEmailTemplate:::x-api-version"]=0
operation_parameters_maximum_occurrences["adminPreviewBasicEmailTemplate:::ObjectEmailDispatchRequest"]=0
operation_parameters_maximum_occurrences["adminSendBasicEmail:::api-version"]=0
operation_parameters_maximum_occurrences["adminSendBasicEmail:::x-api-version"]=0
operation_parameters_maximum_occurrences["adminSendBasicEmail:::ObjectEmailDispatchRequest"]=0
operation_parameters_maximum_occurrences["forgotPasswordPost:::ForgotPasswordRequest"]=0
operation_parameters_maximum_occurrences["loginPost:::LoginRequest"]=0
operation_parameters_maximum_occurrences["loginPost:::useCookies"]=0
operation_parameters_maximum_occurrences["loginPost:::useSessionCookies"]=0
operation_parameters_maximum_occurrences["manage2faPost:::TwoFactorRequest"]=0
operation_parameters_maximum_occurrences["manageInfoPost:::InfoRequest"]=0
operation_parameters_maximum_occurrences["mapIdentityApiConfirmEmail:::userId"]=0
operation_parameters_maximum_occurrences["mapIdentityApiConfirmEmail:::code"]=0
operation_parameters_maximum_occurrences["mapIdentityApiConfirmEmail:::changedEmail"]=0
operation_parameters_maximum_occurrences["refreshPost:::RefreshRequest"]=0
operation_parameters_maximum_occurrences["registerPost:::RegisterRequest"]=0
operation_parameters_maximum_occurrences["resendConfirmationEmailPost:::ResendConfirmationEmailRequest"]=0
operation_parameters_maximum_occurrences["resetPasswordPost:::ResetPasswordRequest"]=0
operation_parameters_maximum_occurrences["getLicenseAssignmentsAsync:::licenseId"]=0
operation_parameters_maximum_occurrences["getLicenseAssignmentsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getLicenseAssignmentsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getLicenseAssignmentsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getLicenseAttributesAsync:::licenseId"]=0
operation_parameters_maximum_occurrences["getLicenseAttributesAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getLicenseAttributesAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getLicenseAttributesAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getLicenseByIdAsync:::licenseId"]=0
operation_parameters_maximum_occurrences["getLicenseByIdAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getLicenseByIdAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getLicenseFeaturesAsync:::licenseId"]=0
operation_parameters_maximum_occurrences["getLicenseFeaturesAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getLicenseFeaturesAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getLicenseFeaturesAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getLicenseRecordsQuotaAsync:::licenseId"]=0
operation_parameters_maximum_occurrences["getLicenseRecordsQuotaAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getLicenseRecordsQuotaAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getLicenseRecordsQuotaAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getLicensesAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getLicensesAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getLicensesAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["redeemLicenseAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["redeemLicenseAsync:::LicenseValidationRequest"]=0
operation_parameters_maximum_occurrences["redeemLicenseAsync:::api-version"]=0
operation_parameters_maximum_occurrences["redeemLicenseAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["validateLicenseAsync:::LicenseValidationRequest"]=0
operation_parameters_maximum_occurrences["validateLicenseAsync:::api-version"]=0
operation_parameters_maximum_occurrences["validateLicenseAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["migrate:::api-version"]=0
operation_parameters_maximum_occurrences["migrate:::x-api-version"]=0
operation_parameters_maximum_occurrences["migrations:::pending"]=0
operation_parameters_maximum_occurrences["migrations:::api-version"]=0
operation_parameters_maximum_occurrences["migrations:::x-api-version"]=0
operation_parameters_maximum_occurrences["getAllModules:::tenantId"]=0
operation_parameters_maximum_occurrences["getAllModules:::api-version"]=0
operation_parameters_maximum_occurrences["getAllModules:::x-api-version"]=0
operation_parameters_maximum_occurrences["getAvailableModules:::tenantId"]=0
operation_parameters_maximum_occurrences["getAvailableModules:::api-version"]=0
operation_parameters_maximum_occurrences["getAvailableModules:::x-api-version"]=0
operation_parameters_maximum_occurrences["createSystemOption:::key"]=0
operation_parameters_maximum_occurrences["createSystemOption:::portalId"]=0
operation_parameters_maximum_occurrences["createSystemOption:::api-version"]=0
operation_parameters_maximum_occurrences["createSystemOption:::x-api-version"]=0
operation_parameters_maximum_occurrences["createSystemOption:::OptionCreateDto"]=0
operation_parameters_maximum_occurrences["deleteSystemOption:::optionId"]=0
operation_parameters_maximum_occurrences["deleteSystemOption:::api-version"]=0
operation_parameters_maximum_occurrences["deleteSystemOption:::x-api-version"]=0
operation_parameters_maximum_occurrences["getSystemOptionById:::optionId"]=0
operation_parameters_maximum_occurrences["getSystemOptionById:::api-version"]=0
operation_parameters_maximum_occurrences["getSystemOptionById:::x-api-version"]=0
operation_parameters_maximum_occurrences["getSystemOptionByKey:::portalId"]=0
operation_parameters_maximum_occurrences["getSystemOptionByKey:::key"]=0
operation_parameters_maximum_occurrences["getSystemOptionByKey:::api-version"]=0
operation_parameters_maximum_occurrences["getSystemOptionByKey:::x-api-version"]=0
operation_parameters_maximum_occurrences["getSystemOptions:::portalId"]=0
operation_parameters_maximum_occurrences["getSystemOptions:::api-version"]=0
operation_parameters_maximum_occurrences["getSystemOptions:::x-api-version"]=0
operation_parameters_maximum_occurrences["getSystemOptionsCount:::portalId"]=0
operation_parameters_maximum_occurrences["getSystemOptionsCount:::api-version"]=0
operation_parameters_maximum_occurrences["getSystemOptionsCount:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateSystemOption:::optionId"]=0
operation_parameters_maximum_occurrences["updateSystemOption:::api-version"]=0
operation_parameters_maximum_occurrences["updateSystemOption:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateSystemOption:::OptionUpdateDto"]=0
operation_parameters_maximum_occurrences["upsertSystemOption:::key"]=0
operation_parameters_maximum_occurrences["upsertSystemOption:::portalId"]=0
operation_parameters_maximum_occurrences["upsertSystemOption:::api-version"]=0
operation_parameters_maximum_occurrences["upsertSystemOption:::x-api-version"]=0
operation_parameters_maximum_occurrences["upsertSystemOption:::OptionUpdateDto"]=0
operation_parameters_maximum_occurrences["adminPreviewTenantEmail:::tenantId"]=0
operation_parameters_maximum_occurrences["adminPreviewTenantEmail:::api-version"]=0
operation_parameters_maximum_occurrences["adminPreviewTenantEmail:::x-api-version"]=0
operation_parameters_maximum_occurrences["adminPreviewTenantEmail:::EmailDispatchRequest"]=0
operation_parameters_maximum_occurrences["adminSendTenantEmail:::tenantId"]=0
operation_parameters_maximum_occurrences["adminSendTenantEmail:::api-version"]=0
operation_parameters_maximum_occurrences["adminSendTenantEmail:::x-api-version"]=0
operation_parameters_maximum_occurrences["adminSendTenantEmail:::EmailDispatchRequest"]=0
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
operation_parameters_maximum_occurrences["adminPreviewUserEmailTemplate:::userId"]=0
operation_parameters_maximum_occurrences["adminPreviewUserEmailTemplate:::api-version"]=0
operation_parameters_maximum_occurrences["adminPreviewUserEmailTemplate:::x-api-version"]=0
operation_parameters_maximum_occurrences["adminPreviewUserEmailTemplate:::EmailDispatchRequest"]=0
operation_parameters_maximum_occurrences["adminSendUserEmail:::userId"]=0
operation_parameters_maximum_occurrences["adminSendUserEmail:::api-version"]=0
operation_parameters_maximum_occurrences["adminSendUserEmail:::x-api-version"]=0
operation_parameters_maximum_occurrences["adminSendUserEmail:::EmailDispatchRequest"]=0
operation_parameters_maximum_occurrences["createAccountHolderAsync:::api-version"]=0
operation_parameters_maximum_occurrences["createAccountHolderAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createAccountHolderAsync:::UserCreateDto"]=0
operation_parameters_maximum_occurrences["deleteAccountHolderAsync:::userId"]=0
operation_parameters_maximum_occurrences["deleteAccountHolderAsync:::api-version"]=0
operation_parameters_maximum_occurrences["deleteAccountHolderAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getExtendedAccountHolderAsync:::userId"]=0
operation_parameters_maximum_occurrences["getExtendedAccountHolderAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getExtendedAccountHolderAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getExtendedUsersAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getExtendedUsersAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getExtendedUsersCountAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getExtendedUsersCountAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getUserAsync:::userId"]=0
operation_parameters_maximum_occurrences["getUserAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getUserAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getUsersAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getUsersAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getUsersCountAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getUsersCountAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateAccountHolderAsync:::userId"]=0
operation_parameters_maximum_occurrences["updateAccountHolderAsync:::api-version"]=0
operation_parameters_maximum_occurrences["updateAccountHolderAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateAccountHolderAsync:::UserUpdateDto"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["getAndStoreTokens:::api-version"]=""
operation_parameters_collection_type["getAndStoreTokens:::x-api-version"]=""
operation_parameters_collection_type["isRequestValidAsync:::api-version"]=""
operation_parameters_collection_type["isRequestValidAsync:::x-api-version"]=""
operation_parameters_collection_type["adminPreviewBasicEmailTemplate:::api-version"]=""
operation_parameters_collection_type["adminPreviewBasicEmailTemplate:::x-api-version"]=""
operation_parameters_collection_type["adminPreviewBasicEmailTemplate:::ObjectEmailDispatchRequest"]=""
operation_parameters_collection_type["adminSendBasicEmail:::api-version"]=""
operation_parameters_collection_type["adminSendBasicEmail:::x-api-version"]=""
operation_parameters_collection_type["adminSendBasicEmail:::ObjectEmailDispatchRequest"]=""
operation_parameters_collection_type["forgotPasswordPost:::ForgotPasswordRequest"]=""
operation_parameters_collection_type["loginPost:::LoginRequest"]=""
operation_parameters_collection_type["loginPost:::useCookies"]=""
operation_parameters_collection_type["loginPost:::useSessionCookies"]=""
operation_parameters_collection_type["manage2faPost:::TwoFactorRequest"]=""
operation_parameters_collection_type["manageInfoPost:::InfoRequest"]=""
operation_parameters_collection_type["mapIdentityApiConfirmEmail:::userId"]=""
operation_parameters_collection_type["mapIdentityApiConfirmEmail:::code"]=""
operation_parameters_collection_type["mapIdentityApiConfirmEmail:::changedEmail"]=""
operation_parameters_collection_type["refreshPost:::RefreshRequest"]=""
operation_parameters_collection_type["registerPost:::RegisterRequest"]=""
operation_parameters_collection_type["resendConfirmationEmailPost:::ResendConfirmationEmailRequest"]=""
operation_parameters_collection_type["resetPasswordPost:::ResetPasswordRequest"]=""
operation_parameters_collection_type["getLicenseAssignmentsAsync:::licenseId"]=""
operation_parameters_collection_type["getLicenseAssignmentsAsync:::tenantId"]=""
operation_parameters_collection_type["getLicenseAssignmentsAsync:::api-version"]=""
operation_parameters_collection_type["getLicenseAssignmentsAsync:::x-api-version"]=""
operation_parameters_collection_type["getLicenseAttributesAsync:::licenseId"]=""
operation_parameters_collection_type["getLicenseAttributesAsync:::tenantId"]=""
operation_parameters_collection_type["getLicenseAttributesAsync:::api-version"]=""
operation_parameters_collection_type["getLicenseAttributesAsync:::x-api-version"]=""
operation_parameters_collection_type["getLicenseByIdAsync:::licenseId"]=""
operation_parameters_collection_type["getLicenseByIdAsync:::api-version"]=""
operation_parameters_collection_type["getLicenseByIdAsync:::x-api-version"]=""
operation_parameters_collection_type["getLicenseFeaturesAsync:::licenseId"]=""
operation_parameters_collection_type["getLicenseFeaturesAsync:::tenantId"]=""
operation_parameters_collection_type["getLicenseFeaturesAsync:::api-version"]=""
operation_parameters_collection_type["getLicenseFeaturesAsync:::x-api-version"]=""
operation_parameters_collection_type["getLicenseRecordsQuotaAsync:::licenseId"]=""
operation_parameters_collection_type["getLicenseRecordsQuotaAsync:::tenantId"]=""
operation_parameters_collection_type["getLicenseRecordsQuotaAsync:::api-version"]=""
operation_parameters_collection_type["getLicenseRecordsQuotaAsync:::x-api-version"]=""
operation_parameters_collection_type["getLicensesAsync:::tenantId"]=""
operation_parameters_collection_type["getLicensesAsync:::api-version"]=""
operation_parameters_collection_type["getLicensesAsync:::x-api-version"]=""
operation_parameters_collection_type["redeemLicenseAsync:::tenantId"]=""
operation_parameters_collection_type["redeemLicenseAsync:::LicenseValidationRequest"]=""
operation_parameters_collection_type["redeemLicenseAsync:::api-version"]=""
operation_parameters_collection_type["redeemLicenseAsync:::x-api-version"]=""
operation_parameters_collection_type["validateLicenseAsync:::LicenseValidationRequest"]=""
operation_parameters_collection_type["validateLicenseAsync:::api-version"]=""
operation_parameters_collection_type["validateLicenseAsync:::x-api-version"]=""
operation_parameters_collection_type["migrate:::api-version"]=""
operation_parameters_collection_type["migrate:::x-api-version"]=""
operation_parameters_collection_type["migrations:::pending"]=""
operation_parameters_collection_type["migrations:::api-version"]=""
operation_parameters_collection_type["migrations:::x-api-version"]=""
operation_parameters_collection_type["getAllModules:::tenantId"]=""
operation_parameters_collection_type["getAllModules:::api-version"]=""
operation_parameters_collection_type["getAllModules:::x-api-version"]=""
operation_parameters_collection_type["getAvailableModules:::tenantId"]=""
operation_parameters_collection_type["getAvailableModules:::api-version"]=""
operation_parameters_collection_type["getAvailableModules:::x-api-version"]=""
operation_parameters_collection_type["createSystemOption:::key"]=""
operation_parameters_collection_type["createSystemOption:::portalId"]=""
operation_parameters_collection_type["createSystemOption:::api-version"]=""
operation_parameters_collection_type["createSystemOption:::x-api-version"]=""
operation_parameters_collection_type["createSystemOption:::OptionCreateDto"]=""
operation_parameters_collection_type["deleteSystemOption:::optionId"]=""
operation_parameters_collection_type["deleteSystemOption:::api-version"]=""
operation_parameters_collection_type["deleteSystemOption:::x-api-version"]=""
operation_parameters_collection_type["getSystemOptionById:::optionId"]=""
operation_parameters_collection_type["getSystemOptionById:::api-version"]=""
operation_parameters_collection_type["getSystemOptionById:::x-api-version"]=""
operation_parameters_collection_type["getSystemOptionByKey:::portalId"]=""
operation_parameters_collection_type["getSystemOptionByKey:::key"]=""
operation_parameters_collection_type["getSystemOptionByKey:::api-version"]=""
operation_parameters_collection_type["getSystemOptionByKey:::x-api-version"]=""
operation_parameters_collection_type["getSystemOptions:::portalId"]=""
operation_parameters_collection_type["getSystemOptions:::api-version"]=""
operation_parameters_collection_type["getSystemOptions:::x-api-version"]=""
operation_parameters_collection_type["getSystemOptionsCount:::portalId"]=""
operation_parameters_collection_type["getSystemOptionsCount:::api-version"]=""
operation_parameters_collection_type["getSystemOptionsCount:::x-api-version"]=""
operation_parameters_collection_type["updateSystemOption:::optionId"]=""
operation_parameters_collection_type["updateSystemOption:::api-version"]=""
operation_parameters_collection_type["updateSystemOption:::x-api-version"]=""
operation_parameters_collection_type["updateSystemOption:::OptionUpdateDto"]=""
operation_parameters_collection_type["upsertSystemOption:::key"]=""
operation_parameters_collection_type["upsertSystemOption:::portalId"]=""
operation_parameters_collection_type["upsertSystemOption:::api-version"]=""
operation_parameters_collection_type["upsertSystemOption:::x-api-version"]=""
operation_parameters_collection_type["upsertSystemOption:::OptionUpdateDto"]=""
operation_parameters_collection_type["adminPreviewTenantEmail:::tenantId"]=""
operation_parameters_collection_type["adminPreviewTenantEmail:::api-version"]=""
operation_parameters_collection_type["adminPreviewTenantEmail:::x-api-version"]=""
operation_parameters_collection_type["adminPreviewTenantEmail:::EmailDispatchRequest"]=""
operation_parameters_collection_type["adminSendTenantEmail:::tenantId"]=""
operation_parameters_collection_type["adminSendTenantEmail:::api-version"]=""
operation_parameters_collection_type["adminSendTenantEmail:::x-api-version"]=""
operation_parameters_collection_type["adminSendTenantEmail:::EmailDispatchRequest"]=""
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
operation_parameters_collection_type["adminPreviewUserEmailTemplate:::userId"]=""
operation_parameters_collection_type["adminPreviewUserEmailTemplate:::api-version"]=""
operation_parameters_collection_type["adminPreviewUserEmailTemplate:::x-api-version"]=""
operation_parameters_collection_type["adminPreviewUserEmailTemplate:::EmailDispatchRequest"]=""
operation_parameters_collection_type["adminSendUserEmail:::userId"]=""
operation_parameters_collection_type["adminSendUserEmail:::api-version"]=""
operation_parameters_collection_type["adminSendUserEmail:::x-api-version"]=""
operation_parameters_collection_type["adminSendUserEmail:::EmailDispatchRequest"]=""
operation_parameters_collection_type["createAccountHolderAsync:::api-version"]=""
operation_parameters_collection_type["createAccountHolderAsync:::x-api-version"]=""
operation_parameters_collection_type["createAccountHolderAsync:::UserCreateDto"]=""
operation_parameters_collection_type["deleteAccountHolderAsync:::userId"]=""
operation_parameters_collection_type["deleteAccountHolderAsync:::api-version"]=""
operation_parameters_collection_type["deleteAccountHolderAsync:::x-api-version"]=""
operation_parameters_collection_type["getExtendedAccountHolderAsync:::userId"]=""
operation_parameters_collection_type["getExtendedAccountHolderAsync:::api-version"]=""
operation_parameters_collection_type["getExtendedAccountHolderAsync:::x-api-version"]=""
operation_parameters_collection_type["getExtendedUsersAsync:::api-version"]=""
operation_parameters_collection_type["getExtendedUsersAsync:::x-api-version"]=""
operation_parameters_collection_type["getExtendedUsersCountAsync:::api-version"]=""
operation_parameters_collection_type["getExtendedUsersCountAsync:::x-api-version"]=""
operation_parameters_collection_type["getUserAsync:::userId"]=""
operation_parameters_collection_type["getUserAsync:::api-version"]=""
operation_parameters_collection_type["getUserAsync:::x-api-version"]=""
operation_parameters_collection_type["getUsersAsync:::api-version"]=""
operation_parameters_collection_type["getUsersAsync:::x-api-version"]=""
operation_parameters_collection_type["getUsersCountAsync:::api-version"]=""
operation_parameters_collection_type["getUsersCountAsync:::x-api-version"]=""
operation_parameters_collection_type["updateAccountHolderAsync:::userId"]=""
operation_parameters_collection_type["updateAccountHolderAsync:::api-version"]=""
operation_parameters_collection_type["updateAccountHolderAsync:::x-api-version"]=""
operation_parameters_collection_type["updateAccountHolderAsync:::UserUpdateDto"]=""


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

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
    done
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

${BOLD}${WHITE}SystemService command line client (API version 2.0.0.0)${OFF}

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
    echo -e "${BOLD}${WHITE}Operations (grouped by tags)${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}[antiforgery]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getAndStoreTokens${OFF};Get and store antiforgery tokens
  ${CYAN}isRequestValidAsync${OFF};Validate antiforgery request
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[emails]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}adminPreviewBasicEmailTemplate${OFF};Preview a rendered basic email template.
  ${CYAN}adminSendBasicEmail${OFF};Send a basic transactional email to recipients.
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[fenixAllianceABPWeb]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}forgotPasswordPost${OFF};
  ${CYAN}healthGet${OFF};
  ${CYAN}helloGet${OFF};
  ${CYAN}loginPost${OFF};
  ${CYAN}manage2faPost${OFF};
  ${CYAN}manageInfoGet${OFF};
  ${CYAN}manageInfoPost${OFF};
  ${CYAN}mapIdentityApiConfirmEmail${OFF};
  ${CYAN}refreshPost${OFF};
  ${CYAN}registerPost${OFF};
  ${CYAN}resendConfirmationEmailPost${OFF};
  ${CYAN}resetPasswordPost${OFF};
  ${CYAN}versionGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[licensing]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getLicenseAssignmentsAsync${OFF};Retrieve license assignments
  ${CYAN}getLicenseAttributesAsync${OFF};Retrieve license attributes
  ${CYAN}getLicenseByIdAsync${OFF};Retrieve a license by ID
  ${CYAN}getLicenseFeaturesAsync${OFF};Retrieve license features
  ${CYAN}getLicenseRecordsQuotaAsync${OFF};Retrieve license record quota
  ${CYAN}getLicensesAsync${OFF};Retrieve a list of licenses
  ${CYAN}redeemLicenseAsync${OFF};Redeem a license
  ${CYAN}validateLicenseAsync${OFF};Validate a license
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[migrations]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}migrate${OFF};Apply pending database migrations
  ${CYAN}migrations${OFF};Retrieve database migrations
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[modules]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getAllModules${OFF};Get all modules available on this suite server instance.
  ${CYAN}getAvailableModules${OFF};Get all modules available to a tenant user.
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[options]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}createSystemOption${OFF};Create a new system option
  ${CYAN}deleteSystemOption${OFF};Delete a system option
  ${CYAN}getSystemOptionById${OFF};Retrieve a single system option by its ID
  ${CYAN}getSystemOptionByKey${OFF};Retrieve a single system option by its key
  ${CYAN}getSystemOptions${OFF};Retrieve a list of system options
  ${CYAN}getSystemOptionsCount${OFF};Get the count of system options
  ${CYAN}updateSystemOption${OFF};Update a system option
  ${CYAN}upsertSystemOption${OFF};Create or update a system option by key
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[tenants]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}adminPreviewTenantEmail${OFF};Preview the rendered email for a user.
  ${CYAN}adminSendTenantEmail${OFF};Send an email to a user.
  ${CYAN}createTenant${OFF};Create a new tenant.
  ${CYAN}deleteTenant${OFF};Delete a specific tenant by ID.
  ${CYAN}getAllExtendedTenants${OFF};Get all extended tenants available on this suite server instance.
  ${CYAN}getAllTenants${OFF};Get all tenants available on this suite server instance.
  ${CYAN}getExtendedTenantsCount${OFF};Get the total count of extended tenants available on this suite server instance.
  ${CYAN}getTenant${OFF};Get a specific tenant by ID.
  ${CYAN}getTenantsCount${OFF};Get the total count of tenants available on this suite server instance.
  ${CYAN}updateTenant${OFF};Update a specific tenant by ID.
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[users]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}adminPreviewUserEmailTemplate${OFF};Preview the rendered email for a user.
  ${CYAN}adminSendUserEmail${OFF};Send an email to a user.
  ${CYAN}createAccountHolderAsync${OFF};Create a new user
  ${CYAN}deleteAccountHolderAsync${OFF};Delete a user
  ${CYAN}getExtendedAccountHolderAsync${OFF};Retrieve an extended user by ID
  ${CYAN}getExtendedUsersAsync${OFF};Retrieve a list of extended users
  ${CYAN}getExtendedUsersCountAsync${OFF};Get the count of extended users
  ${CYAN}getUserAsync${OFF};Retrieve a user by ID
  ${CYAN}getUsersAsync${OFF};Retrieve a list of users
  ${CYAN}getUsersCountAsync${OFF};Get the count of users
  ${CYAN}updateAccountHolderAsync${OFF};Update a user
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
    echo -e "${BOLD}${WHITE}SystemService command line client (API version 2.0.0.0)${OFF}"
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
    echo -e "${BOLD}SystemService command line client (API version 2.0.0.0)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for getAndStoreTokens operation
#
##############################################################################
print_getAndStoreTokens_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getAndStoreTokens - Get and store antiforgery tokens${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Generates antiforgery tokens and stores them in the current HTTP context." | paste -sd' ' | fold -sw 80
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
# Print help for isRequestValidAsync operation
#
##############################################################################
print_isRequestValidAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}isRequestValidAsync - Validate antiforgery request${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Validates whether the current HTTP request contains a valid antiforgery token." | paste -sd' ' | fold -sw 80
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
# Print help for adminPreviewBasicEmailTemplate operation
#
##############################################################################
print_adminPreviewBasicEmailTemplate_help() {
    echo ""
    echo -e "${BOLD}${WHITE}adminPreviewBasicEmailTemplate - Preview a rendered basic email template.${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for global administrators (business_owner role)." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for adminSendBasicEmail operation
#
##############################################################################
print_adminSendBasicEmail_help() {
    echo ""
    echo -e "${BOLD}${WHITE}adminSendBasicEmail - Send a basic transactional email to recipients.${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for global administrators (business_owner role)." | paste -sd' ' | fold -sw 80
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
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for forgotPasswordPost operation
#
##############################################################################
print_forgotPasswordPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}forgotPasswordPost - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for healthGet operation
#
##############################################################################
print_healthGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}healthGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for helloGet operation
#
##############################################################################
print_helloGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}helloGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for loginPost operation
#
##############################################################################
print_loginPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}loginPost - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}useCookies${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: useCookies=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}useSessionCookies${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: useSessionCookies=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for manage2faPost operation
#
##############################################################################
print_manage2faPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}manage2faPost - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for manageInfoGet operation
#
##############################################################################
print_manageInfoGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}manageInfoGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for manageInfoPost operation
#
##############################################################################
print_manageInfoPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}manageInfoPost - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mapIdentityApiConfirmEmail operation
#
##############################################################################
print_mapIdentityApiConfirmEmail_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mapIdentityApiConfirmEmail - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}userId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: userId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}code${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: code=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}changedEmail${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: changedEmail=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for refreshPost operation
#
##############################################################################
print_refreshPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}refreshPost - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for registerPost operation
#
##############################################################################
print_registerPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}registerPost - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for resendConfirmationEmailPost operation
#
##############################################################################
print_resendConfirmationEmailPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}resendConfirmationEmailPost - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for resetPasswordPost operation
#
##############################################################################
print_resetPasswordPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}resetPasswordPost - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for versionGet operation
#
##############################################################################
print_versionGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}versionGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getLicenseAssignmentsAsync operation
#
##############################################################################
print_getLicenseAssignmentsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getLicenseAssignmentsAsync - Retrieve license assignments${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all license assignments for a given license." | paste -sd' ' | fold -sw 80
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
# Print help for getLicenseAttributesAsync operation
#
##############################################################################
print_getLicenseAttributesAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getLicenseAttributesAsync - Retrieve license attributes${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all additional attributes for a given license." | paste -sd' ' | fold -sw 80
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
# Print help for getLicenseByIdAsync operation
#
##############################################################################
print_getLicenseByIdAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getLicenseByIdAsync - Retrieve a license by ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves a single suite license by its unique identifier." | paste -sd' ' | fold -sw 80
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
# Print help for getLicenseFeaturesAsync operation
#
##############################################################################
print_getLicenseFeaturesAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getLicenseFeaturesAsync - Retrieve license features${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all features for a given license." | paste -sd' ' | fold -sw 80
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
# Print help for getLicenseRecordsQuotaAsync operation
#
##############################################################################
print_getLicenseRecordsQuotaAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getLicenseRecordsQuotaAsync - Retrieve license record quota${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves the record quota for a given license." | paste -sd' ' | fold -sw 80
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
# Print help for getLicensesAsync operation
#
##############################################################################
print_getLicensesAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getLicensesAsync - Retrieve a list of licenses${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves a list of suite licenses, optionally filtered by tenant." | paste -sd' ' | fold -sw 80
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
# Print help for redeemLicenseAsync operation
#
##############################################################################
print_redeemLicenseAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}redeemLicenseAsync - Redeem a license${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Redeems a license for the current tenant user." | paste -sd' ' | fold -sw 80
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
# Print help for validateLicenseAsync operation
#
##############################################################################
print_validateLicenseAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}validateLicenseAsync - Validate a license${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Validates a license key and returns validation failures if any." | paste -sd' ' | fold -sw 80
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
# Print help for migrate operation
#
##############################################################################
print_migrate_help() {
    echo ""
    echo -e "${BOLD}${WHITE}migrate - Apply pending database migrations${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Applies all pending database migrations and returns the list of migrations that were applied." | paste -sd' ' | fold -sw 80
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
# Print help for migrations operation
#
##############################################################################
print_migrations_help() {
    echo ""
    echo -e "${BOLD}${WHITE}migrations - Retrieve database migrations${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves the list of applied or pending database migrations." | paste -sd' ' | fold -sw 80
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
# Print help for getAllModules operation
#
##############################################################################
print_getAllModules_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getAllModules - Get all modules available on this suite server instance.${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}getAvailableModules - Get all modules available to a tenant user.${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for createSystemOption operation
#
##############################################################################
print_createSystemOption_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createSystemOption - Create a new system option${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Create a new system option" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}key${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: key=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}portalId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: portalId=value${OFF}" \
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
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteSystemOption operation
#
##############################################################################
print_deleteSystemOption_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteSystemOption - Delete a system option${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Delete a system option" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}optionId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: optionId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getSystemOptionById operation
#
##############################################################################
print_getSystemOptionById_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getSystemOptionById - Retrieve a single system option by its ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a single system option by its ID" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}optionId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: optionId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getSystemOptionByKey operation
#
##############################################################################
print_getSystemOptionByKey_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getSystemOptionByKey - Retrieve a single system option by its key${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a single system option by its key" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}portalId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: portalId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}key${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: key=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getSystemOptions operation
#
##############################################################################
print_getSystemOptions_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getSystemOptions - Retrieve a list of system options${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieve a list of system options for a portal" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}portalId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: portalId=value${OFF}" \
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
# Print help for getSystemOptionsCount operation
#
##############################################################################
print_getSystemOptionsCount_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getSystemOptionsCount - Get the count of system options${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get the count of system options for a portal" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}portalId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: portalId=value${OFF}" \
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
# Print help for updateSystemOption operation
#
##############################################################################
print_updateSystemOption_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateSystemOption - Update a system option${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Update a system option" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}optionId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: optionId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for upsertSystemOption operation
#
##############################################################################
print_upsertSystemOption_help() {
    echo ""
    echo -e "${BOLD}${WHITE}upsertSystemOption - Create or update a system option by key${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Create or update a system option by key" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}key${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: key=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}portalId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: portalId=value${OFF}" \
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
# Print help for adminPreviewTenantEmail operation
#
##############################################################################
print_adminPreviewTenantEmail_help() {
    echo ""
    echo -e "${BOLD}${WHITE}adminPreviewTenantEmail - Preview the rendered email for a user.${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for users with the 'business_owner' role (global administrators)." | paste -sd' ' | fold -sw 80
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
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for adminSendTenantEmail operation
#
##############################################################################
print_adminSendTenantEmail_help() {
    echo ""
    echo -e "${BOLD}${WHITE}adminSendTenantEmail - Send an email to a user.${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for users with the 'business_owner' role (global administrators)." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}createTenant - Create a new tenant.${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}deleteTenant - Delete a specific tenant by ID.${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}getAllExtendedTenants - Get all extended tenants available on this suite server instance.${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}getAllTenants - Get all tenants available on this suite server instance.${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}getExtendedTenantsCount - Get the total count of extended tenants available on this suite server instance.${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}getTenant - Get a specific tenant by ID.${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}getTenantsCount - Get the total count of tenants available on this suite server instance.${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}updateTenant - Update a specific tenant by ID.${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for adminPreviewUserEmailTemplate operation
#
##############################################################################
print_adminPreviewUserEmailTemplate_help() {
    echo ""
    echo -e "${BOLD}${WHITE}adminPreviewUserEmailTemplate - Preview the rendered email for a user.${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for users with the 'business_owner' role (global administrators)." | paste -sd' ' | fold -sw 80
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
}
##############################################################################
#
# Print help for adminSendUserEmail operation
#
##############################################################################
print_adminSendUserEmail_help() {
    echo ""
    echo -e "${BOLD}${WHITE}adminSendUserEmail - Send an email to a user.${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for users with the 'business_owner' role (global administrators)." | paste -sd' ' | fold -sw 80
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
# Print help for createAccountHolderAsync operation
#
##############################################################################
print_createAccountHolderAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createAccountHolderAsync - Create a new user${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for users with the 'business_owner' role (global administrators)." | paste -sd' ' | fold -sw 80
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
# Print help for deleteAccountHolderAsync operation
#
##############################################################################
print_deleteAccountHolderAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteAccountHolderAsync - Delete a user${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for users with the 'business_owner' role (global administrators)." | paste -sd' ' | fold -sw 80
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
# Print help for getExtendedAccountHolderAsync operation
#
##############################################################################
print_getExtendedAccountHolderAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getExtendedAccountHolderAsync - Retrieve an extended user by ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for users with the 'business_owner' role (global administrators)." | paste -sd' ' | fold -sw 80
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
# Print help for getExtendedUsersAsync operation
#
##############################################################################
print_getExtendedUsersAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getExtendedUsersAsync - Retrieve a list of extended users${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for users with the 'business_owner' role (global administrators)." | paste -sd' ' | fold -sw 80
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
# Print help for getExtendedUsersCountAsync operation
#
##############################################################################
print_getExtendedUsersCountAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getExtendedUsersCountAsync - Get the count of extended users${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for users with the 'business_owner' role (global administrators)." | paste -sd' ' | fold -sw 80
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
# Print help for getUserAsync operation
#
##############################################################################
print_getUserAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getUserAsync - Retrieve a user by ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for users with the 'business_owner' role (global administrators)." | paste -sd' ' | fold -sw 80
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
# Print help for getUsersAsync operation
#
##############################################################################
print_getUsersAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getUsersAsync - Retrieve a list of users${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for users with the 'business_owner' role (global administrators)." | paste -sd' ' | fold -sw 80
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
# Print help for getUsersCountAsync operation
#
##############################################################################
print_getUsersCountAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getUsersCountAsync - Get the count of users${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for users with the 'business_owner' role (global administrators)." | paste -sd' ' | fold -sw 80
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
# Print help for updateAccountHolderAsync operation
#
##############################################################################
print_updateAccountHolderAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateAccountHolderAsync - Update a user${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "This action is only available for users with the 'business_owner' role (global administrators)." | paste -sd' ' | fold -sw 80
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
# Call getAndStoreTokens operation
#
##############################################################################
call_getAndStoreTokens() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
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
# Call isRequestValidAsync operation
#
##############################################################################
call_isRequestValidAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
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
# Call adminPreviewBasicEmailTemplate operation
#
##############################################################################
call_adminPreviewBasicEmailTemplate() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Emails/Preview" path_parameter_names query_parameter_names); then
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
# Call adminSendBasicEmail operation
#
##############################################################################
call_adminSendBasicEmail() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Emails/SendBasic" path_parameter_names query_parameter_names); then
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
# Call forgotPasswordPost operation
#
##############################################################################
call_forgotPasswordPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/forgotPassword" path_parameter_names query_parameter_names); then
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
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
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
# Call healthGet operation
#
##############################################################################
call_healthGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/health" path_parameter_names query_parameter_names); then
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
# Call helloGet operation
#
##############################################################################
call_helloGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/hello" path_parameter_names query_parameter_names); then
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
# Call loginPost operation
#
##############################################################################
call_loginPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(useCookies useSessionCookies)
    local path

    if ! path=$(build_request_path "/login" path_parameter_names query_parameter_names); then
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
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
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
# Call manage2faPost operation
#
##############################################################################
call_manage2faPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/manage/2fa" path_parameter_names query_parameter_names); then
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
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
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
# Call manageInfoGet operation
#
##############################################################################
call_manageInfoGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/manage/info" path_parameter_names query_parameter_names); then
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
# Call manageInfoPost operation
#
##############################################################################
call_manageInfoPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/manage/info" path_parameter_names query_parameter_names); then
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
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
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
# Call mapIdentityApiConfirmEmail operation
#
##############################################################################
call_mapIdentityApiConfirmEmail() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(userId code changedEmail)
    local path

    if ! path=$(build_request_path "/confirmEmail" path_parameter_names query_parameter_names); then
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
# Call refreshPost operation
#
##############################################################################
call_refreshPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/refresh" path_parameter_names query_parameter_names); then
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
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
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
# Call registerPost operation
#
##############################################################################
call_registerPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/register" path_parameter_names query_parameter_names); then
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
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
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
# Call resendConfirmationEmailPost operation
#
##############################################################################
call_resendConfirmationEmailPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/resendConfirmationEmail" path_parameter_names query_parameter_names); then
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
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
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
# Call resetPasswordPost operation
#
##############################################################################
call_resetPasswordPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/resetPassword" path_parameter_names query_parameter_names); then
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
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
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
# Call versionGet operation
#
##############################################################################
call_versionGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/version" path_parameter_names query_parameter_names); then
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
# Call getLicenseAssignmentsAsync operation
#
##############################################################################
call_getLicenseAssignmentsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(licenseId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
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
# Call getLicenseAttributesAsync operation
#
##############################################################################
call_getLicenseAttributesAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(licenseId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
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
# Call getLicenseByIdAsync operation
#
##############################################################################
call_getLicenseByIdAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(licenseId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
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
# Call getLicenseFeaturesAsync operation
#
##############################################################################
call_getLicenseFeaturesAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(licenseId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
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
# Call getLicenseRecordsQuotaAsync operation
#
##############################################################################
call_getLicenseRecordsQuotaAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(licenseId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
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
# Call getLicensesAsync operation
#
##############################################################################
call_getLicensesAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
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
# Call redeemLicenseAsync operation
#
##############################################################################
call_redeemLicenseAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
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
# Call validateLicenseAsync operation
#
##############################################################################
call_validateLicenseAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
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
# Call migrate operation
#
##############################################################################
call_migrate() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
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
# Call migrations operation
#
##############################################################################
call_migrations() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(pending api-version)
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
# Call getAllModules operation
#
##############################################################################
call_getAllModules() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
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
    local query_parameter_names=(tenantId api-version)
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
# Call createSystemOption operation
#
##############################################################################
call_createSystemOption() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(key portalId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Options" path_parameter_names query_parameter_names); then
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
# Call deleteSystemOption operation
#
##############################################################################
call_deleteSystemOption() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(optionId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Options/{optionId}" path_parameter_names query_parameter_names); then
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
# Call getSystemOptionById operation
#
##############################################################################
call_getSystemOptionById() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(optionId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Options/{optionId}" path_parameter_names query_parameter_names); then
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
# Call getSystemOptionByKey operation
#
##############################################################################
call_getSystemOptionByKey() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(key)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(portalId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Options/Key/{key}" path_parameter_names query_parameter_names); then
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
# Call getSystemOptions operation
#
##############################################################################
call_getSystemOptions() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(portalId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Options" path_parameter_names query_parameter_names); then
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
# Call getSystemOptionsCount operation
#
##############################################################################
call_getSystemOptionsCount() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(portalId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Options/Count" path_parameter_names query_parameter_names); then
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
# Call updateSystemOption operation
#
##############################################################################
call_updateSystemOption() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(optionId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Options/{optionId}" path_parameter_names query_parameter_names); then
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
# Call upsertSystemOption operation
#
##############################################################################
call_upsertSystemOption() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(key)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(portalId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Options/Upsert/{key}" path_parameter_names query_parameter_names); then
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
# Call adminPreviewTenantEmail operation
#
##############################################################################
call_adminPreviewTenantEmail() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(tenantId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Tenants/{tenantId}/Emails/Preview" path_parameter_names query_parameter_names); then
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
# Call adminSendTenantEmail operation
#
##############################################################################
call_adminSendTenantEmail() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(tenantId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Tenants/{tenantId}/Emails/Send" path_parameter_names query_parameter_names); then
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
# Call createTenant operation
#
##############################################################################
call_createTenant() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
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
    local query_parameter_names=(api-version)
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
    local query_parameter_names=(api-version)
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
    local query_parameter_names=(api-version)
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
    local query_parameter_names=(api-version)
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
    local query_parameter_names=(api-version)
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
    local query_parameter_names=(api-version)
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
    local query_parameter_names=(api-version)
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
# Call adminPreviewUserEmailTemplate operation
#
##############################################################################
call_adminPreviewUserEmailTemplate() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(userId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Users/{userId}/Emails/Preview" path_parameter_names query_parameter_names); then
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
# Call adminSendUserEmail operation
#
##############################################################################
call_adminSendUserEmail() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(userId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/SystemService/Users/{userId}/Emails/Send" path_parameter_names query_parameter_names); then
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
# Call createAccountHolderAsync operation
#
##############################################################################
call_createAccountHolderAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
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
# Call deleteAccountHolderAsync operation
#
##############################################################################
call_deleteAccountHolderAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(userId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
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
# Call getExtendedAccountHolderAsync operation
#
##############################################################################
call_getExtendedAccountHolderAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(userId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
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
# Call getExtendedUsersAsync operation
#
##############################################################################
call_getExtendedUsersAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
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
# Call getExtendedUsersCountAsync operation
#
##############################################################################
call_getExtendedUsersCountAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
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
# Call getUserAsync operation
#
##############################################################################
call_getUserAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(userId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
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
# Call getUsersAsync operation
#
##############################################################################
call_getUsersAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
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
# Call getUsersCountAsync operation
#
##############################################################################
call_getUsersCountAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
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
# Call updateAccountHolderAsync operation
#
##############################################################################
call_updateAccountHolderAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(userId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
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
    getAndStoreTokens)
    operation="getAndStoreTokens"
    ;;
    isRequestValidAsync)
    operation="isRequestValidAsync"
    ;;
    adminPreviewBasicEmailTemplate)
    operation="adminPreviewBasicEmailTemplate"
    ;;
    adminSendBasicEmail)
    operation="adminSendBasicEmail"
    ;;
    forgotPasswordPost)
    operation="forgotPasswordPost"
    ;;
    healthGet)
    operation="healthGet"
    ;;
    helloGet)
    operation="helloGet"
    ;;
    loginPost)
    operation="loginPost"
    ;;
    manage2faPost)
    operation="manage2faPost"
    ;;
    manageInfoGet)
    operation="manageInfoGet"
    ;;
    manageInfoPost)
    operation="manageInfoPost"
    ;;
    mapIdentityApiConfirmEmail)
    operation="mapIdentityApiConfirmEmail"
    ;;
    refreshPost)
    operation="refreshPost"
    ;;
    registerPost)
    operation="registerPost"
    ;;
    resendConfirmationEmailPost)
    operation="resendConfirmationEmailPost"
    ;;
    resetPasswordPost)
    operation="resetPasswordPost"
    ;;
    versionGet)
    operation="versionGet"
    ;;
    getLicenseAssignmentsAsync)
    operation="getLicenseAssignmentsAsync"
    ;;
    getLicenseAttributesAsync)
    operation="getLicenseAttributesAsync"
    ;;
    getLicenseByIdAsync)
    operation="getLicenseByIdAsync"
    ;;
    getLicenseFeaturesAsync)
    operation="getLicenseFeaturesAsync"
    ;;
    getLicenseRecordsQuotaAsync)
    operation="getLicenseRecordsQuotaAsync"
    ;;
    getLicensesAsync)
    operation="getLicensesAsync"
    ;;
    redeemLicenseAsync)
    operation="redeemLicenseAsync"
    ;;
    validateLicenseAsync)
    operation="validateLicenseAsync"
    ;;
    migrate)
    operation="migrate"
    ;;
    migrations)
    operation="migrations"
    ;;
    getAllModules)
    operation="getAllModules"
    ;;
    getAvailableModules)
    operation="getAvailableModules"
    ;;
    createSystemOption)
    operation="createSystemOption"
    ;;
    deleteSystemOption)
    operation="deleteSystemOption"
    ;;
    getSystemOptionById)
    operation="getSystemOptionById"
    ;;
    getSystemOptionByKey)
    operation="getSystemOptionByKey"
    ;;
    getSystemOptions)
    operation="getSystemOptions"
    ;;
    getSystemOptionsCount)
    operation="getSystemOptionsCount"
    ;;
    updateSystemOption)
    operation="updateSystemOption"
    ;;
    upsertSystemOption)
    operation="upsertSystemOption"
    ;;
    adminPreviewTenantEmail)
    operation="adminPreviewTenantEmail"
    ;;
    adminSendTenantEmail)
    operation="adminSendTenantEmail"
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
    adminPreviewUserEmailTemplate)
    operation="adminPreviewUserEmailTemplate"
    ;;
    adminSendUserEmail)
    operation="adminSendUserEmail"
    ;;
    createAccountHolderAsync)
    operation="createAccountHolderAsync"
    ;;
    deleteAccountHolderAsync)
    operation="deleteAccountHolderAsync"
    ;;
    getExtendedAccountHolderAsync)
    operation="getExtendedAccountHolderAsync"
    ;;
    getExtendedUsersAsync)
    operation="getExtendedUsersAsync"
    ;;
    getExtendedUsersCountAsync)
    operation="getExtendedUsersCountAsync"
    ;;
    getUserAsync)
    operation="getUserAsync"
    ;;
    getUsersAsync)
    operation="getUsersAsync"
    ;;
    getUsersCountAsync)
    operation="getUsersCountAsync"
    ;;
    updateAccountHolderAsync)
    operation="updateAccountHolderAsync"
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
    getAndStoreTokens)
    call_getAndStoreTokens
    ;;
    isRequestValidAsync)
    call_isRequestValidAsync
    ;;
    adminPreviewBasicEmailTemplate)
    call_adminPreviewBasicEmailTemplate
    ;;
    adminSendBasicEmail)
    call_adminSendBasicEmail
    ;;
    forgotPasswordPost)
    call_forgotPasswordPost
    ;;
    healthGet)
    call_healthGet
    ;;
    helloGet)
    call_helloGet
    ;;
    loginPost)
    call_loginPost
    ;;
    manage2faPost)
    call_manage2faPost
    ;;
    manageInfoGet)
    call_manageInfoGet
    ;;
    manageInfoPost)
    call_manageInfoPost
    ;;
    mapIdentityApiConfirmEmail)
    call_mapIdentityApiConfirmEmail
    ;;
    refreshPost)
    call_refreshPost
    ;;
    registerPost)
    call_registerPost
    ;;
    resendConfirmationEmailPost)
    call_resendConfirmationEmailPost
    ;;
    resetPasswordPost)
    call_resetPasswordPost
    ;;
    versionGet)
    call_versionGet
    ;;
    getLicenseAssignmentsAsync)
    call_getLicenseAssignmentsAsync
    ;;
    getLicenseAttributesAsync)
    call_getLicenseAttributesAsync
    ;;
    getLicenseByIdAsync)
    call_getLicenseByIdAsync
    ;;
    getLicenseFeaturesAsync)
    call_getLicenseFeaturesAsync
    ;;
    getLicenseRecordsQuotaAsync)
    call_getLicenseRecordsQuotaAsync
    ;;
    getLicensesAsync)
    call_getLicensesAsync
    ;;
    redeemLicenseAsync)
    call_redeemLicenseAsync
    ;;
    validateLicenseAsync)
    call_validateLicenseAsync
    ;;
    migrate)
    call_migrate
    ;;
    migrations)
    call_migrations
    ;;
    getAllModules)
    call_getAllModules
    ;;
    getAvailableModules)
    call_getAvailableModules
    ;;
    createSystemOption)
    call_createSystemOption
    ;;
    deleteSystemOption)
    call_deleteSystemOption
    ;;
    getSystemOptionById)
    call_getSystemOptionById
    ;;
    getSystemOptionByKey)
    call_getSystemOptionByKey
    ;;
    getSystemOptions)
    call_getSystemOptions
    ;;
    getSystemOptionsCount)
    call_getSystemOptionsCount
    ;;
    updateSystemOption)
    call_updateSystemOption
    ;;
    upsertSystemOption)
    call_upsertSystemOption
    ;;
    adminPreviewTenantEmail)
    call_adminPreviewTenantEmail
    ;;
    adminSendTenantEmail)
    call_adminSendTenantEmail
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
    adminPreviewUserEmailTemplate)
    call_adminPreviewUserEmailTemplate
    ;;
    adminSendUserEmail)
    call_adminSendUserEmail
    ;;
    createAccountHolderAsync)
    call_createAccountHolderAsync
    ;;
    deleteAccountHolderAsync)
    call_deleteAccountHolderAsync
    ;;
    getExtendedAccountHolderAsync)
    call_getExtendedAccountHolderAsync
    ;;
    getExtendedUsersAsync)
    call_getExtendedUsersAsync
    ;;
    getExtendedUsersCountAsync)
    call_getExtendedUsersCountAsync
    ;;
    getUserAsync)
    call_getUserAsync
    ;;
    getUsersAsync)
    call_getUsersAsync
    ;;
    getUsersCountAsync)
    call_getUsersCountAsync
    ;;
    updateAccountHolderAsync)
    call_updateAccountHolderAsync
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
