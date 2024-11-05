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
# This is a Bash client for SecurityService.
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
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsPost:::SecurityPermissionCreateDto"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete:::securityPermissionId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete:::applicationId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost:::securityPermissionId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost:::applicationId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdDelete:::securityPermissionId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete:::securityPermissionId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete:::enrollmentId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost:::securityPermissionId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost:::enrollmentId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet:::securityPermissionId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdGet:::securityPermissionId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdPut:::securityPermissionId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdPut:::SecurityPermissionUpdateDto"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete:::securityPermissionId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete:::securityRoleId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost:::securityPermissionId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost:::securityRoleId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesPost:::SecurityRoleCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete:::securityRoleId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete:::applicationId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost:::securityRoleId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost:::applicationId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdDelete:::securityRoleId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete:::securityRoleId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete:::enrollmentId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost:::securityRoleId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost:::enrollmentId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet:::securityRoleId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdGet:::securityRoleId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet:::securityRoleId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete:::securityRoleId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete:::securityPermissionId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost:::securityRoleId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost:::securityPermissionId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPut:::securityRoleId"]=1
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPut:::SecurityRoleUpdateDto"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsPost:::SecurityPermissionCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete:::securityPermissionId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete:::applicationId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost:::securityPermissionId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost:::applicationId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdDelete:::securityPermissionId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete:::securityPermissionId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete:::enrollmentId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost:::securityPermissionId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost:::enrollmentId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet:::securityPermissionId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdGet:::securityPermissionId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdPut:::securityPermissionId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdPut:::SecurityPermissionUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete:::securityPermissionId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete:::securityRoleId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost:::securityPermissionId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost:::securityRoleId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesPost:::SecurityRoleCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete:::securityRoleId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete:::applicationId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost:::securityRoleId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost:::applicationId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdDelete:::securityRoleId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete:::securityRoleId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete:::enrollmentId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost:::securityRoleId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost:::enrollmentId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet:::securityRoleId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdGet:::securityRoleId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet:::securityRoleId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete:::securityRoleId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete:::securityPermissionId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost:::securityRoleId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost:::securityPermissionId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPut:::securityRoleId"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2SecurityServiceRolesSecurityRoleIdPut:::SecurityRoleUpdateDto"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["apiV2SecurityServicePermissionsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsGet:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsPost:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsPost:::SecurityPermissionCreateDto"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsPost:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete:::securityPermissionId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete:::applicationId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost:::securityPermissionId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost:::applicationId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdDelete:::securityPermissionId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete:::securityPermissionId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete:::enrollmentId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost:::securityPermissionId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost:::enrollmentId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet:::securityPermissionId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdGet:::securityPermissionId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdPut:::securityPermissionId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdPut:::SecurityPermissionUpdateDto"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete:::securityPermissionId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete:::securityRoleId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost:::securityPermissionId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost:::securityRoleId"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesGet:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesPost:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesPost:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesPost:::SecurityRoleCreateDto"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete:::securityRoleId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete:::applicationId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost:::securityRoleId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost:::applicationId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdDelete:::securityRoleId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete:::securityRoleId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete:::enrollmentId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost:::securityRoleId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost:::enrollmentId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet:::securityRoleId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdGet:::securityRoleId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet:::securityRoleId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete:::securityRoleId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete:::securityPermissionId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost:::securityRoleId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost:::securityPermissionId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdPut:::securityRoleId"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2SecurityServiceRolesSecurityRoleIdPut:::SecurityRoleUpdateDto"]=""


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

${BOLD}${WHITE}SecurityService command line client (API version 2.0.1.4089)${OFF}

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
    echo -e "${BOLD}${WHITE}[permissions]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2SecurityServicePermissionsGet${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServicePermissionsPost${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServicePermissionsSecurityPermissionIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServicePermissionsSecurityPermissionIdGet${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServicePermissionsSecurityPermissionIdPut${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[roles]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2SecurityServiceRolesGet${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServiceRolesPost${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServiceRolesSecurityRoleIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServiceRolesSecurityRoleIdGet${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost${OFF}; (AUTH)
  ${CYAN}apiV2SecurityServiceRolesSecurityRoleIdPut${OFF}; (AUTH)
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
    echo -e "${BOLD}${WHITE}SecurityService command line client (API version 2.0.1.4089)${OFF}"
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
    echo -e "${BOLD}SecurityService command line client (API version 2.0.1.4089)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for apiV2SecurityServicePermissionsGet operation
