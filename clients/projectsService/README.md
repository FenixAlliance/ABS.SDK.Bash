# ProjectsService Bash client

## Overview

This is a Bash client script for accessing ProjectsService service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x 

# Print the list of operations available on the service
$ ./ -h

# Print the service description
$ ./ --about

# Print detailed information about specific operation
$ ./ <operationId> -h

# Make GET request
./ --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
 -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
$  --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
$  --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image

You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash

The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source .bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp .bash-completion /etc/bash-completion.d/
```

#### OS X

On OSX you might need to install bash-completion using Homebrew:

```shell
brew install bash-completion
```

and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh

In Zsh, the generated `_` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to **

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ProjectsApi* | [**apiV2ProjectsServiceProjectsCountGet**](docs/ProjectsApi.md#apiv2projectsserviceprojectscountget) | **GET** /api/v2/ProjectsService/Projects/Count | 
*ProjectsApi* | [**apiV2ProjectsServiceProjectsGet**](docs/ProjectsApi.md#apiv2projectsserviceprojectsget) | **GET** /api/v2/ProjectsService/Projects | 
*ProjectsApi* | [**apiV2ProjectsServiceProjectsPost**](docs/ProjectsApi.md#apiv2projectsserviceprojectspost) | **POST** /api/v2/ProjectsService/Projects | 
*ProjectsApi* | [**apiV2ProjectsServiceProjectsProjectIdDelete**](docs/ProjectsApi.md#apiv2projectsserviceprojectsprojectiddelete) | **DELETE** /api/v2/ProjectsService/Projects/{projectId} | 
*ProjectsApi* | [**apiV2ProjectsServiceProjectsProjectIdGet**](docs/ProjectsApi.md#apiv2projectsserviceprojectsprojectidget) | **GET** /api/v2/ProjectsService/Projects/{projectId} | 
*ProjectsApi* | [**apiV2ProjectsServiceProjectsProjectIdPeriodsGet**](docs/ProjectsApi.md#apiv2projectsserviceprojectsprojectidperiodsget) | **GET** /api/v2/ProjectsService/Projects/{projectId}/Periods | 
*ProjectsApi* | [**apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdDelete**](docs/ProjectsApi.md#apiv2projectsserviceprojectsprojectidperiodsprojectperiodiddelete) | **DELETE** /api/v2/ProjectsService/Projects/{projectId}/Periods/{projectPeriodId} | 
*ProjectsApi* | [**apiV2ProjectsServiceProjectsProjectIdPeriodsProjectPeriodIdPut**](docs/ProjectsApi.md#apiv2projectsserviceprojectsprojectidperiodsprojectperiodidput) | **PUT** /api/v2/ProjectsService/Projects/{projectId}/Periods/{projectPeriodId} | 
*ProjectsApi* | [**apiV2ProjectsServiceProjectsProjectIdPut**](docs/ProjectsApi.md#apiv2projectsserviceprojectsprojectidput) | **PUT** /api/v2/ProjectsService/Projects/{projectId} | 
*ProjectsApi* | [**apiV2ProjectsServiceProjectsProjectIdTaskCategoriesCountGet**](docs/ProjectsApi.md#apiv2projectsserviceprojectsprojectidtaskcategoriescountget) | **GET** /api/v2/ProjectsService/Projects/{projectId}/TaskCategories/Count | 
*ProjectsApi* | [**apiV2ProjectsServiceProjectsProjectIdTaskCategoriesGet**](docs/ProjectsApi.md#apiv2projectsserviceprojectsprojectidtaskcategoriesget) | **GET** /api/v2/ProjectsService/Projects/{projectId}/TaskCategories | 
*ProjectsApi* | [**apiV2ProjectsServiceProjectsProjectIdTasksCountGet**](docs/ProjectsApi.md#apiv2projectsserviceprojectsprojectidtaskscountget) | **GET** /api/v2/ProjectsService/Projects/{projectId}/Tasks/Count | 
*ProjectsApi* | [**apiV2ProjectsServiceProjectsProjectIdTasksGet**](docs/ProjectsApi.md#apiv2projectsserviceprojectsprojectidtasksget) | **GET** /api/v2/ProjectsService/Projects/{projectId}/Tasks | 
*ProjectsApi* | [**apiV2ProjectsServiceProjectsProjectIdTasksPost**](docs/ProjectsApi.md#apiv2projectsserviceprojectsprojectidtaskspost) | **POST** /api/v2/ProjectsService/Projects/{projectId}/Tasks | 
*ProjectsApi* | [**apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdDelete**](docs/ProjectsApi.md#apiv2projectsserviceprojectsprojectidtasksprojecttaskiddelete) | **DELETE** /api/v2/ProjectsService/Projects/{projectId}/Tasks/{projectTaskId} | 
*ProjectsApi* | [**apiV2ProjectsServiceProjectsProjectIdTasksProjectTaskIdPut**](docs/ProjectsApi.md#apiv2projectsserviceprojectsprojectidtasksprojecttaskidput) | **PUT** /api/v2/ProjectsService/Projects/{projectId}/Tasks/{projectTaskId} | 
*ProjectsApi* | [**apiV2ProjectsServiceProjectsProjectIdTimeLogsCountGet**](docs/ProjectsApi.md#apiv2projectsserviceprojectsprojectidtimelogscountget) | **GET** /api/v2/ProjectsService/Projects/{projectId}/TimeLogs/Count | 
*ProjectsApi* | [**apiV2ProjectsServiceProjectsProjectIdTimeLogsGet**](docs/ProjectsApi.md#apiv2projectsserviceprojectsprojectidtimelogsget) | **GET** /api/v2/ProjectsService/Projects/{projectId}/TimeLogs | 
*TaskCategoriesApi* | [**apiV2ProjectsServiceTaskCategoriesGet**](docs/TaskCategoriesApi.md#apiv2projectsservicetaskcategoriesget) | **GET** /api/v2/ProjectsService/TaskCategories | 
*TaskCategoriesApi* | [**apiV2ProjectsServiceTaskCategoriesPost**](docs/TaskCategoriesApi.md#apiv2projectsservicetaskcategoriespost) | **POST** /api/v2/ProjectsService/TaskCategories | 
*TaskCategoriesApi* | [**apiV2ProjectsServiceTaskCategoriesTaskCategoryIdDelete**](docs/TaskCategoriesApi.md#apiv2projectsservicetaskcategoriestaskcategoryiddelete) | **DELETE** /api/v2/ProjectsService/TaskCategories/{taskCategoryId} | 
*TaskCategoriesApi* | [**apiV2ProjectsServiceTaskCategoriesTaskCategoryIdGet**](docs/TaskCategoriesApi.md#apiv2projectsservicetaskcategoriestaskcategoryidget) | **GET** /api/v2/ProjectsService/TaskCategories/{taskCategoryId} | 
*TaskCategoriesApi* | [**apiV2ProjectsServiceTaskCategoriesTaskCategoryIdPut**](docs/TaskCategoriesApi.md#apiv2projectsservicetaskcategoriestaskcategoryidput) | **PUT** /api/v2/ProjectsService/TaskCategories/{taskCategoryId} | 
*TaskCategoriesApi* | [**apiV2ProjectsServiceTaskCategoriesTaskCategoryIdTypesGet**](docs/TaskCategoriesApi.md#apiv2projectsservicetaskcategoriestaskcategoryidtypesget) | **GET** /api/v2/ProjectsService/TaskCategories/{taskCategoryId}/Types | 
*TaskTypesApi* | [**apiV2ProjectsServiceTaskTypesPost**](docs/TaskTypesApi.md#apiv2projectsservicetasktypespost) | **POST** /api/v2/ProjectsService/TaskTypes | 
*TaskTypesApi* | [**apiV2ProjectsServiceTaskTypesTaskTypeIdDelete**](docs/TaskTypesApi.md#apiv2projectsservicetasktypestasktypeiddelete) | **DELETE** /api/v2/ProjectsService/TaskTypes/{taskTypeId} | 
*TaskTypesApi* | [**apiV2ProjectsServiceTaskTypesTaskTypeIdGet**](docs/TaskTypesApi.md#apiv2projectsservicetasktypestasktypeidget) | **GET** /api/v2/ProjectsService/TaskTypes/{taskTypeId} | 
*TaskTypesApi* | [**apiV2ProjectsServiceTaskTypesTaskTypeIdPut**](docs/TaskTypesApi.md#apiv2projectsservicetasktypestasktypeidput) | **PUT** /api/v2/ProjectsService/TaskTypes/{taskTypeId} | 


## Documentation For Models

 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [ProjectCreateDto](docs/ProjectCreateDto.md)
 - [ProjectDto](docs/ProjectDto.md)
 - [ProjectDtoEnvelope](docs/ProjectDtoEnvelope.md)
 - [ProjectDtoListEnvelope](docs/ProjectDtoListEnvelope.md)
 - [ProjectPeriodCreateDto](docs/ProjectPeriodCreateDto.md)
 - [ProjectPeriodUpdateDto](docs/ProjectPeriodUpdateDto.md)
 - [ProjectTaskCreateDto](docs/ProjectTaskCreateDto.md)
 - [ProjectTaskDto](docs/ProjectTaskDto.md)
 - [ProjectTaskDtoListEnvelope](docs/ProjectTaskDtoListEnvelope.md)
 - [ProjectTaskUpdateDto](docs/ProjectTaskUpdateDto.md)
 - [ProjectTimeLogDto](docs/ProjectTimeLogDto.md)
 - [ProjectTimeLogDtoListEnvelope](docs/ProjectTimeLogDtoListEnvelope.md)
 - [ProjectUpdateDto](docs/ProjectUpdateDto.md)
 - [TaskCategoryCreateDto](docs/TaskCategoryCreateDto.md)
 - [TaskCategoryDto](docs/TaskCategoryDto.md)
 - [TaskCategoryDtoListEnvelope](docs/TaskCategoryDtoListEnvelope.md)
 - [TaskCategoryUpdateDto](docs/TaskCategoryUpdateDto.md)
 - [TaskTypeCreateDto](docs/TaskTypeCreateDto.md)
 - [TaskTypeDto](docs/TaskTypeDto.md)
 - [TaskTypeUpdateDto](docs/TaskTypeUpdateDto.md)


## Documentation For Authorization


## Bearer


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

