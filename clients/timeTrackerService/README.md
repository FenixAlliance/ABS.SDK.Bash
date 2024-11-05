# TimeTrackerService Bash client

## Overview

This is a Bash client script for accessing TimeTrackerService service.

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
*ProjectTimeLogsApi* | [**apiV2TimeTrackerServiceProjectTimeLogsByResponsibleContactGet**](docs/ProjectTimeLogsApi.md#apiv2timetrackerserviceprojecttimelogsbyresponsiblecontactget) | **GET** /api/v2/TimeTrackerService/ProjectTimeLogs/ByResponsibleContact | 
*ProjectTimeLogsApi* | [**apiV2TimeTrackerServiceProjectTimeLogsCreatedByContactGet**](docs/ProjectTimeLogsApi.md#apiv2timetrackerserviceprojecttimelogscreatedbycontactget) | **GET** /api/v2/TimeTrackerService/ProjectTimeLogs/CreatedByContact | 
*ProjectTimeLogsApi* | [**apiV2TimeTrackerServiceProjectTimeLogsForProjectProjectIdGet**](docs/ProjectTimeLogsApi.md#apiv2timetrackerserviceprojecttimelogsforprojectprojectidget) | **GET** /api/v2/TimeTrackerService/ProjectTimeLogs/ForProject/{projectId} | 
*ProjectTimeLogsApi* | [**apiV2TimeTrackerServiceProjectTimeLogsGet**](docs/ProjectTimeLogsApi.md#apiv2timetrackerserviceprojecttimelogsget) | **GET** /api/v2/TimeTrackerService/ProjectTimeLogs | 
*ProjectTimeLogsApi* | [**apiV2TimeTrackerServiceProjectTimeLogsPost**](docs/ProjectTimeLogsApi.md#apiv2timetrackerserviceprojecttimelogspost) | **POST** /api/v2/TimeTrackerService/ProjectTimeLogs | 
*ProjectTimeLogsApi* | [**apiV2TimeTrackerServiceProjectTimeLogsTimeLogIdDelete**](docs/ProjectTimeLogsApi.md#apiv2timetrackerserviceprojecttimelogstimelogiddelete) | **DELETE** /api/v2/TimeTrackerService/ProjectTimeLogs/{timeLogId} | 
*ProjectTimeLogsApi* | [**apiV2TimeTrackerServiceProjectTimeLogsTimeLogIdGet**](docs/ProjectTimeLogsApi.md#apiv2timetrackerserviceprojecttimelogstimelogidget) | **GET** /api/v2/TimeTrackerService/ProjectTimeLogs/{timeLogId} | 
*ProjectTimeLogsApi* | [**apiV2TimeTrackerServiceProjectTimeLogsTimeLogIdPut**](docs/ProjectTimeLogsApi.md#apiv2timetrackerserviceprojecttimelogstimelogidput) | **PUT** /api/v2/TimeTrackerService/ProjectTimeLogs/{timeLogId} | 
*TimeLogApprovalsApi* | [**apiV2TimeTrackerServiceTimeLogApprovalsApprovalIdApproverPut**](docs/TimeLogApprovalsApi.md#apiv2timetrackerservicetimelogapprovalsapprovalidapproverput) | **PUT** /api/v2/TimeTrackerService/TimeLogApprovals/{approvalId}/Approver | 
*TimeLogApprovalsApi* | [**apiV2TimeTrackerServiceTimeLogApprovalsApprovalIdStatusPut**](docs/TimeLogApprovalsApi.md#apiv2timetrackerservicetimelogapprovalsapprovalidstatusput) | **PUT** /api/v2/TimeTrackerService/TimeLogApprovals/{approvalId}/Status | 
*TimeLogApprovalsApi* | [**apiV2TimeTrackerServiceTimeLogApprovalsPost**](docs/TimeLogApprovalsApi.md#apiv2timetrackerservicetimelogapprovalspost) | **POST** /api/v2/TimeTrackerService/TimeLogApprovals | 


## Documentation For Models

 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ProjectHoursApprovalApproverUpdateDto](docs/ProjectHoursApprovalApproverUpdateDto.md)
 - [ProjectHoursApprovalCreateDto](docs/ProjectHoursApprovalCreateDto.md)
 - [ProjectHoursApprovalStatusUpdateDto](docs/ProjectHoursApprovalStatusUpdateDto.md)
 - [ProjectTimeLogCreateDto](docs/ProjectTimeLogCreateDto.md)
 - [ProjectTimeLogDto](docs/ProjectTimeLogDto.md)
 - [ProjectTimeLogDtoEnvelope](docs/ProjectTimeLogDtoEnvelope.md)
 - [ProjectTimeLogDtoListEnvelope](docs/ProjectTimeLogDtoListEnvelope.md)
 - [ProjectTimeLogUpdateDto](docs/ProjectTimeLogUpdateDto.md)


## Documentation For Authorization


## Bearer


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

