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
# This is a Bash client for InvoicingService.
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
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesDiscountsAggregatePost:::request_body"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesDiscountsAggregatePost:::currencyId"]=0
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesExtendedCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesExtendedGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesGlobalSurchargesAggregatePost:::request_body"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesGlobalSurchargesAggregatePost:::currencyId"]=0
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsCountGet:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsGet:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdDelete:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdDelete:::invoiceAdjustmentId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdGet:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdGet:::invoiceAdjustmentId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut:::invoiceAdjustmentId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut:::InvoiceAdjustmentUpdateDto"]=0
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsPost:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsPost:::InvoiceAdjustmentCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdCalculatePut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdCalculatePut:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdDelete:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdExtendedGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdExtendedGet:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesCountGet:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesGet:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesGet:::itemId"]=0
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdCalculatePut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdCalculatePut:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdCalculatePut:::invoiceLineId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdDelete:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdDelete:::invoiceLineId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdGet:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdGet:::invoiceLineId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut:::invoiceLineId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut:::InvoiceLineUpdateDto"]=0
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesCountGet:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesCountGet:::invoiceLineId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesGet:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesGet:::invoiceLineId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete:::invoiceLineId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete:::invoiceLineTaxId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut:::invoiceLineId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut:::invoiceLineTaxId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut:::InvoiceLineAppliedTaxUpdateDto"]=0
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost:::invoiceLineId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost:::InvoiceLineAppliedTaxCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesPost:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesPost:::InvoiceLineCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdPaymentsCountGet:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdPaymentsGet:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdPut:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdPut:::InvoiceUpdateDto"]=0
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesCountGet:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesGet:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdDelete:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdDelete:::invoiceReferenceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdGet:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdGet:::invoiceReferenceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut:::invoiceReferenceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut:::InvoiceReferenceUpdateDto"]=0
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesPost:::invoiceId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesPost:::InvoiceReferenceCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesPost:::InvoiceCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesTaxBasesAggregatePost:::request_body"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesTaxBasesAggregatePost:::currencyId"]=0
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesTaxesAggregatePost:::request_body"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesTaxesAggregatePost:::currencyId"]=0
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesTotalsAggregatePost:::request_body"]=1
operation_parameters_minimum_occurrences["apiV2InvoicingServiceInvoicesTotalsAggregatePost:::currencyId"]=0
operation_parameters_minimum_occurrences["getInvoiceAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getInvoiceAsync:::invoiceId"]=1

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesDiscountsAggregatePost:::request_body"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesDiscountsAggregatePost:::currencyId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesExtendedCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesExtendedGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesGlobalSurchargesAggregatePost:::request_body"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesGlobalSurchargesAggregatePost:::currencyId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsCountGet:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsGet:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdDelete:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdDelete:::invoiceAdjustmentId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdGet:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdGet:::invoiceAdjustmentId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut:::invoiceAdjustmentId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut:::InvoiceAdjustmentUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsPost:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsPost:::InvoiceAdjustmentCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdCalculatePut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdCalculatePut:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdDelete:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdExtendedGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdExtendedGet:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesCountGet:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesGet:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesGet:::itemId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdCalculatePut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdCalculatePut:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdCalculatePut:::invoiceLineId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdDelete:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdDelete:::invoiceLineId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdGet:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdGet:::invoiceLineId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut:::invoiceLineId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut:::InvoiceLineUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesCountGet:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesCountGet:::invoiceLineId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesGet:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesGet:::invoiceLineId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete:::invoiceLineId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete:::invoiceLineTaxId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut:::invoiceLineId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut:::invoiceLineTaxId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut:::InvoiceLineAppliedTaxUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost:::invoiceLineId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost:::InvoiceLineAppliedTaxCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesPost:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdLinesPost:::InvoiceLineCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdPaymentsCountGet:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdPaymentsGet:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdPut:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdPut:::InvoiceUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesCountGet:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesGet:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdDelete:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdDelete:::invoiceReferenceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdGet:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdGet:::invoiceReferenceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut:::invoiceReferenceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut:::InvoiceReferenceUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesPost:::invoiceId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesInvoiceIdReferencesPost:::InvoiceReferenceCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesPost:::InvoiceCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesTaxBasesAggregatePost:::request_body"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesTaxBasesAggregatePost:::currencyId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesTaxesAggregatePost:::request_body"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesTaxesAggregatePost:::currencyId"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesTotalsAggregatePost:::request_body"]=0
operation_parameters_maximum_occurrences["apiV2InvoicingServiceInvoicesTotalsAggregatePost:::currencyId"]=0
operation_parameters_maximum_occurrences["getInvoiceAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getInvoiceAsync:::invoiceId"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesDiscountsAggregatePost:::request_body"]=
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesDiscountsAggregatePost:::currencyId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesExtendedCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesExtendedGet:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesGet:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesGlobalSurchargesAggregatePost:::request_body"]=
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesGlobalSurchargesAggregatePost:::currencyId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsCountGet:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsGet:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdDelete:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdDelete:::invoiceAdjustmentId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdGet:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdGet:::invoiceAdjustmentId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut:::invoiceAdjustmentId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut:::InvoiceAdjustmentUpdateDto"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsPost:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsPost:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsPost:::InvoiceAdjustmentCreateDto"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdCalculatePut:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdCalculatePut:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdDelete:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdExtendedGet:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdExtendedGet:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesCountGet:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesGet:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesGet:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesGet:::itemId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdCalculatePut:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdCalculatePut:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdCalculatePut:::invoiceLineId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdDelete:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdDelete:::invoiceLineId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdGet:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdGet:::invoiceLineId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut:::invoiceLineId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut:::InvoiceLineUpdateDto"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesCountGet:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesCountGet:::invoiceLineId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesGet:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesGet:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesGet:::invoiceLineId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete:::invoiceLineId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete:::invoiceLineTaxId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut:::invoiceLineId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut:::invoiceLineTaxId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut:::InvoiceLineAppliedTaxUpdateDto"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost:::invoiceLineId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost:::InvoiceLineAppliedTaxCreateDto"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesPost:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesPost:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdLinesPost:::InvoiceLineCreateDto"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdPaymentsCountGet:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdPaymentsGet:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdPut:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdPut:::InvoiceUpdateDto"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdReferencesCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdReferencesCountGet:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdReferencesGet:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdReferencesGet:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdDelete:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdDelete:::invoiceReferenceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdGet:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdGet:::invoiceReferenceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut:::invoiceReferenceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut:::InvoiceReferenceUpdateDto"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdReferencesPost:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdReferencesPost:::invoiceId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesInvoiceIdReferencesPost:::InvoiceReferenceCreateDto"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesPost:::tenantId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesPost:::InvoiceCreateDto"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesTaxBasesAggregatePost:::request_body"]=
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesTaxBasesAggregatePost:::currencyId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesTaxesAggregatePost:::request_body"]=
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesTaxesAggregatePost:::currencyId"]=""
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesTotalsAggregatePost:::request_body"]=
operation_parameters_collection_type["apiV2InvoicingServiceInvoicesTotalsAggregatePost:::currencyId"]=""
operation_parameters_collection_type["getInvoiceAsync:::tenantId"]=""
operation_parameters_collection_type["getInvoiceAsync:::invoiceId"]=""


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

${BOLD}${WHITE}InvoicingService command line client (API version 2.0.1.4089)${OFF}

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
    echo -e "${BOLD}${WHITE}[invoices]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2InvoicingServiceInvoicesCountGet${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesDiscountsAggregatePost${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesExtendedCountGet${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesExtendedGet${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesGet${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesGlobalSurchargesAggregatePost${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsCountGet${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsGet${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdGet${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsPost${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdCalculatePut${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdExtendedGet${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdLinesCountGet${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdLinesGet${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdCalculatePut${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdGet${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesCountGet${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesGet${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdLinesPost${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdPaymentsCountGet${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdPaymentsGet${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdPut${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdReferencesCountGet${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdReferencesGet${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdGet${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesInvoiceIdReferencesPost${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesPost${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesTaxBasesAggregatePost${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesTaxesAggregatePost${OFF}; (AUTH)
  ${CYAN}apiV2InvoicingServiceInvoicesTotalsAggregatePost${OFF}; (AUTH)
  ${CYAN}getInvoiceAsync${OFF}; (AUTH)
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
    echo -e "${BOLD}${WHITE}InvoicingService command line client (API version 2.0.1.4089)${OFF}"
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
    echo -e "${BOLD}InvoicingService command line client (API version 2.0.1.4089)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for apiV2InvoicingServiceInvoicesCountGet operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesDiscountsAggregatePost operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesDiscountsAggregatePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesDiscountsAggregatePost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}currencyId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: currencyId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesExtendedCountGet operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesExtendedCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesExtendedCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesExtendedGet operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesExtendedGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesExtendedGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesGet operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesGlobalSurchargesAggregatePost operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesGlobalSurchargesAggregatePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesGlobalSurchargesAggregatePost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}currencyId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: currencyId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsCountGet operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsGet operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdDelete operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceAdjustmentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceAdjustmentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdGet operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceAdjustmentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceAdjustmentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceAdjustmentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceAdjustmentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsPost operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdCalculatePut operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdCalculatePut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdCalculatePut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdDelete operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdExtendedGet operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdExtendedGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdExtendedGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdLinesCountGet operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdLinesCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdLinesCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdLinesGet operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdLinesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdLinesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdCalculatePut operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdCalculatePut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdCalculatePut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceLineId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceLineId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdDelete operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceLineId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceLineId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdGet operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceLineId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceLineId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceLineId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceLineId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesCountGet operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceLineId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceLineId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesGet operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceLineId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceLineId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceLineId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceLineId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceLineTaxId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceLineTaxId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceLineId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceLineId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceLineTaxId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceLineTaxId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceLineId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceLineId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdLinesPost operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdLinesPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdLinesPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdPaymentsCountGet operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdPaymentsCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdPaymentsCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdPaymentsGet operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdPaymentsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdPaymentsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdPut operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdReferencesCountGet operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdReferencesCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdReferencesCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdReferencesGet operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdReferencesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdReferencesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdDelete operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceReferenceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceReferenceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdGet operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceReferenceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceReferenceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceReferenceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceReferenceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesInvoiceIdReferencesPost operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesInvoiceIdReferencesPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesInvoiceIdReferencesPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesPost operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesTaxBasesAggregatePost operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesTaxBasesAggregatePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesTaxBasesAggregatePost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}currencyId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: currencyId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesTaxesAggregatePost operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesTaxesAggregatePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesTaxesAggregatePost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}currencyId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: currencyId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2InvoicingServiceInvoicesTotalsAggregatePost operation
#
##############################################################################
print_apiV2InvoicingServiceInvoicesTotalsAggregatePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2InvoicingServiceInvoicesTotalsAggregatePost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}currencyId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: currencyId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getInvoiceAsync operation
#
##############################################################################
print_getInvoiceAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getInvoiceAsync - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invoiceId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: invoiceId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call apiV2InvoicingServiceInvoicesCountGet operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesDiscountsAggregatePost operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesDiscountsAggregatePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(currencyId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/DiscountsAggregate" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesExtendedCountGet operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesExtendedCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/Extended/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesExtendedGet operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesExtendedGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/Extended" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesGet operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesGlobalSurchargesAggregatePost operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesGlobalSurchargesAggregatePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(currencyId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/GlobalSurchargesAggregate" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsCountGet operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsGet operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdDelete operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId invoiceAdjustmentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments/{invoiceAdjustmentId}" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdGet operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId invoiceAdjustmentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments/{invoiceAdjustmentId}" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId invoiceAdjustmentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments/{invoiceAdjustmentId}" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsPost operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Adjustments" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdCalculatePut operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdCalculatePut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Calculate" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdDelete operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdExtendedGet operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdExtendedGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Extended" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdLinesCountGet operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdLinesCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Lines/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdLinesGet operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdLinesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId itemId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Lines" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdCalculatePut operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdCalculatePut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId invoiceLineId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Calculate" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdDelete operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId invoiceLineId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdGet operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId invoiceLineId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId invoiceLineId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesCountGet operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId invoiceLineId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Taxes/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesGet operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId invoiceLineId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Taxes" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId invoiceLineId invoiceLineTaxId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Taxes/{invoiceLineTaxId}" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId invoiceLineId invoiceLineTaxId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Taxes/{invoiceLineTaxId}" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId invoiceLineId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Lines/{invoiceLineId}/Taxes" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdLinesPost operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdLinesPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Lines" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdPaymentsCountGet operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdPaymentsCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Payments/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdPaymentsGet operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdPaymentsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/Payments" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdPut operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdReferencesCountGet operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdReferencesCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/References/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdReferencesGet operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdReferencesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/References" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdDelete operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId invoiceReferenceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/References/{invoiceReferenceId}" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdGet operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId invoiceReferenceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/References/{invoiceReferenceId}" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId invoiceReferenceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/References/{invoiceReferenceId}" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesInvoiceIdReferencesPost operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesInvoiceIdReferencesPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}/References" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesPost operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesTaxBasesAggregatePost operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesTaxBasesAggregatePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(currencyId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/TaxBasesAggregate" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesTaxesAggregatePost operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesTaxesAggregatePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(currencyId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/TaxesAggregate" path_parameter_names query_parameter_names); then
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
# Call apiV2InvoicingServiceInvoicesTotalsAggregatePost operation
#
##############################################################################
call_apiV2InvoicingServiceInvoicesTotalsAggregatePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(currencyId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/TotalsAggregate" path_parameter_names query_parameter_names); then
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
# Call getInvoiceAsync operation
#
##############################################################################
call_getInvoiceAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(invoiceId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/InvoicingService/Invoices/{invoiceId}" path_parameter_names query_parameter_names); then
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
    apiV2InvoicingServiceInvoicesCountGet)
    operation="apiV2InvoicingServiceInvoicesCountGet"
    ;;
    apiV2InvoicingServiceInvoicesDiscountsAggregatePost)
    operation="apiV2InvoicingServiceInvoicesDiscountsAggregatePost"
    ;;
    apiV2InvoicingServiceInvoicesExtendedCountGet)
    operation="apiV2InvoicingServiceInvoicesExtendedCountGet"
    ;;
    apiV2InvoicingServiceInvoicesExtendedGet)
    operation="apiV2InvoicingServiceInvoicesExtendedGet"
    ;;
    apiV2InvoicingServiceInvoicesGet)
    operation="apiV2InvoicingServiceInvoicesGet"
    ;;
    apiV2InvoicingServiceInvoicesGlobalSurchargesAggregatePost)
    operation="apiV2InvoicingServiceInvoicesGlobalSurchargesAggregatePost"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsCountGet)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsCountGet"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsGet)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsGet"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdDelete)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdDelete"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdGet)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdGet"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsPost)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsPost"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdCalculatePut)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdCalculatePut"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdDelete)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdDelete"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdExtendedGet)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdExtendedGet"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesCountGet)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdLinesCountGet"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesGet)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdLinesGet"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdCalculatePut)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdCalculatePut"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdDelete)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdDelete"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdGet)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdGet"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesCountGet)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesCountGet"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesGet)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesGet"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesPost)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdLinesPost"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdPaymentsCountGet)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdPaymentsCountGet"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdPaymentsGet)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdPaymentsGet"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdPut)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdPut"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdReferencesCountGet)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdReferencesCountGet"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdReferencesGet)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdReferencesGet"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdDelete)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdDelete"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdGet)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdGet"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut"
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdReferencesPost)
    operation="apiV2InvoicingServiceInvoicesInvoiceIdReferencesPost"
    ;;
    apiV2InvoicingServiceInvoicesPost)
    operation="apiV2InvoicingServiceInvoicesPost"
    ;;
    apiV2InvoicingServiceInvoicesTaxBasesAggregatePost)
    operation="apiV2InvoicingServiceInvoicesTaxBasesAggregatePost"
    ;;
    apiV2InvoicingServiceInvoicesTaxesAggregatePost)
    operation="apiV2InvoicingServiceInvoicesTaxesAggregatePost"
    ;;
    apiV2InvoicingServiceInvoicesTotalsAggregatePost)
    operation="apiV2InvoicingServiceInvoicesTotalsAggregatePost"
    ;;
    getInvoiceAsync)
    operation="getInvoiceAsync"
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
    apiV2InvoicingServiceInvoicesCountGet)
    call_apiV2InvoicingServiceInvoicesCountGet
    ;;
    apiV2InvoicingServiceInvoicesDiscountsAggregatePost)
    call_apiV2InvoicingServiceInvoicesDiscountsAggregatePost
    ;;
    apiV2InvoicingServiceInvoicesExtendedCountGet)
    call_apiV2InvoicingServiceInvoicesExtendedCountGet
    ;;
    apiV2InvoicingServiceInvoicesExtendedGet)
    call_apiV2InvoicingServiceInvoicesExtendedGet
    ;;
    apiV2InvoicingServiceInvoicesGet)
    call_apiV2InvoicingServiceInvoicesGet
    ;;
    apiV2InvoicingServiceInvoicesGlobalSurchargesAggregatePost)
    call_apiV2InvoicingServiceInvoicesGlobalSurchargesAggregatePost
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsCountGet)
    call_apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsCountGet
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsGet)
    call_apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsGet
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdDelete)
    call_apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdDelete
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdGet)
    call_apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdGet
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut)
    call_apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsInvoiceAdjustmentIdPut
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsPost)
    call_apiV2InvoicingServiceInvoicesInvoiceIdAdjustmentsPost
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdCalculatePut)
    call_apiV2InvoicingServiceInvoicesInvoiceIdCalculatePut
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdDelete)
    call_apiV2InvoicingServiceInvoicesInvoiceIdDelete
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdExtendedGet)
    call_apiV2InvoicingServiceInvoicesInvoiceIdExtendedGet
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesCountGet)
    call_apiV2InvoicingServiceInvoicesInvoiceIdLinesCountGet
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesGet)
    call_apiV2InvoicingServiceInvoicesInvoiceIdLinesGet
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdCalculatePut)
    call_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdCalculatePut
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdDelete)
    call_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdDelete
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdGet)
    call_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdGet
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut)
    call_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdPut
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesCountGet)
    call_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesCountGet
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesGet)
    call_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesGet
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete)
    call_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdDelete
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut)
    call_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesInvoiceLineTaxIdPut
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost)
    call_apiV2InvoicingServiceInvoicesInvoiceIdLinesInvoiceLineIdTaxesPost
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdLinesPost)
    call_apiV2InvoicingServiceInvoicesInvoiceIdLinesPost
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdPaymentsCountGet)
    call_apiV2InvoicingServiceInvoicesInvoiceIdPaymentsCountGet
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdPaymentsGet)
    call_apiV2InvoicingServiceInvoicesInvoiceIdPaymentsGet
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdPut)
    call_apiV2InvoicingServiceInvoicesInvoiceIdPut
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdReferencesCountGet)
    call_apiV2InvoicingServiceInvoicesInvoiceIdReferencesCountGet
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdReferencesGet)
    call_apiV2InvoicingServiceInvoicesInvoiceIdReferencesGet
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdDelete)
    call_apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdDelete
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdGet)
    call_apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdGet
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut)
    call_apiV2InvoicingServiceInvoicesInvoiceIdReferencesInvoiceReferenceIdPut
    ;;
    apiV2InvoicingServiceInvoicesInvoiceIdReferencesPost)
    call_apiV2InvoicingServiceInvoicesInvoiceIdReferencesPost
    ;;
    apiV2InvoicingServiceInvoicesPost)
    call_apiV2InvoicingServiceInvoicesPost
    ;;
    apiV2InvoicingServiceInvoicesTaxBasesAggregatePost)
    call_apiV2InvoicingServiceInvoicesTaxBasesAggregatePost
    ;;
    apiV2InvoicingServiceInvoicesTaxesAggregatePost)
    call_apiV2InvoicingServiceInvoicesTaxesAggregatePost
    ;;
    apiV2InvoicingServiceInvoicesTotalsAggregatePost)
    call_apiV2InvoicingServiceInvoicesTotalsAggregatePost
    ;;
    getInvoiceAsync)
    call_getInvoiceAsync
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
