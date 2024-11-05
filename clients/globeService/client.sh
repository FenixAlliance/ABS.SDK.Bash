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
# This is a Bash client for GlobeService.
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
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdCallingCodesGet:::countryId"]=1
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdCallingCodesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdCallingCodesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdCurrenciesGet:::countryId"]=1
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdCurrenciesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdCurrenciesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdGet:::countryId"]=1
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet:::countryStateId"]=1
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet:::countryId"]=1
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet:::countryStateId"]=1
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet:::countryId"]=1
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesGet:::countryId"]=1
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdTimezonesGet:::countryId"]=1
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdTimezonesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdTimezonesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet:::countryId"]=1
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesSearchGet:::countryName"]=1
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesSearchGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCountriesSearchGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCurrenciesCurrencyIdGet:::currencyId"]=1
operation_parameters_minimum_occurrences["apiV2GlobeServiceCurrenciesCurrencyIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCurrenciesCurrencyIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCurrenciesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceCurrenciesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceLanguagesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceLanguagesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceLanguagesLanguageIdGet:::languageId"]=1
operation_parameters_minimum_occurrences["apiV2GlobeServiceLanguagesLanguageIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceLanguagesLanguageIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobalSystemMigratePost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobalSystemMigratePost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceTimezonesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceTimezonesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceTimezonesTimeZoneIdGet:::timeZoneId"]=1
operation_parameters_minimum_occurrences["apiV2GlobeServiceTimezonesTimeZoneIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2GlobeServiceTimezonesTimeZoneIdGet:::x-api-version"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdCallingCodesGet:::countryId"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdCallingCodesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdCallingCodesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdCurrenciesGet:::countryId"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdCurrenciesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdCurrenciesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdGet:::countryId"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet:::countryStateId"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet:::countryId"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet:::countryStateId"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet:::countryId"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesGet:::countryId"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdStatesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdTimezonesGet:::countryId"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdTimezonesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdTimezonesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet:::countryId"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesSearchGet:::countryName"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesSearchGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCountriesSearchGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCurrenciesCurrencyIdGet:::currencyId"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCurrenciesCurrencyIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCurrenciesCurrencyIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCurrenciesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceCurrenciesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceLanguagesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceLanguagesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceLanguagesLanguageIdGet:::languageId"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceLanguagesLanguageIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceLanguagesLanguageIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobalSystemMigratePost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobalSystemMigratePost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceTimezonesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceTimezonesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceTimezonesTimeZoneIdGet:::timeZoneId"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceTimezonesTimeZoneIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2GlobeServiceTimezonesTimeZoneIdGet:::x-api-version"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdCallingCodesGet:::countryId"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdCallingCodesGet:::api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdCallingCodesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdCurrenciesGet:::countryId"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdCurrenciesGet:::api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdCurrenciesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdGet:::countryId"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet:::countryStateId"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet:::countryId"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet:::api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet:::countryStateId"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet:::countryId"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdStatesGet:::countryId"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdStatesGet:::api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdStatesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdTimezonesGet:::countryId"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdTimezonesGet:::api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdTimezonesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet:::countryId"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet:::api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesGet:::api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesSearchGet:::countryName"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesSearchGet:::api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCountriesSearchGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCurrenciesCurrencyIdGet:::currencyId"]=""
operation_parameters_collection_type["apiV2GlobeServiceCurrenciesCurrencyIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCurrenciesCurrencyIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCurrenciesGet:::api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceCurrenciesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceLanguagesGet:::api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceLanguagesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceLanguagesLanguageIdGet:::languageId"]=""
operation_parameters_collection_type["apiV2GlobeServiceLanguagesLanguageIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceLanguagesLanguageIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2GlobalSystemMigratePost:::api-version"]=""
operation_parameters_collection_type["apiV2GlobalSystemMigratePost:::x-api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceTimezonesGet:::api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceTimezonesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceTimezonesTimeZoneIdGet:::timeZoneId"]=""
operation_parameters_collection_type["apiV2GlobeServiceTimezonesTimeZoneIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2GlobeServiceTimezonesTimeZoneIdGet:::x-api-version"]=""


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

${BOLD}${WHITE}GlobeService command line client (API version 2.0.1.4089)${OFF}

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
    echo -e "${BOLD}${WHITE}[countries]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2GlobeServiceCountriesCountryIdCallingCodesGet${OFF}; (AUTH)
  ${CYAN}apiV2GlobeServiceCountriesCountryIdCurrenciesGet${OFF}; (AUTH)
  ${CYAN}apiV2GlobeServiceCountriesCountryIdGet${OFF}; (AUTH)
  ${CYAN}apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet${OFF}; (AUTH)
  ${CYAN}apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet${OFF}; (AUTH)
  ${CYAN}apiV2GlobeServiceCountriesCountryIdStatesGet${OFF}; (AUTH)
  ${CYAN}apiV2GlobeServiceCountriesCountryIdTimezonesGet${OFF}; (AUTH)
  ${CYAN}apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet${OFF}; (AUTH)
  ${CYAN}apiV2GlobeServiceCountriesGet${OFF}; (AUTH)
  ${CYAN}apiV2GlobeServiceCountriesSearchGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[currencies]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2GlobeServiceCurrenciesCurrencyIdGet${OFF}; (AUTH)
  ${CYAN}apiV2GlobeServiceCurrenciesGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[languages]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2GlobeServiceLanguagesGet${OFF}; (AUTH)
  ${CYAN}apiV2GlobeServiceLanguagesLanguageIdGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[migrations]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2GlobalSystemMigratePost${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[timezones]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2GlobeServiceTimezonesGet${OFF}; (AUTH)
  ${CYAN}apiV2GlobeServiceTimezonesTimeZoneIdGet${OFF}; (AUTH)
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
    echo -e "${BOLD}${WHITE}GlobeService command line client (API version 2.0.1.4089)${OFF}"
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
    echo -e "${BOLD}GlobeService command line client (API version 2.0.1.4089)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for apiV2GlobeServiceCountriesCountryIdCallingCodesGet operation
#
##############################################################################
print_apiV2GlobeServiceCountriesCountryIdCallingCodesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2GlobeServiceCountriesCountryIdCallingCodesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}countryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: countryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2GlobeServiceCountriesCountryIdCurrenciesGet operation
#
##############################################################################
print_apiV2GlobeServiceCountriesCountryIdCurrenciesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2GlobeServiceCountriesCountryIdCurrenciesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}countryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: countryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2GlobeServiceCountriesCountryIdGet operation
#
##############################################################################
print_apiV2GlobeServiceCountriesCountryIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2GlobeServiceCountriesCountryIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}countryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: countryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet operation
#
##############################################################################
print_apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}countryStateId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: countryStateId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}countryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: countryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet operation
#
##############################################################################
print_apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}countryStateId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: countryStateId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}countryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: countryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2GlobeServiceCountriesCountryIdStatesGet operation
#
##############################################################################
print_apiV2GlobeServiceCountriesCountryIdStatesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2GlobeServiceCountriesCountryIdStatesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}countryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: countryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2GlobeServiceCountriesCountryIdTimezonesGet operation
#
##############################################################################
print_apiV2GlobeServiceCountriesCountryIdTimezonesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2GlobeServiceCountriesCountryIdTimezonesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}countryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: countryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet operation
#
##############################################################################
print_apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}countryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: countryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2GlobeServiceCountriesGet operation
#
##############################################################################
print_apiV2GlobeServiceCountriesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2GlobeServiceCountriesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2GlobeServiceCountriesSearchGet operation
#
##############################################################################
print_apiV2GlobeServiceCountriesSearchGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2GlobeServiceCountriesSearchGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}countryName${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: countryName=value${OFF}" \
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
# Print help for apiV2GlobeServiceCurrenciesCurrencyIdGet operation
#
##############################################################################
print_apiV2GlobeServiceCurrenciesCurrencyIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2GlobeServiceCurrenciesCurrencyIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}currencyId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: currencyId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2GlobeServiceCurrenciesGet operation
#
##############################################################################
print_apiV2GlobeServiceCurrenciesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2GlobeServiceCurrenciesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2GlobeServiceLanguagesGet operation
#
##############################################################################
print_apiV2GlobeServiceLanguagesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2GlobeServiceLanguagesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2GlobeServiceLanguagesLanguageIdGet operation
#
##############################################################################
print_apiV2GlobeServiceLanguagesLanguageIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2GlobeServiceLanguagesLanguageIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}languageId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: languageId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2GlobalSystemMigratePost operation
#
##############################################################################
print_apiV2GlobalSystemMigratePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2GlobalSystemMigratePost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=500
    echo -e "${result_color_table[${code:0:1}]}  500;Internal Server Error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2GlobeServiceTimezonesGet operation
