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
# This is a Bash client for PricingService.
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
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDelete:::discountListId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet:::discountListId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete:::discountListId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete:::discountListEntryId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut:::discountListId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut:::discountListEntryId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut:::DiscountUpdateDto"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet:::discountListId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost:::discountListId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost:::DiscountCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdGet:::discountListId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdPut:::discountListId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdPut:::DiscountListUpdateDto"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServiceDiscountListsPost:::DiscountListCreateDto"]=0
operation_parameters_minimum_occurrences["getDiscountListEntry:::tenantId"]=1
operation_parameters_minimum_occurrences["getDiscountListEntry:::discountListId"]=1
operation_parameters_minimum_occurrences["getDiscountListEntry:::discountListEntryId"]=1
operation_parameters_minimum_occurrences["getDiscountListEntry:::api-version"]=0
operation_parameters_minimum_occurrences["getDiscountListEntry:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPost:::PriceListCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdDelete:::priceListId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPost:::priceListId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPost:::ItemPriceCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete:::priceListId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete:::priceId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut:::priceListId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut:::priceId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut:::ItemPriceUpdateDto"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPut:::priceListId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePriceListsPriceListIdPut:::PriceListUpdateDto"]=0
operation_parameters_minimum_occurrences["getPriceListAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getPriceListAsync:::priceListId"]=1
operation_parameters_minimum_occurrences["getPriceListAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getPriceListAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getPriceListPriceAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getPriceListPriceAsync:::priceListId"]=1
operation_parameters_minimum_occurrences["getPriceListPriceAsync:::priceId"]=1
operation_parameters_minimum_occurrences["getPriceListPriceAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getPriceListPriceAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getPriceListPricesAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getPriceListPricesAsync:::priceListId"]=1
operation_parameters_minimum_occurrences["getPriceListPricesAsync:::itemId"]=0
operation_parameters_minimum_occurrences["getPriceListPricesAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getPriceListPricesAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePricesItemIdFinalPriceGet:::itemId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServicePricesItemIdFinalPriceGet:::currencyId"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePricesItemIdFinalPriceGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePricesItemIdFinalPriceGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePricesItemIdPriceGet:::itemId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServicePricesItemIdPriceGet:::priceListId"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePricesItemIdPriceGet:::discountsListId"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePricesItemIdPriceGet:::currencyId"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePricesItemIdPriceGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePricesItemIdPriceGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePricesItemIdTotalSavingsGet:::itemId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServicePricesItemIdTotalSavingsGet:::currencyId"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePricesItemIdTotalSavingsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePricesItemIdTotalSavingsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePricesItemIdTotalTaxesGet:::itemId"]=1
operation_parameters_minimum_occurrences["apiV2PricingServicePricesItemIdTotalTaxesGet:::currencyId"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePricesItemIdTotalTaxesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2PricingServicePricesItemIdTotalTaxesGet:::x-api-version"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDelete:::discountListId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet:::discountListId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete:::discountListId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete:::discountListEntryId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut:::discountListId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut:::discountListEntryId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut:::DiscountUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet:::discountListId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost:::discountListId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost:::DiscountCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdGet:::discountListId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdPut:::discountListId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsDiscountListIdPut:::DiscountListUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServiceDiscountListsPost:::DiscountListCreateDto"]=0
operation_parameters_maximum_occurrences["getDiscountListEntry:::tenantId"]=0
operation_parameters_maximum_occurrences["getDiscountListEntry:::discountListId"]=0
operation_parameters_maximum_occurrences["getDiscountListEntry:::discountListEntryId"]=0
operation_parameters_maximum_occurrences["getDiscountListEntry:::api-version"]=0
operation_parameters_maximum_occurrences["getDiscountListEntry:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPost:::PriceListCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdDelete:::priceListId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPost:::priceListId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPost:::ItemPriceCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete:::priceListId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete:::priceId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut:::priceListId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut:::priceId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut:::ItemPriceUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPut:::priceListId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePriceListsPriceListIdPut:::PriceListUpdateDto"]=0
operation_parameters_maximum_occurrences["getPriceListAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getPriceListAsync:::priceListId"]=0
operation_parameters_maximum_occurrences["getPriceListAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getPriceListAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getPriceListPriceAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getPriceListPriceAsync:::priceListId"]=0
operation_parameters_maximum_occurrences["getPriceListPriceAsync:::priceId"]=0
operation_parameters_maximum_occurrences["getPriceListPriceAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getPriceListPriceAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getPriceListPricesAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getPriceListPricesAsync:::priceListId"]=0
operation_parameters_maximum_occurrences["getPriceListPricesAsync:::itemId"]=0
operation_parameters_maximum_occurrences["getPriceListPricesAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getPriceListPricesAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePricesItemIdFinalPriceGet:::itemId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePricesItemIdFinalPriceGet:::currencyId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePricesItemIdFinalPriceGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePricesItemIdFinalPriceGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePricesItemIdPriceGet:::itemId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePricesItemIdPriceGet:::priceListId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePricesItemIdPriceGet:::discountsListId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePricesItemIdPriceGet:::currencyId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePricesItemIdPriceGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePricesItemIdPriceGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePricesItemIdTotalSavingsGet:::itemId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePricesItemIdTotalSavingsGet:::currencyId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePricesItemIdTotalSavingsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePricesItemIdTotalSavingsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePricesItemIdTotalTaxesGet:::itemId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePricesItemIdTotalTaxesGet:::currencyId"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePricesItemIdTotalTaxesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2PricingServicePricesItemIdTotalTaxesGet:::x-api-version"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["apiV2PricingServiceDiscountListsCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDelete:::discountListId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet:::discountListId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete:::discountListId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete:::discountListEntryId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut:::discountListId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut:::discountListEntryId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut:::DiscountUpdateDto"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet:::discountListId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost:::tenantId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost:::discountListId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost:::DiscountCreateDto"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdGet:::discountListId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdPut:::discountListId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsDiscountListIdPut:::DiscountListUpdateDto"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsGet:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsPost:::tenantId"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsPost:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServiceDiscountListsPost:::DiscountListCreateDto"]=""
operation_parameters_collection_type["getDiscountListEntry:::tenantId"]=""
operation_parameters_collection_type["getDiscountListEntry:::discountListId"]=""
operation_parameters_collection_type["getDiscountListEntry:::discountListEntryId"]=""
operation_parameters_collection_type["getDiscountListEntry:::api-version"]=""
operation_parameters_collection_type["getDiscountListEntry:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsGet:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPost:::tenantId"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPost:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPost:::PriceListCreateDto"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdDelete:::priceListId"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPricesPost:::tenantId"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPricesPost:::priceListId"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPricesPost:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPricesPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPricesPost:::ItemPriceCreateDto"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete:::priceListId"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete:::priceId"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut:::priceListId"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut:::priceId"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut:::ItemPriceUpdateDto"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPut:::priceListId"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePriceListsPriceListIdPut:::PriceListUpdateDto"]=""
operation_parameters_collection_type["getPriceListAsync:::tenantId"]=""
operation_parameters_collection_type["getPriceListAsync:::priceListId"]=""
operation_parameters_collection_type["getPriceListAsync:::api-version"]=""
operation_parameters_collection_type["getPriceListAsync:::x-api-version"]=""
operation_parameters_collection_type["getPriceListPriceAsync:::tenantId"]=""
operation_parameters_collection_type["getPriceListPriceAsync:::priceListId"]=""
operation_parameters_collection_type["getPriceListPriceAsync:::priceId"]=""
operation_parameters_collection_type["getPriceListPriceAsync:::api-version"]=""
operation_parameters_collection_type["getPriceListPriceAsync:::x-api-version"]=""
operation_parameters_collection_type["getPriceListPricesAsync:::tenantId"]=""
operation_parameters_collection_type["getPriceListPricesAsync:::priceListId"]=""
operation_parameters_collection_type["getPriceListPricesAsync:::itemId"]=""
operation_parameters_collection_type["getPriceListPricesAsync:::api-version"]=""
operation_parameters_collection_type["getPriceListPricesAsync:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePricesItemIdFinalPriceGet:::itemId"]=""
operation_parameters_collection_type["apiV2PricingServicePricesItemIdFinalPriceGet:::currencyId"]=""
operation_parameters_collection_type["apiV2PricingServicePricesItemIdFinalPriceGet:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePricesItemIdFinalPriceGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePricesItemIdPriceGet:::itemId"]=""
operation_parameters_collection_type["apiV2PricingServicePricesItemIdPriceGet:::priceListId"]=""
operation_parameters_collection_type["apiV2PricingServicePricesItemIdPriceGet:::discountsListId"]=""
operation_parameters_collection_type["apiV2PricingServicePricesItemIdPriceGet:::currencyId"]=""
operation_parameters_collection_type["apiV2PricingServicePricesItemIdPriceGet:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePricesItemIdPriceGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePricesItemIdTotalSavingsGet:::itemId"]=""
operation_parameters_collection_type["apiV2PricingServicePricesItemIdTotalSavingsGet:::currencyId"]=""
operation_parameters_collection_type["apiV2PricingServicePricesItemIdTotalSavingsGet:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePricesItemIdTotalSavingsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePricesItemIdTotalTaxesGet:::itemId"]=""
operation_parameters_collection_type["apiV2PricingServicePricesItemIdTotalTaxesGet:::currencyId"]=""
operation_parameters_collection_type["apiV2PricingServicePricesItemIdTotalTaxesGet:::api-version"]=""
operation_parameters_collection_type["apiV2PricingServicePricesItemIdTotalTaxesGet:::x-api-version"]=""


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

${BOLD}${WHITE}PricingService command line client (API version 2.0.1.4089)${OFF}

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
    echo -e "${BOLD}${WHITE}[discountLists]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2PricingServiceDiscountListsCountGet${OFF}; (AUTH)
  ${CYAN}apiV2PricingServiceDiscountListsDiscountListIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet${OFF}; (AUTH)
  ${CYAN}apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut${OFF}; (AUTH)
  ${CYAN}apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet${OFF}; (AUTH)
  ${CYAN}apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost${OFF}; (AUTH)
  ${CYAN}apiV2PricingServiceDiscountListsDiscountListIdGet${OFF}; (AUTH)
  ${CYAN}apiV2PricingServiceDiscountListsDiscountListIdPut${OFF}; (AUTH)
  ${CYAN}apiV2PricingServiceDiscountListsGet${OFF}; (AUTH)
  ${CYAN}apiV2PricingServiceDiscountListsPost${OFF}; (AUTH)
  ${CYAN}getDiscountListEntry${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[priceLists]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2PricingServicePriceListsCountGet${OFF}; (AUTH)
  ${CYAN}apiV2PricingServicePriceListsGet${OFF}; (AUTH)
  ${CYAN}apiV2PricingServicePriceListsPost${OFF}; (AUTH)
  ${CYAN}apiV2PricingServicePriceListsPriceListIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2PricingServicePriceListsPriceListIdPricesPost${OFF}; (AUTH)
  ${CYAN}apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut${OFF}; (AUTH)
  ${CYAN}apiV2PricingServicePriceListsPriceListIdPut${OFF}; (AUTH)
  ${CYAN}getPriceListAsync${OFF}; (AUTH)
  ${CYAN}getPriceListPriceAsync${OFF}; (AUTH)
  ${CYAN}getPriceListPricesAsync${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[prices]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2PricingServicePricesItemIdFinalPriceGet${OFF}; (AUTH)
  ${CYAN}apiV2PricingServicePricesItemIdPriceGet${OFF}; (AUTH)
  ${CYAN}apiV2PricingServicePricesItemIdTotalSavingsGet${OFF}; (AUTH)
  ${CYAN}apiV2PricingServicePricesItemIdTotalTaxesGet${OFF}; (AUTH)
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
    echo -e "${BOLD}${WHITE}PricingService command line client (API version 2.0.1.4089)${OFF}"
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
    echo -e "${BOLD}PricingService command line client (API version 2.0.1.4089)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for apiV2PricingServiceDiscountListsCountGet operation
#
##############################################################################
print_apiV2PricingServiceDiscountListsCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServiceDiscountListsCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2PricingServiceDiscountListsDiscountListIdDelete operation
#
##############################################################################
print_apiV2PricingServiceDiscountListsDiscountListIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServiceDiscountListsDiscountListIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}discountListId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: discountListId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;No Content${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet operation
#
##############################################################################
print_apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}discountListId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: discountListId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete operation
#
##############################################################################
print_apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}discountListId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: discountListId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}discountListEntryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: discountListEntryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=204
    echo -e "${result_color_table[${code:0:1}]}  204;No Content${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut operation
#
##############################################################################
print_apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}discountListId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: discountListId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}discountListEntryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: discountListEntryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet operation
#
##############################################################################
print_apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}discountListId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: discountListId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost operation
#
##############################################################################
print_apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}discountListId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: discountListId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2PricingServiceDiscountListsDiscountListIdGet operation
#
##############################################################################
print_apiV2PricingServiceDiscountListsDiscountListIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServiceDiscountListsDiscountListIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}discountListId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: discountListId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2PricingServiceDiscountListsDiscountListIdPut operation
#
##############################################################################
print_apiV2PricingServiceDiscountListsDiscountListIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServiceDiscountListsDiscountListIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}discountListId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: discountListId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2PricingServiceDiscountListsGet operation
#
##############################################################################
print_apiV2PricingServiceDiscountListsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServiceDiscountListsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2PricingServiceDiscountListsPost operation
#
##############################################################################
print_apiV2PricingServiceDiscountListsPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServiceDiscountListsPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getDiscountListEntry operation
#
##############################################################################
print_getDiscountListEntry_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getDiscountListEntry - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}discountListId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: discountListId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}discountListEntryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: discountListEntryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2PricingServicePriceListsCountGet operation
#
##############################################################################
print_apiV2PricingServicePriceListsCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServicePriceListsCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2PricingServicePriceListsGet operation
#
##############################################################################
print_apiV2PricingServicePriceListsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServicePriceListsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2PricingServicePriceListsPost operation
#
##############################################################################
print_apiV2PricingServicePriceListsPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServicePriceListsPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2PricingServicePriceListsPriceListIdDelete operation
#
##############################################################################
print_apiV2PricingServicePriceListsPriceListIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServicePriceListsPriceListIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}priceListId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: priceListId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2PricingServicePriceListsPriceListIdPricesPost operation
#
##############################################################################
print_apiV2PricingServicePriceListsPriceListIdPricesPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServicePriceListsPriceListIdPricesPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}priceListId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: priceListId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete operation
#
##############################################################################
print_apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}priceListId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: priceListId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}priceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: priceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut operation
#
##############################################################################
print_apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}priceListId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: priceListId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}priceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: priceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2PricingServicePriceListsPriceListIdPut operation
#
##############################################################################
print_apiV2PricingServicePriceListsPriceListIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServicePriceListsPriceListIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}priceListId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: priceListId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getPriceListAsync operation
#
##############################################################################
print_getPriceListAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPriceListAsync - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}priceListId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: priceListId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getPriceListPriceAsync operation
#
##############################################################################
print_getPriceListPriceAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPriceListPriceAsync - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}priceListId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: priceListId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}priceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: priceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getPriceListPricesAsync operation
#
##############################################################################
print_getPriceListPricesAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPriceListPricesAsync - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}priceListId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: priceListId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}itemId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: itemId=value${OFF}" \
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
# Print help for apiV2PricingServicePricesItemIdFinalPriceGet operation
#
##############################################################################
print_apiV2PricingServicePricesItemIdFinalPriceGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServicePricesItemIdFinalPriceGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}itemId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: itemId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}currencyId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: USD.USA)${OFF} - ${YELLOW} Specify as: currencyId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2PricingServicePricesItemIdPriceGet operation
#
##############################################################################
print_apiV2PricingServicePricesItemIdPriceGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServicePricesItemIdPriceGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}itemId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: itemId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}priceListId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: priceListId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}discountsListId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: discountsListId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}currencyId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: USD.USA)${OFF} - ${YELLOW} Specify as: currencyId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2PricingServicePricesItemIdTotalSavingsGet operation
#
##############################################################################
print_apiV2PricingServicePricesItemIdTotalSavingsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServicePricesItemIdTotalSavingsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}itemId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: itemId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}currencyId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: USD.USA)${OFF} - ${YELLOW} Specify as: currencyId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2PricingServicePricesItemIdTotalTaxesGet operation
#
##############################################################################
print_apiV2PricingServicePricesItemIdTotalTaxesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2PricingServicePricesItemIdTotalTaxesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}itemId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: itemId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}currencyId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: USD.USA)${OFF} - ${YELLOW} Specify as: currencyId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call apiV2PricingServiceDiscountListsCountGet operation
#
##############################################################################
call_apiV2PricingServiceDiscountListsCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/DiscountLists/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServiceDiscountListsDiscountListIdDelete operation
#
##############################################################################
call_apiV2PricingServiceDiscountListsDiscountListIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(discountListId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/DiscountLists/{discountListId}" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet operation
#
##############################################################################
call_apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(discountListId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/DiscountLists/{discountListId}/Discounts/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete operation
#
##############################################################################
call_apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(discountListId discountListEntryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/DiscountLists/{discountListId}/Discounts/{discountListEntryId}" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut operation
#
##############################################################################
call_apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(discountListId discountListEntryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/DiscountLists/{discountListId}/Discounts/{discountListEntryId}" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet operation
#
##############################################################################
call_apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(discountListId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/DiscountLists/{discountListId}/Discounts" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost operation
#
##############################################################################
call_apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(discountListId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/DiscountLists/{discountListId}/Discounts" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServiceDiscountListsDiscountListIdGet operation
#
##############################################################################
call_apiV2PricingServiceDiscountListsDiscountListIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(discountListId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/DiscountLists/{discountListId}" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServiceDiscountListsDiscountListIdPut operation
#
##############################################################################
call_apiV2PricingServiceDiscountListsDiscountListIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(discountListId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/DiscountLists/{discountListId}" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServiceDiscountListsGet operation
#
##############################################################################
call_apiV2PricingServiceDiscountListsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/DiscountLists" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServiceDiscountListsPost operation
#
##############################################################################
call_apiV2PricingServiceDiscountListsPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/DiscountLists" path_parameter_names query_parameter_names); then
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
# Call getDiscountListEntry operation
#
##############################################################################
call_getDiscountListEntry() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(discountListId discountListEntryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/DiscountLists/{discountListId}/Discounts/{discountListEntryId}" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServicePriceListsCountGet operation
#
##############################################################################
call_apiV2PricingServicePriceListsCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/PriceLists/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServicePriceListsGet operation
#
##############################################################################
call_apiV2PricingServicePriceListsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/PriceLists" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServicePriceListsPost operation
#
##############################################################################
call_apiV2PricingServicePriceListsPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/PriceLists" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServicePriceListsPriceListIdDelete operation
#
##############################################################################
call_apiV2PricingServicePriceListsPriceListIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(priceListId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/PriceLists/{priceListId}" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServicePriceListsPriceListIdPricesPost operation
#
##############################################################################
call_apiV2PricingServicePriceListsPriceListIdPricesPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(priceListId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/PriceLists/{priceListId}/Prices" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete operation
#
##############################################################################
call_apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(priceListId priceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/PriceLists/{priceListId}/Prices/{priceId}" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut operation
#
##############################################################################
call_apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(priceListId priceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/PriceLists/{priceListId}/Prices/{priceId}" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServicePriceListsPriceListIdPut operation
#
##############################################################################
call_apiV2PricingServicePriceListsPriceListIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(priceListId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/PriceLists/{priceListId}" path_parameter_names query_parameter_names); then
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
# Call getPriceListAsync operation
#
##############################################################################
call_getPriceListAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(priceListId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/PriceLists/{priceListId}" path_parameter_names query_parameter_names); then
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
# Call getPriceListPriceAsync operation
#
##############################################################################
call_getPriceListPriceAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(priceListId priceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/PriceLists/{priceListId}/Prices/{priceId}" path_parameter_names query_parameter_names); then
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
# Call getPriceListPricesAsync operation
#
##############################################################################
call_getPriceListPricesAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(priceListId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId itemId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/PriceLists/{priceListId}/Prices" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServicePricesItemIdFinalPriceGet operation
#
##############################################################################
call_apiV2PricingServicePricesItemIdFinalPriceGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(itemId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(currencyId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/Prices/{itemId}/FinalPrice" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServicePricesItemIdPriceGet operation
#
##############################################################################
call_apiV2PricingServicePricesItemIdPriceGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(itemId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(priceListId discountsListId currencyId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/Prices/{itemId}/Price" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServicePricesItemIdTotalSavingsGet operation
#
##############################################################################
call_apiV2PricingServicePricesItemIdTotalSavingsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(itemId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(currencyId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/Prices/{itemId}/TotalSavings" path_parameter_names query_parameter_names); then
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
# Call apiV2PricingServicePricesItemIdTotalTaxesGet operation
#
##############################################################################
call_apiV2PricingServicePricesItemIdTotalTaxesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(itemId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(currencyId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/PricingService/Prices/{itemId}/TotalTaxes" path_parameter_names query_parameter_names); then
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
    apiV2PricingServiceDiscountListsCountGet)
    operation="apiV2PricingServiceDiscountListsCountGet"
    ;;
    apiV2PricingServiceDiscountListsDiscountListIdDelete)
    operation="apiV2PricingServiceDiscountListsDiscountListIdDelete"
    ;;
    apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet)
    operation="apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet"
    ;;
    apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete)
    operation="apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete"
    ;;
    apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut)
    operation="apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut"
    ;;
    apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet)
    operation="apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet"
    ;;
    apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost)
    operation="apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost"
    ;;
    apiV2PricingServiceDiscountListsDiscountListIdGet)
    operation="apiV2PricingServiceDiscountListsDiscountListIdGet"
    ;;
    apiV2PricingServiceDiscountListsDiscountListIdPut)
    operation="apiV2PricingServiceDiscountListsDiscountListIdPut"
    ;;
    apiV2PricingServiceDiscountListsGet)
    operation="apiV2PricingServiceDiscountListsGet"
    ;;
    apiV2PricingServiceDiscountListsPost)
    operation="apiV2PricingServiceDiscountListsPost"
    ;;
    getDiscountListEntry)
    operation="getDiscountListEntry"
    ;;
    apiV2PricingServicePriceListsCountGet)
    operation="apiV2PricingServicePriceListsCountGet"
    ;;
    apiV2PricingServicePriceListsGet)
    operation="apiV2PricingServicePriceListsGet"
    ;;
    apiV2PricingServicePriceListsPost)
    operation="apiV2PricingServicePriceListsPost"
    ;;
    apiV2PricingServicePriceListsPriceListIdDelete)
    operation="apiV2PricingServicePriceListsPriceListIdDelete"
    ;;
    apiV2PricingServicePriceListsPriceListIdPricesPost)
    operation="apiV2PricingServicePriceListsPriceListIdPricesPost"
    ;;
    apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete)
    operation="apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete"
    ;;
    apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut)
    operation="apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut"
    ;;
    apiV2PricingServicePriceListsPriceListIdPut)
    operation="apiV2PricingServicePriceListsPriceListIdPut"
    ;;
    getPriceListAsync)
    operation="getPriceListAsync"
    ;;
    getPriceListPriceAsync)
    operation="getPriceListPriceAsync"
    ;;
    getPriceListPricesAsync)
    operation="getPriceListPricesAsync"
    ;;
    apiV2PricingServicePricesItemIdFinalPriceGet)
    operation="apiV2PricingServicePricesItemIdFinalPriceGet"
    ;;
    apiV2PricingServicePricesItemIdPriceGet)
    operation="apiV2PricingServicePricesItemIdPriceGet"
    ;;
    apiV2PricingServicePricesItemIdTotalSavingsGet)
    operation="apiV2PricingServicePricesItemIdTotalSavingsGet"
    ;;
    apiV2PricingServicePricesItemIdTotalTaxesGet)
    operation="apiV2PricingServicePricesItemIdTotalTaxesGet"
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
    apiV2PricingServiceDiscountListsCountGet)
    call_apiV2PricingServiceDiscountListsCountGet
    ;;
    apiV2PricingServiceDiscountListsDiscountListIdDelete)
    call_apiV2PricingServiceDiscountListsDiscountListIdDelete
    ;;
    apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet)
    call_apiV2PricingServiceDiscountListsDiscountListIdDiscountsCountGet
    ;;
    apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete)
    call_apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdDelete
    ;;
    apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut)
    call_apiV2PricingServiceDiscountListsDiscountListIdDiscountsDiscountListEntryIdPut
    ;;
    apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet)
    call_apiV2PricingServiceDiscountListsDiscountListIdDiscountsGet
    ;;
    apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost)
    call_apiV2PricingServiceDiscountListsDiscountListIdDiscountsPost
    ;;
    apiV2PricingServiceDiscountListsDiscountListIdGet)
    call_apiV2PricingServiceDiscountListsDiscountListIdGet
    ;;
    apiV2PricingServiceDiscountListsDiscountListIdPut)
    call_apiV2PricingServiceDiscountListsDiscountListIdPut
    ;;
    apiV2PricingServiceDiscountListsGet)
    call_apiV2PricingServiceDiscountListsGet
    ;;
    apiV2PricingServiceDiscountListsPost)
    call_apiV2PricingServiceDiscountListsPost
    ;;
    getDiscountListEntry)
    call_getDiscountListEntry
    ;;
    apiV2PricingServicePriceListsCountGet)
    call_apiV2PricingServicePriceListsCountGet
    ;;
    apiV2PricingServicePriceListsGet)
    call_apiV2PricingServicePriceListsGet
    ;;
    apiV2PricingServicePriceListsPost)
    call_apiV2PricingServicePriceListsPost
    ;;
    apiV2PricingServicePriceListsPriceListIdDelete)
    call_apiV2PricingServicePriceListsPriceListIdDelete
    ;;
    apiV2PricingServicePriceListsPriceListIdPricesPost)
    call_apiV2PricingServicePriceListsPriceListIdPricesPost
    ;;
    apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete)
    call_apiV2PricingServicePriceListsPriceListIdPricesPriceIdDelete
    ;;
    apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut)
    call_apiV2PricingServicePriceListsPriceListIdPricesPriceIdPut
    ;;
    apiV2PricingServicePriceListsPriceListIdPut)
    call_apiV2PricingServicePriceListsPriceListIdPut
    ;;
    getPriceListAsync)
    call_getPriceListAsync
    ;;
    getPriceListPriceAsync)
    call_getPriceListPriceAsync
    ;;
    getPriceListPricesAsync)
    call_getPriceListPricesAsync
    ;;
    apiV2PricingServicePricesItemIdFinalPriceGet)
    call_apiV2PricingServicePricesItemIdFinalPriceGet
    ;;
    apiV2PricingServicePricesItemIdPriceGet)
    call_apiV2PricingServicePricesItemIdPriceGet
    ;;
    apiV2PricingServicePricesItemIdTotalSavingsGet)
    call_apiV2PricingServicePricesItemIdTotalSavingsGet
    ;;
    apiV2PricingServicePricesItemIdTotalTaxesGet)
    call_apiV2PricingServicePricesItemIdTotalTaxesGet
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
