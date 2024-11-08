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
# This is a Bash client for OrdersService.
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
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersExtendedGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdCalculatePut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdCalculatePut:::orderId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdDelete:::orderId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesCountGet:::orderId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesGet:::orderId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesGet:::itemId"]=0
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut:::orderId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut:::orderLineId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete:::orderId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete:::orderLineId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet:::orderId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet:::orderLineId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut:::orderId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut:::orderLineId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut:::OrderLineUpdateDto"]=0
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesPost:::orderId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesPost:::OrderLineCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdPut:::orderId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersOrderIdPut:::OrderUpdateDto"]=0
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersPost:::OrderCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2OrdersServiceOrdersSubmitCartPost:::cartId"]=1
operation_parameters_minimum_occurrences["getOrderAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getOrderAsync:::orderId"]=1
operation_parameters_minimum_occurrences["getOrdersAsync:::tenantId"]=1

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersExtendedGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdCalculatePut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdCalculatePut:::orderId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdDelete:::orderId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesCountGet:::orderId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesGet:::orderId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesGet:::itemId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut:::orderId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut:::orderLineId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete:::orderId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete:::orderLineId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet:::orderId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet:::orderLineId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut:::orderId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut:::orderLineId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut:::OrderLineUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesPost:::orderId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdLinesPost:::OrderLineCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdPut:::orderId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersOrderIdPut:::OrderUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersPost:::OrderCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2OrdersServiceOrdersSubmitCartPost:::cartId"]=0
operation_parameters_maximum_occurrences["getOrderAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getOrderAsync:::orderId"]=0
operation_parameters_maximum_occurrences["getOrdersAsync:::tenantId"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["apiV2OrdersServiceOrdersCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersExtendedGet:::tenantId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdCalculatePut:::tenantId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdCalculatePut:::orderId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdDelete:::orderId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesCountGet:::orderId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesGet:::tenantId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesGet:::orderId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesGet:::itemId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut:::tenantId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut:::orderId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut:::orderLineId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete:::orderId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete:::orderLineId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet:::orderId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet:::orderLineId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut:::orderId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut:::orderLineId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut:::OrderLineUpdateDto"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesPost:::tenantId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesPost:::orderId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdLinesPost:::OrderLineCreateDto"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdPut:::orderId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersOrderIdPut:::OrderUpdateDto"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersPost:::tenantId"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersPost:::OrderCreateDto"]=""
operation_parameters_collection_type["apiV2OrdersServiceOrdersSubmitCartPost:::cartId"]=""
operation_parameters_collection_type["getOrderAsync:::tenantId"]=""
operation_parameters_collection_type["getOrderAsync:::orderId"]=""
operation_parameters_collection_type["getOrdersAsync:::tenantId"]=""


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

${BOLD}${WHITE}OrdersService command line client (API version 2.0.1.4089)${OFF}

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
    echo -e "${BOLD}${WHITE}[orders]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2OrdersServiceOrdersCountGet${OFF}; (AUTH)
  ${CYAN}apiV2OrdersServiceOrdersExtendedGet${OFF}; (AUTH)
  ${CYAN}apiV2OrdersServiceOrdersOrderIdCalculatePut${OFF}; (AUTH)
  ${CYAN}apiV2OrdersServiceOrdersOrderIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2OrdersServiceOrdersOrderIdLinesCountGet${OFF}; (AUTH)
  ${CYAN}apiV2OrdersServiceOrdersOrderIdLinesGet${OFF}; (AUTH)
  ${CYAN}apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut${OFF}; (AUTH)
  ${CYAN}apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet${OFF}; (AUTH)
  ${CYAN}apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut${OFF}; (AUTH)
  ${CYAN}apiV2OrdersServiceOrdersOrderIdLinesPost${OFF}; (AUTH)
  ${CYAN}apiV2OrdersServiceOrdersOrderIdPut${OFF}; (AUTH)
  ${CYAN}apiV2OrdersServiceOrdersPost${OFF}; (AUTH)
  ${CYAN}apiV2OrdersServiceOrdersSubmitCartPost${OFF}; (AUTH)
  ${CYAN}getOrderAsync${OFF}; (AUTH)
  ${CYAN}getOrdersAsync${OFF}; (AUTH)
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
    echo -e "${BOLD}${WHITE}OrdersService command line client (API version 2.0.1.4089)${OFF}"
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
    echo -e "${BOLD}OrdersService command line client (API version 2.0.1.4089)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for apiV2OrdersServiceOrdersCountGet operation
#
##############################################################################
print_apiV2OrdersServiceOrdersCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2OrdersServiceOrdersCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2OrdersServiceOrdersExtendedGet operation
#
##############################################################################
print_apiV2OrdersServiceOrdersExtendedGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2OrdersServiceOrdersExtendedGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2OrdersServiceOrdersOrderIdCalculatePut operation
#
##############################################################################
print_apiV2OrdersServiceOrdersOrderIdCalculatePut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2OrdersServiceOrdersOrderIdCalculatePut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}orderId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: orderId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2OrdersServiceOrdersOrderIdDelete operation
#
##############################################################################
print_apiV2OrdersServiceOrdersOrderIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2OrdersServiceOrdersOrderIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}orderId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: orderId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2OrdersServiceOrdersOrderIdLinesCountGet operation
#
##############################################################################
print_apiV2OrdersServiceOrdersOrderIdLinesCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2OrdersServiceOrdersOrderIdLinesCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}orderId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: orderId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2OrdersServiceOrdersOrderIdLinesGet operation
#
##############################################################################
print_apiV2OrdersServiceOrdersOrderIdLinesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2OrdersServiceOrdersOrderIdLinesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}orderId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: orderId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut operation
#
##############################################################################
print_apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}orderId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: orderId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}orderLineId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: orderLineId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete operation
#
##############################################################################
print_apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}orderId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: orderId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}orderLineId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: orderLineId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet operation
#
##############################################################################
print_apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}orderId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: orderId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}orderLineId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: orderLineId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut operation
#
##############################################################################
print_apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}orderId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: orderId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}orderLineId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: orderLineId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2OrdersServiceOrdersOrderIdLinesPost operation
#
##############################################################################
print_apiV2OrdersServiceOrdersOrderIdLinesPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2OrdersServiceOrdersOrderIdLinesPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}orderId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: orderId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2OrdersServiceOrdersOrderIdPut operation
#
##############################################################################
print_apiV2OrdersServiceOrdersOrderIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2OrdersServiceOrdersOrderIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}orderId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: orderId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2OrdersServiceOrdersPost operation
#
##############################################################################
print_apiV2OrdersServiceOrdersPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2OrdersServiceOrdersPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2OrdersServiceOrdersSubmitCartPost operation
#
##############################################################################
print_apiV2OrdersServiceOrdersSubmitCartPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2OrdersServiceOrdersSubmitCartPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}cartId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: cartId=value${OFF}" \
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
# Print help for getOrderAsync operation
#
##############################################################################
print_getOrderAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getOrderAsync - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}orderId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: orderId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getOrdersAsync operation
#
##############################################################################
print_getOrdersAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getOrdersAsync - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Call apiV2OrdersServiceOrdersCountGet operation
#
##############################################################################
call_apiV2OrdersServiceOrdersCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/OrdersService/Orders/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2OrdersServiceOrdersExtendedGet operation
#
##############################################################################
call_apiV2OrdersServiceOrdersExtendedGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/OrdersService/Orders/Extended" path_parameter_names query_parameter_names); then
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
# Call apiV2OrdersServiceOrdersOrderIdCalculatePut operation
#
##############################################################################
call_apiV2OrdersServiceOrdersOrderIdCalculatePut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(orderId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/OrdersService/Orders/{orderId}/Calculate" path_parameter_names query_parameter_names); then
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
# Call apiV2OrdersServiceOrdersOrderIdDelete operation
#
##############################################################################
call_apiV2OrdersServiceOrdersOrderIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(orderId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/OrdersService/Orders/{orderId}" path_parameter_names query_parameter_names); then
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
# Call apiV2OrdersServiceOrdersOrderIdLinesCountGet operation
#
##############################################################################
call_apiV2OrdersServiceOrdersOrderIdLinesCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(orderId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/OrdersService/Orders/{orderId}/Lines/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2OrdersServiceOrdersOrderIdLinesGet operation
#
##############################################################################
call_apiV2OrdersServiceOrdersOrderIdLinesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(orderId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId itemId  )
    local path

    if ! path=$(build_request_path "/api/v2/OrdersService/Orders/{orderId}/Lines" path_parameter_names query_parameter_names); then
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
# Call apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut operation
#
##############################################################################
call_apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(orderId orderLineId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/OrdersService/Orders/{orderId}/Lines/{orderLineId}/Calculate" path_parameter_names query_parameter_names); then
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
# Call apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete operation
#
##############################################################################
call_apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(orderId orderLineId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/OrdersService/Orders/{orderId}/Lines/{orderLineId}" path_parameter_names query_parameter_names); then
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
# Call apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet operation
#
##############################################################################
call_apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(orderId orderLineId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/OrdersService/Orders/{orderId}/Lines/{orderLineId}" path_parameter_names query_parameter_names); then
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
# Call apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut operation
#
##############################################################################
call_apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(orderId orderLineId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/OrdersService/Orders/{orderId}/Lines/{orderLineId}" path_parameter_names query_parameter_names); then
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
# Call apiV2OrdersServiceOrdersOrderIdLinesPost operation
#
##############################################################################
call_apiV2OrdersServiceOrdersOrderIdLinesPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(orderId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/OrdersService/Orders/{orderId}/Lines" path_parameter_names query_parameter_names); then
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
# Call apiV2OrdersServiceOrdersOrderIdPut operation
#
##############################################################################
call_apiV2OrdersServiceOrdersOrderIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(orderId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/OrdersService/Orders/{orderId}" path_parameter_names query_parameter_names); then
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
# Call apiV2OrdersServiceOrdersPost operation
#
##############################################################################
call_apiV2OrdersServiceOrdersPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/OrdersService/Orders" path_parameter_names query_parameter_names); then
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
# Call apiV2OrdersServiceOrdersSubmitCartPost operation
#
##############################################################################
call_apiV2OrdersServiceOrdersSubmitCartPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(cartId  )
    local path

    if ! path=$(build_request_path "/api/v2/OrdersService/Orders/SubmitCart" path_parameter_names query_parameter_names); then
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
# Call getOrderAsync operation
#
##############################################################################
call_getOrderAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(orderId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/OrdersService/Orders/{orderId}" path_parameter_names query_parameter_names); then
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
# Call getOrdersAsync operation
#
##############################################################################
call_getOrdersAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId  )
    local path

    if ! path=$(build_request_path "/api/v2/OrdersService/Orders" path_parameter_names query_parameter_names); then
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
    apiV2OrdersServiceOrdersCountGet)
    operation="apiV2OrdersServiceOrdersCountGet"
    ;;
    apiV2OrdersServiceOrdersExtendedGet)
    operation="apiV2OrdersServiceOrdersExtendedGet"
    ;;
    apiV2OrdersServiceOrdersOrderIdCalculatePut)
    operation="apiV2OrdersServiceOrdersOrderIdCalculatePut"
    ;;
    apiV2OrdersServiceOrdersOrderIdDelete)
    operation="apiV2OrdersServiceOrdersOrderIdDelete"
    ;;
    apiV2OrdersServiceOrdersOrderIdLinesCountGet)
    operation="apiV2OrdersServiceOrdersOrderIdLinesCountGet"
    ;;
    apiV2OrdersServiceOrdersOrderIdLinesGet)
    operation="apiV2OrdersServiceOrdersOrderIdLinesGet"
    ;;
    apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut)
    operation="apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut"
    ;;
    apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete)
    operation="apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete"
    ;;
    apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet)
    operation="apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet"
    ;;
    apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut)
    operation="apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut"
    ;;
    apiV2OrdersServiceOrdersOrderIdLinesPost)
    operation="apiV2OrdersServiceOrdersOrderIdLinesPost"
    ;;
    apiV2OrdersServiceOrdersOrderIdPut)
    operation="apiV2OrdersServiceOrdersOrderIdPut"
    ;;
    apiV2OrdersServiceOrdersPost)
    operation="apiV2OrdersServiceOrdersPost"
    ;;
    apiV2OrdersServiceOrdersSubmitCartPost)
    operation="apiV2OrdersServiceOrdersSubmitCartPost"
    ;;
    getOrderAsync)
    operation="getOrderAsync"
    ;;
    getOrdersAsync)
    operation="getOrdersAsync"
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
    apiV2OrdersServiceOrdersCountGet)
    call_apiV2OrdersServiceOrdersCountGet
    ;;
    apiV2OrdersServiceOrdersExtendedGet)
    call_apiV2OrdersServiceOrdersExtendedGet
    ;;
    apiV2OrdersServiceOrdersOrderIdCalculatePut)
    call_apiV2OrdersServiceOrdersOrderIdCalculatePut
    ;;
    apiV2OrdersServiceOrdersOrderIdDelete)
    call_apiV2OrdersServiceOrdersOrderIdDelete
    ;;
    apiV2OrdersServiceOrdersOrderIdLinesCountGet)
    call_apiV2OrdersServiceOrdersOrderIdLinesCountGet
    ;;
    apiV2OrdersServiceOrdersOrderIdLinesGet)
    call_apiV2OrdersServiceOrdersOrderIdLinesGet
    ;;
    apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut)
    call_apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdCalculatePut
    ;;
    apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete)
    call_apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdDelete
    ;;
    apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet)
    call_apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdGet
    ;;
    apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut)
    call_apiV2OrdersServiceOrdersOrderIdLinesOrderLineIdPut
    ;;
    apiV2OrdersServiceOrdersOrderIdLinesPost)
    call_apiV2OrdersServiceOrdersOrderIdLinesPost
    ;;
    apiV2OrdersServiceOrdersOrderIdPut)
    call_apiV2OrdersServiceOrdersOrderIdPut
    ;;
    apiV2OrdersServiceOrdersPost)
    call_apiV2OrdersServiceOrdersPost
    ;;
    apiV2OrdersServiceOrdersSubmitCartPost)
    call_apiV2OrdersServiceOrdersSubmitCartPost
    ;;
    getOrderAsync)
    call_getOrderAsync
    ;;
    getOrdersAsync)
    call_getOrdersAsync
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
