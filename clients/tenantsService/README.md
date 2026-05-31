# TenantsService Bash client

## Overview

This is a Bash client script for accessing TenantsService service.

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
*CompletionsApi* | [**apiV2AiServiceCompletionsCompleteGet**](docs/CompletionsApi.md#apiv2aiservicecompletionscompleteget) | **GET** /api/v2/AiService/Completions/Complete | 
*DepartmentsApi* | [**createTenantDepartment**](docs/DepartmentsApi.md#createtenantdepartment) | **POST** /api/v2/TenantsService/Departments | Create a new tenant department
*DepartmentsApi* | [**deleteTenantDepartment**](docs/DepartmentsApi.md#deletetenantdepartment) | **DELETE** /api/v2/TenantsService/Departments/{tenantDepartmentId} | Delete a tenant department
*DepartmentsApi* | [**getTenantDepartmentById**](docs/DepartmentsApi.md#gettenantdepartmentbyid) | **GET** /api/v2/TenantsService/Departments/{tenantDepartmentId} | Retrieve a single tenant department by its ID
*DepartmentsApi* | [**getTenantDepartments**](docs/DepartmentsApi.md#gettenantdepartments) | **GET** /api/v2/TenantsService/Departments | Retrieve a list of tenant departments
*DepartmentsApi* | [**getTenantDepartmentsCount**](docs/DepartmentsApi.md#gettenantdepartmentscount) | **GET** /api/v2/TenantsService/Departments/Count | Get the count of tenant departments
*DepartmentsApi* | [**updateTenantDepartment**](docs/DepartmentsApi.md#updatetenantdepartment) | **PUT** /api/v2/TenantsService/Departments/{tenantDepartmentId} | Update a tenant department
*EmployeeEnrollmentsApi* | [**createTenantEmployeeEnrollment**](docs/EmployeeEnrollmentsApi.md#createtenantemployeeenrollment) | **POST** /api/v2/TenantsService/EmployeeEnrollments | Create a new tenant employee enrollment
*EmployeeEnrollmentsApi* | [**deleteTenantEmployeeEnrollment**](docs/EmployeeEnrollmentsApi.md#deletetenantemployeeenrollment) | **DELETE** /api/v2/TenantsService/EmployeeEnrollments/{tenantEmployeeEnrollmentId} | Delete a tenant employee enrollment
*EmployeeEnrollmentsApi* | [**getTenantEmployeeEnrollmentById**](docs/EmployeeEnrollmentsApi.md#gettenantemployeeenrollmentbyid) | **GET** /api/v2/TenantsService/EmployeeEnrollments/{tenantEmployeeEnrollmentId} | Retrieve a single tenant employee enrollment by its ID
*EmployeeEnrollmentsApi* | [**getTenantEmployeeEnrollments**](docs/EmployeeEnrollmentsApi.md#gettenantemployeeenrollments) | **GET** /api/v2/TenantsService/EmployeeEnrollments | Retrieve a list of tenant employee enrollments
*EmployeeEnrollmentsApi* | [**getTenantEmployeeEnrollmentsCount**](docs/EmployeeEnrollmentsApi.md#gettenantemployeeenrollmentscount) | **GET** /api/v2/TenantsService/EmployeeEnrollments/Count | Get the count of tenant employee enrollments
*EmployeeEnrollmentsApi* | [**updateTenantEmployeeEnrollment**](docs/EmployeeEnrollmentsApi.md#updatetenantemployeeenrollment) | **PUT** /api/v2/TenantsService/EmployeeEnrollments/{tenantEmployeeEnrollmentId} | Update a tenant employee enrollment
*EnrollmentsApi* | [**createTenantEnrollment**](docs/EnrollmentsApi.md#createtenantenrollment) | **POST** /api/v2/TenantsService/Enrollments | Create a new tenant enrollment
*EnrollmentsApi* | [**deleteTenantEnrollment**](docs/EnrollmentsApi.md#deletetenantenrollment) | **DELETE** /api/v2/TenantsService/Enrollments/{enrollmentId} | Delete a tenant enrollment
*EnrollmentsApi* | [**getExtendedTenantEnrollments**](docs/EnrollmentsApi.md#getextendedtenantenrollments) | **GET** /api/v2/TenantsService/Enrollments/Extended | Retrieve a list of tenant enrollments
*EnrollmentsApi* | [**getExtendedTenantEnrollmentsCount**](docs/EnrollmentsApi.md#getextendedtenantenrollmentscount) | **GET** /api/v2/TenantsService/Enrollments/Extended/Count | Get the count of tenant enrollments
*EnrollmentsApi* | [**getTenantEnrollmentById**](docs/EnrollmentsApi.md#gettenantenrollmentbyid) | **GET** /api/v2/TenantsService/Enrollments/{enrollmentId} | Retrieve a single tenant enrollment by its ID
*EnrollmentsApi* | [**getTenantEnrollments**](docs/EnrollmentsApi.md#gettenantenrollments) | **GET** /api/v2/TenantsService/Enrollments | Retrieve a list of tenant enrollments
*EnrollmentsApi* | [**getTenantEnrollmentsCount**](docs/EnrollmentsApi.md#gettenantenrollmentscount) | **GET** /api/v2/TenantsService/Enrollments/Count | Get the count of tenant enrollments
*EnrollmentsApi* | [**updateTenantEnrollment**](docs/EnrollmentsApi.md#updatetenantenrollment) | **PUT** /api/v2/TenantsService/Enrollments/{enrollmentId} | Update a tenant enrollment
*FenixAlliancePortalsWebsiteApi* | [**accountLogoutPost**](docs/FenixAlliancePortalsWebsiteApi.md#accountlogoutpost) | **POST** /Account/Logout | 
*FenixAlliancePortalsWebsiteApi* | [**accountManageDownloadPersonalDataPost**](docs/FenixAlliancePortalsWebsiteApi.md#accountmanagedownloadpersonaldatapost) | **POST** /Account/Manage/DownloadPersonalData | 
*FenixAlliancePortalsWebsiteApi* | [**accountManageLinkExternalLoginPost**](docs/FenixAlliancePortalsWebsiteApi.md#accountmanagelinkexternalloginpost) | **POST** /Account/Manage/LinkExternalLogin | 
*FenixAlliancePortalsWebsiteApi* | [**accountPerformExternalLoginPost**](docs/FenixAlliancePortalsWebsiteApi.md#accountperformexternalloginpost) | **POST** /Account/PerformExternalLogin | 
*FenixAlliancePortalsWebsiteApi* | [**forgotPasswordPost**](docs/FenixAlliancePortalsWebsiteApi.md#forgotpasswordpost) | **POST** /forgotPassword | 
*FenixAlliancePortalsWebsiteApi* | [**healthGet**](docs/FenixAlliancePortalsWebsiteApi.md#healthget) | **GET** /health | 
*FenixAlliancePortalsWebsiteApi* | [**helloGet**](docs/FenixAlliancePortalsWebsiteApi.md#helloget) | **GET** /hello | 
*FenixAlliancePortalsWebsiteApi* | [**loginPost**](docs/FenixAlliancePortalsWebsiteApi.md#loginpost) | **POST** /login | 
*FenixAlliancePortalsWebsiteApi* | [**manage2faPost**](docs/FenixAlliancePortalsWebsiteApi.md#manage2fapost) | **POST** /manage/2fa | 
*FenixAlliancePortalsWebsiteApi* | [**manageInfoGet**](docs/FenixAlliancePortalsWebsiteApi.md#manageinfoget) | **GET** /manage/info | 
*FenixAlliancePortalsWebsiteApi* | [**manageInfoPost**](docs/FenixAlliancePortalsWebsiteApi.md#manageinfopost) | **POST** /manage/info | 
*FenixAlliancePortalsWebsiteApi* | [**mapIdentityApiConfirmEmail**](docs/FenixAlliancePortalsWebsiteApi.md#mapidentityapiconfirmemail) | **GET** /confirmEmail | 
*FenixAlliancePortalsWebsiteApi* | [**refreshPost**](docs/FenixAlliancePortalsWebsiteApi.md#refreshpost) | **POST** /refresh | 
*FenixAlliancePortalsWebsiteApi* | [**registerPost**](docs/FenixAlliancePortalsWebsiteApi.md#registerpost) | **POST** /register | 
*FenixAlliancePortalsWebsiteApi* | [**resendConfirmationEmailPost**](docs/FenixAlliancePortalsWebsiteApi.md#resendconfirmationemailpost) | **POST** /resendConfirmationEmail | 
*FenixAlliancePortalsWebsiteApi* | [**resetPasswordPost**](docs/FenixAlliancePortalsWebsiteApi.md#resetpasswordpost) | **POST** /resetPassword | 
*FenixAlliancePortalsWebsiteApi* | [**versionGet**](docs/FenixAlliancePortalsWebsiteApi.md#versionget) | **GET** /version | 
*IndustriesApi* | [**createTenantIndustry**](docs/IndustriesApi.md#createtenantindustry) | **POST** /api/v2/TenantsService/Industries | Create a new tenant industry
*IndustriesApi* | [**deleteTenantIndustry**](docs/IndustriesApi.md#deletetenantindustry) | **DELETE** /api/v2/TenantsService/Industries/{tenantIndustryId} | Delete a tenant industry
*IndustriesApi* | [**getTenantIndustries**](docs/IndustriesApi.md#gettenantindustries) | **GET** /api/v2/TenantsService/Industries | Retrieve a list of tenant industries
*IndustriesApi* | [**getTenantIndustriesCount**](docs/IndustriesApi.md#gettenantindustriescount) | **GET** /api/v2/TenantsService/Industries/Count | Get the count of tenant industries
*IndustriesApi* | [**getTenantIndustryById**](docs/IndustriesApi.md#gettenantindustrybyid) | **GET** /api/v2/TenantsService/Industries/{tenantIndustryId} | Retrieve a single tenant industry by its ID
*IndustriesApi* | [**updateTenantIndustry**](docs/IndustriesApi.md#updatetenantindustry) | **PUT** /api/v2/TenantsService/Industries/{tenantIndustryId} | Update a tenant industry
*InvitationsApi* | [**acceptTenantInvitation**](docs/InvitationsApi.md#accepttenantinvitation) | **POST** /api/v2/TenantsService/Invitations/{invitationId}/Accept | Accept an invitation to join a tenant
*InvitationsApi* | [**declineTenantInvitation**](docs/InvitationsApi.md#declinetenantinvitation) | **POST** /api/v2/TenantsService/Invitations/{invitationId}/Decline | Decline an invitation to join a tenant
*InvitationsApi* | [**deleteTenantInvitation**](docs/InvitationsApi.md#deletetenantinvitation) | **DELETE** /api/v2/TenantsService/Invitations/{invitationId} | Delete a tenant invitation
*InvitationsApi* | [**getTenantInvitationById**](docs/InvitationsApi.md#gettenantinvitationbyid) | **GET** /api/v2/TenantsService/Invitations/{invitationId} | Get a tenant invitation by its ID
*InvitationsApi* | [**getTenantInvitations**](docs/InvitationsApi.md#gettenantinvitations) | **GET** /api/v2/TenantsService/Invitations | Retrieve a list of tenant invitations
*InvitationsApi* | [**getTenantInvitationsCount**](docs/InvitationsApi.md#gettenantinvitationscount) | **GET** /api/v2/TenantsService/Invitations/Count | Get the count of tenant invitations
*InvitationsApi* | [**sendTenantInvitation**](docs/InvitationsApi.md#sendtenantinvitation) | **POST** /api/v2/TenantsService/Invitations | Send an invitation to a user to join a tenant
*OptionsApi* | [**createTenantOption**](docs/OptionsApi.md#createtenantoption) | **POST** /api/v2/TenantsService/Options | Create a new tenant option
*OptionsApi* | [**deleteTenantOption**](docs/OptionsApi.md#deletetenantoption) | **DELETE** /api/v2/TenantsService/Options/{optionId} | Delete a tenant option
*OptionsApi* | [**getTenantOptionById**](docs/OptionsApi.md#gettenantoptionbyid) | **GET** /api/v2/TenantsService/Options/{optionId} | Retrieve a single tenant option by its ID
*OptionsApi* | [**getTenantOptionByKey**](docs/OptionsApi.md#gettenantoptionbykey) | **GET** /api/v2/TenantsService/Options/Key/{key} | Retrieve a single tenant option by its key
*OptionsApi* | [**getTenantOptions**](docs/OptionsApi.md#gettenantoptions) | **GET** /api/v2/TenantsService/Options | Retrieve a list of tenant options
*OptionsApi* | [**getTenantOptionsCount**](docs/OptionsApi.md#gettenantoptionscount) | **GET** /api/v2/TenantsService/Options/Count | Get the count of tenant options
*OptionsApi* | [**updateTenantOption**](docs/OptionsApi.md#updatetenantoption) | **PUT** /api/v2/TenantsService/Options/{optionId} | Update a tenant option
*OptionsApi* | [**upsertTenantOption**](docs/OptionsApi.md#upserttenantoption) | **PUT** /api/v2/TenantsService/Options/Upsert/{key} | Create or update a tenant option by key
*PositionsApi* | [**createTenantPosition**](docs/PositionsApi.md#createtenantposition) | **POST** /api/v2/TenantsService/Positions | Create a new tenant position
*PositionsApi* | [**deleteTenantPosition**](docs/PositionsApi.md#deletetenantposition) | **DELETE** /api/v2/TenantsService/Positions/{tenantPositionId} | Delete a tenant position
*PositionsApi* | [**getTenantPositionById**](docs/PositionsApi.md#gettenantpositionbyid) | **GET** /api/v2/TenantsService/Positions/{tenantPositionId} | Retrieve a single tenant position by its ID
*PositionsApi* | [**getTenantPositions**](docs/PositionsApi.md#gettenantpositions) | **GET** /api/v2/TenantsService/Positions | Retrieve a list of tenant positions
*PositionsApi* | [**getTenantPositionsCount**](docs/PositionsApi.md#gettenantpositionscount) | **GET** /api/v2/TenantsService/Positions/Count | Get the count of tenant positions
*PositionsApi* | [**updateTenantPosition**](docs/PositionsApi.md#updatetenantposition) | **PUT** /api/v2/TenantsService/Positions/{tenantPositionId} | Update a tenant position
*SegmentsApi* | [**createTenantSegment**](docs/SegmentsApi.md#createtenantsegment) | **POST** /api/v2/TenantsService/Segments | Create a new tenant segment
*SegmentsApi* | [**deleteTenantSegment**](docs/SegmentsApi.md#deletetenantsegment) | **DELETE** /api/v2/TenantsService/Segments/{tenantSegmentId} | Delete a tenant segment
*SegmentsApi* | [**getTenantSegmentById**](docs/SegmentsApi.md#gettenantsegmentbyid) | **GET** /api/v2/TenantsService/Segments/{tenantSegmentId} | Retrieve a single tenant segment by its ID
*SegmentsApi* | [**getTenantSegments**](docs/SegmentsApi.md#gettenantsegments) | **GET** /api/v2/TenantsService/Segments | Retrieve a list of tenant segments
*SegmentsApi* | [**getTenantSegmentsCount**](docs/SegmentsApi.md#gettenantsegmentscount) | **GET** /api/v2/TenantsService/Segments/Count | Get the count of tenant segments
*SegmentsApi* | [**updateTenantSegment**](docs/SegmentsApi.md#updatetenantsegment) | **PUT** /api/v2/TenantsService/Segments/{tenantSegmentId} | Update a tenant segment
*SizesApi* | [**createTenantSize**](docs/SizesApi.md#createtenantsize) | **POST** /api/v2/TenantsService/Sizes | Create a new tenant size
*SizesApi* | [**deleteTenantSize**](docs/SizesApi.md#deletetenantsize) | **DELETE** /api/v2/TenantsService/Sizes/{tenantSizeId} | Delete a tenant size
*SizesApi* | [**getTenantSizeById**](docs/SizesApi.md#gettenantsizebyid) | **GET** /api/v2/TenantsService/Sizes/{tenantSizeId} | Retrieve a single tenant size by its ID
*SizesApi* | [**getTenantSizes**](docs/SizesApi.md#gettenantsizes) | **GET** /api/v2/TenantsService/Sizes | Retrieve a list of tenant sizes
*SizesApi* | [**getTenantSizesCount**](docs/SizesApi.md#gettenantsizescount) | **GET** /api/v2/TenantsService/Sizes/Count | Get the count of tenant sizes
*SizesApi* | [**updateTenantSize**](docs/SizesApi.md#updatetenantsize) | **PUT** /api/v2/TenantsService/Sizes/{tenantSizeId} | Update a tenant size
*TeamContactEnrollmentsApi* | [**createTenantTeamContactEnrollment**](docs/TeamContactEnrollmentsApi.md#createtenantteamcontactenrollment) | **POST** /api/v2/TenantsService/TeamContactEnrollments | Create a new tenant team contact enrollment
*TeamContactEnrollmentsApi* | [**deleteTenantTeamContactEnrollment**](docs/TeamContactEnrollmentsApi.md#deletetenantteamcontactenrollment) | **DELETE** /api/v2/TenantsService/TeamContactEnrollments/{tenantTeamContactEnrollmentId} | Delete a tenant team contact enrollment
*TeamContactEnrollmentsApi* | [**getTenantTeamContactEnrollmentById**](docs/TeamContactEnrollmentsApi.md#gettenantteamcontactenrollmentbyid) | **GET** /api/v2/TenantsService/TeamContactEnrollments/{tenantTeamContactEnrollmentId} | Retrieve a single tenant team contact enrollment by its ID
*TeamContactEnrollmentsApi* | [**getTenantTeamContactEnrollments**](docs/TeamContactEnrollmentsApi.md#gettenantteamcontactenrollments) | **GET** /api/v2/TenantsService/TeamContactEnrollments | Retrieve a list of tenant team contact enrollments
*TeamContactEnrollmentsApi* | [**getTenantTeamContactEnrollmentsCount**](docs/TeamContactEnrollmentsApi.md#gettenantteamcontactenrollmentscount) | **GET** /api/v2/TenantsService/TeamContactEnrollments/Count | Get the count of tenant team contact enrollments
*TeamContactEnrollmentsApi* | [**updateTenantTeamContactEnrollment**](docs/TeamContactEnrollmentsApi.md#updatetenantteamcontactenrollment) | **PUT** /api/v2/TenantsService/TeamContactEnrollments/{tenantTeamContactEnrollmentId} | Update a tenant team contact enrollment
*TeamProjectEnrollmentsApi* | [**createTenantTeamProjectEnrollment**](docs/TeamProjectEnrollmentsApi.md#createtenantteamprojectenrollment) | **POST** /api/v2/TenantsService/TeamProjectEnrollments | Create a new tenant team project enrollment
*TeamProjectEnrollmentsApi* | [**deleteTenantTeamProjectEnrollment**](docs/TeamProjectEnrollmentsApi.md#deletetenantteamprojectenrollment) | **DELETE** /api/v2/TenantsService/TeamProjectEnrollments/{tenantTeamProjectEnrollmentId} | Delete a tenant team project enrollment
*TeamProjectEnrollmentsApi* | [**getTenantTeamProjectEnrollmentById**](docs/TeamProjectEnrollmentsApi.md#gettenantteamprojectenrollmentbyid) | **GET** /api/v2/TenantsService/TeamProjectEnrollments/{tenantTeamProjectEnrollmentId} | Retrieve a single tenant team project enrollment by its ID
*TeamProjectEnrollmentsApi* | [**getTenantTeamProjectEnrollments**](docs/TeamProjectEnrollmentsApi.md#gettenantteamprojectenrollments) | **GET** /api/v2/TenantsService/TeamProjectEnrollments | Retrieve a list of tenant team project enrollments
*TeamProjectEnrollmentsApi* | [**getTenantTeamProjectEnrollmentsCount**](docs/TeamProjectEnrollmentsApi.md#gettenantteamprojectenrollmentscount) | **GET** /api/v2/TenantsService/TeamProjectEnrollments/Count | Get the count of tenant team project enrollments
*TeamProjectEnrollmentsApi* | [**updateTenantTeamProjectEnrollment**](docs/TeamProjectEnrollmentsApi.md#updatetenantteamprojectenrollment) | **PUT** /api/v2/TenantsService/TeamProjectEnrollments/{tenantTeamProjectEnrollmentId} | Update a tenant team project enrollment
*TeamRecordsApi* | [**createTenantTeamRecord**](docs/TeamRecordsApi.md#createtenantteamrecord) | **POST** /api/v2/TenantsService/TeamRecords | Create a new tenant team record
*TeamRecordsApi* | [**deleteTenantTeamRecord**](docs/TeamRecordsApi.md#deletetenantteamrecord) | **DELETE** /api/v2/TenantsService/TeamRecords/{tenantTeamRecordId} | Delete a tenant team record
*TeamRecordsApi* | [**getTenantTeamRecordById**](docs/TeamRecordsApi.md#gettenantteamrecordbyid) | **GET** /api/v2/TenantsService/TeamRecords/{tenantTeamRecordId} | Retrieve a single tenant team record by its ID
*TeamRecordsApi* | [**getTenantTeamRecords**](docs/TeamRecordsApi.md#gettenantteamrecords) | **GET** /api/v2/TenantsService/TeamRecords | Retrieve a list of tenant team records
*TeamRecordsApi* | [**getTenantTeamRecordsCount**](docs/TeamRecordsApi.md#gettenantteamrecordscount) | **GET** /api/v2/TenantsService/TeamRecords/Count | Get the count of tenant team records
*TeamRecordsApi* | [**updateTenantTeamRecord**](docs/TeamRecordsApi.md#updatetenantteamrecord) | **PUT** /api/v2/TenantsService/TeamRecords/{tenantTeamRecordId} | Update a tenant team record
*TeamsApi* | [**createTenantTeam**](docs/TeamsApi.md#createtenantteam) | **POST** /api/v2/TenantsService/Teams | Create a new tenant team
*TeamsApi* | [**deleteTenantTeam**](docs/TeamsApi.md#deletetenantteam) | **DELETE** /api/v2/TenantsService/Teams/{tenantTeamId} | Delete a tenant team
*TeamsApi* | [**getTenantTeamById**](docs/TeamsApi.md#gettenantteambyid) | **GET** /api/v2/TenantsService/Teams/{tenantTeamId} | Retrieve a single tenant team by its ID
*TeamsApi* | [**getTenantTeams**](docs/TeamsApi.md#gettenantteams) | **GET** /api/v2/TenantsService/Teams | Retrieve a list of tenant teams
*TeamsApi* | [**getTenantTeamsCount**](docs/TeamsApi.md#gettenantteamscount) | **GET** /api/v2/TenantsService/Teams/Count | Get the count of tenant teams
*TeamsApi* | [**updateTenantTeam**](docs/TeamsApi.md#updatetenantteam) | **PUT** /api/v2/TenantsService/Teams/{tenantTeamId} | Update a tenant team
*TenantsApi* | [**assignLicenseAsync**](docs/TenantsApi.md#assignlicenseasync) | **POST** /api/v2/TenantsService/Tenants/{tenantId}/Enrollments/{enrollmentId}/Licenses/{licenseId} | Assign a license to a specific enrollment
*TenantsApi* | [**createTenantAsync**](docs/TenantsApi.md#createtenantasync) | **POST** /api/v2/TenantsService/Tenants | Create a new business tenant
*TenantsApi* | [**deSelectTenantAsync**](docs/TenantsApi.md#deselecttenantasync) | **POST** /api/v2/TenantsService/Tenants/Deselect | Deselect the user&#39;s default tenant
*TenantsApi* | [**deleteTenantAsync**](docs/TenantsApi.md#deletetenantasync) | **DELETE** /api/v2/TenantsService/Tenants | Delete a tenant
*TenantsApi* | [**getAccessibleFeaturesAsync**](docs/TenantsApi.md#getaccessiblefeaturesasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Enrollments/{enrollmentId}/Features | Get the list of features accessible to a specific enrollment
*TenantsApi* | [**getCurrentTenantAsync**](docs/TenantsApi.md#getcurrenttenantasync) | **GET** /api/v2/TenantsService/Tenants/Current | Get the user&#39;s current default tenant
*TenantsApi* | [**getEnrollmentLicenseByIdAsync**](docs/TenantsApi.md#getenrollmentlicensebyidasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Enrollments/{enrollmentId}/Licenses/{licenseId} | Get a specific license for an enrollment
*TenantsApi* | [**getEnrollmentLicensesAsync**](docs/TenantsApi.md#getenrollmentlicensesasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Enrollments/{enrollmentId}/Licenses | Get the list of licenses available to a specific enrollment
*TenantsApi* | [**getEnrollmentPermissionsAsync**](docs/TenantsApi.md#getenrollmentpermissionsasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Enrollments/{enrollmentId}/Permissions | Get a specific tenant enrollment&#39;s permissions list
*TenantsApi* | [**getExtendedTenantAsync**](docs/TenantsApi.md#getextendedtenantasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Extended | Get an extended tenant&#39;s business profile
*TenantsApi* | [**getExtendedTenantEnrollmentAsync**](docs/TenantsApi.md#getextendedtenantenrollmentasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Enrollments/{enrollmentId}/Extended | Get a specific tenant enrollment
*TenantsApi* | [**getRootTenantAsync**](docs/TenantsApi.md#getroottenantasync) | **GET** /api/v2/TenantsService/Tenants/Root | Get the root tenant of the platform
*TenantsApi* | [**getTenantAsync**](docs/TenantsApi.md#gettenantasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId} | Get a specific tenant by ID
*TenantsApi* | [**getTenantAvatarAsync**](docs/TenantsApi.md#gettenantavatarasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Avatar | Get a tenant&#39;s avatar
*TenantsApi* | [**getTenantCartAsync**](docs/TenantsApi.md#gettenantcartasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Cart | Get a tenant&#39;s default cart
*TenantsApi* | [**getTenantEnrollmentAsync**](docs/TenantsApi.md#gettenantenrollmentasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Enrollments/{enrollmentId} | Get a specific tenant enrollment
*TenantsApi* | [**getTenantEnrollmentsAsync**](docs/TenantsApi.md#gettenantenrollmentsasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Enrollments | Get the list of user enrollments for a tenant
*TenantsApi* | [**getTenantInvitationsAsync**](docs/TenantsApi.md#gettenantinvitationsasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Invitations | Get the list of invitations issued by a tenant
*TenantsApi* | [**getTenantLicensesAsync**](docs/TenantsApi.md#gettenantlicensesasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Licenses | Get the list of licenses available to a tenant
*TenantsApi* | [**getTenantNotificationsAsync**](docs/TenantsApi.md#gettenantnotificationsasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Notifications | Get the list of notifications for a tenant
*TenantsApi* | [**getTenantNotificationsCountAsync**](docs/TenantsApi.md#gettenantnotificationscountasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Notifications/Count | Get the count of notifications for a tenant
*TenantsApi* | [**getTenantPendingInvitationsAsync**](docs/TenantsApi.md#gettenantpendinginvitationsasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Invitations/Pending | Get the list of invitations issued by a tenant that are pending
*TenantsApi* | [**getTenantRedeemedInvitationsAsync**](docs/TenantsApi.md#gettenantredeemedinvitationsasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Invitations/Redeemed | Get the list of invitations issued by a tenant that have been redeemed
*TenantsApi* | [**getTenantRevokedInvitationsAsync**](docs/TenantsApi.md#gettenantrevokedinvitationsasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Invitations/Revoked | Get the list of invitations issued by a tenant that have been revoked
*TenantsApi* | [**getTenantSocialProfileAsync**](docs/TenantsApi.md#gettenantsocialprofileasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/SocialProfile | Get a tenant&#39;s social profile
*TenantsApi* | [**getTenantUsersAsync**](docs/TenantsApi.md#gettenantusersasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Users | Get the list of users enrolled in a tenant
*TenantsApi* | [**getTenantWalletAsync**](docs/TenantsApi.md#gettenantwalletasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Wallet | Get a tenant&#39;s billing profile (A.K.A. Wallet Account)
*TenantsApi* | [**getTenantWebPortalsAsync**](docs/TenantsApi.md#gettenantwebportalsasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/WebPortals | Get the list of web portals for a tenant
*TenantsApi* | [**patchTenantAsync**](docs/TenantsApi.md#patchtenantasync) | **PATCH** /api/v2/TenantsService/Tenants/{tenantId} | Patch a tenant&#39;s profile
*TenantsApi* | [**revokeLicenseAsync**](docs/TenantsApi.md#revokelicenseasync) | **DELETE** /api/v2/TenantsService/Tenants/{tenantId}/Enrollments/{enrollmentId}/Licenses/{licenseId} | Revoke a license from a specific enrollment
*TenantsApi* | [**selectTenantAsync**](docs/TenantsApi.md#selecttenantasync) | **POST** /api/v2/TenantsService/Tenants/{tenantId}/Select | Select a business tenant as the user&#39;s default tenant
*TenantsApi* | [**updateAvatarAsync**](docs/TenantsApi.md#updateavatarasync) | **POST** /api/v2/TenantsService/Tenants/{tenantId}/Avatar | Update a tenant&#39;s avatar
*TenantsApi* | [**updateTenantAsync**](docs/TenantsApi.md#updatetenantasync) | **PUT** /api/v2/TenantsService/Tenants/{tenantId} | Update a tenant&#39;s profile
*TenantsApi* | [**validateEnrollmentFeatureAccess**](docs/TenantsApi.md#validateenrollmentfeatureaccess) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Enrollments/{enrollmentId}/HasAccess | Validate the access to a specific feature for a specific enrollment
*TenantsApi* | [**validateEnrollmentPermissionsAsync**](docs/TenantsApi.md#validateenrollmentpermissionsasync) | **GET** /api/v2/TenantsService/Tenants/{tenantId}/Enrollments/{enrollmentId}/Permissions/Validate | Validate the existence of a list of roles and permissions for a specific enrollment
*TerritoriesApi* | [**createTenantTerritory**](docs/TerritoriesApi.md#createtenantterritory) | **POST** /api/v2/TenantsService/Territories | Create a new tenant territory
*TerritoriesApi* | [**deleteTenantTerritory**](docs/TerritoriesApi.md#deletetenantterritory) | **DELETE** /api/v2/TenantsService/Territories/{tenantTerritoryId} | Delete a tenant territory
*TerritoriesApi* | [**getTenantTerritories**](docs/TerritoriesApi.md#gettenantterritories) | **GET** /api/v2/TenantsService/Territories | Retrieve a list of tenant territories
*TerritoriesApi* | [**getTenantTerritoriesCount**](docs/TerritoriesApi.md#gettenantterritoriescount) | **GET** /api/v2/TenantsService/Territories/Count | Get the count of tenant territories
*TerritoriesApi* | [**getTenantTerritoryById**](docs/TerritoriesApi.md#gettenantterritorybyid) | **GET** /api/v2/TenantsService/Territories/{tenantTerritoryId} | Retrieve a single tenant territory by its ID
*TerritoriesApi* | [**updateTenantTerritory**](docs/TerritoriesApi.md#updatetenantterritory) | **PUT** /api/v2/TenantsService/Territories/{tenantTerritoryId} | Update a tenant territory
*TypesApi* | [**createTenantType**](docs/TypesApi.md#createtenanttype) | **POST** /api/v2/TenantsService/Types | Create a new tenant type
*TypesApi* | [**deleteTenantType**](docs/TypesApi.md#deletetenanttype) | **DELETE** /api/v2/TenantsService/Types/{tenantTypeId} | Delete a tenant type
*TypesApi* | [**getTenantTypeById**](docs/TypesApi.md#gettenanttypebyid) | **GET** /api/v2/TenantsService/Types/{tenantTypeId} | Retrieve a single tenant type by its ID
*TypesApi* | [**getTenantTypes**](docs/TypesApi.md#gettenanttypes) | **GET** /api/v2/TenantsService/Types | Retrieve a list of tenant types
*TypesApi* | [**getTenantTypesCount**](docs/TypesApi.md#gettenanttypescount) | **GET** /api/v2/TenantsService/Types/Count | Get the count of tenant types
*TypesApi* | [**updateTenantType**](docs/TypesApi.md#updatetenanttype) | **PUT** /api/v2/TenantsService/Types/{tenantTypeId} | Update a tenant type
*UnitGroupsApi* | [**createUnitAsync**](docs/UnitGroupsApi.md#createunitasync) | **POST** /api/v2/TenantsService/UnitGroups/{unitGroupId}/Units | Create a unit within a unit group
*UnitGroupsApi* | [**createUnitGroupAsync**](docs/UnitGroupsApi.md#createunitgroupasync) | **POST** /api/v2/TenantsService/UnitGroups | Create a new unit group
*UnitGroupsApi* | [**deleteUnitAsync**](docs/UnitGroupsApi.md#deleteunitasync) | **DELETE** /api/v2/TenantsService/UnitGroups/{unitGroupId}/Units/{unitId} | Delete a unit from a unit group
*UnitGroupsApi* | [**deleteUnitGroupAsync**](docs/UnitGroupsApi.md#deleteunitgroupasync) | **DELETE** /api/v2/TenantsService/UnitGroups/{unitGroupId} | Delete a unit group
*UnitGroupsApi* | [**getUnitAsync**](docs/UnitGroupsApi.md#getunitasync) | **GET** /api/v2/TenantsService/UnitGroups/{unitGroupId}/Units/{unitId} | Retrieve a unit by ID within a unit group
*UnitGroupsApi* | [**getUnitGroupAsync**](docs/UnitGroupsApi.md#getunitgroupasync) | **GET** /api/v2/TenantsService/UnitGroups/{unitGroupId} | Retrieve a unit group by ID
*UnitGroupsApi* | [**getUnitGroupsAsync**](docs/UnitGroupsApi.md#getunitgroupsasync) | **GET** /api/v2/TenantsService/UnitGroups | Retrieve a list of unit groups
*UnitGroupsApi* | [**getUnitGroupsCountAsync**](docs/UnitGroupsApi.md#getunitgroupscountasync) | **GET** /api/v2/TenantsService/UnitGroups/Count | Get the count of unit groups
*UnitGroupsApi* | [**getUnitsAsync**](docs/UnitGroupsApi.md#getunitsasync) | **GET** /api/v2/TenantsService/UnitGroups/{unitGroupId}/Units | Retrieve units for a unit group
*UnitGroupsApi* | [**getUnitsCountAsync**](docs/UnitGroupsApi.md#getunitscountasync) | **GET** /api/v2/TenantsService/UnitGroups/{unitGroupId}/Units/Count | Get the count of units in a unit group
*UnitGroupsApi* | [**updateUnitAsync**](docs/UnitGroupsApi.md#updateunitasync) | **PUT** /api/v2/TenantsService/UnitGroups/{unitGroupId}/Units/{unitId} | Update a unit within a unit group
*UnitGroupsApi* | [**updateUnitGroupAsync**](docs/UnitGroupsApi.md#updateunitgroupasync) | **PUT** /api/v2/TenantsService/UnitGroups/{unitGroupId} | Update a unit group
*UnitsApi* | [**createTenantUnit**](docs/UnitsApi.md#createtenantunit) | **POST** /api/v2/TenantsService/Units | Create a new tenant unit
*UnitsApi* | [**deleteTenantUnit**](docs/UnitsApi.md#deletetenantunit) | **DELETE** /api/v2/TenantsService/Units/{tenantUnitId} | Delete a tenant unit
*UnitsApi* | [**getTenantUnitById**](docs/UnitsApi.md#gettenantunitbyid) | **GET** /api/v2/TenantsService/Units/{tenantUnitId} | Retrieve a single tenant unit by its ID
*UnitsApi* | [**getTenantUnits**](docs/UnitsApi.md#gettenantunits) | **GET** /api/v2/TenantsService/Units | Retrieve a list of tenant units
*UnitsApi* | [**getTenantUnitsCount**](docs/UnitsApi.md#gettenantunitscount) | **GET** /api/v2/TenantsService/Units/Count | Get the count of tenant units
*UnitsApi* | [**updateTenantUnit**](docs/UnitsApi.md#updatetenantunit) | **PUT** /api/v2/TenantsService/Units/{tenantUnitId} | Update a tenant unit


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [BooleanEnvelope](docs/BooleanEnvelope.md)
 - [CartDto](docs/CartDto.md)
 - [CartDtoEnvelope](docs/CartDtoEnvelope.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ExtendedTenantDto](docs/ExtendedTenantDto.md)
 - [ExtendedTenantDtoEnvelope](docs/ExtendedTenantDtoEnvelope.md)
 - [ExtendedTenantEnrollmentDto](docs/ExtendedTenantEnrollmentDto.md)
 - [ExtendedTenantEnrollmentDtoEnvelope](docs/ExtendedTenantEnrollmentDtoEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [NotificationDto](docs/NotificationDto.md)
 - [NotificationDtoListEnvelope](docs/NotificationDtoListEnvelope.md)
 - [Operation](docs/Operation.md)
 - [OptionCreateDto](docs/OptionCreateDto.md)
 - [OptionDto](docs/OptionDto.md)
 - [OptionDtoEnvelope](docs/OptionDtoEnvelope.md)
 - [OptionDtoListEnvelope](docs/OptionDtoListEnvelope.md)
 - [OptionUpdateDto](docs/OptionUpdateDto.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [SocialProfileDto](docs/SocialProfileDto.md)
 - [SocialProfileDtoEnvelope](docs/SocialProfileDtoEnvelope.md)
 - [StringListEnvelope](docs/StringListEnvelope.md)
 - [SuiteLicenseAssignmentDto](docs/SuiteLicenseAssignmentDto.md)
 - [SuiteLicenseAssignmentDtoListEnvelope](docs/SuiteLicenseAssignmentDtoListEnvelope.md)
 - [SuiteLicenseDto](docs/SuiteLicenseDto.md)
 - [SuiteLicenseDtoListEnvelope](docs/SuiteLicenseDtoListEnvelope.md)
 - [SuiteLicenseFeatureDto](docs/SuiteLicenseFeatureDto.md)
 - [SuiteLicenseFeatureDtoListEnvelope](docs/SuiteLicenseFeatureDtoListEnvelope.md)
 - [TenantCreateDto](docs/TenantCreateDto.md)
 - [TenantDepartmentCreateDto](docs/TenantDepartmentCreateDto.md)
 - [TenantDepartmentDto](docs/TenantDepartmentDto.md)
 - [TenantDepartmentDtoEnvelope](docs/TenantDepartmentDtoEnvelope.md)
 - [TenantDepartmentDtoListEnvelope](docs/TenantDepartmentDtoListEnvelope.md)
 - [TenantDepartmentUpdateDto](docs/TenantDepartmentUpdateDto.md)
 - [TenantDto](docs/TenantDto.md)
 - [TenantDtoEnvelope](docs/TenantDtoEnvelope.md)
 - [TenantEnrollmentCreateDto](docs/TenantEnrollmentCreateDto.md)
 - [TenantEnrollmentDto](docs/TenantEnrollmentDto.md)
 - [TenantEnrollmentDtoEnvelope](docs/TenantEnrollmentDtoEnvelope.md)
 - [TenantEnrollmentDtoListEnvelope](docs/TenantEnrollmentDtoListEnvelope.md)
 - [TenantEnrollmentUpdateDto](docs/TenantEnrollmentUpdateDto.md)
 - [TenantIndustryCreateDto](docs/TenantIndustryCreateDto.md)
 - [TenantIndustryDto](docs/TenantIndustryDto.md)
 - [TenantIndustryDtoEnvelope](docs/TenantIndustryDtoEnvelope.md)
 - [TenantIndustryDtoListEnvelope](docs/TenantIndustryDtoListEnvelope.md)
 - [TenantIndustryUpdateDto](docs/TenantIndustryUpdateDto.md)
 - [TenantInvitationCreateDto](docs/TenantInvitationCreateDto.md)
 - [TenantInvitationDto](docs/TenantInvitationDto.md)
 - [TenantInvitationDtoEnvelope](docs/TenantInvitationDtoEnvelope.md)
 - [TenantInvitationDtoListEnvelope](docs/TenantInvitationDtoListEnvelope.md)
 - [TenantPositionCreateDto](docs/TenantPositionCreateDto.md)
 - [TenantPositionDto](docs/TenantPositionDto.md)
 - [TenantPositionDtoEnvelope](docs/TenantPositionDtoEnvelope.md)
 - [TenantPositionDtoListEnvelope](docs/TenantPositionDtoListEnvelope.md)
 - [TenantPositionUpdateDto](docs/TenantPositionUpdateDto.md)
 - [TenantSegmentCreateDto](docs/TenantSegmentCreateDto.md)
 - [TenantSegmentDto](docs/TenantSegmentDto.md)
 - [TenantSegmentDtoEnvelope](docs/TenantSegmentDtoEnvelope.md)
 - [TenantSegmentDtoListEnvelope](docs/TenantSegmentDtoListEnvelope.md)
 - [TenantSegmentUpdateDto](docs/TenantSegmentUpdateDto.md)
 - [TenantSizeCreateDto](docs/TenantSizeCreateDto.md)
 - [TenantSizeDto](docs/TenantSizeDto.md)
 - [TenantSizeDtoEnvelope](docs/TenantSizeDtoEnvelope.md)
 - [TenantSizeDtoListEnvelope](docs/TenantSizeDtoListEnvelope.md)
 - [TenantSizeUpdateDto](docs/TenantSizeUpdateDto.md)
 - [TenantTeamContactEnrollmentCreateDto](docs/TenantTeamContactEnrollmentCreateDto.md)
 - [TenantTeamContactEnrollmentDto](docs/TenantTeamContactEnrollmentDto.md)
 - [TenantTeamContactEnrollmentDtoEnvelope](docs/TenantTeamContactEnrollmentDtoEnvelope.md)
 - [TenantTeamContactEnrollmentDtoListEnvelope](docs/TenantTeamContactEnrollmentDtoListEnvelope.md)
 - [TenantTeamContactEnrollmentUpdateDto](docs/TenantTeamContactEnrollmentUpdateDto.md)
 - [TenantTeamCreateDto](docs/TenantTeamCreateDto.md)
 - [TenantTeamDto](docs/TenantTeamDto.md)
 - [TenantTeamDtoEnvelope](docs/TenantTeamDtoEnvelope.md)
 - [TenantTeamDtoListEnvelope](docs/TenantTeamDtoListEnvelope.md)
 - [TenantTeamEmployeeEnrollmentCreateDto](docs/TenantTeamEmployeeEnrollmentCreateDto.md)
 - [TenantTeamEmployeeEnrollmentDto](docs/TenantTeamEmployeeEnrollmentDto.md)
 - [TenantTeamEmployeeEnrollmentDtoEnvelope](docs/TenantTeamEmployeeEnrollmentDtoEnvelope.md)
 - [TenantTeamEmployeeEnrollmentDtoListEnvelope](docs/TenantTeamEmployeeEnrollmentDtoListEnvelope.md)
 - [TenantTeamEmployeeEnrollmentUpdateDto](docs/TenantTeamEmployeeEnrollmentUpdateDto.md)
 - [TenantTeamProjectEnrollmentCreateDto](docs/TenantTeamProjectEnrollmentCreateDto.md)
 - [TenantTeamProjectEnrollmentDto](docs/TenantTeamProjectEnrollmentDto.md)
 - [TenantTeamProjectEnrollmentDtoEnvelope](docs/TenantTeamProjectEnrollmentDtoEnvelope.md)
 - [TenantTeamProjectEnrollmentDtoListEnvelope](docs/TenantTeamProjectEnrollmentDtoListEnvelope.md)
 - [TenantTeamProjectEnrollmentUpdateDto](docs/TenantTeamProjectEnrollmentUpdateDto.md)
 - [TenantTeamRecordCreateDto](docs/TenantTeamRecordCreateDto.md)
 - [TenantTeamRecordDto](docs/TenantTeamRecordDto.md)
 - [TenantTeamRecordDtoEnvelope](docs/TenantTeamRecordDtoEnvelope.md)
 - [TenantTeamRecordDtoListEnvelope](docs/TenantTeamRecordDtoListEnvelope.md)
 - [TenantTeamRecordUpdateDto](docs/TenantTeamRecordUpdateDto.md)
 - [TenantTeamUpdateDto](docs/TenantTeamUpdateDto.md)
 - [TenantTerritoryCreateDto](docs/TenantTerritoryCreateDto.md)
 - [TenantTerritoryDto](docs/TenantTerritoryDto.md)
 - [TenantTerritoryDtoEnvelope](docs/TenantTerritoryDtoEnvelope.md)
 - [TenantTerritoryDtoListEnvelope](docs/TenantTerritoryDtoListEnvelope.md)
 - [TenantTerritoryUpdateDto](docs/TenantTerritoryUpdateDto.md)
 - [TenantTypeCreateDto](docs/TenantTypeCreateDto.md)
 - [TenantTypeDto](docs/TenantTypeDto.md)
 - [TenantTypeDtoEnvelope](docs/TenantTypeDtoEnvelope.md)
 - [TenantTypeDtoListEnvelope](docs/TenantTypeDtoListEnvelope.md)
 - [TenantTypeUpdateDto](docs/TenantTypeUpdateDto.md)
 - [TenantUnitCreateDto](docs/TenantUnitCreateDto.md)
 - [TenantUnitDto](docs/TenantUnitDto.md)
 - [TenantUnitDtoEnvelope](docs/TenantUnitDtoEnvelope.md)
 - [TenantUnitDtoListEnvelope](docs/TenantUnitDtoListEnvelope.md)
 - [TenantUnitUpdateDto](docs/TenantUnitUpdateDto.md)
 - [TenantUpdateDto](docs/TenantUpdateDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)
 - [UnitCreateDto](docs/UnitCreateDto.md)
 - [UnitDto](docs/UnitDto.md)
 - [UnitDtoEnvelope](docs/UnitDtoEnvelope.md)
 - [UnitDtoListEnvelope](docs/UnitDtoListEnvelope.md)
 - [UnitGroupCreateDto](docs/UnitGroupCreateDto.md)
 - [UnitGroupDto](docs/UnitGroupDto.md)
 - [UnitGroupDtoEnvelope](docs/UnitGroupDtoEnvelope.md)
 - [UnitGroupDtoListEnvelope](docs/UnitGroupDtoListEnvelope.md)
 - [UnitGroupUpdateDto](docs/UnitGroupUpdateDto.md)
 - [UnitUpdateDto](docs/UnitUpdateDto.md)
 - [UpdateAvatarAsyncRequest](docs/UpdateAvatarAsyncRequest.md)
 - [UserDto](docs/UserDto.md)
 - [UserDtoListEnvelope](docs/UserDtoListEnvelope.md)
 - [WalletDto](docs/WalletDto.md)
 - [WalletDtoEnvelope](docs/WalletDtoEnvelope.md)
 - [WebPortalDto](docs/WebPortalDto.md)
 - [WebPortalDtoListEnvelope](docs/WebPortalDtoListEnvelope.md)


## Documentation For Authorization

 All endpoints do not require authorization.