#
##############################################################################
print_apiV2SecurityServicePermissionsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServicePermissionsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SecurityServicePermissionsPost operation
#
##############################################################################
print_apiV2SecurityServicePermissionsPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServicePermissionsPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete operation
#
##############################################################################
print_apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityPermissionId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityPermissionId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}applicationId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: applicationId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost operation
#
##############################################################################
print_apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityPermissionId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityPermissionId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}applicationId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: applicationId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SecurityServicePermissionsSecurityPermissionIdDelete operation
#
##############################################################################
print_apiV2SecurityServicePermissionsSecurityPermissionIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServicePermissionsSecurityPermissionIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityPermissionId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityPermissionId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;No Content${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete operation
#
##############################################################################
print_apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityPermissionId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityPermissionId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}enrollmentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: enrollmentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;No Content${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost operation
#
##############################################################################
print_apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityPermissionId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityPermissionId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}enrollmentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: enrollmentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet operation
#
##############################################################################
print_apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityPermissionId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityPermissionId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SecurityServicePermissionsSecurityPermissionIdGet operation
#
##############################################################################
print_apiV2SecurityServicePermissionsSecurityPermissionIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServicePermissionsSecurityPermissionIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityPermissionId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityPermissionId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SecurityServicePermissionsSecurityPermissionIdPut operation
#
##############################################################################
print_apiV2SecurityServicePermissionsSecurityPermissionIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServicePermissionsSecurityPermissionIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityPermissionId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityPermissionId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete operation
#
##############################################################################
print_apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityPermissionId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityPermissionId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityRoleId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityRoleId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;No Content${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost operation
#
##############################################################################
print_apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityPermissionId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityPermissionId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityRoleId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityRoleId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SecurityServiceRolesGet operation
#
##############################################################################
print_apiV2SecurityServiceRolesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServiceRolesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SecurityServiceRolesPost operation
#
##############################################################################
print_apiV2SecurityServiceRolesPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServiceRolesPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete operation
#
##############################################################################
print_apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityRoleId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityRoleId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}applicationId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: applicationId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost operation
#
##############################################################################
print_apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityRoleId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityRoleId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}applicationId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: applicationId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SecurityServiceRolesSecurityRoleIdDelete operation
#
##############################################################################
print_apiV2SecurityServiceRolesSecurityRoleIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServiceRolesSecurityRoleIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityRoleId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityRoleId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete operation
#
##############################################################################
print_apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityRoleId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityRoleId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}enrollmentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: enrollmentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost operation
#
##############################################################################
print_apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityRoleId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityRoleId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}enrollmentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: enrollmentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet operation
#
##############################################################################
print_apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityRoleId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityRoleId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SecurityServiceRolesSecurityRoleIdGet operation
#
##############################################################################
print_apiV2SecurityServiceRolesSecurityRoleIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServiceRolesSecurityRoleIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityRoleId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityRoleId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet operation
#
##############################################################################
print_apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityRoleId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityRoleId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete operation
#
##############################################################################
print_apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityRoleId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityRoleId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityPermissionId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityPermissionId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost operation
#
##############################################################################
print_apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityRoleId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityRoleId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityPermissionId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityPermissionId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2SecurityServiceRolesSecurityRoleIdPut operation
#
##############################################################################
print_apiV2SecurityServiceRolesSecurityRoleIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2SecurityServiceRolesSecurityRoleIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}securityRoleId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: securityRoleId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call apiV2SecurityServicePermissionsGet operation
#
##############################################################################
call_apiV2SecurityServicePermissionsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Permissions" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServicePermissionsPost operation
#
##############################################################################
call_apiV2SecurityServicePermissionsPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Permissions" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete operation
#
##############################################################################
call_apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityPermissionId applicationId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Permissions/{securityPermissionId}/Applications/{applicationId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost operation
#
##############################################################################
call_apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityPermissionId applicationId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Permissions/{securityPermissionId}/Applications/{applicationId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServicePermissionsSecurityPermissionIdDelete operation
#
##############################################################################
call_apiV2SecurityServicePermissionsSecurityPermissionIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityPermissionId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Permissions/{securityPermissionId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete operation
#
##############################################################################
call_apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityPermissionId enrollmentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Permissions/{securityPermissionId}/Enrollments/{enrollmentId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost operation
#
##############################################################################
call_apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityPermissionId enrollmentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Permissions/{securityPermissionId}/Enrollments/{enrollmentId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet operation
#
##############################################################################
call_apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityPermissionId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Permissions/{securityPermissionId}/Enrollments" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServicePermissionsSecurityPermissionIdGet operation
#
##############################################################################
call_apiV2SecurityServicePermissionsSecurityPermissionIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityPermissionId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Permissions/{securityPermissionId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServicePermissionsSecurityPermissionIdPut operation
#
##############################################################################
call_apiV2SecurityServicePermissionsSecurityPermissionIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityPermissionId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Permissions/{securityPermissionId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete operation
#
##############################################################################
call_apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityPermissionId securityRoleId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Permissions/{securityPermissionId}/Roles/{securityRoleId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost operation
#
##############################################################################
call_apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityPermissionId securityRoleId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Permissions/{securityPermissionId}/Roles/{securityRoleId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServiceRolesGet operation
#
##############################################################################
call_apiV2SecurityServiceRolesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Roles" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServiceRolesPost operation
#
##############################################################################
call_apiV2SecurityServiceRolesPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Roles" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete operation
#
##############################################################################
call_apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityRoleId applicationId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Roles/{securityRoleId}/Applications/{applicationId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost operation
#
##############################################################################
call_apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityRoleId applicationId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Roles/{securityRoleId}/Applications/{applicationId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServiceRolesSecurityRoleIdDelete operation
#
##############################################################################
call_apiV2SecurityServiceRolesSecurityRoleIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityRoleId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Roles/{securityRoleId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete operation
#
##############################################################################
call_apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityRoleId enrollmentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Roles/{securityRoleId}/Enrollments/{enrollmentId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost operation
#
##############################################################################
call_apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityRoleId enrollmentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Roles/{securityRoleId}/Enrollments/{enrollmentId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet operation
#
##############################################################################
call_apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityRoleId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Roles/{securityRoleId}/Enrollments" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServiceRolesSecurityRoleIdGet operation
#
##############################################################################
call_apiV2SecurityServiceRolesSecurityRoleIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityRoleId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Roles/{securityRoleId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet operation
#
##############################################################################
call_apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityRoleId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Roles/{securityRoleId}/Permissions" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete operation
#
##############################################################################
call_apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityRoleId securityPermissionId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Roles/{securityRoleId}/Permissions/{securityPermissionId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost operation
#
##############################################################################
call_apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityRoleId securityPermissionId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Roles/{securityRoleId}/Permissions/{securityPermissionId}" path_parameter_names query_parameter_names); then
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
# Call apiV2SecurityServiceRolesSecurityRoleIdPut operation
#
##############################################################################
call_apiV2SecurityServiceRolesSecurityRoleIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(securityRoleId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/SecurityService/Roles/{securityRoleId}" path_parameter_names query_parameter_names); then
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
    apiV2SecurityServicePermissionsGet)
    operation="apiV2SecurityServicePermissionsGet"
    ;;
    apiV2SecurityServicePermissionsPost)
    operation="apiV2SecurityServicePermissionsPost"
    ;;
    apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete)
    operation="apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete"
    ;;
    apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost)
    operation="apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost"
    ;;
    apiV2SecurityServicePermissionsSecurityPermissionIdDelete)
    operation="apiV2SecurityServicePermissionsSecurityPermissionIdDelete"
    ;;
    apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete)
    operation="apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete"
    ;;
    apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost)
    operation="apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost"
    ;;
    apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet)
    operation="apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet"
    ;;
    apiV2SecurityServicePermissionsSecurityPermissionIdGet)
    operation="apiV2SecurityServicePermissionsSecurityPermissionIdGet"
    ;;
    apiV2SecurityServicePermissionsSecurityPermissionIdPut)
    operation="apiV2SecurityServicePermissionsSecurityPermissionIdPut"
    ;;
    apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete)
    operation="apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete"
    ;;
    apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost)
    operation="apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost"
    ;;
    apiV2SecurityServiceRolesGet)
    operation="apiV2SecurityServiceRolesGet"
    ;;
    apiV2SecurityServiceRolesPost)
    operation="apiV2SecurityServiceRolesPost"
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete)
    operation="apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete"
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost)
    operation="apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost"
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdDelete)
    operation="apiV2SecurityServiceRolesSecurityRoleIdDelete"
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete)
    operation="apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete"
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost)
    operation="apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost"
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet)
    operation="apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet"
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdGet)
    operation="apiV2SecurityServiceRolesSecurityRoleIdGet"
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet)
    operation="apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet"
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete)
    operation="apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete"
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost)
    operation="apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost"
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdPut)
    operation="apiV2SecurityServiceRolesSecurityRoleIdPut"
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
    apiV2SecurityServicePermissionsGet)
    call_apiV2SecurityServicePermissionsGet
    ;;
    apiV2SecurityServicePermissionsPost)
    call_apiV2SecurityServicePermissionsPost
    ;;
    apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete)
    call_apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdDelete
    ;;
    apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost)
    call_apiV2SecurityServicePermissionsSecurityPermissionIdApplicationsApplicationIdPost
    ;;
    apiV2SecurityServicePermissionsSecurityPermissionIdDelete)
    call_apiV2SecurityServicePermissionsSecurityPermissionIdDelete
    ;;
    apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete)
    call_apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdDelete
    ;;
    apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost)
    call_apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsEnrollmentIdPost
    ;;
    apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet)
    call_apiV2SecurityServicePermissionsSecurityPermissionIdEnrollmentsGet
    ;;
    apiV2SecurityServicePermissionsSecurityPermissionIdGet)
    call_apiV2SecurityServicePermissionsSecurityPermissionIdGet
    ;;
    apiV2SecurityServicePermissionsSecurityPermissionIdPut)
    call_apiV2SecurityServicePermissionsSecurityPermissionIdPut
    ;;
    apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete)
    call_apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdDelete
    ;;
    apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost)
    call_apiV2SecurityServicePermissionsSecurityPermissionIdRolesSecurityRoleIdPost
    ;;
    apiV2SecurityServiceRolesGet)
    call_apiV2SecurityServiceRolesGet
    ;;
    apiV2SecurityServiceRolesPost)
    call_apiV2SecurityServiceRolesPost
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete)
    call_apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdDelete
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost)
    call_apiV2SecurityServiceRolesSecurityRoleIdApplicationsApplicationIdPost
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdDelete)
    call_apiV2SecurityServiceRolesSecurityRoleIdDelete
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete)
    call_apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdDelete
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost)
    call_apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsEnrollmentIdPost
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet)
    call_apiV2SecurityServiceRolesSecurityRoleIdEnrollmentsGet
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdGet)
    call_apiV2SecurityServiceRolesSecurityRoleIdGet
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet)
    call_apiV2SecurityServiceRolesSecurityRoleIdPermissionsGet
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete)
    call_apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdDelete
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost)
    call_apiV2SecurityServiceRolesSecurityRoleIdPermissionsSecurityPermissionIdPost
    ;;
    apiV2SecurityServiceRolesSecurityRoleIdPut)
    call_apiV2SecurityServiceRolesSecurityRoleIdPut
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
