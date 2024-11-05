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
# This is a Bash client for ProjectsService.
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
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsPost:::ProjectCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdDelete:::projectId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdGet:::projectId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsGet:::projectId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsGet:::ProjectPeriodCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete:::projectId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete:::projectPeriodId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut:::projectId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut:::projectPeriodId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut:::ProjectPeriodUpdateDto"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPut:::projectId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdPut:::ProjectUpdateDto"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet:::projectId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet:::projectId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksCountGet:::projectId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksGet:::projectId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksPost:::projectId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksPost:::ProjectTaskCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete:::projectId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete:::projectTaskId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut:::projectId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut:::projectTaskId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut:::ProjectTaskUpdateDto"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet:::projectId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTimeLogsGet:::projectId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTimeLogsGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTimeLogsGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceProjectsProjectIdTimeLogsGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesPost:::TaskCategoryCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete:::taskCategoryId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet:::taskCategoryId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut:::taskCategoryId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut:::TaskCategoryUpdateDto"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet:::taskCategoryId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskTypesPost:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskTypesPost:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskTypesPost:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskTypesPost:::TaskTypeCreateDto"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdDelete:::taskTypeId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdDelete:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdDelete:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdDelete:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdGet:::taskTypeId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdGet:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdGet:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdGet:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdPut:::taskTypeId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdPut:::tenantId"]=1
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdPut:::api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdPut:::x-api-version"]=0
operation_parameters_minimum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdPut:::TaskTypeUpdateDto"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsPost:::ProjectCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdDelete:::projectId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdGet:::projectId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsGet:::projectId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsGet:::ProjectPeriodCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete:::projectId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete:::projectPeriodId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut:::projectId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut:::projectPeriodId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut:::ProjectPeriodUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPut:::projectId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdPut:::ProjectUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet:::projectId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet:::projectId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksCountGet:::projectId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksGet:::projectId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksPost:::projectId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksPost:::ProjectTaskCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete:::projectId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete:::projectTaskId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut:::projectId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut:::projectTaskId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut:::ProjectTaskUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet:::projectId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTimeLogsGet:::projectId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTimeLogsGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTimeLogsGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceProjectsProjectIdTimeLogsGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesPost:::TaskCategoryCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete:::taskCategoryId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet:::taskCategoryId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut:::taskCategoryId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut:::TaskCategoryUpdateDto"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet:::taskCategoryId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskTypesPost:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskTypesPost:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskTypesPost:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskTypesPost:::TaskTypeCreateDto"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdDelete:::taskTypeId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdDelete:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdDelete:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdDelete:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdGet:::taskTypeId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdGet:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdGet:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdGet:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdPut:::taskTypeId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdPut:::tenantId"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdPut:::api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdPut:::x-api-version"]=0
operation_parameters_maximum_occurrences["apiV2ProjectsServiceTaskTypesTaskTypeIdPut:::TaskTypeUpdateDto"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["apiV2ProjectsServiceProjectsCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsGet:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsPost:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsPost:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsPost:::ProjectCreateDto"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdDelete:::projectId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdGet:::projectId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPeriodsGet:::projectId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPeriodsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPeriodsGet:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPeriodsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPeriodsGet:::ProjectPeriodCreateDto"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete:::projectId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete:::projectPeriodId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut:::projectId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut:::projectPeriodId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut:::ProjectPeriodUpdateDto"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPut:::projectId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdPut:::ProjectUpdateDto"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet:::projectId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet:::projectId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksCountGet:::projectId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksGet:::projectId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksGet:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksGet:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksPost:::projectId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksPost:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksPost:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksPost:::ProjectTaskCreateDto"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete:::projectId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete:::projectTaskId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut:::projectId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut:::projectTaskId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut:::ProjectTaskUpdateDto"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet:::projectId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTimeLogsGet:::projectId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTimeLogsGet:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTimeLogsGet:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceProjectsProjectIdTimeLogsGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesGet:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesGet:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesPost:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesPost:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesPost:::TaskCategoryCreateDto"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete:::taskCategoryId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet:::taskCategoryId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut:::taskCategoryId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut:::TaskCategoryUpdateDto"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet:::taskCategoryId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskTypesPost:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskTypesPost:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskTypesPost:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskTypesPost:::TaskTypeCreateDto"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskTypesTaskTypeIdDelete:::taskTypeId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskTypesTaskTypeIdDelete:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskTypesTaskTypeIdDelete:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskTypesTaskTypeIdDelete:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskTypesTaskTypeIdGet:::taskTypeId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskTypesTaskTypeIdGet:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskTypesTaskTypeIdGet:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskTypesTaskTypeIdGet:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskTypesTaskTypeIdPut:::taskTypeId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskTypesTaskTypeIdPut:::tenantId"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskTypesTaskTypeIdPut:::api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskTypesTaskTypeIdPut:::x-api-version"]=""
operation_parameters_collection_type["apiV2ProjectsServiceTaskTypesTaskTypeIdPut:::TaskTypeUpdateDto"]=""


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

${BOLD}${WHITE}ProjectsService command line client (API version 2.0.1.4089)${OFF}

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
    echo -e "${BOLD}${WHITE}[projects]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2ProjectsServiceProjectsCountGet${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceProjectsGet${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceProjectsPost${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceProjectsProjectIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceProjectsProjectIdGet${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceProjectsProjectIdPeriodsGet${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceProjectsProjectIdPut${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceProjectsProjectIdTasksCountGet${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceProjectsProjectIdTasksGet${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceProjectsProjectIdTasksPost${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceProjectsProjectIdTimeLogsGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[taskCategories]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2ProjectsServiceTaskCategoriesGet${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceTaskCategoriesPost${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet${OFF}; (AUTH)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[taskTypes]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}apiV2ProjectsServiceTaskTypesPost${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceTaskTypesTaskTypeIdDelete${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceTaskTypesTaskTypeIdGet${OFF}; (AUTH)
  ${CYAN}apiV2ProjectsServiceTaskTypesTaskTypeIdPut${OFF}; (AUTH)
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
    echo -e "${BOLD}${WHITE}ProjectsService command line client (API version 2.0.1.4089)${OFF}"
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
    echo -e "${BOLD}ProjectsService command line client (API version 2.0.1.4089)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for apiV2ProjectsServiceProjectsCountGet operation
#
##############################################################################
print_apiV2ProjectsServiceProjectsCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceProjectsCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceProjectsGet operation
#
##############################################################################
print_apiV2ProjectsServiceProjectsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceProjectsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceProjectsPost operation
#
##############################################################################
print_apiV2ProjectsServiceProjectsPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceProjectsPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceProjectsProjectIdDelete operation
#
##############################################################################
print_apiV2ProjectsServiceProjectsProjectIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceProjectsProjectIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}projectId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: projectId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceProjectsProjectIdGet operation
#
##############################################################################
print_apiV2ProjectsServiceProjectsProjectIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceProjectsProjectIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}projectId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: projectId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceProjectsProjectIdPeriodsGet operation
#
##############################################################################
print_apiV2ProjectsServiceProjectsProjectIdPeriodsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceProjectsProjectIdPeriodsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}projectId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: projectId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete operation
#
##############################################################################
print_apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}projectId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: projectId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}projectPeriodId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: projectPeriodId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut operation
#
##############################################################################
print_apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}projectId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: projectId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}projectPeriodId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: projectPeriodId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceProjectsProjectIdPut operation
#
##############################################################################
print_apiV2ProjectsServiceProjectsProjectIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceProjectsProjectIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}projectId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: projectId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet operation
#
##############################################################################
print_apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}projectId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: projectId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet operation
#
##############################################################################
print_apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}projectId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: projectId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceProjectsProjectIdTasksCountGet operation
#
##############################################################################
print_apiV2ProjectsServiceProjectsProjectIdTasksCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceProjectsProjectIdTasksCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}projectId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: projectId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceProjectsProjectIdTasksGet operation
#
##############################################################################
print_apiV2ProjectsServiceProjectsProjectIdTasksGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceProjectsProjectIdTasksGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}projectId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: projectId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceProjectsProjectIdTasksPost operation
#
##############################################################################
print_apiV2ProjectsServiceProjectsProjectIdTasksPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceProjectsProjectIdTasksPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}projectId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: projectId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete operation
#
##############################################################################
print_apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}projectId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: projectId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}projectTaskId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: projectTaskId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut operation
#
##############################################################################
print_apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}projectId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: projectId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}projectTaskId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: projectTaskId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet operation
#
##############################################################################
print_apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}projectId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: projectId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceProjectsProjectIdTimeLogsGet operation
#
##############################################################################
print_apiV2ProjectsServiceProjectsProjectIdTimeLogsGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceProjectsProjectIdTimeLogsGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}projectId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: projectId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceTaskCategoriesGet operation
#
##############################################################################
print_apiV2ProjectsServiceTaskCategoriesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceTaskCategoriesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceTaskCategoriesPost operation
#
##############################################################################
print_apiV2ProjectsServiceTaskCategoriesPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceTaskCategoriesPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete operation
#
##############################################################################
print_apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}taskCategoryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: taskCategoryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet operation
#
##############################################################################
print_apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}taskCategoryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: taskCategoryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut operation
#
##############################################################################
print_apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}taskCategoryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: taskCategoryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet operation
#
##############################################################################
print_apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}taskCategoryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: taskCategoryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceTaskTypesPost operation
#
##############################################################################
print_apiV2ProjectsServiceTaskTypesPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceTaskTypesPost - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceTaskTypesTaskTypeIdDelete operation
#
##############################################################################
print_apiV2ProjectsServiceTaskTypesTaskTypeIdDelete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceTaskTypesTaskTypeIdDelete - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}taskTypeId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: taskTypeId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceTaskTypesTaskTypeIdGet operation
#
##############################################################################
print_apiV2ProjectsServiceTaskTypesTaskTypeIdGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceTaskTypesTaskTypeIdGet - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}taskTypeId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: taskTypeId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for apiV2ProjectsServiceTaskTypesTaskTypeIdPut operation
#
##############################################################################
print_apiV2ProjectsServiceTaskTypesTaskTypeIdPut_help() {
    echo ""
    echo -e "${BOLD}${WHITE}apiV2ProjectsServiceTaskTypesTaskTypeIdPut - ${OFF}${BLUE}(AUTH - HEADER)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}taskTypeId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: taskTypeId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Call apiV2ProjectsServiceProjectsCountGet operation
#
##############################################################################
call_apiV2ProjectsServiceProjectsCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/Projects/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceProjectsGet operation
#
##############################################################################
call_apiV2ProjectsServiceProjectsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/Projects" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceProjectsPost operation
#
##############################################################################
call_apiV2ProjectsServiceProjectsPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/Projects" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceProjectsProjectIdDelete operation
#
##############################################################################
call_apiV2ProjectsServiceProjectsProjectIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(projectId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/Projects/{projectId}" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceProjectsProjectIdGet operation
#
##############################################################################
call_apiV2ProjectsServiceProjectsProjectIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(projectId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/Projects/{projectId}" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceProjectsProjectIdPeriodsGet operation
#
##############################################################################
call_apiV2ProjectsServiceProjectsProjectIdPeriodsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(projectId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/Projects/{projectId}/Periods" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete operation
#
##############################################################################
call_apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(projectId projectPeriodId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/Projects/{projectId}/Periods/{projectPeriodId}" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut operation
#
##############################################################################
call_apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(projectId projectPeriodId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/Projects/{projectId}/Periods/{projectPeriodId}" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceProjectsProjectIdPut operation
#
##############################################################################
call_apiV2ProjectsServiceProjectsProjectIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(projectId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/Projects/{projectId}" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet operation
#
##############################################################################
call_apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(projectId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/Projects/{projectId}/TaskCategories/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet operation
#
##############################################################################
call_apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(projectId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/Projects/{projectId}/TaskCategories" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceProjectsProjectIdTasksCountGet operation
#
##############################################################################
call_apiV2ProjectsServiceProjectsProjectIdTasksCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(projectId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/Projects/{projectId}/Tasks/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceProjectsProjectIdTasksGet operation
#
##############################################################################
call_apiV2ProjectsServiceProjectsProjectIdTasksGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(projectId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/Projects/{projectId}/Tasks" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceProjectsProjectIdTasksPost operation
#
##############################################################################
call_apiV2ProjectsServiceProjectsProjectIdTasksPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(projectId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/Projects/{projectId}/Tasks" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete operation
#
##############################################################################
call_apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(projectId projectTaskId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/Projects/{projectId}/Tasks/{projectTaskId}" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut operation
#
##############################################################################
call_apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(projectId projectTaskId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/Projects/{projectId}/Tasks/{projectTaskId}" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet operation
#
##############################################################################
call_apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(projectId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/Projects/{projectId}/TimeLogs/Count" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceProjectsProjectIdTimeLogsGet operation
#
##############################################################################
call_apiV2ProjectsServiceProjectsProjectIdTimeLogsGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(projectId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/Projects/{projectId}/TimeLogs" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceTaskCategoriesGet operation
#
##############################################################################
call_apiV2ProjectsServiceTaskCategoriesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/TaskCategories" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceTaskCategoriesPost operation
#
##############################################################################
call_apiV2ProjectsServiceTaskCategoriesPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/TaskCategories" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete operation
#
##############################################################################
call_apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(taskCategoryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/TaskCategories/{taskCategoryId}" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet operation
#
##############################################################################
call_apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(taskCategoryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/TaskCategories/{taskCategoryId}" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut operation
#
##############################################################################
call_apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(taskCategoryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/TaskCategories/{taskCategoryId}" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet operation
#
##############################################################################
call_apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(taskCategoryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/TaskCategories/{taskCategoryId}/Types" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceTaskTypesPost operation
#
##############################################################################
call_apiV2ProjectsServiceTaskTypesPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/TaskTypes" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceTaskTypesTaskTypeIdDelete operation
#
##############################################################################
call_apiV2ProjectsServiceTaskTypesTaskTypeIdDelete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(taskTypeId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/TaskTypes/{taskTypeId}" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceTaskTypesTaskTypeIdGet operation
#
##############################################################################
call_apiV2ProjectsServiceTaskTypesTaskTypeIdGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(taskTypeId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/TaskTypes/{taskTypeId}" path_parameter_names query_parameter_names); then
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
# Call apiV2ProjectsServiceTaskTypesTaskTypeIdPut operation
#
##############################################################################
call_apiV2ProjectsServiceTaskTypesTaskTypeIdPut() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(taskTypeId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version  )
    local path

    if ! path=$(build_request_path "/api/v2/ProjectsService/TaskTypes/{taskTypeId}" path_parameter_names query_parameter_names); then
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
    apiV2ProjectsServiceProjectsCountGet)
    operation="apiV2ProjectsServiceProjectsCountGet"
    ;;
    apiV2ProjectsServiceProjectsGet)
    operation="apiV2ProjectsServiceProjectsGet"
    ;;
    apiV2ProjectsServiceProjectsPost)
    operation="apiV2ProjectsServiceProjectsPost"
    ;;
    apiV2ProjectsServiceProjectsProjectIdDelete)
    operation="apiV2ProjectsServiceProjectsProjectIdDelete"
    ;;
    apiV2ProjectsServiceProjectsProjectIdGet)
    operation="apiV2ProjectsServiceProjectsProjectIdGet"
    ;;
    apiV2ProjectsServiceProjectsProjectIdPeriodsGet)
    operation="apiV2ProjectsServiceProjectsProjectIdPeriodsGet"
    ;;
    apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete)
    operation="apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete"
    ;;
    apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut)
    operation="apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut"
    ;;
    apiV2ProjectsServiceProjectsProjectIdPut)
    operation="apiV2ProjectsServiceProjectsProjectIdPut"
    ;;
    apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet)
    operation="apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet"
    ;;
    apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet)
    operation="apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet"
    ;;
    apiV2ProjectsServiceProjectsProjectIdTasksCountGet)
    operation="apiV2ProjectsServiceProjectsProjectIdTasksCountGet"
    ;;
    apiV2ProjectsServiceProjectsProjectIdTasksGet)
    operation="apiV2ProjectsServiceProjectsProjectIdTasksGet"
    ;;
    apiV2ProjectsServiceProjectsProjectIdTasksPost)
    operation="apiV2ProjectsServiceProjectsProjectIdTasksPost"
    ;;
    apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete)
    operation="apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete"
    ;;
    apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut)
    operation="apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut"
    ;;
    apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet)
    operation="apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet"
    ;;
    apiV2ProjectsServiceProjectsProjectIdTimeLogsGet)
    operation="apiV2ProjectsServiceProjectsProjectIdTimeLogsGet"
    ;;
    apiV2ProjectsServiceTaskCategoriesGet)
    operation="apiV2ProjectsServiceTaskCategoriesGet"
    ;;
    apiV2ProjectsServiceTaskCategoriesPost)
    operation="apiV2ProjectsServiceTaskCategoriesPost"
    ;;
    apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete)
    operation="apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete"
    ;;
    apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet)
    operation="apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet"
    ;;
    apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut)
    operation="apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut"
    ;;
    apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet)
    operation="apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet"
    ;;
    apiV2ProjectsServiceTaskTypesPost)
    operation="apiV2ProjectsServiceTaskTypesPost"
    ;;
    apiV2ProjectsServiceTaskTypesTaskTypeIdDelete)
    operation="apiV2ProjectsServiceTaskTypesTaskTypeIdDelete"
    ;;
    apiV2ProjectsServiceTaskTypesTaskTypeIdGet)
    operation="apiV2ProjectsServiceTaskTypesTaskTypeIdGet"
    ;;
    apiV2ProjectsServiceTaskTypesTaskTypeIdPut)
    operation="apiV2ProjectsServiceTaskTypesTaskTypeIdPut"
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
    apiV2ProjectsServiceProjectsCountGet)
    call_apiV2ProjectsServiceProjectsCountGet
    ;;
    apiV2ProjectsServiceProjectsGet)
    call_apiV2ProjectsServiceProjectsGet
    ;;
    apiV2ProjectsServiceProjectsPost)
    call_apiV2ProjectsServiceProjectsPost
    ;;
    apiV2ProjectsServiceProjectsProjectIdDelete)
    call_apiV2ProjectsServiceProjectsProjectIdDelete
    ;;
    apiV2ProjectsServiceProjectsProjectIdGet)
    call_apiV2ProjectsServiceProjectsProjectIdGet
    ;;
    apiV2ProjectsServiceProjectsProjectIdPeriodsGet)
    call_apiV2ProjectsServiceProjectsProjectIdPeriodsGet
    ;;
    apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete)
    call_apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete
    ;;
    apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut)
    call_apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut
    ;;
    apiV2ProjectsServiceProjectsProjectIdPut)
    call_apiV2ProjectsServiceProjectsProjectIdPut
    ;;
    apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet)
    call_apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet
    ;;
    apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet)
    call_apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet
    ;;
    apiV2ProjectsServiceProjectsProjectIdTasksCountGet)
    call_apiV2ProjectsServiceProjectsProjectIdTasksCountGet
    ;;
    apiV2ProjectsServiceProjectsProjectIdTasksGet)
    call_apiV2ProjectsServiceProjectsProjectIdTasksGet
    ;;
    apiV2ProjectsServiceProjectsProjectIdTasksPost)
    call_apiV2ProjectsServiceProjectsProjectIdTasksPost
    ;;
    apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete)
    call_apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete
    ;;
    apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut)
    call_apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut
    ;;
    apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet)
    call_apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet
    ;;
    apiV2ProjectsServiceProjectsProjectIdTimeLogsGet)
    call_apiV2ProjectsServiceProjectsProjectIdTimeLogsGet
    ;;
    apiV2ProjectsServiceTaskCategoriesGet)
    call_apiV2ProjectsServiceTaskCategoriesGet
    ;;
    apiV2ProjectsServiceTaskCategoriesPost)
    call_apiV2ProjectsServiceTaskCategoriesPost
    ;;
    apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete)
    call_apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete
    ;;
    apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet)
    call_apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet
    ;;
    apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut)
    call_apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut
    ;;
    apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet)
    call_apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet
    ;;
    apiV2ProjectsServiceTaskTypesPost)
    call_apiV2ProjectsServiceTaskTypesPost
    ;;
    apiV2ProjectsServiceTaskTypesTaskTypeIdDelete)
    call_apiV2ProjectsServiceTaskTypesTaskTypeIdDelete
    ;;
    apiV2ProjectsServiceTaskTypesTaskTypeIdGet)
    call_apiV2ProjectsServiceTaskTypesTaskTypeIdGet
    ;;
    apiV2ProjectsServiceTaskTypesTaskTypeIdPut)
    call_apiV2ProjectsServiceTaskTypesTaskTypeIdPut
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
