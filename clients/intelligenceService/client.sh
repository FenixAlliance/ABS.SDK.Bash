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
# This is a Bash client for IntelligenceService.
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
operation_parameters_minimum_occurrences["getAiProvidersAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getAiProvidersAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCapabilitiesAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCapabilitiesAsync:::surface"]=0
operation_parameters_minimum_occurrences["getCapabilitiesAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCapabilitiesAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCapabilitiesCountAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCapabilitiesCountAsync:::surface"]=0
operation_parameters_minimum_occurrences["getCapabilitiesCountAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCapabilitiesCountAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCapabilityByKeyAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCapabilityByKeyAsync:::key"]=1
operation_parameters_minimum_occurrences["getCapabilityByKeyAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCapabilityByKeyAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["uploadCognitiveAgentConversationAttachmentAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["uploadCognitiveAgentConversationAttachmentAsync:::agentId"]=1
operation_parameters_minimum_occurrences["uploadCognitiveAgentConversationAttachmentAsync:::conversationId"]=1
operation_parameters_minimum_occurrences["uploadCognitiveAgentConversationAttachmentAsync:::api-version"]=0
operation_parameters_minimum_occurrences["uploadCognitiveAgentConversationAttachmentAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["uploadCognitiveAgentConversationAttachmentAsync:::file"]=0
operation_parameters_minimum_occurrences["createCognitiveAgentConversationAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["createCognitiveAgentConversationAsync:::agentId"]=1
operation_parameters_minimum_occurrences["createCognitiveAgentConversationAsync:::api-version"]=0
operation_parameters_minimum_occurrences["createCognitiveAgentConversationAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createCognitiveAgentConversationAsync:::CognitiveAgentConversationCreateDto"]=0
operation_parameters_minimum_occurrences["deleteCognitiveAgentConversationAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["deleteCognitiveAgentConversationAsync:::agentId"]=1
operation_parameters_minimum_occurrences["deleteCognitiveAgentConversationAsync:::id"]=1
operation_parameters_minimum_occurrences["deleteCognitiveAgentConversationAsync:::api-version"]=0
operation_parameters_minimum_occurrences["deleteCognitiveAgentConversationAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentConversationByIdAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentConversationByIdAsync:::agentId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentConversationByIdAsync:::id"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentConversationByIdAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentConversationByIdAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentConversationsAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentConversationsAsync:::agentId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentConversationsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentConversationsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentConversationsAsync:::CognitiveAgentConversationDtoCollectionQueryParameters"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentConversationsCountAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentConversationsCountAsync:::agentId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentConversationsCountAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentConversationsCountAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentConversationsCountAsync:::CognitiveAgentConversationDtoCollectionQueryParameters"]=0
operation_parameters_minimum_occurrences["updateCognitiveAgentConversationAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["updateCognitiveAgentConversationAsync:::agentId"]=1
operation_parameters_minimum_occurrences["updateCognitiveAgentConversationAsync:::id"]=1
operation_parameters_minimum_occurrences["updateCognitiveAgentConversationAsync:::api-version"]=0
operation_parameters_minimum_occurrences["updateCognitiveAgentConversationAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateCognitiveAgentConversationAsync:::CognitiveAgentConversationUpdateDto"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentMessageByIdAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentMessageByIdAsync:::agentId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentMessageByIdAsync:::conversationId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentMessageByIdAsync:::id"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentMessageByIdAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentMessageByIdAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentMessagesAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentMessagesAsync:::agentId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentMessagesAsync:::conversationId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentMessagesAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentMessagesAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentMessagesAsync:::CognitiveAgentMessageDtoCollectionQueryParameters"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentMessagesCountAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentMessagesCountAsync:::agentId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentMessagesCountAsync:::conversationId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentMessagesCountAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentMessagesCountAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentMessagesCountAsync:::CognitiveAgentMessageDtoCollectionQueryParameters"]=0
operation_parameters_minimum_occurrences["createCognitiveAgentSkillAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["createCognitiveAgentSkillAsync:::agentId"]=1
operation_parameters_minimum_occurrences["createCognitiveAgentSkillAsync:::api-version"]=0
operation_parameters_minimum_occurrences["createCognitiveAgentSkillAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createCognitiveAgentSkillAsync:::CognitiveAgentSkillCreateDto"]=0
operation_parameters_minimum_occurrences["deleteCognitiveAgentSkillAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["deleteCognitiveAgentSkillAsync:::agentId"]=1
operation_parameters_minimum_occurrences["deleteCognitiveAgentSkillAsync:::id"]=1
operation_parameters_minimum_occurrences["deleteCognitiveAgentSkillAsync:::api-version"]=0
operation_parameters_minimum_occurrences["deleteCognitiveAgentSkillAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentSkillByIdAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentSkillByIdAsync:::agentId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentSkillByIdAsync:::id"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentSkillByIdAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentSkillByIdAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentSkillsAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentSkillsAsync:::agentId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentSkillsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentSkillsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentSkillsAsync:::CognitiveAgentSkillDtoCollectionQueryParameters"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentSkillsCountAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentSkillsCountAsync:::agentId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentSkillsCountAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentSkillsCountAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentSkillsCountAsync:::CognitiveAgentSkillDtoCollectionQueryParameters"]=0
operation_parameters_minimum_occurrences["updateCognitiveAgentSkillAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["updateCognitiveAgentSkillAsync:::agentId"]=1
operation_parameters_minimum_occurrences["updateCognitiveAgentSkillAsync:::id"]=1
operation_parameters_minimum_occurrences["updateCognitiveAgentSkillAsync:::api-version"]=0
operation_parameters_minimum_occurrences["updateCognitiveAgentSkillAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateCognitiveAgentSkillAsync:::CognitiveAgentSkillUpdateDto"]=0
operation_parameters_minimum_occurrences["createCognitiveAgentVariableAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["createCognitiveAgentVariableAsync:::agentId"]=1
operation_parameters_minimum_occurrences["createCognitiveAgentVariableAsync:::api-version"]=0
operation_parameters_minimum_occurrences["createCognitiveAgentVariableAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createCognitiveAgentVariableAsync:::CognitiveAgentVariableCreateDto"]=0
operation_parameters_minimum_occurrences["deleteCognitiveAgentVariableAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["deleteCognitiveAgentVariableAsync:::agentId"]=1
operation_parameters_minimum_occurrences["deleteCognitiveAgentVariableAsync:::id"]=1
operation_parameters_minimum_occurrences["deleteCognitiveAgentVariableAsync:::api-version"]=0
operation_parameters_minimum_occurrences["deleteCognitiveAgentVariableAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentVariableByIdAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentVariableByIdAsync:::agentId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentVariableByIdAsync:::id"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentVariableByIdAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentVariableByIdAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentVariablesAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentVariablesAsync:::agentId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentVariablesAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentVariablesAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentVariablesAsync:::CognitiveAgentVariableDtoCollectionQueryParameters"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentVariablesCountAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentVariablesCountAsync:::agentId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentVariablesCountAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentVariablesCountAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentVariablesCountAsync:::CognitiveAgentVariableDtoCollectionQueryParameters"]=0
operation_parameters_minimum_occurrences["updateCognitiveAgentVariableAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["updateCognitiveAgentVariableAsync:::agentId"]=1
operation_parameters_minimum_occurrences["updateCognitiveAgentVariableAsync:::id"]=1
operation_parameters_minimum_occurrences["updateCognitiveAgentVariableAsync:::api-version"]=0
operation_parameters_minimum_occurrences["updateCognitiveAgentVariableAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateCognitiveAgentVariableAsync:::CognitiveAgentVariableUpdateDto"]=0
operation_parameters_minimum_occurrences["createCognitiveAgentAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["createCognitiveAgentAsync:::api-version"]=0
operation_parameters_minimum_occurrences["createCognitiveAgentAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createCognitiveAgentAsync:::CognitiveAgentCreateDto"]=0
operation_parameters_minimum_occurrences["deleteCognitiveAgentAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["deleteCognitiveAgentAsync:::id"]=1
operation_parameters_minimum_occurrences["deleteCognitiveAgentAsync:::api-version"]=0
operation_parameters_minimum_occurrences["deleteCognitiveAgentAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentByIdAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentByIdAsync:::id"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentByIdAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentByIdAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentsAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentsAsync:::CognitiveAgentDtoCollectionQueryParameters"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentsCountAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCognitiveAgentsCountAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentsCountAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveAgentsCountAsync:::CognitiveAgentDtoCollectionQueryParameters"]=0
operation_parameters_minimum_occurrences["updateCognitiveAgentAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["updateCognitiveAgentAsync:::id"]=1
operation_parameters_minimum_occurrences["updateCognitiveAgentAsync:::api-version"]=0
operation_parameters_minimum_occurrences["updateCognitiveAgentAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateCognitiveAgentAsync:::CognitiveAgentUpdateDto"]=0
operation_parameters_minimum_occurrences["createCognitiveSkillAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["createCognitiveSkillAsync:::api-version"]=0
operation_parameters_minimum_occurrences["createCognitiveSkillAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createCognitiveSkillAsync:::CognitiveSkillCreateDto"]=0
operation_parameters_minimum_occurrences["deleteCognitiveSkillAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["deleteCognitiveSkillAsync:::id"]=1
operation_parameters_minimum_occurrences["deleteCognitiveSkillAsync:::api-version"]=0
operation_parameters_minimum_occurrences["deleteCognitiveSkillAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveSkillByIdAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCognitiveSkillByIdAsync:::id"]=1
operation_parameters_minimum_occurrences["getCognitiveSkillByIdAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveSkillByIdAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveSkillsAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCognitiveSkillsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveSkillsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveSkillsAsync:::CognitiveSkillDtoCollectionQueryParameters"]=0
operation_parameters_minimum_occurrences["getCognitiveSkillsCountAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getCognitiveSkillsCountAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveSkillsCountAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCognitiveSkillsCountAsync:::CognitiveSkillDtoCollectionQueryParameters"]=0
operation_parameters_minimum_occurrences["updateCognitiveSkillAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["updateCognitiveSkillAsync:::id"]=1
operation_parameters_minimum_occurrences["updateCognitiveSkillAsync:::api-version"]=0
operation_parameters_minimum_occurrences["updateCognitiveSkillAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateCognitiveSkillAsync:::CognitiveSkillUpdateDto"]=0
operation_parameters_minimum_occurrences["accountLogoutPost:::returnUrl"]=0
operation_parameters_minimum_occurrences["accountManageLinkExternalLoginPost:::provider"]=0
operation_parameters_minimum_occurrences["accountPerformExternalLoginPost:::provider"]=0
operation_parameters_minimum_occurrences["accountPerformExternalLoginPost:::returnUrl"]=0
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
operation_parameters_minimum_occurrences["invokeAgentSurfaceAsync:::agentId"]=1

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["getAiProvidersAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getAiProvidersAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCapabilitiesAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCapabilitiesAsync:::surface"]=0
operation_parameters_maximum_occurrences["getCapabilitiesAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCapabilitiesAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCapabilitiesCountAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCapabilitiesCountAsync:::surface"]=0
operation_parameters_maximum_occurrences["getCapabilitiesCountAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCapabilitiesCountAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCapabilityByKeyAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCapabilityByKeyAsync:::key"]=0
operation_parameters_maximum_occurrences["getCapabilityByKeyAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCapabilityByKeyAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["uploadCognitiveAgentConversationAttachmentAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["uploadCognitiveAgentConversationAttachmentAsync:::agentId"]=0
operation_parameters_maximum_occurrences["uploadCognitiveAgentConversationAttachmentAsync:::conversationId"]=0
operation_parameters_maximum_occurrences["uploadCognitiveAgentConversationAttachmentAsync:::api-version"]=0
operation_parameters_maximum_occurrences["uploadCognitiveAgentConversationAttachmentAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["uploadCognitiveAgentConversationAttachmentAsync:::file"]=0
operation_parameters_maximum_occurrences["createCognitiveAgentConversationAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createCognitiveAgentConversationAsync:::agentId"]=0
operation_parameters_maximum_occurrences["createCognitiveAgentConversationAsync:::api-version"]=0
operation_parameters_maximum_occurrences["createCognitiveAgentConversationAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createCognitiveAgentConversationAsync:::CognitiveAgentConversationCreateDto"]=0
operation_parameters_maximum_occurrences["deleteCognitiveAgentConversationAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["deleteCognitiveAgentConversationAsync:::agentId"]=0
operation_parameters_maximum_occurrences["deleteCognitiveAgentConversationAsync:::id"]=0
operation_parameters_maximum_occurrences["deleteCognitiveAgentConversationAsync:::api-version"]=0
operation_parameters_maximum_occurrences["deleteCognitiveAgentConversationAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentConversationByIdAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentConversationByIdAsync:::agentId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentConversationByIdAsync:::id"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentConversationByIdAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentConversationByIdAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentConversationsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentConversationsAsync:::agentId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentConversationsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentConversationsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentConversationsAsync:::CognitiveAgentConversationDtoCollectionQueryParameters"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentConversationsCountAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentConversationsCountAsync:::agentId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentConversationsCountAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentConversationsCountAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentConversationsCountAsync:::CognitiveAgentConversationDtoCollectionQueryParameters"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentConversationAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentConversationAsync:::agentId"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentConversationAsync:::id"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentConversationAsync:::api-version"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentConversationAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentConversationAsync:::CognitiveAgentConversationUpdateDto"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentMessageByIdAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentMessageByIdAsync:::agentId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentMessageByIdAsync:::conversationId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentMessageByIdAsync:::id"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentMessageByIdAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentMessageByIdAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentMessagesAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentMessagesAsync:::agentId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentMessagesAsync:::conversationId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentMessagesAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentMessagesAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentMessagesAsync:::CognitiveAgentMessageDtoCollectionQueryParameters"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentMessagesCountAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentMessagesCountAsync:::agentId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentMessagesCountAsync:::conversationId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentMessagesCountAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentMessagesCountAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentMessagesCountAsync:::CognitiveAgentMessageDtoCollectionQueryParameters"]=0
operation_parameters_maximum_occurrences["createCognitiveAgentSkillAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createCognitiveAgentSkillAsync:::agentId"]=0
operation_parameters_maximum_occurrences["createCognitiveAgentSkillAsync:::api-version"]=0
operation_parameters_maximum_occurrences["createCognitiveAgentSkillAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createCognitiveAgentSkillAsync:::CognitiveAgentSkillCreateDto"]=0
operation_parameters_maximum_occurrences["deleteCognitiveAgentSkillAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["deleteCognitiveAgentSkillAsync:::agentId"]=0
operation_parameters_maximum_occurrences["deleteCognitiveAgentSkillAsync:::id"]=0
operation_parameters_maximum_occurrences["deleteCognitiveAgentSkillAsync:::api-version"]=0
operation_parameters_maximum_occurrences["deleteCognitiveAgentSkillAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentSkillByIdAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentSkillByIdAsync:::agentId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentSkillByIdAsync:::id"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentSkillByIdAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentSkillByIdAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentSkillsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentSkillsAsync:::agentId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentSkillsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentSkillsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentSkillsAsync:::CognitiveAgentSkillDtoCollectionQueryParameters"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentSkillsCountAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentSkillsCountAsync:::agentId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentSkillsCountAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentSkillsCountAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentSkillsCountAsync:::CognitiveAgentSkillDtoCollectionQueryParameters"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentSkillAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentSkillAsync:::agentId"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentSkillAsync:::id"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentSkillAsync:::api-version"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentSkillAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentSkillAsync:::CognitiveAgentSkillUpdateDto"]=0
operation_parameters_maximum_occurrences["createCognitiveAgentVariableAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createCognitiveAgentVariableAsync:::agentId"]=0
operation_parameters_maximum_occurrences["createCognitiveAgentVariableAsync:::api-version"]=0
operation_parameters_maximum_occurrences["createCognitiveAgentVariableAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createCognitiveAgentVariableAsync:::CognitiveAgentVariableCreateDto"]=0
operation_parameters_maximum_occurrences["deleteCognitiveAgentVariableAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["deleteCognitiveAgentVariableAsync:::agentId"]=0
operation_parameters_maximum_occurrences["deleteCognitiveAgentVariableAsync:::id"]=0
operation_parameters_maximum_occurrences["deleteCognitiveAgentVariableAsync:::api-version"]=0
operation_parameters_maximum_occurrences["deleteCognitiveAgentVariableAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentVariableByIdAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentVariableByIdAsync:::agentId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentVariableByIdAsync:::id"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentVariableByIdAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentVariableByIdAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentVariablesAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentVariablesAsync:::agentId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentVariablesAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentVariablesAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentVariablesAsync:::CognitiveAgentVariableDtoCollectionQueryParameters"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentVariablesCountAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentVariablesCountAsync:::agentId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentVariablesCountAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentVariablesCountAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentVariablesCountAsync:::CognitiveAgentVariableDtoCollectionQueryParameters"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentVariableAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentVariableAsync:::agentId"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentVariableAsync:::id"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentVariableAsync:::api-version"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentVariableAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentVariableAsync:::CognitiveAgentVariableUpdateDto"]=0
operation_parameters_maximum_occurrences["createCognitiveAgentAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createCognitiveAgentAsync:::api-version"]=0
operation_parameters_maximum_occurrences["createCognitiveAgentAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createCognitiveAgentAsync:::CognitiveAgentCreateDto"]=0
operation_parameters_maximum_occurrences["deleteCognitiveAgentAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["deleteCognitiveAgentAsync:::id"]=0
operation_parameters_maximum_occurrences["deleteCognitiveAgentAsync:::api-version"]=0
operation_parameters_maximum_occurrences["deleteCognitiveAgentAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentByIdAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentByIdAsync:::id"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentByIdAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentByIdAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentsAsync:::CognitiveAgentDtoCollectionQueryParameters"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentsCountAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentsCountAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentsCountAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveAgentsCountAsync:::CognitiveAgentDtoCollectionQueryParameters"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentAsync:::id"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentAsync:::api-version"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateCognitiveAgentAsync:::CognitiveAgentUpdateDto"]=0
operation_parameters_maximum_occurrences["createCognitiveSkillAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createCognitiveSkillAsync:::api-version"]=0
operation_parameters_maximum_occurrences["createCognitiveSkillAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createCognitiveSkillAsync:::CognitiveSkillCreateDto"]=0
operation_parameters_maximum_occurrences["deleteCognitiveSkillAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["deleteCognitiveSkillAsync:::id"]=0
operation_parameters_maximum_occurrences["deleteCognitiveSkillAsync:::api-version"]=0
operation_parameters_maximum_occurrences["deleteCognitiveSkillAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveSkillByIdAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCognitiveSkillByIdAsync:::id"]=0
operation_parameters_maximum_occurrences["getCognitiveSkillByIdAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveSkillByIdAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveSkillsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCognitiveSkillsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveSkillsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveSkillsAsync:::CognitiveSkillDtoCollectionQueryParameters"]=0
operation_parameters_maximum_occurrences["getCognitiveSkillsCountAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCognitiveSkillsCountAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveSkillsCountAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCognitiveSkillsCountAsync:::CognitiveSkillDtoCollectionQueryParameters"]=0
operation_parameters_maximum_occurrences["updateCognitiveSkillAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["updateCognitiveSkillAsync:::id"]=0
operation_parameters_maximum_occurrences["updateCognitiveSkillAsync:::api-version"]=0
operation_parameters_maximum_occurrences["updateCognitiveSkillAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateCognitiveSkillAsync:::CognitiveSkillUpdateDto"]=0
operation_parameters_maximum_occurrences["accountLogoutPost:::returnUrl"]=0
operation_parameters_maximum_occurrences["accountManageLinkExternalLoginPost:::provider"]=0
operation_parameters_maximum_occurrences["accountPerformExternalLoginPost:::provider"]=0
operation_parameters_maximum_occurrences["accountPerformExternalLoginPost:::returnUrl"]=0
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
operation_parameters_maximum_occurrences["invokeAgentSurfaceAsync:::agentId"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["getAiProvidersAsync:::api-version"]=""
operation_parameters_collection_type["getAiProvidersAsync:::x-api-version"]=""
operation_parameters_collection_type["getCapabilitiesAsync:::tenantId"]=""
operation_parameters_collection_type["getCapabilitiesAsync:::surface"]=""
operation_parameters_collection_type["getCapabilitiesAsync:::api-version"]=""
operation_parameters_collection_type["getCapabilitiesAsync:::x-api-version"]=""
operation_parameters_collection_type["getCapabilitiesCountAsync:::tenantId"]=""
operation_parameters_collection_type["getCapabilitiesCountAsync:::surface"]=""
operation_parameters_collection_type["getCapabilitiesCountAsync:::api-version"]=""
operation_parameters_collection_type["getCapabilitiesCountAsync:::x-api-version"]=""
operation_parameters_collection_type["getCapabilityByKeyAsync:::tenantId"]=""
operation_parameters_collection_type["getCapabilityByKeyAsync:::key"]=""
operation_parameters_collection_type["getCapabilityByKeyAsync:::api-version"]=""
operation_parameters_collection_type["getCapabilityByKeyAsync:::x-api-version"]=""
operation_parameters_collection_type["uploadCognitiveAgentConversationAttachmentAsync:::tenantId"]=""
operation_parameters_collection_type["uploadCognitiveAgentConversationAttachmentAsync:::agentId"]=""
operation_parameters_collection_type["uploadCognitiveAgentConversationAttachmentAsync:::conversationId"]=""
operation_parameters_collection_type["uploadCognitiveAgentConversationAttachmentAsync:::api-version"]=""
operation_parameters_collection_type["uploadCognitiveAgentConversationAttachmentAsync:::x-api-version"]=""
operation_parameters_collection_type["uploadCognitiveAgentConversationAttachmentAsync:::file"]=""
operation_parameters_collection_type["createCognitiveAgentConversationAsync:::tenantId"]=""
operation_parameters_collection_type["createCognitiveAgentConversationAsync:::agentId"]=""
operation_parameters_collection_type["createCognitiveAgentConversationAsync:::api-version"]=""
operation_parameters_collection_type["createCognitiveAgentConversationAsync:::x-api-version"]=""
operation_parameters_collection_type["createCognitiveAgentConversationAsync:::CognitiveAgentConversationCreateDto"]=""
operation_parameters_collection_type["deleteCognitiveAgentConversationAsync:::tenantId"]=""
operation_parameters_collection_type["deleteCognitiveAgentConversationAsync:::agentId"]=""
operation_parameters_collection_type["deleteCognitiveAgentConversationAsync:::id"]=""
operation_parameters_collection_type["deleteCognitiveAgentConversationAsync:::api-version"]=""
operation_parameters_collection_type["deleteCognitiveAgentConversationAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveAgentConversationByIdAsync:::tenantId"]=""
operation_parameters_collection_type["getCognitiveAgentConversationByIdAsync:::agentId"]=""
operation_parameters_collection_type["getCognitiveAgentConversationByIdAsync:::id"]=""
operation_parameters_collection_type["getCognitiveAgentConversationByIdAsync:::api-version"]=""
operation_parameters_collection_type["getCognitiveAgentConversationByIdAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveAgentConversationsAsync:::tenantId"]=""
operation_parameters_collection_type["getCognitiveAgentConversationsAsync:::agentId"]=""
operation_parameters_collection_type["getCognitiveAgentConversationsAsync:::api-version"]=""
operation_parameters_collection_type["getCognitiveAgentConversationsAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveAgentConversationsAsync:::CognitiveAgentConversationDtoCollectionQueryParameters"]=""
operation_parameters_collection_type["getCognitiveAgentConversationsCountAsync:::tenantId"]=""
operation_parameters_collection_type["getCognitiveAgentConversationsCountAsync:::agentId"]=""
operation_parameters_collection_type["getCognitiveAgentConversationsCountAsync:::api-version"]=""
operation_parameters_collection_type["getCognitiveAgentConversationsCountAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveAgentConversationsCountAsync:::CognitiveAgentConversationDtoCollectionQueryParameters"]=""
operation_parameters_collection_type["updateCognitiveAgentConversationAsync:::tenantId"]=""
operation_parameters_collection_type["updateCognitiveAgentConversationAsync:::agentId"]=""
operation_parameters_collection_type["updateCognitiveAgentConversationAsync:::id"]=""
operation_parameters_collection_type["updateCognitiveAgentConversationAsync:::api-version"]=""
operation_parameters_collection_type["updateCognitiveAgentConversationAsync:::x-api-version"]=""
operation_parameters_collection_type["updateCognitiveAgentConversationAsync:::CognitiveAgentConversationUpdateDto"]=""
operation_parameters_collection_type["getCognitiveAgentMessageByIdAsync:::tenantId"]=""
operation_parameters_collection_type["getCognitiveAgentMessageByIdAsync:::agentId"]=""
operation_parameters_collection_type["getCognitiveAgentMessageByIdAsync:::conversationId"]=""
operation_parameters_collection_type["getCognitiveAgentMessageByIdAsync:::id"]=""
operation_parameters_collection_type["getCognitiveAgentMessageByIdAsync:::api-version"]=""
operation_parameters_collection_type["getCognitiveAgentMessageByIdAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveAgentMessagesAsync:::tenantId"]=""
operation_parameters_collection_type["getCognitiveAgentMessagesAsync:::agentId"]=""
operation_parameters_collection_type["getCognitiveAgentMessagesAsync:::conversationId"]=""
operation_parameters_collection_type["getCognitiveAgentMessagesAsync:::api-version"]=""
operation_parameters_collection_type["getCognitiveAgentMessagesAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveAgentMessagesAsync:::CognitiveAgentMessageDtoCollectionQueryParameters"]=""
operation_parameters_collection_type["getCognitiveAgentMessagesCountAsync:::tenantId"]=""
operation_parameters_collection_type["getCognitiveAgentMessagesCountAsync:::agentId"]=""
operation_parameters_collection_type["getCognitiveAgentMessagesCountAsync:::conversationId"]=""
operation_parameters_collection_type["getCognitiveAgentMessagesCountAsync:::api-version"]=""
operation_parameters_collection_type["getCognitiveAgentMessagesCountAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveAgentMessagesCountAsync:::CognitiveAgentMessageDtoCollectionQueryParameters"]=""
operation_parameters_collection_type["createCognitiveAgentSkillAsync:::tenantId"]=""
operation_parameters_collection_type["createCognitiveAgentSkillAsync:::agentId"]=""
operation_parameters_collection_type["createCognitiveAgentSkillAsync:::api-version"]=""
operation_parameters_collection_type["createCognitiveAgentSkillAsync:::x-api-version"]=""
operation_parameters_collection_type["createCognitiveAgentSkillAsync:::CognitiveAgentSkillCreateDto"]=""
operation_parameters_collection_type["deleteCognitiveAgentSkillAsync:::tenantId"]=""
operation_parameters_collection_type["deleteCognitiveAgentSkillAsync:::agentId"]=""
operation_parameters_collection_type["deleteCognitiveAgentSkillAsync:::id"]=""
operation_parameters_collection_type["deleteCognitiveAgentSkillAsync:::api-version"]=""
operation_parameters_collection_type["deleteCognitiveAgentSkillAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveAgentSkillByIdAsync:::tenantId"]=""
operation_parameters_collection_type["getCognitiveAgentSkillByIdAsync:::agentId"]=""
operation_parameters_collection_type["getCognitiveAgentSkillByIdAsync:::id"]=""
operation_parameters_collection_type["getCognitiveAgentSkillByIdAsync:::api-version"]=""
operation_parameters_collection_type["getCognitiveAgentSkillByIdAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveAgentSkillsAsync:::tenantId"]=""
operation_parameters_collection_type["getCognitiveAgentSkillsAsync:::agentId"]=""
operation_parameters_collection_type["getCognitiveAgentSkillsAsync:::api-version"]=""
operation_parameters_collection_type["getCognitiveAgentSkillsAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveAgentSkillsAsync:::CognitiveAgentSkillDtoCollectionQueryParameters"]=""
operation_parameters_collection_type["getCognitiveAgentSkillsCountAsync:::tenantId"]=""
operation_parameters_collection_type["getCognitiveAgentSkillsCountAsync:::agentId"]=""
operation_parameters_collection_type["getCognitiveAgentSkillsCountAsync:::api-version"]=""
operation_parameters_collection_type["getCognitiveAgentSkillsCountAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveAgentSkillsCountAsync:::CognitiveAgentSkillDtoCollectionQueryParameters"]=""
operation_parameters_collection_type["updateCognitiveAgentSkillAsync:::tenantId"]=""
operation_parameters_collection_type["updateCognitiveAgentSkillAsync:::agentId"]=""
operation_parameters_collection_type["updateCognitiveAgentSkillAsync:::id"]=""
operation_parameters_collection_type["updateCognitiveAgentSkillAsync:::api-version"]=""
operation_parameters_collection_type["updateCognitiveAgentSkillAsync:::x-api-version"]=""
operation_parameters_collection_type["updateCognitiveAgentSkillAsync:::CognitiveAgentSkillUpdateDto"]=""
operation_parameters_collection_type["createCognitiveAgentVariableAsync:::tenantId"]=""
operation_parameters_collection_type["createCognitiveAgentVariableAsync:::agentId"]=""
operation_parameters_collection_type["createCognitiveAgentVariableAsync:::api-version"]=""
operation_parameters_collection_type["createCognitiveAgentVariableAsync:::x-api-version"]=""
operation_parameters_collection_type["createCognitiveAgentVariableAsync:::CognitiveAgentVariableCreateDto"]=""
operation_parameters_collection_type["deleteCognitiveAgentVariableAsync:::tenantId"]=""
operation_parameters_collection_type["deleteCognitiveAgentVariableAsync:::agentId"]=""
operation_parameters_collection_type["deleteCognitiveAgentVariableAsync:::id"]=""
operation_parameters_collection_type["deleteCognitiveAgentVariableAsync:::api-version"]=""
operation_parameters_collection_type["deleteCognitiveAgentVariableAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveAgentVariableByIdAsync:::tenantId"]=""
operation_parameters_collection_type["getCognitiveAgentVariableByIdAsync:::agentId"]=""
operation_parameters_collection_type["getCognitiveAgentVariableByIdAsync:::id"]=""
operation_parameters_collection_type["getCognitiveAgentVariableByIdAsync:::api-version"]=""
operation_parameters_collection_type["getCognitiveAgentVariableByIdAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveAgentVariablesAsync:::tenantId"]=""
operation_parameters_collection_type["getCognitiveAgentVariablesAsync:::agentId"]=""
operation_parameters_collection_type["getCognitiveAgentVariablesAsync:::api-version"]=""
operation_parameters_collection_type["getCognitiveAgentVariablesAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveAgentVariablesAsync:::CognitiveAgentVariableDtoCollectionQueryParameters"]=""
operation_parameters_collection_type["getCognitiveAgentVariablesCountAsync:::tenantId"]=""
operation_parameters_collection_type["getCognitiveAgentVariablesCountAsync:::agentId"]=""
operation_parameters_collection_type["getCognitiveAgentVariablesCountAsync:::api-version"]=""
operation_parameters_collection_type["getCognitiveAgentVariablesCountAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveAgentVariablesCountAsync:::CognitiveAgentVariableDtoCollectionQueryParameters"]=""
operation_parameters_collection_type["updateCognitiveAgentVariableAsync:::tenantId"]=""
operation_parameters_collection_type["updateCognitiveAgentVariableAsync:::agentId"]=""
operation_parameters_collection_type["updateCognitiveAgentVariableAsync:::id"]=""
operation_parameters_collection_type["updateCognitiveAgentVariableAsync:::api-version"]=""
operation_parameters_collection_type["updateCognitiveAgentVariableAsync:::x-api-version"]=""
operation_parameters_collection_type["updateCognitiveAgentVariableAsync:::CognitiveAgentVariableUpdateDto"]=""
operation_parameters_collection_type["createCognitiveAgentAsync:::tenantId"]=""
operation_parameters_collection_type["createCognitiveAgentAsync:::api-version"]=""
operation_parameters_collection_type["createCognitiveAgentAsync:::x-api-version"]=""
operation_parameters_collection_type["createCognitiveAgentAsync:::CognitiveAgentCreateDto"]=""
operation_parameters_collection_type["deleteCognitiveAgentAsync:::tenantId"]=""
operation_parameters_collection_type["deleteCognitiveAgentAsync:::id"]=""
operation_parameters_collection_type["deleteCognitiveAgentAsync:::api-version"]=""
operation_parameters_collection_type["deleteCognitiveAgentAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveAgentByIdAsync:::tenantId"]=""
operation_parameters_collection_type["getCognitiveAgentByIdAsync:::id"]=""
operation_parameters_collection_type["getCognitiveAgentByIdAsync:::api-version"]=""
operation_parameters_collection_type["getCognitiveAgentByIdAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveAgentsAsync:::tenantId"]=""
operation_parameters_collection_type["getCognitiveAgentsAsync:::api-version"]=""
operation_parameters_collection_type["getCognitiveAgentsAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveAgentsAsync:::CognitiveAgentDtoCollectionQueryParameters"]=""
operation_parameters_collection_type["getCognitiveAgentsCountAsync:::tenantId"]=""
operation_parameters_collection_type["getCognitiveAgentsCountAsync:::api-version"]=""
operation_parameters_collection_type["getCognitiveAgentsCountAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveAgentsCountAsync:::CognitiveAgentDtoCollectionQueryParameters"]=""
operation_parameters_collection_type["updateCognitiveAgentAsync:::tenantId"]=""
operation_parameters_collection_type["updateCognitiveAgentAsync:::id"]=""
operation_parameters_collection_type["updateCognitiveAgentAsync:::api-version"]=""
operation_parameters_collection_type["updateCognitiveAgentAsync:::x-api-version"]=""
operation_parameters_collection_type["updateCognitiveAgentAsync:::CognitiveAgentUpdateDto"]=""
operation_parameters_collection_type["createCognitiveSkillAsync:::tenantId"]=""
operation_parameters_collection_type["createCognitiveSkillAsync:::api-version"]=""
operation_parameters_collection_type["createCognitiveSkillAsync:::x-api-version"]=""
operation_parameters_collection_type["createCognitiveSkillAsync:::CognitiveSkillCreateDto"]=""
operation_parameters_collection_type["deleteCognitiveSkillAsync:::tenantId"]=""
operation_parameters_collection_type["deleteCognitiveSkillAsync:::id"]=""
operation_parameters_collection_type["deleteCognitiveSkillAsync:::api-version"]=""
operation_parameters_collection_type["deleteCognitiveSkillAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveSkillByIdAsync:::tenantId"]=""
operation_parameters_collection_type["getCognitiveSkillByIdAsync:::id"]=""
operation_parameters_collection_type["getCognitiveSkillByIdAsync:::api-version"]=""
operation_parameters_collection_type["getCognitiveSkillByIdAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveSkillsAsync:::tenantId"]=""
operation_parameters_collection_type["getCognitiveSkillsAsync:::api-version"]=""
operation_parameters_collection_type["getCognitiveSkillsAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveSkillsAsync:::CognitiveSkillDtoCollectionQueryParameters"]=""
operation_parameters_collection_type["getCognitiveSkillsCountAsync:::tenantId"]=""
operation_parameters_collection_type["getCognitiveSkillsCountAsync:::api-version"]=""
operation_parameters_collection_type["getCognitiveSkillsCountAsync:::x-api-version"]=""
operation_parameters_collection_type["getCognitiveSkillsCountAsync:::CognitiveSkillDtoCollectionQueryParameters"]=""
operation_parameters_collection_type["updateCognitiveSkillAsync:::tenantId"]=""
operation_parameters_collection_type["updateCognitiveSkillAsync:::id"]=""
operation_parameters_collection_type["updateCognitiveSkillAsync:::api-version"]=""
operation_parameters_collection_type["updateCognitiveSkillAsync:::x-api-version"]=""
operation_parameters_collection_type["updateCognitiveSkillAsync:::CognitiveSkillUpdateDto"]=""
operation_parameters_collection_type["accountLogoutPost:::returnUrl"]=""
operation_parameters_collection_type["accountManageLinkExternalLoginPost:::provider"]=""
operation_parameters_collection_type["accountPerformExternalLoginPost:::provider"]=""
operation_parameters_collection_type["accountPerformExternalLoginPost:::returnUrl"]=""
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
operation_parameters_collection_type["invokeAgentSurfaceAsync:::agentId"]=""


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

${BOLD}${WHITE}IntelligenceService command line client (API version 2.0.0.0)${OFF}

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
    echo -e "${BOLD}${WHITE}[aiProviders]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getAiProvidersAsync${OFF};Get the available AI providers
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[capabilities]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getCapabilitiesAsync${OFF};Get the annotated capability catalog
  ${CYAN}getCapabilitiesCountAsync${OFF};Get the capability catalog count
  ${CYAN}getCapabilityByKeyAsync${OFF};Get a capability by key
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[cognitiveAgentConversationAttachments]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}uploadCognitiveAgentConversationAttachmentAsync${OFF};Upload an attachment to a cognitive agent conversation
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[cognitiveAgentConversations]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}createCognitiveAgentConversationAsync${OFF};Create a new cognitive agent conversation
  ${CYAN}deleteCognitiveAgentConversationAsync${OFF};Delete a cognitive agent conversation
  ${CYAN}getCognitiveAgentConversationByIdAsync${OFF};Get a cognitive agent conversation by ID
  ${CYAN}getCognitiveAgentConversationsAsync${OFF};Get all conversations for a cognitive agent
  ${CYAN}getCognitiveAgentConversationsCountAsync${OFF};Get conversation count for a cognitive agent
  ${CYAN}updateCognitiveAgentConversationAsync${OFF};Update a cognitive agent conversation
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[cognitiveAgentMessages]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getCognitiveAgentMessageByIdAsync${OFF};Get a cognitive agent conversation message by ID
  ${CYAN}getCognitiveAgentMessagesAsync${OFF};Get all messages for a cognitive agent conversation
  ${CYAN}getCognitiveAgentMessagesCountAsync${OFF};Get message count for a cognitive agent conversation
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[cognitiveAgentSkills]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}createCognitiveAgentSkillAsync${OFF};Assign a skill to a cognitive agent
  ${CYAN}deleteCognitiveAgentSkillAsync${OFF};Remove a skill assignment from a cognitive agent
  ${CYAN}getCognitiveAgentSkillByIdAsync${OFF};Get a cognitive agent skill assignment by ID
  ${CYAN}getCognitiveAgentSkillsAsync${OFF};Get all skill assignments for a cognitive agent
  ${CYAN}getCognitiveAgentSkillsCountAsync${OFF};Get skill assignment count for a cognitive agent
  ${CYAN}updateCognitiveAgentSkillAsync${OFF};Update a cognitive agent skill assignment
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[cognitiveAgentVariables]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}createCognitiveAgentVariableAsync${OFF};Add a variable to a cognitive agent
  ${CYAN}deleteCognitiveAgentVariableAsync${OFF};Remove a variable from a cognitive agent
  ${CYAN}getCognitiveAgentVariableByIdAsync${OFF};Get a cognitive agent variable by ID
  ${CYAN}getCognitiveAgentVariablesAsync${OFF};Get all variables for a cognitive agent
  ${CYAN}getCognitiveAgentVariablesCountAsync${OFF};Get variable count for a cognitive agent
  ${CYAN}updateCognitiveAgentVariableAsync${OFF};Update a cognitive agent variable
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[cognitiveAgents]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}createCognitiveAgentAsync${OFF};Create a new cognitive agent
  ${CYAN}deleteCognitiveAgentAsync${OFF};Delete a cognitive agent
  ${CYAN}getCognitiveAgentByIdAsync${OFF};Get cognitive agent by ID
  ${CYAN}getCognitiveAgentsAsync${OFF};Get all cognitive agents
  ${CYAN}getCognitiveAgentsCountAsync${OFF};Get cognitive agents count
  ${CYAN}updateCognitiveAgentAsync${OFF};Update a cognitive agent
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[cognitiveSkills]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}createCognitiveSkillAsync${OFF};Create a new cognitive skill
  ${CYAN}deleteCognitiveSkillAsync${OFF};Delete a cognitive skill
  ${CYAN}getCognitiveSkillByIdAsync${OFF};Get cognitive skill by ID
  ${CYAN}getCognitiveSkillsAsync${OFF};Get all cognitive skills
  ${CYAN}getCognitiveSkillsCountAsync${OFF};Get cognitive skills count
  ${CYAN}updateCognitiveSkillAsync${OFF};Update a cognitive skill
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[fenixAllianceABSWeb]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}accountLogoutPost${OFF};
  ${CYAN}accountManageDownloadPersonalDataPost${OFF};
  ${CYAN}accountManageLinkExternalLoginPost${OFF};
  ${CYAN}accountPerformExternalLoginPost${OFF};
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
    echo -e "${BOLD}${WHITE}[intelligenceService]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}invokeAgentSurfaceAsync${OFF};Run a governed agent over the AG-UI protocol
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}Options${OFF}"
    echo -e "  -h,--help\\t\\t\\t\\tPrint this help"
    echo -e "  -V,--version\\t\\t\\t\\tPrint API version"
    echo -e "  --about\\t\\t\\t\\tPrint the information about service"
    echo -e "  --host ${CYAN}<url>${OFF}\\t\\t\\t\\tSpecify the host URL "
echo -e "              \\t\\t\\t\\t(e.g. 'https://absuite.net')"

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
    echo -e "${BOLD}${WHITE}IntelligenceService command line client (API version 2.0.0.0)${OFF}"
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
    echo -e "${BOLD}IntelligenceService command line client (API version 2.0.0.0)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for getAiProvidersAsync operation
#
##############################################################################
print_getAiProvidersAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getAiProvidersAsync - Get the available AI providers${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Returns every AI provider key this instance has a registered adapter for. The set is a property of the deployment, so it is not tenant-scoped; what varies per tenant is the credential for a provider, which is never returned here." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCapabilitiesAsync operation
#
##############################################################################
print_getCapabilitiesAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCapabilitiesAsync - Get the annotated capability catalog${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves the full governed-capability catalog for the specified tenant, optionally narrowed to a single execution surface. Every capability is returned with an Available flag (and a DeniedReason when not available) so callers render disabled-with-reason instead of hiding; entitlement is computed server-side." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}surface${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: surface=value${OFF}" \
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
# Print help for getCapabilitiesCountAsync operation
#
##############################################################################
print_getCapabilitiesCountAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCapabilitiesCountAsync - Get the capability catalog count${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Returns the number of governed capabilities in the catalog for the specified tenant — the surface-matching total that mirrors the list route's returned-set size (entitled or not), honouring the same optional surface narrowing." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}surface${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: surface=value${OFF}" \
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
# Print help for getCapabilityByKeyAsync operation
#
##############################################################################
print_getCapabilityByKeyAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCapabilityByKeyAsync - Get a capability by key${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves a single governed capability by its stable, dotted key, stamped with the Available / DeniedReason entitlement flag. Returns 404 only when the capability does not exist; an existing capability the actor is not entitled to run is returned annotated as unavailable, not hidden." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}key${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: key=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uploadCognitiveAgentConversationAttachmentAsync operation
#
##############################################################################
print_uploadCognitiveAgentConversationAttachmentAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uploadCognitiveAgentConversationAttachmentAsync - Upload an attachment to a cognitive agent conversation${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Uploads a file into the acting user's OWN conversation attachment store, scanned and catalogued through the storage spine. A conversation the caller does not own returns 404. The response carries the new file's id, name, content type and length; the chat UI passes that id as an AttachmentFileIds entry when it sends the referencing user turn." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}conversationId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: conversationId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createCognitiveAgentConversationAsync operation
#
##############################################################################
print_createCognitiveAgentConversationAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createCognitiveAgentConversationAsync - Create a new cognitive agent conversation${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Creates a new managed conversation for the specified cognitive agent and tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteCognitiveAgentConversationAsync operation
#
##############################################################################
print_deleteCognitiveAgentConversationAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteCognitiveAgentConversationAsync - Delete a cognitive agent conversation${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Deletes a managed conversation for the specified cognitive agent and tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCognitiveAgentConversationByIdAsync operation
#
##############################################################################
print_getCognitiveAgentConversationByIdAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCognitiveAgentConversationByIdAsync - Get a cognitive agent conversation by ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves a specific managed conversation of a cognitive agent by its identifier." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCognitiveAgentConversationsAsync operation
#
##############################################################################
print_getCognitiveAgentConversationsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCognitiveAgentConversationsAsync - Get all conversations for a cognitive agent${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all managed conversations for the specified cognitive agent and tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getCognitiveAgentConversationsCountAsync operation
#
##############################################################################
print_getCognitiveAgentConversationsCountAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCognitiveAgentConversationsCountAsync - Get conversation count for a cognitive agent${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Returns the count of managed conversations for the specified cognitive agent and tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for updateCognitiveAgentConversationAsync operation
#
##############################################################################
print_updateCognitiveAgentConversationAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateCognitiveAgentConversationAsync - Update a cognitive agent conversation${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Updates an existing managed conversation for the specified cognitive agent and tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCognitiveAgentMessageByIdAsync operation
#
##############################################################################
print_getCognitiveAgentMessageByIdAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCognitiveAgentMessageByIdAsync - Get a cognitive agent conversation message by ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves a specific durable message of a conversation by its identifier." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}conversationId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: conversationId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCognitiveAgentMessagesAsync operation
#
##############################################################################
print_getCognitiveAgentMessagesAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCognitiveAgentMessagesAsync - Get all messages for a cognitive agent conversation${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all durable messages for the specified conversation, agent and tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}conversationId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: conversationId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getCognitiveAgentMessagesCountAsync operation
#
##############################################################################
print_getCognitiveAgentMessagesCountAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCognitiveAgentMessagesCountAsync - Get message count for a cognitive agent conversation${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Returns the count of durable messages for the specified conversation, agent and tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}conversationId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: conversationId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for createCognitiveAgentSkillAsync operation
#
##############################################################################
print_createCognitiveAgentSkillAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createCognitiveAgentSkillAsync - Assign a skill to a cognitive agent${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Assigns a reusable catalog skill to the specified cognitive agent and tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteCognitiveAgentSkillAsync operation
#
##############################################################################
print_deleteCognitiveAgentSkillAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteCognitiveAgentSkillAsync - Remove a skill assignment from a cognitive agent${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Removes a skill assignment from the specified cognitive agent and tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCognitiveAgentSkillByIdAsync operation
#
##############################################################################
print_getCognitiveAgentSkillByIdAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCognitiveAgentSkillByIdAsync - Get a cognitive agent skill assignment by ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves a specific skill assignment of a cognitive agent by its identifier." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCognitiveAgentSkillsAsync operation
#
##############################################################################
print_getCognitiveAgentSkillsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCognitiveAgentSkillsAsync - Get all skill assignments for a cognitive agent${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all skill assignments for the specified cognitive agent and tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getCognitiveAgentSkillsCountAsync operation
#
##############################################################################
print_getCognitiveAgentSkillsCountAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCognitiveAgentSkillsCountAsync - Get skill assignment count for a cognitive agent${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Returns the count of skill assignments for the specified cognitive agent and tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for updateCognitiveAgentSkillAsync operation
#
##############################################################################
print_updateCognitiveAgentSkillAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateCognitiveAgentSkillAsync - Update a cognitive agent skill assignment${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Updates the per-assignment overrides of a skill assignment for the specified agent and tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createCognitiveAgentVariableAsync operation
#
##############################################################################
print_createCognitiveAgentVariableAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createCognitiveAgentVariableAsync - Add a variable to a cognitive agent${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Adds a key/value variable to the specified cognitive agent and tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteCognitiveAgentVariableAsync operation
#
##############################################################################
print_deleteCognitiveAgentVariableAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteCognitiveAgentVariableAsync - Remove a variable from a cognitive agent${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Removes a variable from the specified cognitive agent and tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCognitiveAgentVariableByIdAsync operation
#
##############################################################################
print_getCognitiveAgentVariableByIdAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCognitiveAgentVariableByIdAsync - Get a cognitive agent variable by ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves a specific variable of a cognitive agent by its identifier." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCognitiveAgentVariablesAsync operation
#
##############################################################################
print_getCognitiveAgentVariablesAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCognitiveAgentVariablesAsync - Get all variables for a cognitive agent${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all key/value variables for the specified cognitive agent and tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for getCognitiveAgentVariablesCountAsync operation
#
##############################################################################
print_getCognitiveAgentVariablesCountAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCognitiveAgentVariablesCountAsync - Get variable count for a cognitive agent${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Returns the count of variables for the specified cognitive agent and tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for updateCognitiveAgentVariableAsync operation
#
##############################################################################
print_updateCognitiveAgentVariableAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateCognitiveAgentVariableAsync - Update a cognitive agent variable${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Updates the value of a variable for the specified agent and tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createCognitiveAgentAsync operation
#
##############################################################################
print_createCognitiveAgentAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createCognitiveAgentAsync - Create a new cognitive agent${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Creates a new managed cognitive agent for the specified tenant." | paste -sd' ' | fold -sw 80
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
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteCognitiveAgentAsync operation
#
##############################################################################
print_deleteCognitiveAgentAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteCognitiveAgentAsync - Delete a cognitive agent${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Deletes a managed cognitive agent for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCognitiveAgentByIdAsync operation
#
##############################################################################
print_getCognitiveAgentByIdAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCognitiveAgentByIdAsync - Get cognitive agent by ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves a specific managed cognitive agent by its identifier." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCognitiveAgentsAsync operation
#
##############################################################################
print_getCognitiveAgentsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCognitiveAgentsAsync - Get all cognitive agents${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all managed cognitive agents for the specified tenant." | paste -sd' ' | fold -sw 80
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
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCognitiveAgentsCountAsync operation
#
##############################################################################
print_getCognitiveAgentsCountAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCognitiveAgentsCountAsync - Get cognitive agents count${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Returns the count of managed cognitive agents for the specified tenant." | paste -sd' ' | fold -sw 80
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
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateCognitiveAgentAsync operation
#
##############################################################################
print_updateCognitiveAgentAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateCognitiveAgentAsync - Update a cognitive agent${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Updates an existing managed cognitive agent for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createCognitiveSkillAsync operation
#
##############################################################################
print_createCognitiveSkillAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createCognitiveSkillAsync - Create a new cognitive skill${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Creates a new reusable cognitive skill for the specified tenant." | paste -sd' ' | fold -sw 80
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
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteCognitiveSkillAsync operation
#
##############################################################################
print_deleteCognitiveSkillAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteCognitiveSkillAsync - Delete a cognitive skill${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Deletes a reusable cognitive skill for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCognitiveSkillByIdAsync operation
#
##############################################################################
print_getCognitiveSkillByIdAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCognitiveSkillByIdAsync - Get cognitive skill by ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves a specific reusable cognitive skill by its identifier." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCognitiveSkillsAsync operation
#
##############################################################################
print_getCognitiveSkillsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCognitiveSkillsAsync - Get all cognitive skills${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all reusable cognitive skills for the specified tenant." | paste -sd' ' | fold -sw 80
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
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCognitiveSkillsCountAsync operation
#
##############################################################################
print_getCognitiveSkillsCountAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCognitiveSkillsCountAsync - Get cognitive skills count${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Returns the count of reusable cognitive skills for the specified tenant." | paste -sd' ' | fold -sw 80
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
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateCognitiveSkillAsync operation
#
##############################################################################
print_updateCognitiveSkillAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateCognitiveSkillAsync - Update a cognitive skill${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Updates an existing reusable cognitive skill for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for accountLogoutPost operation
#
##############################################################################
print_accountLogoutPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}accountLogoutPost - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for accountManageDownloadPersonalDataPost operation
#
##############################################################################
print_accountManageDownloadPersonalDataPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}accountManageDownloadPersonalDataPost - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for accountManageLinkExternalLoginPost operation
#
##############################################################################
print_accountManageLinkExternalLoginPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}accountManageLinkExternalLoginPost - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for accountPerformExternalLoginPost operation
#
##############################################################################
print_accountPerformExternalLoginPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}accountPerformExternalLoginPost - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
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
# Print help for invokeAgentSurfaceAsync operation
#
##############################################################################
print_invokeAgentSurfaceAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}invokeAgentSurfaceAsync - Run a governed agent over the AG-UI protocol${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Streams a governed agent run as AG-UI server-sent events. Feature-flagged on ABP.Cognitive.AgentSurface.Enable; returns 503 when disabled, 401 when unauthorized and 404 when the agent cannot be resolved. An optional ?projectId= binds the run to a project (resolved tenant-scoped): the project id + name are surfaced to the model as context so it can call the governed project-storage tools; it is never auto-filled into a tool's arguments." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}agentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: agentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call getAiProvidersAsync operation
#
##############################################################################
call_getAiProvidersAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/AiProviders" path_parameter_names query_parameter_names); then
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
# Call getCapabilitiesAsync operation
#
##############################################################################
call_getCapabilitiesAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId surface api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/Capabilities" path_parameter_names query_parameter_names); then
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
# Call getCapabilitiesCountAsync operation
#
##############################################################################
call_getCapabilitiesCountAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId surface api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/Capabilities/Count" path_parameter_names query_parameter_names); then
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
# Call getCapabilityByKeyAsync operation
#
##############################################################################
call_getCapabilityByKeyAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(key)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/Capabilities/{key}" path_parameter_names query_parameter_names); then
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
# Call uploadCognitiveAgentConversationAttachmentAsync operation
#
##############################################################################
call_uploadCognitiveAgentConversationAttachmentAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId conversationId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{conversationId}/Attachments" path_parameter_names query_parameter_names); then
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
# Call createCognitiveAgentConversationAsync operation
#
##############################################################################
call_createCognitiveAgentConversationAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations" path_parameter_names query_parameter_names); then
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
# Call deleteCognitiveAgentConversationAsync operation
#
##############################################################################
call_deleteCognitiveAgentConversationAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{id}" path_parameter_names query_parameter_names); then
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
# Call getCognitiveAgentConversationByIdAsync operation
#
##############################################################################
call_getCognitiveAgentConversationByIdAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{id}" path_parameter_names query_parameter_names); then
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
# Call getCognitiveAgentConversationsAsync operation
#
##############################################################################
call_getCognitiveAgentConversationsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations" path_parameter_names query_parameter_names); then
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
# Call getCognitiveAgentConversationsCountAsync operation
#
##############################################################################
call_getCognitiveAgentConversationsCountAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/Count" path_parameter_names query_parameter_names); then
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
# Call updateCognitiveAgentConversationAsync operation
#
##############################################################################
call_updateCognitiveAgentConversationAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{id}" path_parameter_names query_parameter_names); then
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
# Call getCognitiveAgentMessageByIdAsync operation
#
##############################################################################
call_getCognitiveAgentMessageByIdAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId conversationId id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{conversationId}/Messages/{id}" path_parameter_names query_parameter_names); then
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
# Call getCognitiveAgentMessagesAsync operation
#
##############################################################################
call_getCognitiveAgentMessagesAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId conversationId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{conversationId}/Messages" path_parameter_names query_parameter_names); then
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
# Call getCognitiveAgentMessagesCountAsync operation
#
##############################################################################
call_getCognitiveAgentMessagesCountAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId conversationId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Conversations/{conversationId}/Messages/Count" path_parameter_names query_parameter_names); then
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
# Call createCognitiveAgentSkillAsync operation
#
##############################################################################
call_createCognitiveAgentSkillAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Skills" path_parameter_names query_parameter_names); then
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
# Call deleteCognitiveAgentSkillAsync operation
#
##############################################################################
call_deleteCognitiveAgentSkillAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Skills/{id}" path_parameter_names query_parameter_names); then
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
# Call getCognitiveAgentSkillByIdAsync operation
#
##############################################################################
call_getCognitiveAgentSkillByIdAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Skills/{id}" path_parameter_names query_parameter_names); then
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
# Call getCognitiveAgentSkillsAsync operation
#
##############################################################################
call_getCognitiveAgentSkillsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Skills" path_parameter_names query_parameter_names); then
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
# Call getCognitiveAgentSkillsCountAsync operation
#
##############################################################################
call_getCognitiveAgentSkillsCountAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Skills/Count" path_parameter_names query_parameter_names); then
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
# Call updateCognitiveAgentSkillAsync operation
#
##############################################################################
call_updateCognitiveAgentSkillAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Skills/{id}" path_parameter_names query_parameter_names); then
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
# Call createCognitiveAgentVariableAsync operation
#
##############################################################################
call_createCognitiveAgentVariableAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Variables" path_parameter_names query_parameter_names); then
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
# Call deleteCognitiveAgentVariableAsync operation
#
##############################################################################
call_deleteCognitiveAgentVariableAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Variables/{id}" path_parameter_names query_parameter_names); then
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
# Call getCognitiveAgentVariableByIdAsync operation
#
##############################################################################
call_getCognitiveAgentVariableByIdAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Variables/{id}" path_parameter_names query_parameter_names); then
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
# Call getCognitiveAgentVariablesAsync operation
#
##############################################################################
call_getCognitiveAgentVariablesAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Variables" path_parameter_names query_parameter_names); then
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
# Call getCognitiveAgentVariablesCountAsync operation
#
##############################################################################
call_getCognitiveAgentVariablesCountAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Variables/Count" path_parameter_names query_parameter_names); then
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
# Call updateCognitiveAgentVariableAsync operation
#
##############################################################################
call_updateCognitiveAgentVariableAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{agentId}/Variables/{id}" path_parameter_names query_parameter_names); then
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
# Call createCognitiveAgentAsync operation
#
##############################################################################
call_createCognitiveAgentAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents" path_parameter_names query_parameter_names); then
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
# Call deleteCognitiveAgentAsync operation
#
##############################################################################
call_deleteCognitiveAgentAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{id}" path_parameter_names query_parameter_names); then
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
# Call getCognitiveAgentByIdAsync operation
#
##############################################################################
call_getCognitiveAgentByIdAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{id}" path_parameter_names query_parameter_names); then
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
# Call getCognitiveAgentsAsync operation
#
##############################################################################
call_getCognitiveAgentsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents" path_parameter_names query_parameter_names); then
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
# Call getCognitiveAgentsCountAsync operation
#
##############################################################################
call_getCognitiveAgentsCountAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/Count" path_parameter_names query_parameter_names); then
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
# Call updateCognitiveAgentAsync operation
#
##############################################################################
call_updateCognitiveAgentAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveAgents/{id}" path_parameter_names query_parameter_names); then
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
# Call createCognitiveSkillAsync operation
#
##############################################################################
call_createCognitiveSkillAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveSkills" path_parameter_names query_parameter_names); then
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
# Call deleteCognitiveSkillAsync operation
#
##############################################################################
call_deleteCognitiveSkillAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveSkills/{id}" path_parameter_names query_parameter_names); then
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
# Call getCognitiveSkillByIdAsync operation
#
##############################################################################
call_getCognitiveSkillByIdAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveSkills/{id}" path_parameter_names query_parameter_names); then
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
# Call getCognitiveSkillsAsync operation
#
##############################################################################
call_getCognitiveSkillsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveSkills" path_parameter_names query_parameter_names); then
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
# Call getCognitiveSkillsCountAsync operation
#
##############################################################################
call_getCognitiveSkillsCountAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveSkills/Count" path_parameter_names query_parameter_names); then
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
# Call updateCognitiveSkillAsync operation
#
##############################################################################
call_updateCognitiveSkillAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/CognitiveSkills/{id}" path_parameter_names query_parameter_names); then
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
# Call accountLogoutPost operation
#
##############################################################################
call_accountLogoutPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/Account/Logout" path_parameter_names query_parameter_names); then
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
# Call accountManageDownloadPersonalDataPost operation
#
##############################################################################
call_accountManageDownloadPersonalDataPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/Account/Manage/DownloadPersonalData" path_parameter_names query_parameter_names); then
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
# Call accountManageLinkExternalLoginPost operation
#
##############################################################################
call_accountManageLinkExternalLoginPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/Account/Manage/LinkExternalLogin" path_parameter_names query_parameter_names); then
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
# Call accountPerformExternalLoginPost operation
#
##############################################################################
call_accountPerformExternalLoginPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/Account/PerformExternalLogin" path_parameter_names query_parameter_names); then
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
# Call invokeAgentSurfaceAsync operation
#
##############################################################################
call_invokeAgentSurfaceAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(agentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/api/v2/IntelligenceService/Agents/{agentId}/agui" path_parameter_names query_parameter_names); then
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
    getAiProvidersAsync)
    operation="getAiProvidersAsync"
    ;;
    getCapabilitiesAsync)
    operation="getCapabilitiesAsync"
    ;;
    getCapabilitiesCountAsync)
    operation="getCapabilitiesCountAsync"
    ;;
    getCapabilityByKeyAsync)
    operation="getCapabilityByKeyAsync"
    ;;
    uploadCognitiveAgentConversationAttachmentAsync)
    operation="uploadCognitiveAgentConversationAttachmentAsync"
    ;;
    createCognitiveAgentConversationAsync)
    operation="createCognitiveAgentConversationAsync"
    ;;
    deleteCognitiveAgentConversationAsync)
    operation="deleteCognitiveAgentConversationAsync"
    ;;
    getCognitiveAgentConversationByIdAsync)
    operation="getCognitiveAgentConversationByIdAsync"
    ;;
    getCognitiveAgentConversationsAsync)
    operation="getCognitiveAgentConversationsAsync"
    ;;
    getCognitiveAgentConversationsCountAsync)
    operation="getCognitiveAgentConversationsCountAsync"
    ;;
    updateCognitiveAgentConversationAsync)
    operation="updateCognitiveAgentConversationAsync"
    ;;
    getCognitiveAgentMessageByIdAsync)
    operation="getCognitiveAgentMessageByIdAsync"
    ;;
    getCognitiveAgentMessagesAsync)
    operation="getCognitiveAgentMessagesAsync"
    ;;
    getCognitiveAgentMessagesCountAsync)
    operation="getCognitiveAgentMessagesCountAsync"
    ;;
    createCognitiveAgentSkillAsync)
    operation="createCognitiveAgentSkillAsync"
    ;;
    deleteCognitiveAgentSkillAsync)
    operation="deleteCognitiveAgentSkillAsync"
    ;;
    getCognitiveAgentSkillByIdAsync)
    operation="getCognitiveAgentSkillByIdAsync"
    ;;
    getCognitiveAgentSkillsAsync)
    operation="getCognitiveAgentSkillsAsync"
    ;;
    getCognitiveAgentSkillsCountAsync)
    operation="getCognitiveAgentSkillsCountAsync"
    ;;
    updateCognitiveAgentSkillAsync)
    operation="updateCognitiveAgentSkillAsync"
    ;;
    createCognitiveAgentVariableAsync)
    operation="createCognitiveAgentVariableAsync"
    ;;
    deleteCognitiveAgentVariableAsync)
    operation="deleteCognitiveAgentVariableAsync"
    ;;
    getCognitiveAgentVariableByIdAsync)
    operation="getCognitiveAgentVariableByIdAsync"
    ;;
    getCognitiveAgentVariablesAsync)
    operation="getCognitiveAgentVariablesAsync"
    ;;
    getCognitiveAgentVariablesCountAsync)
    operation="getCognitiveAgentVariablesCountAsync"
    ;;
    updateCognitiveAgentVariableAsync)
    operation="updateCognitiveAgentVariableAsync"
    ;;
    createCognitiveAgentAsync)
    operation="createCognitiveAgentAsync"
    ;;
    deleteCognitiveAgentAsync)
    operation="deleteCognitiveAgentAsync"
    ;;
    getCognitiveAgentByIdAsync)
    operation="getCognitiveAgentByIdAsync"
    ;;
    getCognitiveAgentsAsync)
    operation="getCognitiveAgentsAsync"
    ;;
    getCognitiveAgentsCountAsync)
    operation="getCognitiveAgentsCountAsync"
    ;;
    updateCognitiveAgentAsync)
    operation="updateCognitiveAgentAsync"
    ;;
    createCognitiveSkillAsync)
    operation="createCognitiveSkillAsync"
    ;;
    deleteCognitiveSkillAsync)
    operation="deleteCognitiveSkillAsync"
    ;;
    getCognitiveSkillByIdAsync)
    operation="getCognitiveSkillByIdAsync"
    ;;
    getCognitiveSkillsAsync)
    operation="getCognitiveSkillsAsync"
    ;;
    getCognitiveSkillsCountAsync)
    operation="getCognitiveSkillsCountAsync"
    ;;
    updateCognitiveSkillAsync)
    operation="updateCognitiveSkillAsync"
    ;;
    accountLogoutPost)
    operation="accountLogoutPost"
    ;;
    accountManageDownloadPersonalDataPost)
    operation="accountManageDownloadPersonalDataPost"
    ;;
    accountManageLinkExternalLoginPost)
    operation="accountManageLinkExternalLoginPost"
    ;;
    accountPerformExternalLoginPost)
    operation="accountPerformExternalLoginPost"
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
    invokeAgentSurfaceAsync)
    operation="invokeAgentSurfaceAsync"
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
    getAiProvidersAsync)
    call_getAiProvidersAsync
    ;;
    getCapabilitiesAsync)
    call_getCapabilitiesAsync
    ;;
    getCapabilitiesCountAsync)
    call_getCapabilitiesCountAsync
    ;;
    getCapabilityByKeyAsync)
    call_getCapabilityByKeyAsync
    ;;
    uploadCognitiveAgentConversationAttachmentAsync)
    call_uploadCognitiveAgentConversationAttachmentAsync
    ;;
    createCognitiveAgentConversationAsync)
    call_createCognitiveAgentConversationAsync
    ;;
    deleteCognitiveAgentConversationAsync)
    call_deleteCognitiveAgentConversationAsync
    ;;
    getCognitiveAgentConversationByIdAsync)
    call_getCognitiveAgentConversationByIdAsync
    ;;
    getCognitiveAgentConversationsAsync)
    call_getCognitiveAgentConversationsAsync
    ;;
    getCognitiveAgentConversationsCountAsync)
    call_getCognitiveAgentConversationsCountAsync
    ;;
    updateCognitiveAgentConversationAsync)
    call_updateCognitiveAgentConversationAsync
    ;;
    getCognitiveAgentMessageByIdAsync)
    call_getCognitiveAgentMessageByIdAsync
    ;;
    getCognitiveAgentMessagesAsync)
    call_getCognitiveAgentMessagesAsync
    ;;
    getCognitiveAgentMessagesCountAsync)
    call_getCognitiveAgentMessagesCountAsync
    ;;
    createCognitiveAgentSkillAsync)
    call_createCognitiveAgentSkillAsync
    ;;
    deleteCognitiveAgentSkillAsync)
    call_deleteCognitiveAgentSkillAsync
    ;;
    getCognitiveAgentSkillByIdAsync)
    call_getCognitiveAgentSkillByIdAsync
    ;;
    getCognitiveAgentSkillsAsync)
    call_getCognitiveAgentSkillsAsync
    ;;
    getCognitiveAgentSkillsCountAsync)
    call_getCognitiveAgentSkillsCountAsync
    ;;
    updateCognitiveAgentSkillAsync)
    call_updateCognitiveAgentSkillAsync
    ;;
    createCognitiveAgentVariableAsync)
    call_createCognitiveAgentVariableAsync
    ;;
    deleteCognitiveAgentVariableAsync)
    call_deleteCognitiveAgentVariableAsync
    ;;
    getCognitiveAgentVariableByIdAsync)
    call_getCognitiveAgentVariableByIdAsync
    ;;
    getCognitiveAgentVariablesAsync)
    call_getCognitiveAgentVariablesAsync
    ;;
    getCognitiveAgentVariablesCountAsync)
    call_getCognitiveAgentVariablesCountAsync
    ;;
    updateCognitiveAgentVariableAsync)
    call_updateCognitiveAgentVariableAsync
    ;;
    createCognitiveAgentAsync)
    call_createCognitiveAgentAsync
    ;;
    deleteCognitiveAgentAsync)
    call_deleteCognitiveAgentAsync
    ;;
    getCognitiveAgentByIdAsync)
    call_getCognitiveAgentByIdAsync
    ;;
    getCognitiveAgentsAsync)
    call_getCognitiveAgentsAsync
    ;;
    getCognitiveAgentsCountAsync)
    call_getCognitiveAgentsCountAsync
    ;;
    updateCognitiveAgentAsync)
    call_updateCognitiveAgentAsync
    ;;
    createCognitiveSkillAsync)
    call_createCognitiveSkillAsync
    ;;
    deleteCognitiveSkillAsync)
    call_deleteCognitiveSkillAsync
    ;;
    getCognitiveSkillByIdAsync)
    call_getCognitiveSkillByIdAsync
    ;;
    getCognitiveSkillsAsync)
    call_getCognitiveSkillsAsync
    ;;
    getCognitiveSkillsCountAsync)
    call_getCognitiveSkillsCountAsync
    ;;
    updateCognitiveSkillAsync)
    call_updateCognitiveSkillAsync
    ;;
    accountLogoutPost)
    call_accountLogoutPost
    ;;
    accountManageDownloadPersonalDataPost)
    call_accountManageDownloadPersonalDataPost
    ;;
    accountManageLinkExternalLoginPost)
    call_accountManageLinkExternalLoginPost
    ;;
    accountPerformExternalLoginPost)
    call_accountPerformExternalLoginPost
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
    invokeAgentSurfaceAsync)
    call_invokeAgentSurfaceAsync
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