#
##############################################################################
print_apiV2GlobeServiceTimezonesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2GlobeServiceTimezonesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2GlobeServiceTimezonesTimeZoneIdGet operation
#
##############################################################################
print_apiV2GlobeServiceTimezonesTimeZoneIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2GlobeServiceTimezonesTimeZoneIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}timeZoneId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: timeZoneId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Call apiV2GlobeServiceCountriesCountryIdCallingCodesGet operation
#
##############################################################################
call_apiV2GlobeServiceCountriesCountryIdCallingCodesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(countryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/GlobeService/Countries/{countryId}/CallingCodes" path_parameter_names query_parameter_names); then
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
# Call apiV2GlobeServiceCountriesCountryIdCurrenciesGet operation
#
##############################################################################
call_apiV2GlobeServiceCountriesCountryIdCurrenciesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(countryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/GlobeService/Countries/{countryId}/Currencies" path_parameter_names query_parameter_names); then
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
# Call apiV2GlobeServiceCountriesCountryIdGet operation
#
##############################################################################
call_apiV2GlobeServiceCountriesCountryIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(countryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/GlobeService/Countries/{countryId}" path_parameter_names query_parameter_names); then
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
# Call apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet operation
#
##############################################################################
call_apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(countryStateId countryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/GlobeService/Countries/{countryId}/States/{countryStateId}/Cities" path_parameter_names query_parameter_names); then
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
# Call apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet operation
#
##############################################################################
call_apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(countryStateId countryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/GlobeService/Countries/{countryId}/States/{countryStateId}" path_parameter_names query_parameter_names); then
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
# Call apiV2GlobeServiceCountriesCountryIdStatesGet operation
#
##############################################################################
call_apiV2GlobeServiceCountriesCountryIdStatesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(countryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/GlobeService/Countries/{countryId}/States" path_parameter_names query_parameter_names); then
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
# Call apiV2GlobeServiceCountriesCountryIdTimezonesGet operation
#
##############################################################################
call_apiV2GlobeServiceCountriesCountryIdTimezonesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(countryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/GlobeService/Countries/{countryId}/Timezones" path_parameter_names query_parameter_names); then
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
# Call apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet operation
#
##############################################################################
call_apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(countryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/GlobeService/Countries/{countryId}/TopLevelDomains" path_parameter_names query_parameter_names); then
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
# Call apiV2GlobeServiceCountriesGet operation
#
##############################################################################
call_apiV2GlobeServiceCountriesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/GlobeService/Countries" path_parameter_names query_parameter_names); then
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
# Call apiV2GlobeServiceCountriesSearchGet operation
#
##############################################################################
call_apiV2GlobeServiceCountriesSearchGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(countryName api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/GlobeService/Countries/Search" path_parameter_names query_parameter_names); then
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
# Call apiV2GlobeServiceCurrenciesCurrencyIdGet operation
#
##############################################################################
call_apiV2GlobeServiceCurrenciesCurrencyIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(currencyId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/GlobeService/Currencies/{currencyId}" path_parameter_names query_parameter_names); then
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
# Call apiV2GlobeServiceCurrenciesGet operation
#
##############################################################################
call_apiV2GlobeServiceCurrenciesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/GlobeService/Currencies" path_parameter_names query_parameter_names); then
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
# Call apiV2GlobeServiceLanguagesGet operation
#
##############################################################################
call_apiV2GlobeServiceLanguagesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/GlobeService/Languages" path_parameter_names query_parameter_names); then
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
# Call apiV2GlobeServiceLanguagesLanguageIdGet operation
#
##############################################################################
call_apiV2GlobeServiceLanguagesLanguageIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(languageId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/GlobeService/Languages/{languageId}" path_parameter_names query_parameter_names); then
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
# Call apiV2GlobalSystemMigratePost operation
#
##############################################################################
call_apiV2GlobalSystemMigratePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/Global/System/Migrate" path_parameter_names query_parameter_names); then
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
# Call apiV2GlobeServiceTimezonesGet operation
#
##############################################################################
call_apiV2GlobeServiceTimezonesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/GlobeService/Timezones" path_parameter_names query_parameter_names); then
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
# Call apiV2GlobeServiceTimezonesTimeZoneIdGet operation
#
##############################################################################
call_apiV2GlobeServiceTimezonesTimeZoneIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(timeZoneId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/GlobeService/Timezones/{timeZoneId}" path_parameter_names query_parameter_names); then
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
    apiV2GlobeServiceCountriesCountryIdCallingCodesGet)
    operation="apiV2GlobeServiceCountriesCountryIdCallingCodesGet"
    ;;
    apiV2GlobeServiceCountriesCountryIdCurrenciesGet)
    operation="apiV2GlobeServiceCountriesCountryIdCurrenciesGet"
    ;;
    apiV2GlobeServiceCountriesCountryIdGet)
    operation="apiV2GlobeServiceCountriesCountryIdGet"
    ;;
    apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet)
    operation="apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet"
    ;;
    apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet)
    operation="apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet"
    ;;
    apiV2GlobeServiceCountriesCountryIdStatesGet)
    operation="apiV2GlobeServiceCountriesCountryIdStatesGet"
    ;;
    apiV2GlobeServiceCountriesCountryIdTimezonesGet)
    operation="apiV2GlobeServiceCountriesCountryIdTimezonesGet"
    ;;
    apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet)
    operation="apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet"
    ;;
    apiV2GlobeServiceCountriesGet)
    operation="apiV2GlobeServiceCountriesGet"
    ;;
    apiV2GlobeServiceCountriesSearchGet)
    operation="apiV2GlobeServiceCountriesSearchGet"
    ;;
    apiV2GlobeServiceCurrenciesCurrencyIdGet)
    operation="apiV2GlobeServiceCurrenciesCurrencyIdGet"
    ;;
    apiV2GlobeServiceCurrenciesGet)
    operation="apiV2GlobeServiceCurrenciesGet"
    ;;
    apiV2GlobeServiceLanguagesGet)
    operation="apiV2GlobeServiceLanguagesGet"
    ;;
    apiV2GlobeServiceLanguagesLanguageIdGet)
    operation="apiV2GlobeServiceLanguagesLanguageIdGet"
    ;;
    apiV2GlobalSystemMigratePost)
    operation="apiV2GlobalSystemMigratePost"
    ;;
    apiV2GlobeServiceTimezonesGet)
    operation="apiV2GlobeServiceTimezonesGet"
    ;;
    apiV2GlobeServiceTimezonesTimeZoneIdGet)
    operation="apiV2GlobeServiceTimezonesTimeZoneIdGet"
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
    apiV2GlobeServiceCountriesCountryIdCallingCodesGet)
    call_apiV2GlobeServiceCountriesCountryIdCallingCodesGet
    ;;
    apiV2GlobeServiceCountriesCountryIdCurrenciesGet)
    call_apiV2GlobeServiceCountriesCountryIdCurrenciesGet
    ;;
    apiV2GlobeServiceCountriesCountryIdGet)
    call_apiV2GlobeServiceCountriesCountryIdGet
    ;;
    apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet)
    call_apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdCitiesGet
    ;;
    apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet)
    call_apiV2GlobeServiceCountriesCountryIdStatesCountryStateIdGet
    ;;
    apiV2GlobeServiceCountriesCountryIdStatesGet)
    call_apiV2GlobeServiceCountriesCountryIdStatesGet
    ;;
    apiV2GlobeServiceCountriesCountryIdTimezonesGet)
    call_apiV2GlobeServiceCountriesCountryIdTimezonesGet
    ;;
    apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet)
    call_apiV2GlobeServiceCountriesCountryIdTopLevelDomainsGet
    ;;
    apiV2GlobeServiceCountriesGet)
    call_apiV2GlobeServiceCountriesGet
    ;;
    apiV2GlobeServiceCountriesSearchGet)
    call_apiV2GlobeServiceCountriesSearchGet
    ;;
    apiV2GlobeServiceCurrenciesCurrencyIdGet)
    call_apiV2GlobeServiceCurrenciesCurrencyIdGet
    ;;
    apiV2GlobeServiceCurrenciesGet)
    call_apiV2GlobeServiceCurrenciesGet
    ;;
    apiV2GlobeServiceLanguagesGet)
    call_apiV2GlobeServiceLanguagesGet
    ;;
    apiV2GlobeServiceLanguagesLanguageIdGet)
    call_apiV2GlobeServiceLanguagesLanguageIdGet
    ;;
    apiV2GlobalSystemMigratePost)
    call_apiV2GlobalSystemMigratePost
    ;;
    apiV2GlobeServiceTimezonesGet)
    call_apiV2GlobeServiceTimezonesGet
    ;;
    apiV2GlobeServiceTimezonesTimeZoneIdGet)
    call_apiV2GlobeServiceTimezonesTimeZoneIdGet
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
