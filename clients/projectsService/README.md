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
*FenixAllianceABSWebApi* | [**accountLogoutPost**](docs/FenixAllianceABSWebApi.md#accountlogoutpost) | **POST** /Account/Logout | 
*FenixAllianceABSWebApi* | [**accountManageDownloadPersonalDataPost**](docs/FenixAllianceABSWebApi.md#accountmanagedownloadpersonaldatapost) | **POST** /Account/Manage/DownloadPersonalData | 
*FenixAllianceABSWebApi* | [**accountManageLinkExternalLoginPost**](docs/FenixAllianceABSWebApi.md#accountmanagelinkexternalloginpost) | **POST** /Account/Manage/LinkExternalLogin | 
*FenixAllianceABSWebApi* | [**accountPerformExternalLoginPost**](docs/FenixAllianceABSWebApi.md#accountperformexternalloginpost) | **POST** /Account/PerformExternalLogin | 
*FenixAllianceABSWebApi* | [**forgotPasswordPost**](docs/FenixAllianceABSWebApi.md#forgotpasswordpost) | **POST** /forgotPassword | 
*FenixAllianceABSWebApi* | [**healthGet**](docs/FenixAllianceABSWebApi.md#healthget) | **GET** /health | 
*FenixAllianceABSWebApi* | [**helloGet**](docs/FenixAllianceABSWebApi.md#helloget) | **GET** /hello | 
*FenixAllianceABSWebApi* | [**loginPost**](docs/FenixAllianceABSWebApi.md#loginpost) | **POST** /login | 
*FenixAllianceABSWebApi* | [**manage2faPost**](docs/FenixAllianceABSWebApi.md#manage2fapost) | **POST** /manage/2fa | 
*FenixAllianceABSWebApi* | [**manageInfoGet**](docs/FenixAllianceABSWebApi.md#manageinfoget) | **GET** /manage/info | 
*FenixAllianceABSWebApi* | [**manageInfoPost**](docs/FenixAllianceABSWebApi.md#manageinfopost) | **POST** /manage/info | 
*FenixAllianceABSWebApi* | [**mapIdentityApiConfirmEmail**](docs/FenixAllianceABSWebApi.md#mapidentityapiconfirmemail) | **GET** /confirmEmail | 
*FenixAllianceABSWebApi* | [**refreshPost**](docs/FenixAllianceABSWebApi.md#refreshpost) | **POST** /refresh | 
*FenixAllianceABSWebApi* | [**registerPost**](docs/FenixAllianceABSWebApi.md#registerpost) | **POST** /register | 
*FenixAllianceABSWebApi* | [**resendConfirmationEmailPost**](docs/FenixAllianceABSWebApi.md#resendconfirmationemailpost) | **POST** /resendConfirmationEmail | 
*FenixAllianceABSWebApi* | [**resetPasswordPost**](docs/FenixAllianceABSWebApi.md#resetpasswordpost) | **POST** /resetPassword | 
*FenixAllianceABSWebApi* | [**versionGet**](docs/FenixAllianceABSWebApi.md#versionget) | **GET** /version | 
*ProjectsApi* | [**createProjectAsync**](docs/ProjectsApi.md#createprojectasync) | **POST** /api/v2/ProjectsService/Projects | Creates a new project
*ProjectsApi* | [**createProjectPeriodAsync**](docs/ProjectsApi.md#createprojectperiodasync) | **POST** /api/v2/ProjectsService/Projects/{projectId}/Periods | Creates a project period
*ProjectsApi* | [**createProjectTaskAsync**](docs/ProjectsApi.md#createprojecttaskasync) | **POST** /api/v2/ProjectsService/Projects/{projectId}/Tasks | Creates a project task
*ProjectsApi* | [**deleteProjectAsync**](docs/ProjectsApi.md#deleteprojectasync) | **DELETE** /api/v2/ProjectsService/Projects/{projectId} | Deletes a project
*ProjectsApi* | [**deleteProjectPeriodAsync**](docs/ProjectsApi.md#deleteprojectperiodasync) | **DELETE** /api/v2/ProjectsService/Projects/{projectId}/Periods/{projectPeriodId} | Deletes a project period
*ProjectsApi* | [**deleteProjectTaskAsync**](docs/ProjectsApi.md#deleteprojecttaskasync) | **DELETE** /api/v2/ProjectsService/Projects/{projectId}/Tasks/{projectTaskId} | Deletes a project task
*ProjectsApi* | [**getProjectByIdAsync**](docs/ProjectsApi.md#getprojectbyidasync) | **GET** /api/v2/ProjectsService/Projects/{projectId} | Gets a project by ID
*ProjectsApi* | [**getProjectPeriodsAsync**](docs/ProjectsApi.md#getprojectperiodsasync) | **GET** /api/v2/ProjectsService/Projects/{projectId}/Periods | Retrieves project periods
*ProjectsApi* | [**getProjectTaskCategoriesAsync**](docs/ProjectsApi.md#getprojecttaskcategoriesasync) | **GET** /api/v2/ProjectsService/Projects/{projectId}/TaskCategories | Retrieves project task categories
*ProjectsApi* | [**getProjectTaskCategoriesCountAsync**](docs/ProjectsApi.md#getprojecttaskcategoriescountasync) | **GET** /api/v2/ProjectsService/Projects/{projectId}/TaskCategories/Count | Counts project task categories
*ProjectsApi* | [**getProjectTasksAsync**](docs/ProjectsApi.md#getprojecttasksasync) | **GET** /api/v2/ProjectsService/Projects/{projectId}/Tasks | Retrieves project tasks
*ProjectsApi* | [**getProjectTasksCountAsync**](docs/ProjectsApi.md#getprojecttaskscountasync) | **GET** /api/v2/ProjectsService/Projects/{projectId}/Tasks/Count | Counts project tasks
*ProjectsApi* | [**getProjectTimeLogsAsync**](docs/ProjectsApi.md#getprojecttimelogsasync) | **GET** /api/v2/ProjectsService/Projects/{projectId}/TimeLogs | Retrieves project time logs
*ProjectsApi* | [**getProjectTimeLogsCountAsync**](docs/ProjectsApi.md#getprojecttimelogscountasync) | **GET** /api/v2/ProjectsService/Projects/{projectId}/TimeLogs/Count | Counts project time logs
*ProjectsApi* | [**getProjectsByTenantIdAsync**](docs/ProjectsApi.md#getprojectsbytenantidasync) | **GET** /api/v2/ProjectsService/Projects | Retrieves all projects
*ProjectsApi* | [**getProjectsCountByTenantIdAsync**](docs/ProjectsApi.md#getprojectscountbytenantidasync) | **GET** /api/v2/ProjectsService/Projects/Count | Counts projects
*ProjectsApi* | [**updateProjectAsync**](docs/ProjectsApi.md#updateprojectasync) | **PUT** /api/v2/ProjectsService/Projects/{projectId} | Updates a project
*ProjectsApi* | [**updateProjectPeriodAsync**](docs/ProjectsApi.md#updateprojectperiodasync) | **PUT** /api/v2/ProjectsService/Projects/{projectId}/Periods/{projectPeriodId} | Updates a project period
*ProjectsApi* | [**updateProjectTaskAsync**](docs/ProjectsApi.md#updateprojecttaskasync) | **PUT** /api/v2/ProjectsService/Projects/{projectId}/Tasks/{projectTaskId} | Updates a project task
*TaskCategoriesApi* | [**countTenantTaskCategoriesAsync**](docs/TaskCategoriesApi.md#counttenanttaskcategoriesasync) | **GET** /api/v2/ProjectsService/TaskCategories/Count | Counts task categories
*TaskCategoriesApi* | [**createTaskCategoryAsync**](docs/TaskCategoriesApi.md#createtaskcategoryasync) | **POST** /api/v2/ProjectsService/TaskCategories | Creates a new task category
*TaskCategoriesApi* | [**deleteTaskCategoryAsync**](docs/TaskCategoriesApi.md#deletetaskcategoryasync) | **DELETE** /api/v2/ProjectsService/TaskCategories/{taskCategoryId} | Deletes a task category
*TaskCategoriesApi* | [**getTaskCategoryByIdAsync**](docs/TaskCategoriesApi.md#gettaskcategorybyidasync) | **GET** /api/v2/ProjectsService/TaskCategories/{taskCategoryId} | Gets a task category by ID
*TaskCategoriesApi* | [**getTaskCategoryTaskTypesAsync**](docs/TaskCategoriesApi.md#gettaskcategorytasktypesasync) | **GET** /api/v2/ProjectsService/TaskCategories/{taskCategoryId}/Types | Retrieves task types for a category
*TaskCategoriesApi* | [**getTenantTaskCategoriesAsync**](docs/TaskCategoriesApi.md#gettenanttaskcategoriesasync) | **GET** /api/v2/ProjectsService/TaskCategories | Retrieves all task categories
*TaskCategoriesApi* | [**updateTaskCategoryAsync**](docs/TaskCategoriesApi.md#updatetaskcategoryasync) | **PUT** /api/v2/ProjectsService/TaskCategories/{taskCategoryId} | Updates a task category
*TaskTypesApi* | [**createTaskTypeAsync**](docs/TaskTypesApi.md#createtasktypeasync) | **POST** /api/v2/ProjectsService/TaskTypes | Creates a new task type
*TaskTypesApi* | [**deleteTaskTypeAsync**](docs/TaskTypesApi.md#deletetasktypeasync) | **DELETE** /api/v2/ProjectsService/TaskTypes/{taskTypeId} | Deletes a task type
*TaskTypesApi* | [**getTaskTypeByIdAsync**](docs/TaskTypesApi.md#gettasktypebyidasync) | **GET** /api/v2/ProjectsService/TaskTypes/{taskTypeId} | Gets a task type by ID
*TaskTypesApi* | [**updateTaskTypeAsync**](docs/TaskTypesApi.md#updatetasktypeasync) | **PUT** /api/v2/ProjectsService/TaskTypes/{taskTypeId} | Updates a task type


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [ProjectCreateDto](docs/ProjectCreateDto.md)
 - [ProjectDto](docs/ProjectDto.md)
 - [ProjectDtoEnvelope](docs/ProjectDtoEnvelope.md)
 - [ProjectDtoListEnvelope](docs/ProjectDtoListEnvelope.md)
 - [ProjectPeriodCreateDto](docs/ProjectPeriodCreateDto.md)
 - [ProjectPeriodDto](docs/ProjectPeriodDto.md)
 - [ProjectPeriodDtoListEnvelope](docs/ProjectPeriodDtoListEnvelope.md)
 - [ProjectPeriodUpdateDto](docs/ProjectPeriodUpdateDto.md)
 - [ProjectTaskCreateDto](docs/ProjectTaskCreateDto.md)
 - [ProjectTaskDto](docs/ProjectTaskDto.md)
 - [ProjectTaskDtoListEnvelope](docs/ProjectTaskDtoListEnvelope.md)
 - [ProjectTaskUpdateDto](docs/ProjectTaskUpdateDto.md)
 - [ProjectTimeLogDto](docs/ProjectTimeLogDto.md)
 - [ProjectTimeLogDtoListEnvelope](docs/ProjectTimeLogDtoListEnvelope.md)
 - [ProjectUpdateDto](docs/ProjectUpdateDto.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [TaskCategoryCreateDto](docs/TaskCategoryCreateDto.md)
 - [TaskCategoryDto](docs/TaskCategoryDto.md)
 - [TaskCategoryDtoListEnvelope](docs/TaskCategoryDtoListEnvelope.md)
 - [TaskCategoryUpdateDto](docs/TaskCategoryUpdateDto.md)
 - [TaskTypeCreateDto](docs/TaskTypeCreateDto.md)
 - [TaskTypeDto](docs/TaskTypeDto.md)
 - [TaskTypeUpdateDto](docs/TaskTypeUpdateDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

