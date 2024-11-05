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
# This is a Bash client for DealsService.
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
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete:::dealUnitFlowId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet:::dealUnitFlowId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut:::dealUnitFlowId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut:::DealUnitFlowUpdateDto"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet:::dealUnitFlowId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete:::dealUnitFlowId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete:::dealUnitFlowStageId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet:::dealUnitFlowId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet:::dealUnitFlowStageId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut:::dealUnitFlowId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut:::dealUnitFlowStageId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut:::DealUnitFlowStageUpdateDto"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet:::dealUnitFlowId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost:::dealUnitFlowId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost:::DealUnitFlowStageCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitFlowsPost:::DealUnitFlowCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdCalculatePut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdCalculatePut:::dealUnitId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdDelete:::dealUnitId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdExtendedGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdExtendedGet:::dealUnitId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet:::dealUnitId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut:::dealUnitId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut:::dealUnitLineId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete:::dealUnitId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete:::dealUnitLineId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet:::dealUnitId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet:::dealUnitLineId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut:::dealUnitId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut:::dealUnitLineId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut:::DealUnitLineUpdateDto"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesGet:::dealUnitId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesGet:::itemId"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesPost:::dealUnitId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesPost:::DealUnitLineCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdPut:::dealUnitId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdPut:::DealUnitUpdateDto"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsExtendedGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceDealUnitsPost:::DealUnitCreateDto"]=0
operation_parameters_minimum_occurrences["getDealUnitAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getDealUnitAsync:::dealUnitId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesExtendedGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesExtendedGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesExtendedGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesPost:::SalesLiteratureCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete:::salesLiteratureId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet:::salesLiteratureId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut:::salesLiteratureId"]=1
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut:::SalesLiteratureUpdateDto"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete:::dealUnitFlowId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet:::dealUnitFlowId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut:::dealUnitFlowId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut:::DealUnitFlowUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet:::dealUnitFlowId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete:::dealUnitFlowId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete:::dealUnitFlowStageId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet:::dealUnitFlowId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet:::dealUnitFlowStageId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut:::dealUnitFlowId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut:::dealUnitFlowStageId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut:::DealUnitFlowStageUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet:::dealUnitFlowId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost:::dealUnitFlowId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost:::DealUnitFlowStageCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitFlowsPost:::DealUnitFlowCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdCalculatePut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdCalculatePut:::dealUnitId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdDelete:::dealUnitId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdExtendedGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdExtendedGet:::dealUnitId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet:::dealUnitId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut:::dealUnitId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut:::dealUnitLineId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete:::dealUnitId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete:::dealUnitLineId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet:::dealUnitId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet:::dealUnitLineId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut:::dealUnitId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut:::dealUnitLineId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut:::DealUnitLineUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesGet:::dealUnitId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesGet:::itemId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesPost:::dealUnitId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdLinesPost:::DealUnitLineCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdPut:::dealUnitId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsDealUnitIdPut:::DealUnitUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsExtendedGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceDealUnitsPost:::DealUnitCreateDto"]=0
operation_parameters_maximum_occurrences["getDealUnitAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getDealUnitAsync:::dealUnitId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesExtendedGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesExtendedGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesExtendedGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesPost:::SalesLiteratureCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete:::salesLiteratureId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet:::salesLiteratureId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut:::salesLiteratureId"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut:::SalesLiteratureUpdateDto"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete:::dealUnitFlowId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet:::dealUnitFlowId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut:::dealUnitFlowId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut:::DealUnitFlowUpdateDto"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet:::dealUnitFlowId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete:::dealUnitFlowId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete:::dealUnitFlowStageId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet:::dealUnitFlowId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet:::dealUnitFlowStageId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut:::dealUnitFlowId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut:::dealUnitFlowStageId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut:::DealUnitFlowStageUpdateDto"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet:::dealUnitFlowId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet:::api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost:::dealUnitFlowId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost:::api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost:::DealUnitFlowStageCreateDto"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsGet:::api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsPost:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsPost:::api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitFlowsPost:::DealUnitFlowCreateDto"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdCalculatePut:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdCalculatePut:::dealUnitId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdDelete:::dealUnitId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdExtendedGet:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdExtendedGet:::dealUnitId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet:::dealUnitId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut:::dealUnitId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut:::dealUnitLineId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete:::dealUnitId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete:::dealUnitLineId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet:::dealUnitId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet:::dealUnitLineId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut:::dealUnitId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut:::dealUnitLineId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut:::DealUnitLineUpdateDto"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesGet:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesGet:::dealUnitId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesGet:::itemId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesPost:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesPost:::dealUnitId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdLinesPost:::DealUnitLineCreateDto"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdPut:::dealUnitId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsDealUnitIdPut:::DealUnitUpdateDto"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsExtendedGet:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsPost:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceDealUnitsPost:::DealUnitCreateDto"]=""
operation_parameters_collection_type["getDealUnitAsync:::tenantId"]=""
operation_parameters_collection_type["getDealUnitAsync:::dealUnitId"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesExtendedGet:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesExtendedGet:::api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesExtendedGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesGet:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesGet:::api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesPost:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesPost:::api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesPost:::SalesLiteratureCreateDto"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete:::salesLiteratureId"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet:::salesLiteratureId"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut:::salesLiteratureId"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut:::SalesLiteratureUpdateDto"]=""


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

${BOLD}${WHITE}DealsService command line client (API version 2.0.1.4089)${OFF}

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
    echo -e "${BOLD}${WHITE}[dealUnitFlows]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2DealsServiceDealUnitFlowsCountGet${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitFlowsGet${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitFlowsPost${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[dealUnits]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2DealsServiceDealUnitsCountGet${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitsDealUnitIdCalculatePut${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitsDealUnitIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitsDealUnitIdExtendedGet${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitsDealUnitIdLinesGet${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitsDealUnitIdLinesPost${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitsDealUnitIdPut${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitsExtendedGet${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitsGet${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceDealUnitsPost${OFF}; (AUTH)
  ${CYAN}getDealUnitAsync${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[salesLiteratures]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2DealsServiceSalesLiteraturesExtendedGet${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceSalesLiteraturesGet${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceSalesLiteraturesPost${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet${OFF}; (AUTH)
  ${CYAN}apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut${OFF}; (AUTH)
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
    echo -e "${BOLD}${WHITE}DealsService command line client (API version 2.0.1.4089)${OFF}"
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
    echo -e "${BOLD}DealsService command line client (API version 2.0.1.4089)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for apiV2DealsServiceDealUnitFlowsCountGet operation
#
##############################################################################
print_apiV2DealsServiceDealUnitFlowsCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitFlowsCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete operation
#
##############################################################################
print_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitFlowId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitFlowId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet operation
#
##############################################################################
print_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitFlowId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitFlowId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut operation
#
##############################################################################
print_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitFlowId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitFlowId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet operation
#
##############################################################################
print_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitFlowId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitFlowId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete operation
#
##############################################################################
print_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitFlowId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitFlowId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitFlowStageId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitFlowStageId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet operation
#
##############################################################################
print_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitFlowId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitFlowId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitFlowStageId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitFlowStageId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut operation
#
##############################################################################
print_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitFlowId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitFlowId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitFlowStageId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitFlowStageId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet operation
#
##############################################################################
print_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitFlowId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitFlowId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost operation
#
##############################################################################
print_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitFlowId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitFlowId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitFlowsGet operation
#
##############################################################################
print_apiV2DealsServiceDealUnitFlowsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitFlowsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitFlowsPost operation
#
##############################################################################
print_apiV2DealsServiceDealUnitFlowsPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitFlowsPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitsCountGet operation
#
##############################################################################
print_apiV2DealsServiceDealUnitsCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitsCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitsDealUnitIdCalculatePut operation
#
##############################################################################
print_apiV2DealsServiceDealUnitsDealUnitIdCalculatePut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitsDealUnitIdCalculatePut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitsDealUnitIdDelete operation
#
##############################################################################
print_apiV2DealsServiceDealUnitsDealUnitIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitsDealUnitIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitsDealUnitIdExtendedGet operation
#
##############################################################################
print_apiV2DealsServiceDealUnitsDealUnitIdExtendedGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitsDealUnitIdExtendedGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet operation
#
##############################################################################
print_apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut operation
#
##############################################################################
print_apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitLineId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitLineId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete operation
#
##############################################################################
print_apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitLineId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitLineId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet operation
#
##############################################################################
print_apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitLineId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitLineId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut operation
#
##############################################################################
print_apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitLineId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitLineId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitsDealUnitIdLinesGet operation
#
##############################################################################
print_apiV2DealsServiceDealUnitsDealUnitIdLinesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitsDealUnitIdLinesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}itemId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: itemId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitsDealUnitIdLinesPost operation
#
##############################################################################
print_apiV2DealsServiceDealUnitsDealUnitIdLinesPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitsDealUnitIdLinesPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitsDealUnitIdPut operation
#
##############################################################################
print_apiV2DealsServiceDealUnitsDealUnitIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitsDealUnitIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitsExtendedGet operation
#
##############################################################################
print_apiV2DealsServiceDealUnitsExtendedGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitsExtendedGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitsGet operation
#
##############################################################################
print_apiV2DealsServiceDealUnitsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceDealUnitsPost operation
#
##############################################################################
print_apiV2DealsServiceDealUnitsPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceDealUnitsPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getDealUnitAsync operation
#
##############################################################################
print_getDealUnitAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getDealUnitAsync - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}dealUnitId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: dealUnitId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceSalesLiteraturesExtendedGet operation
#
##############################################################################
print_apiV2DealsServiceSalesLiteraturesExtendedGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceSalesLiteraturesExtendedGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceSalesLiteraturesGet operation
#
##############################################################################
print_apiV2DealsServiceSalesLiteraturesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceSalesLiteraturesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceSalesLiteraturesPost operation
#
##############################################################################
print_apiV2DealsServiceSalesLiteraturesPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceSalesLiteraturesPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete operation
#
##############################################################################
print_apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}salesLiteratureId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: salesLiteratureId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet operation
#
##############################################################################
print_apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}salesLiteratureId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: salesLiteratureId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut operation
#
##############################################################################
print_apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}salesLiteratureId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: salesLiteratureId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call apiV2DealsServiceDealUnitFlowsCountGet operation
#
##############################################################################
call_apiV2DealsServiceDealUnitFlowsCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnitFlows/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete operation
#
##############################################################################
call_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitFlowId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet operation
#
##############################################################################
call_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitFlowId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut operation
#
##############################################################################
call_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitFlowId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet operation
#
##############################################################################
call_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitFlowId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}/Stages/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete operation
#
##############################################################################
call_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitFlowId dealUnitFlowStageId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}/Stages/{dealUnitFlowStageId}" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet operation
#
##############################################################################
call_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitFlowId dealUnitFlowStageId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}/Stages/{dealUnitFlowStageId}" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut operation
#
##############################################################################
call_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitFlowId dealUnitFlowStageId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}/Stages/{dealUnitFlowStageId}" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet operation
#
##############################################################################
call_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitFlowId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}/Stages" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost operation
#
##############################################################################
call_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitFlowId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnitFlows/{dealUnitFlowId}/Stages" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitFlowsGet operation
#
##############################################################################
call_apiV2DealsServiceDealUnitFlowsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnitFlows" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitFlowsPost operation
#
##############################################################################
call_apiV2DealsServiceDealUnitFlowsPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnitFlows" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitsCountGet operation
#
##############################################################################
call_apiV2DealsServiceDealUnitsCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnits/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitsDealUnitIdCalculatePut operation
#
##############################################################################
call_apiV2DealsServiceDealUnitsDealUnitIdCalculatePut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnits/{dealUnitId}/Calculate" path_parameter_names query_parameter_names); then
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
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2DealsServiceDealUnitsDealUnitIdDelete operation
#
##############################################################################
call_apiV2DealsServiceDealUnitsDealUnitIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnits/{dealUnitId}" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitsDealUnitIdExtendedGet operation
#
##############################################################################
call_apiV2DealsServiceDealUnitsDealUnitIdExtendedGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnits/{dealUnitId}/Extended" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet operation
#
##############################################################################
call_apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnits/{dealUnitId}/Lines/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut operation
#
##############################################################################
call_apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitId dealUnitLineId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId}/Calculate" path_parameter_names query_parameter_names); then
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
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete operation
#
##############################################################################
call_apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitId dealUnitLineId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId}" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet operation
#
##############################################################################
call_apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitId dealUnitLineId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId}" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut operation
#
##############################################################################
call_apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitId dealUnitLineId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnits/{dealUnitId}/Lines/{dealUnitLineId}" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitsDealUnitIdLinesGet operation
#
##############################################################################
call_apiV2DealsServiceDealUnitsDealUnitIdLinesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId itemId  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnits/{dealUnitId}/Lines" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitsDealUnitIdLinesPost operation
#
##############################################################################
call_apiV2DealsServiceDealUnitsDealUnitIdLinesPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnits/{dealUnitId}/Lines" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitsDealUnitIdPut operation
#
##############################################################################
call_apiV2DealsServiceDealUnitsDealUnitIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnits/{dealUnitId}" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitsExtendedGet operation
#
##############################################################################
call_apiV2DealsServiceDealUnitsExtendedGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnits/Extended" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitsGet operation
#
##############################################################################
call_apiV2DealsServiceDealUnitsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnits" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceDealUnitsPost operation
#
##############################################################################
call_apiV2DealsServiceDealUnitsPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnits" path_parameter_names query_parameter_names); then
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
# Call getDealUnitAsync operation
#
##############################################################################
call_getDealUnitAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(dealUnitId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/DealUnits/{dealUnitId}" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceSalesLiteraturesExtendedGet operation
#
##############################################################################
call_apiV2DealsServiceSalesLiteraturesExtendedGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/SalesLiteratures/Extended" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceSalesLiteraturesGet operation
#
##############################################################################
call_apiV2DealsServiceSalesLiteraturesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/SalesLiteratures" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceSalesLiteraturesPost operation
#
##############################################################################
call_apiV2DealsServiceSalesLiteraturesPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/SalesLiteratures" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete operation
#
##############################################################################
call_apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(salesLiteratureId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/SalesLiteratures/{salesLiteratureId}" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet operation
#
##############################################################################
call_apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(salesLiteratureId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/SalesLiteratures/{salesLiteratureId}" path_parameter_names query_parameter_names); then
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
# Call apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut operation
#
##############################################################################
call_apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(salesLiteratureId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/DealsService/SalesLiteratures/{salesLiteratureId}" path_parameter_names query_parameter_names); then
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
    apiV2DealsServiceDealUnitFlowsCountGet)
    operation="apiV2DealsServiceDealUnitFlowsCountGet"
    ;;
    apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete)
    operation="apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete"
    ;;
    apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet)
    operation="apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet"
    ;;
    apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut)
    operation="apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut"
    ;;
    apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet)
    operation="apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet"
    ;;
    apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete)
    operation="apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete"
    ;;
    apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet)
    operation="apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet"
    ;;
    apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut)
    operation="apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut"
    ;;
    apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet)
    operation="apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet"
    ;;
    apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost)
    operation="apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost"
    ;;
    apiV2DealsServiceDealUnitFlowsGet)
    operation="apiV2DealsServiceDealUnitFlowsGet"
    ;;
    apiV2DealsServiceDealUnitFlowsPost)
    operation="apiV2DealsServiceDealUnitFlowsPost"
    ;;
    apiV2DealsServiceDealUnitsCountGet)
    operation="apiV2DealsServiceDealUnitsCountGet"
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdCalculatePut)
    operation="apiV2DealsServiceDealUnitsDealUnitIdCalculatePut"
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdDelete)
    operation="apiV2DealsServiceDealUnitsDealUnitIdDelete"
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdExtendedGet)
    operation="apiV2DealsServiceDealUnitsDealUnitIdExtendedGet"
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet)
    operation="apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet"
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut)
    operation="apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut"
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete)
    operation="apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete"
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet)
    operation="apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet"
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut)
    operation="apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut"
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdLinesGet)
    operation="apiV2DealsServiceDealUnitsDealUnitIdLinesGet"
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdLinesPost)
    operation="apiV2DealsServiceDealUnitsDealUnitIdLinesPost"
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdPut)
    operation="apiV2DealsServiceDealUnitsDealUnitIdPut"
    ;;
    apiV2DealsServiceDealUnitsExtendedGet)
    operation="apiV2DealsServiceDealUnitsExtendedGet"
    ;;
    apiV2DealsServiceDealUnitsGet)
    operation="apiV2DealsServiceDealUnitsGet"
    ;;
    apiV2DealsServiceDealUnitsPost)
    operation="apiV2DealsServiceDealUnitsPost"
    ;;
    getDealUnitAsync)
    operation="getDealUnitAsync"
    ;;
    apiV2DealsServiceSalesLiteraturesExtendedGet)
    operation="apiV2DealsServiceSalesLiteraturesExtendedGet"
    ;;
    apiV2DealsServiceSalesLiteraturesGet)
    operation="apiV2DealsServiceSalesLiteraturesGet"
    ;;
    apiV2DealsServiceSalesLiteraturesPost)
    operation="apiV2DealsServiceSalesLiteraturesPost"
    ;;
    apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete)
    operation="apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete"
    ;;
    apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet)
    operation="apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet"
    ;;
    apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut)
    operation="apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut"
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
    apiV2DealsServiceDealUnitFlowsCountGet)
    call_apiV2DealsServiceDealUnitFlowsCountGet
    ;;
    apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete)
    call_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdDelete
    ;;
    apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet)
    call_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdGet
    ;;
    apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut)
    call_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdPut
    ;;
    apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet)
    call_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesCountGet
    ;;
    apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete)
    call_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdDelete
    ;;
    apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet)
    call_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdGet
    ;;
    apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut)
    call_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesDealUnitFlowStageIdPut
    ;;
    apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet)
    call_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesGet
    ;;
    apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost)
    call_apiV2DealsServiceDealUnitFlowsDealUnitFlowIdStagesPost
    ;;
    apiV2DealsServiceDealUnitFlowsGet)
    call_apiV2DealsServiceDealUnitFlowsGet
    ;;
    apiV2DealsServiceDealUnitFlowsPost)
    call_apiV2DealsServiceDealUnitFlowsPost
    ;;
    apiV2DealsServiceDealUnitsCountGet)
    call_apiV2DealsServiceDealUnitsCountGet
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdCalculatePut)
    call_apiV2DealsServiceDealUnitsDealUnitIdCalculatePut
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdDelete)
    call_apiV2DealsServiceDealUnitsDealUnitIdDelete
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdExtendedGet)
    call_apiV2DealsServiceDealUnitsDealUnitIdExtendedGet
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet)
    call_apiV2DealsServiceDealUnitsDealUnitIdLinesCountGet
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut)
    call_apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdCalculatePut
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete)
    call_apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdDelete
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet)
    call_apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdGet
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut)
    call_apiV2DealsServiceDealUnitsDealUnitIdLinesDealUnitLineIdPut
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdLinesGet)
    call_apiV2DealsServiceDealUnitsDealUnitIdLinesGet
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdLinesPost)
    call_apiV2DealsServiceDealUnitsDealUnitIdLinesPost
    ;;
    apiV2DealsServiceDealUnitsDealUnitIdPut)
    call_apiV2DealsServiceDealUnitsDealUnitIdPut
    ;;
    apiV2DealsServiceDealUnitsExtendedGet)
    call_apiV2DealsServiceDealUnitsExtendedGet
    ;;
    apiV2DealsServiceDealUnitsGet)
    call_apiV2DealsServiceDealUnitsGet
    ;;
    apiV2DealsServiceDealUnitsPost)
    call_apiV2DealsServiceDealUnitsPost
    ;;
    getDealUnitAsync)
    call_getDealUnitAsync
    ;;
    apiV2DealsServiceSalesLiteraturesExtendedGet)
    call_apiV2DealsServiceSalesLiteraturesExtendedGet
    ;;
    apiV2DealsServiceSalesLiteraturesGet)
    call_apiV2DealsServiceSalesLiteraturesGet
    ;;
    apiV2DealsServiceSalesLiteraturesPost)
    call_apiV2DealsServiceSalesLiteraturesPost
    ;;
    apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete)
    call_apiV2DealsServiceSalesLiteraturesSalesLiteratureIdDelete
    ;;
    apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet)
    call_apiV2DealsServiceSalesLiteraturesSalesLiteratureIdGet
    ;;
    apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut)
    call_apiV2DealsServiceSalesLiteraturesSalesLiteratureIdPut
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
