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
# This is a Bash client for StorageService.
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
operation_parameters_minimum_occurrences["getAvatar:::socialProfileId"]=1
operation_parameters_minimum_occurrences["getAvatar:::api-version"]=0
operation_parameters_minimum_occurrences["getAvatar:::x-api-version"]=0
operation_parameters_minimum_occurrences["getContactAvatar:::contactId"]=1
operation_parameters_minimum_occurrences["getContactAvatar:::api-version"]=0
operation_parameters_minimum_occurrences["getContactAvatar:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCurrentUserAvatar:::api-version"]=0
operation_parameters_minimum_occurrences["getCurrentUserAvatar:::x-api-version"]=0
operation_parameters_minimum_occurrences["getTenantAvatar:::tenantId"]=1
operation_parameters_minimum_occurrences["getTenantAvatar:::api-version"]=0
operation_parameters_minimum_occurrences["getTenantAvatar:::x-api-version"]=0
operation_parameters_minimum_occurrences["getUserAvatar:::userId"]=1
operation_parameters_minimum_occurrences["getUserAvatar:::api-version"]=0
operation_parameters_minimum_occurrences["getUserAvatar:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateContactAvatar:::contactId"]=1
operation_parameters_minimum_occurrences["updateContactAvatar:::tenantId"]=0
operation_parameters_minimum_occurrences["updateContactAvatar:::api-version"]=0
operation_parameters_minimum_occurrences["updateContactAvatar:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateContactAvatar:::avatar"]=0
operation_parameters_minimum_occurrences["updateTenantAvatar:::tenantId"]=1
operation_parameters_minimum_occurrences["updateTenantAvatar:::api-version"]=0
operation_parameters_minimum_occurrences["updateTenantAvatar:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateTenantAvatar:::avatar"]=0
operation_parameters_minimum_occurrences["updateUserAvatar:::api-version"]=0
operation_parameters_minimum_occurrences["updateUserAvatar:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateUserAvatar:::avatar"]=0
operation_parameters_minimum_occurrences["getBlobAsync:::tenantId"]=0
operation_parameters_minimum_occurrences["getBlobAsync:::filePath"]=0
operation_parameters_minimum_occurrences["getBlobAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getBlobAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getBlobsAsync:::tenantId"]=0
operation_parameters_minimum_occurrences["getBlobsAsync:::folderPath"]=0
operation_parameters_minimum_occurrences["getBlobsAsync:::browseFilter"]=0
operation_parameters_minimum_occurrences["getBlobsAsync:::filePrefix"]=0
operation_parameters_minimum_occurrences["getBlobsAsync:::recurse"]=0
operation_parameters_minimum_occurrences["getBlobsAsync:::maxResults"]=0
operation_parameters_minimum_occurrences["getBlobsAsync:::includeAttributes"]=0
operation_parameters_minimum_occurrences["getBlobsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getBlobsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createFileAsync:::tenantId"]=0
operation_parameters_minimum_occurrences["createFileAsync:::api-version"]=0
operation_parameters_minimum_occurrences["createFileAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createFileAsync:::id"]=0
operation_parameters_minimum_occurrences["createFileAsync:::timestamp"]=0
operation_parameters_minimum_occurrences["createFileAsync:::notes"]=0
operation_parameters_minimum_occurrences["createFileAsync:::title"]=0
operation_parameters_minimum_occurrences["createFileAsync:::author"]=0
operation_parameters_minimum_occurrences["createFileAsync:::isFolder"]=0
operation_parameters_minimum_occurrences["createFileAsync:::fileName"]=0
operation_parameters_minimum_occurrences["createFileAsync:::abstract"]=0
operation_parameters_minimum_occurrences["createFileAsync:::keyWords"]=0
operation_parameters_minimum_occurrences["createFileAsync:::validResponse"]=0
operation_parameters_minimum_occurrences["createFileAsync:::parentFileUploadId"]=0
operation_parameters_minimum_occurrences["createFileAsync:::filePath"]=0
operation_parameters_minimum_occurrences["createFileAsync:::file"]=0
operation_parameters_minimum_occurrences["deleteFileAsync:::fileId"]=1
operation_parameters_minimum_occurrences["deleteFileAsync:::tenantId"]=0
operation_parameters_minimum_occurrences["deleteFileAsync:::api-version"]=0
operation_parameters_minimum_occurrences["deleteFileAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["downloadFileAsync:::fileId"]=1
operation_parameters_minimum_occurrences["downloadFileAsync:::tenantId"]=0
operation_parameters_minimum_occurrences["downloadFileAsync:::api-version"]=0
operation_parameters_minimum_occurrences["downloadFileAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getFileAsync:::fileId"]=1
operation_parameters_minimum_occurrences["getFileAsync:::tenantId"]=0
operation_parameters_minimum_occurrences["getFileAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getFileAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getFilesAsync:::tenantId"]=0
operation_parameters_minimum_occurrences["getFilesAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getFilesAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateFileAsync:::fileId"]=1
operation_parameters_minimum_occurrences["updateFileAsync:::tenantId"]=0
operation_parameters_minimum_occurrences["updateFileAsync:::api-version"]=0
operation_parameters_minimum_occurrences["updateFileAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateFileAsync:::notes"]=0
operation_parameters_minimum_occurrences["updateFileAsync:::metadata"]=0
operation_parameters_minimum_occurrences["updateFileAsync:::title"]=0
operation_parameters_minimum_occurrences["updateFileAsync:::author"]=0
operation_parameters_minimum_occurrences["updateFileAsync:::isFolder"]=0
operation_parameters_minimum_occurrences["updateFileAsync:::fileName"]=0
operation_parameters_minimum_occurrences["updateFileAsync:::abstract"]=0
operation_parameters_minimum_occurrences["updateFileAsync:::keyWords"]=0
operation_parameters_minimum_occurrences["updateFileAsync:::validResponse"]=0
operation_parameters_minimum_occurrences["updateFileAsync:::parentFileUploadID"]=0
operation_parameters_minimum_occurrences["updateFileAsync:::filePath"]=0
operation_parameters_minimum_occurrences["updateFileAsync:::file"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsIdPost:::id"]=1
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsIdPost:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsIdPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsIdPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsIdPost:::files"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsImagePost:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsImagePost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsImagePost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsImagePost:::file"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsMultiplePost:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsMultiplePost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsMultiplePost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsMultiplePost:::files"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsSinglePost:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsSinglePost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsSinglePost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsSinglePost:::file"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsSpecificPost:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsSpecificPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsSpecificPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceRadzenEditorUploadsSpecificPost:::file"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceUploadsPost:::tenantId"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceUploadsPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceUploadsPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceUploadsPost:::notes"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceUploadsPost:::title"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceUploadsPost:::author"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceUploadsPost:::isFolder"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceUploadsPost:::fileName"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceUploadsPost:::abstract"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceUploadsPost:::keyWords"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceUploadsPost:::validResponse"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceUploadsPost:::parentFileUploadId"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceUploadsPost:::filePath"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceUploadsPost:::file"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceUploadsPost:::iD"]=0
operation_parameters_minimum_occurrences["apiV2StorageServiceUploadsPost:::timestamp"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["getAvatar:::socialProfileId"]=0
operation_parameters_maximum_occurrences["getAvatar:::api-version"]=0
operation_parameters_maximum_occurrences["getAvatar:::x-api-version"]=0
operation_parameters_maximum_occurrences["getContactAvatar:::contactId"]=0
operation_parameters_maximum_occurrences["getContactAvatar:::api-version"]=0
operation_parameters_maximum_occurrences["getContactAvatar:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCurrentUserAvatar:::api-version"]=0
operation_parameters_maximum_occurrences["getCurrentUserAvatar:::x-api-version"]=0
operation_parameters_maximum_occurrences["getTenantAvatar:::tenantId"]=0
operation_parameters_maximum_occurrences["getTenantAvatar:::api-version"]=0
operation_parameters_maximum_occurrences["getTenantAvatar:::x-api-version"]=0
operation_parameters_maximum_occurrences["getUserAvatar:::userId"]=0
operation_parameters_maximum_occurrences["getUserAvatar:::api-version"]=0
operation_parameters_maximum_occurrences["getUserAvatar:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateContactAvatar:::contactId"]=0
operation_parameters_maximum_occurrences["updateContactAvatar:::tenantId"]=0
operation_parameters_maximum_occurrences["updateContactAvatar:::api-version"]=0
operation_parameters_maximum_occurrences["updateContactAvatar:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateContactAvatar:::avatar"]=0
operation_parameters_maximum_occurrences["updateTenantAvatar:::tenantId"]=0
operation_parameters_maximum_occurrences["updateTenantAvatar:::api-version"]=0
operation_parameters_maximum_occurrences["updateTenantAvatar:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateTenantAvatar:::avatar"]=0
operation_parameters_maximum_occurrences["updateUserAvatar:::api-version"]=0
operation_parameters_maximum_occurrences["updateUserAvatar:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateUserAvatar:::avatar"]=0
operation_parameters_maximum_occurrences["getBlobAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getBlobAsync:::filePath"]=0
operation_parameters_maximum_occurrences["getBlobAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getBlobAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getBlobsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getBlobsAsync:::folderPath"]=0
operation_parameters_maximum_occurrences["getBlobsAsync:::browseFilter"]=0
operation_parameters_maximum_occurrences["getBlobsAsync:::filePrefix"]=0
operation_parameters_maximum_occurrences["getBlobsAsync:::recurse"]=0
operation_parameters_maximum_occurrences["getBlobsAsync:::maxResults"]=0
operation_parameters_maximum_occurrences["getBlobsAsync:::includeAttributes"]=0
operation_parameters_maximum_occurrences["getBlobsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getBlobsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createFileAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createFileAsync:::api-version"]=0
operation_parameters_maximum_occurrences["createFileAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createFileAsync:::id"]=0
operation_parameters_maximum_occurrences["createFileAsync:::timestamp"]=0
operation_parameters_maximum_occurrences["createFileAsync:::notes"]=0
operation_parameters_maximum_occurrences["createFileAsync:::title"]=0
operation_parameters_maximum_occurrences["createFileAsync:::author"]=0
operation_parameters_maximum_occurrences["createFileAsync:::isFolder"]=0
operation_parameters_maximum_occurrences["createFileAsync:::fileName"]=0
operation_parameters_maximum_occurrences["createFileAsync:::abstract"]=0
operation_parameters_maximum_occurrences["createFileAsync:::keyWords"]=0
operation_parameters_maximum_occurrences["createFileAsync:::validResponse"]=0
operation_parameters_maximum_occurrences["createFileAsync:::parentFileUploadId"]=0
operation_parameters_maximum_occurrences["createFileAsync:::filePath"]=0
operation_parameters_maximum_occurrences["createFileAsync:::file"]=0
operation_parameters_maximum_occurrences["deleteFileAsync:::fileId"]=0
operation_parameters_maximum_occurrences["deleteFileAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["deleteFileAsync:::api-version"]=0
operation_parameters_maximum_occurrences["deleteFileAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["downloadFileAsync:::fileId"]=0
operation_parameters_maximum_occurrences["downloadFileAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["downloadFileAsync:::api-version"]=0
operation_parameters_maximum_occurrences["downloadFileAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getFileAsync:::fileId"]=0
operation_parameters_maximum_occurrences["getFileAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getFileAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getFileAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getFilesAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getFilesAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getFilesAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateFileAsync:::fileId"]=0
operation_parameters_maximum_occurrences["updateFileAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["updateFileAsync:::api-version"]=0
operation_parameters_maximum_occurrences["updateFileAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateFileAsync:::notes"]=0
operation_parameters_maximum_occurrences["updateFileAsync:::metadata"]=0
operation_parameters_maximum_occurrences["updateFileAsync:::title"]=0
operation_parameters_maximum_occurrences["updateFileAsync:::author"]=0
operation_parameters_maximum_occurrences["updateFileAsync:::isFolder"]=0
operation_parameters_maximum_occurrences["updateFileAsync:::fileName"]=0
operation_parameters_maximum_occurrences["updateFileAsync:::abstract"]=0
operation_parameters_maximum_occurrences["updateFileAsync:::keyWords"]=0
operation_parameters_maximum_occurrences["updateFileAsync:::validResponse"]=0
operation_parameters_maximum_occurrences["updateFileAsync:::parentFileUploadID"]=0
operation_parameters_maximum_occurrences["updateFileAsync:::filePath"]=0
operation_parameters_maximum_occurrences["updateFileAsync:::file"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsIdPost:::id"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsIdPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsIdPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsIdPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsIdPost:::files"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsImagePost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsImagePost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsImagePost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsImagePost:::file"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsMultiplePost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsMultiplePost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsMultiplePost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsMultiplePost:::files"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsSinglePost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsSinglePost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsSinglePost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsSinglePost:::file"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsSpecificPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsSpecificPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsSpecificPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceRadzenEditorUploadsSpecificPost:::file"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceUploadsPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceUploadsPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceUploadsPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceUploadsPost:::notes"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceUploadsPost:::title"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceUploadsPost:::author"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceUploadsPost:::isFolder"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceUploadsPost:::fileName"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceUploadsPost:::abstract"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceUploadsPost:::keyWords"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceUploadsPost:::validResponse"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceUploadsPost:::parentFileUploadId"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceUploadsPost:::filePath"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceUploadsPost:::file"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceUploadsPost:::iD"]=0
operation_parameters_maximum_occurrences["apiV2StorageServiceUploadsPost:::timestamp"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["getAvatar:::socialProfileId"]=""
operation_parameters_collection_type["getAvatar:::api-version"]=""
operation_parameters_collection_type["getAvatar:::x-api-version"]=""
operation_parameters_collection_type["getContactAvatar:::contactId"]=""
operation_parameters_collection_type["getContactAvatar:::api-version"]=""
operation_parameters_collection_type["getContactAvatar:::x-api-version"]=""
operation_parameters_collection_type["getCurrentUserAvatar:::api-version"]=""
operation_parameters_collection_type["getCurrentUserAvatar:::x-api-version"]=""
operation_parameters_collection_type["getTenantAvatar:::tenantId"]=""
operation_parameters_collection_type["getTenantAvatar:::api-version"]=""
operation_parameters_collection_type["getTenantAvatar:::x-api-version"]=""
operation_parameters_collection_type["getUserAvatar:::userId"]=""
operation_parameters_collection_type["getUserAvatar:::api-version"]=""
operation_parameters_collection_type["getUserAvatar:::x-api-version"]=""
operation_parameters_collection_type["updateContactAvatar:::contactId"]=""
operation_parameters_collection_type["updateContactAvatar:::tenantId"]=""
operation_parameters_collection_type["updateContactAvatar:::api-version"]=""
operation_parameters_collection_type["updateContactAvatar:::x-api-version"]=""
operation_parameters_collection_type["updateContactAvatar:::avatar"]=""
operation_parameters_collection_type["updateTenantAvatar:::tenantId"]=""
operation_parameters_collection_type["updateTenantAvatar:::api-version"]=""
operation_parameters_collection_type["updateTenantAvatar:::x-api-version"]=""
operation_parameters_collection_type["updateTenantAvatar:::avatar"]=""
operation_parameters_collection_type["updateUserAvatar:::api-version"]=""
operation_parameters_collection_type["updateUserAvatar:::x-api-version"]=""
operation_parameters_collection_type["updateUserAvatar:::avatar"]=""
operation_parameters_collection_type["getBlobAsync:::tenantId"]=""
operation_parameters_collection_type["getBlobAsync:::filePath"]=""
operation_parameters_collection_type["getBlobAsync:::api-version"]=""
operation_parameters_collection_type["getBlobAsync:::x-api-version"]=""
operation_parameters_collection_type["getBlobsAsync:::tenantId"]=""
operation_parameters_collection_type["getBlobsAsync:::folderPath"]=""
operation_parameters_collection_type["getBlobsAsync:::browseFilter"]=""
operation_parameters_collection_type["getBlobsAsync:::filePrefix"]=""
operation_parameters_collection_type["getBlobsAsync:::recurse"]=""
operation_parameters_collection_type["getBlobsAsync:::maxResults"]=""
operation_parameters_collection_type["getBlobsAsync:::includeAttributes"]=""
operation_parameters_collection_type["getBlobsAsync:::api-version"]=""
operation_parameters_collection_type["getBlobsAsync:::x-api-version"]=""
operation_parameters_collection_type["createFileAsync:::tenantId"]=""
operation_parameters_collection_type["createFileAsync:::api-version"]=""
operation_parameters_collection_type["createFileAsync:::x-api-version"]=""
operation_parameters_collection_type["createFileAsync:::id"]=""
operation_parameters_collection_type["createFileAsync:::timestamp"]=""
operation_parameters_collection_type["createFileAsync:::notes"]=""
operation_parameters_collection_type["createFileAsync:::title"]=""
operation_parameters_collection_type["createFileAsync:::author"]=""
operation_parameters_collection_type["createFileAsync:::isFolder"]=""
operation_parameters_collection_type["createFileAsync:::fileName"]=""
operation_parameters_collection_type["createFileAsync:::abstract"]=""
operation_parameters_collection_type["createFileAsync:::keyWords"]=""
operation_parameters_collection_type["createFileAsync:::validResponse"]=""
operation_parameters_collection_type["createFileAsync:::parentFileUploadId"]=""
operation_parameters_collection_type["createFileAsync:::filePath"]=""
operation_parameters_collection_type["createFileAsync:::file"]=""
operation_parameters_collection_type["deleteFileAsync:::fileId"]=""
operation_parameters_collection_type["deleteFileAsync:::tenantId"]=""
operation_parameters_collection_type["deleteFileAsync:::api-version"]=""
operation_parameters_collection_type["deleteFileAsync:::x-api-version"]=""
operation_parameters_collection_type["downloadFileAsync:::fileId"]=""
operation_parameters_collection_type["downloadFileAsync:::tenantId"]=""
operation_parameters_collection_type["downloadFileAsync:::api-version"]=""
operation_parameters_collection_type["downloadFileAsync:::x-api-version"]=""
operation_parameters_collection_type["getFileAsync:::fileId"]=""
operation_parameters_collection_type["getFileAsync:::tenantId"]=""
operation_parameters_collection_type["getFileAsync:::api-version"]=""
operation_parameters_collection_type["getFileAsync:::x-api-version"]=""
operation_parameters_collection_type["getFilesAsync:::tenantId"]=""
operation_parameters_collection_type["getFilesAsync:::api-version"]=""
operation_parameters_collection_type["getFilesAsync:::x-api-version"]=""
operation_parameters_collection_type["updateFileAsync:::fileId"]=""
operation_parameters_collection_type["updateFileAsync:::tenantId"]=""
operation_parameters_collection_type["updateFileAsync:::api-version"]=""
operation_parameters_collection_type["updateFileAsync:::x-api-version"]=""
operation_parameters_collection_type["updateFileAsync:::notes"]=""
operation_parameters_collection_type["updateFileAsync:::metadata"]=""
operation_parameters_collection_type["updateFileAsync:::title"]=""
operation_parameters_collection_type["updateFileAsync:::author"]=""
operation_parameters_collection_type["updateFileAsync:::isFolder"]=""
operation_parameters_collection_type["updateFileAsync:::fileName"]=""
operation_parameters_collection_type["updateFileAsync:::abstract"]=""
operation_parameters_collection_type["updateFileAsync:::keyWords"]=""
operation_parameters_collection_type["updateFileAsync:::validResponse"]=""
operation_parameters_collection_type["updateFileAsync:::parentFileUploadID"]=""
operation_parameters_collection_type["updateFileAsync:::filePath"]=""
operation_parameters_collection_type["updateFileAsync:::file"]=""
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsIdPost:::id"]=""
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsIdPost:::tenantId"]=""
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsIdPost:::api-version"]=""
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsIdPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsIdPost:::files"]=
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsImagePost:::tenantId"]=""
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsImagePost:::api-version"]=""
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsImagePost:::x-api-version"]=""
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsImagePost:::file"]=""
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsMultiplePost:::tenantId"]=""
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsMultiplePost:::api-version"]=""
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsMultiplePost:::x-api-version"]=""
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsMultiplePost:::files"]=
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsSinglePost:::tenantId"]=""
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsSinglePost:::api-version"]=""
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsSinglePost:::x-api-version"]=""
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsSinglePost:::file"]=""
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsSpecificPost:::tenantId"]=""
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsSpecificPost:::api-version"]=""
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsSpecificPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2StorageServiceRadzenEditorUploadsSpecificPost:::file"]=""
operation_parameters_collection_type["apiV2StorageServiceUploadsPost:::tenantId"]=""
operation_parameters_collection_type["apiV2StorageServiceUploadsPost:::api-version"]=""
operation_parameters_collection_type["apiV2StorageServiceUploadsPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2StorageServiceUploadsPost:::notes"]=""
operation_parameters_collection_type["apiV2StorageServiceUploadsPost:::title"]=""
operation_parameters_collection_type["apiV2StorageServiceUploadsPost:::author"]=""
operation_parameters_collection_type["apiV2StorageServiceUploadsPost:::isFolder"]=""
operation_parameters_collection_type["apiV2StorageServiceUploadsPost:::fileName"]=""
operation_parameters_collection_type["apiV2StorageServiceUploadsPost:::abstract"]=""
operation_parameters_collection_type["apiV2StorageServiceUploadsPost:::keyWords"]=""
operation_parameters_collection_type["apiV2StorageServiceUploadsPost:::validResponse"]=""
operation_parameters_collection_type["apiV2StorageServiceUploadsPost:::parentFileUploadId"]=""
operation_parameters_collection_type["apiV2StorageServiceUploadsPost:::filePath"]=""
operation_parameters_collection_type["apiV2StorageServiceUploadsPost:::file"]=""
operation_parameters_collection_type["apiV2StorageServiceUploadsPost:::iD"]=""
operation_parameters_collection_type["apiV2StorageServiceUploadsPost:::timestamp"]=""


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

${BOLD}${WHITE}StorageService command line client (API version 2.0.1.4089)${OFF}

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
    echo -e "${BOLD}${WHITE}[avatars]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getAvatar${OFF};Get the avatar for a given social profile. (AUTH)
  ${CYAN}getContactAvatar${OFF};Get the avatar for a given contact. (AUTH)
  ${CYAN}getCurrentUserAvatar${OFF};Get the avatar for the current user. (AUTH)
  ${CYAN}getTenantAvatar${OFF};Get the avatar for a given tenant. (AUTH)
  ${CYAN}getUserAvatar${OFF};Get the avatar for a given user. (AUTH)
  ${CYAN}updateContactAvatar${OFF};Update the avatar for a given contact. (AUTH)
  ${CYAN}updateTenantAvatar${OFF};Update the avatar for a given tenant. (AUTH)
  ${CYAN}updateUserAvatar${OFF};Update the avatar for the current user. (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[blobs]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getBlobAsync${OFF}; (AUTH)
  ${CYAN}getBlobsAsync${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[files]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}createFileAsync${OFF}; (AUTH)
  ${CYAN}deleteFileAsync${OFF}; (AUTH)
  ${CYAN}downloadFileAsync${OFF}; (AUTH)
  ${CYAN}getFileAsync${OFF}; (AUTH)
  ${CYAN}getFilesAsync${OFF}; (AUTH)
  ${CYAN}updateFileAsync${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[radzenEditor]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2StorageServiceRadzenEditorUploadsIdPost${OFF}; (AUTH)
  ${CYAN}apiV2StorageServiceRadzenEditorUploadsImagePost${OFF}; (AUTH)
  ${CYAN}apiV2StorageServiceRadzenEditorUploadsMultiplePost${OFF}; (AUTH)
  ${CYAN}apiV2StorageServiceRadzenEditorUploadsSinglePost${OFF}; (AUTH)
  ${CYAN}apiV2StorageServiceRadzenEditorUploadsSpecificPost${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[uploads]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2StorageServiceUploadsPost${OFF}; (AUTH)
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
    echo -e "${BOLD}${WHITE}StorageService command line client (API version 2.0.1.4089)${OFF}"
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
    echo -e "${BOLD}StorageService command line client (API version 2.0.1.4089)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for getAvatar operation
#
##############################################################################
print_getAvatar_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getAvatar - Get the avatar for a given social profile.${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}socialProfileId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: socialProfileId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getContactAvatar operation
#
##############################################################################
print_getContactAvatar_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getContactAvatar - Get the avatar for a given contact.${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
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
# Print help for getCurrentUserAvatar operation
#
##############################################################################
print_getCurrentUserAvatar_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCurrentUserAvatar - Get the avatar for the current user.${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getTenantAvatar operation
#
##############################################################################
print_getTenantAvatar_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getTenantAvatar - Get the avatar for a given tenant.${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: tenantId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getUserAvatar operation
#
##############################################################################
print_getUserAvatar_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getUserAvatar - Get the avatar for a given user.${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}userId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: userId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for updateContactAvatar operation
#
##############################################################################
print_updateContactAvatar_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateContactAvatar - Update the avatar for a given contact.${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateTenantAvatar operation
#
##############################################################################
print_updateTenantAvatar_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateTenantAvatar - Update the avatar for a given tenant.${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: tenantId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateUserAvatar operation
#
##############################################################################
print_updateUserAvatar_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateUserAvatar - Update the avatar for the current user.${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getBlobAsync operation
#
##############################################################################
print_getBlobAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBlobAsync - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filePath${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: filePath=value${OFF}" \
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
# Print help for getBlobsAsync operation
#
##############################################################################
print_getBlobsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBlobsAsync - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}folderPath${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: folderPath=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}browseFilter${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: browseFilter=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filePrefix${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: filePrefix=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}recurse${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: recurse=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}maxResults${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: maxResults=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}includeAttributes${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: includeAttributes=value${OFF}" \
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
# Print help for createFileAsync operation
#
##############################################################################
print_createFileAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createFileAsync - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=409
    echo -e "${result_color_table[${code:0:1}]}  409;Conflict${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Unprocessable Content${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteFileAsync operation
#
##############################################################################
print_deleteFileAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteFileAsync - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}fileId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: fileId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=409
    echo -e "${result_color_table[${code:0:1}]}  409;Conflict${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Unprocessable Content${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for downloadFileAsync operation
#
##############################################################################
print_downloadFileAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}downloadFileAsync - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}fileId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: fileId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getFileAsync operation
#
##############################################################################
print_getFileAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getFileAsync - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}fileId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: fileId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getFilesAsync operation
#
##############################################################################
print_getFilesAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getFilesAsync - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
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
# Print help for updateFileAsync operation
#
##############################################################################
print_updateFileAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateFileAsync - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}fileId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: fileId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=409
    echo -e "${result_color_table[${code:0:1}]}  409;Conflict${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=422
    echo -e "${result_color_table[${code:0:1}]}  422;Unprocessable Content${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for apiV2StorageServiceRadzenEditorUploadsIdPost operation
#
##############################################################################
print_apiV2StorageServiceRadzenEditorUploadsIdPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2StorageServiceRadzenEditorUploadsIdPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[integer]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2StorageServiceRadzenEditorUploadsImagePost operation
#
##############################################################################
print_apiV2StorageServiceRadzenEditorUploadsImagePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2StorageServiceRadzenEditorUploadsImagePost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2StorageServiceRadzenEditorUploadsMultiplePost operation
#
##############################################################################
print_apiV2StorageServiceRadzenEditorUploadsMultiplePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2StorageServiceRadzenEditorUploadsMultiplePost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2StorageServiceRadzenEditorUploadsSinglePost operation
#
##############################################################################
print_apiV2StorageServiceRadzenEditorUploadsSinglePost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2StorageServiceRadzenEditorUploadsSinglePost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2StorageServiceRadzenEditorUploadsSpecificPost operation
#
##############################################################################
print_apiV2StorageServiceRadzenEditorUploadsSpecificPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2StorageServiceRadzenEditorUploadsSpecificPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2StorageServiceUploadsPost operation
#
##############################################################################
print_apiV2StorageServiceUploadsPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2StorageServiceUploadsPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
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
# Call getAvatar operation
#
##############################################################################
call_getAvatar() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(socialProfileId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/Avatars/{socialProfileId}" path_parameter_names query_parameter_names); then
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
# Call getContactAvatar operation
#
##############################################################################
call_getContactAvatar() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(contactId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/Avatars/Contact/{contactId}" path_parameter_names query_parameter_names); then
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
# Call getCurrentUserAvatar operation
#
##############################################################################
call_getCurrentUserAvatar() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/Avatars/User" path_parameter_names query_parameter_names); then
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
# Call getTenantAvatar operation
#
##############################################################################
call_getTenantAvatar() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(tenantId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/Avatars/Tenant/{tenantId}" path_parameter_names query_parameter_names); then
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
# Call getUserAvatar operation
#
##############################################################################
call_getUserAvatar() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(userId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/Avatars/User/{userId}" path_parameter_names query_parameter_names); then
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
# Call updateContactAvatar operation
#
##############################################################################
call_updateContactAvatar() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(contactId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/Avatars/Contacts/{contactId}" path_parameter_names query_parameter_names); then
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
# Call updateTenantAvatar operation
#
##############################################################################
call_updateTenantAvatar() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(tenantId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/Avatars/Tenant/{tenantId}" path_parameter_names query_parameter_names); then
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
# Call updateUserAvatar operation
#
##############################################################################
call_updateUserAvatar() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/Avatars/User" path_parameter_names query_parameter_names); then
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
# Call getBlobAsync operation
#
##############################################################################
call_getBlobAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId filePath api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/Blobs/Single" path_parameter_names query_parameter_names); then
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
# Call getBlobsAsync operation
#
##############################################################################
call_getBlobsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId folderPath browseFilter filePrefix recurse maxResults includeAttributes api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/Blobs" path_parameter_names query_parameter_names); then
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
# Call createFileAsync operation
#
##############################################################################
call_createFileAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/Files" path_parameter_names query_parameter_names); then
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
# Call deleteFileAsync operation
#
##############################################################################
call_deleteFileAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(fileId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/Files/{fileId}" path_parameter_names query_parameter_names); then
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
# Call downloadFileAsync operation
#
##############################################################################
call_downloadFileAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(fileId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/Files/{fileId}/Raw" path_parameter_names query_parameter_names); then
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
# Call getFileAsync operation
#
##############################################################################
call_getFileAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(fileId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/Files/{fileId}" path_parameter_names query_parameter_names); then
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
# Call getFilesAsync operation
#
##############################################################################
call_getFilesAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/Files" path_parameter_names query_parameter_names); then
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
# Call updateFileAsync operation
#
##############################################################################
call_updateFileAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(fileId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/Files/{fileId}" path_parameter_names query_parameter_names); then
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
    body_form_urlencoded=$(body_parameters_to_form_urlencoded)
    if [[ "$print_curl" = true ]]; then
        echo "curl ${body_form_urlencoded} ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${body_form_urlencoded} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call apiV2StorageServiceRadzenEditorUploadsIdPost operation
#
##############################################################################
call_apiV2StorageServiceRadzenEditorUploadsIdPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/RadzenEditor/Uploads/{id}" path_parameter_names query_parameter_names); then
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
# Call apiV2StorageServiceRadzenEditorUploadsImagePost operation
#
##############################################################################
call_apiV2StorageServiceRadzenEditorUploadsImagePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/RadzenEditor/Uploads/Image" path_parameter_names query_parameter_names); then
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
# Call apiV2StorageServiceRadzenEditorUploadsMultiplePost operation
#
##############################################################################
call_apiV2StorageServiceRadzenEditorUploadsMultiplePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/RadzenEditor/Uploads/Multiple" path_parameter_names query_parameter_names); then
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
# Call apiV2StorageServiceRadzenEditorUploadsSinglePost operation
#
##############################################################################
call_apiV2StorageServiceRadzenEditorUploadsSinglePost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/RadzenEditor/Uploads/Single" path_parameter_names query_parameter_names); then
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
# Call apiV2StorageServiceRadzenEditorUploadsSpecificPost operation
#
##############################################################################
call_apiV2StorageServiceRadzenEditorUploadsSpecificPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/RadzenEditor/Uploads/Specific" path_parameter_names query_parameter_names); then
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
# Call apiV2StorageServiceUploadsPost operation
#
##############################################################################
call_apiV2StorageServiceUploadsPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/StorageService/Uploads" path_parameter_names query_parameter_names); then
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
    getAvatar)
    operation="getAvatar"
    ;;
    getContactAvatar)
    operation="getContactAvatar"
    ;;
    getCurrentUserAvatar)
    operation="getCurrentUserAvatar"
    ;;
    getTenantAvatar)
    operation="getTenantAvatar"
    ;;
    getUserAvatar)
    operation="getUserAvatar"
    ;;
    updateContactAvatar)
    operation="updateContactAvatar"
    ;;
    updateTenantAvatar)
    operation="updateTenantAvatar"
    ;;
    updateUserAvatar)
    operation="updateUserAvatar"
    ;;
    getBlobAsync)
    operation="getBlobAsync"
    ;;
    getBlobsAsync)
    operation="getBlobsAsync"
    ;;
    createFileAsync)
    operation="createFileAsync"
    ;;
    deleteFileAsync)
    operation="deleteFileAsync"
    ;;
    downloadFileAsync)
    operation="downloadFileAsync"
    ;;
    getFileAsync)
    operation="getFileAsync"
    ;;
    getFilesAsync)
    operation="getFilesAsync"
    ;;
    updateFileAsync)
    operation="updateFileAsync"
    ;;
    apiV2StorageServiceRadzenEditorUploadsIdPost)
    operation="apiV2StorageServiceRadzenEditorUploadsIdPost"
    ;;
    apiV2StorageServiceRadzenEditorUploadsImagePost)
    operation="apiV2StorageServiceRadzenEditorUploadsImagePost"
    ;;
    apiV2StorageServiceRadzenEditorUploadsMultiplePost)
    operation="apiV2StorageServiceRadzenEditorUploadsMultiplePost"
    ;;
    apiV2StorageServiceRadzenEditorUploadsSinglePost)
    operation="apiV2StorageServiceRadzenEditorUploadsSinglePost"
    ;;
    apiV2StorageServiceRadzenEditorUploadsSpecificPost)
    operation="apiV2StorageServiceRadzenEditorUploadsSpecificPost"
    ;;
    apiV2StorageServiceUploadsPost)
    operation="apiV2StorageServiceUploadsPost"
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
    getAvatar)
    call_getAvatar
    ;;
    getContactAvatar)
    call_getContactAvatar
    ;;
    getCurrentUserAvatar)
    call_getCurrentUserAvatar
    ;;
    getTenantAvatar)
    call_getTenantAvatar
    ;;
    getUserAvatar)
    call_getUserAvatar
    ;;
    updateContactAvatar)
    call_updateContactAvatar
    ;;
    updateTenantAvatar)
    call_updateTenantAvatar
    ;;
    updateUserAvatar)
    call_updateUserAvatar
    ;;
    getBlobAsync)
    call_getBlobAsync
    ;;
    getBlobsAsync)
    call_getBlobsAsync
    ;;
    createFileAsync)
    call_createFileAsync
    ;;
    deleteFileAsync)
    call_deleteFileAsync
    ;;
    downloadFileAsync)
    call_downloadFileAsync
    ;;
    getFileAsync)
    call_getFileAsync
    ;;
    getFilesAsync)
    call_getFilesAsync
    ;;
    updateFileAsync)
    call_updateFileAsync
    ;;
    apiV2StorageServiceRadzenEditorUploadsIdPost)
    call_apiV2StorageServiceRadzenEditorUploadsIdPost
    ;;
    apiV2StorageServiceRadzenEditorUploadsImagePost)
    call_apiV2StorageServiceRadzenEditorUploadsImagePost
    ;;
    apiV2StorageServiceRadzenEditorUploadsMultiplePost)
    call_apiV2StorageServiceRadzenEditorUploadsMultiplePost
    ;;
    apiV2StorageServiceRadzenEditorUploadsSinglePost)
    call_apiV2StorageServiceRadzenEditorUploadsSinglePost
    ;;
    apiV2StorageServiceRadzenEditorUploadsSpecificPost)
    call_apiV2StorageServiceRadzenEditorUploadsSpecificPost
    ;;
    apiV2StorageServiceUploadsPost)
    call_apiV2StorageServiceUploadsPost
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
