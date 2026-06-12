# HrmsService Bash client

## Overview

This is a Bash client script for accessing HrmsService service.

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
*AppraisalStagesApi* | [**createAppraisalStageAsync**](docs/AppraisalStagesApi.md#createappraisalstageasync) | **POST** /api/v2/HrmsService/AppraisalStages | Create an appraisal stage
*AppraisalStagesApi* | [**deleteAppraisalStageAsync**](docs/AppraisalStagesApi.md#deleteappraisalstageasync) | **DELETE** /api/v2/HrmsService/AppraisalStages/{stageId} | Delete an appraisal stage
*AppraisalStagesApi* | [**getAppraisalStageByIdAsync**](docs/AppraisalStagesApi.md#getappraisalstagebyidasync) | **GET** /api/v2/HrmsService/AppraisalStages/{stageId} | Get appraisal stage by ID
*AppraisalStagesApi* | [**getAppraisalStagesAsync**](docs/AppraisalStagesApi.md#getappraisalstagesasync) | **GET** /api/v2/HrmsService/AppraisalStages | Get appraisal stages
*AppraisalStagesApi* | [**getAppraisalStagesCountAsync**](docs/AppraisalStagesApi.md#getappraisalstagescountasync) | **GET** /api/v2/HrmsService/AppraisalStages/Count | Count appraisal stages
*AppraisalStagesApi* | [**updateAppraisalStageAsync**](docs/AppraisalStagesApi.md#updateappraisalstageasync) | **PUT** /api/v2/HrmsService/AppraisalStages/{stageId} | Update an appraisal stage
*AppraisalWorkflowsApi* | [**createAppraisalWorkflowAsync**](docs/AppraisalWorkflowsApi.md#createappraisalworkflowasync) | **POST** /api/v2/HrmsService/AppraisalWorkflows | Create an appraisal workflow
*AppraisalWorkflowsApi* | [**deleteAppraisalWorkflowAsync**](docs/AppraisalWorkflowsApi.md#deleteappraisalworkflowasync) | **DELETE** /api/v2/HrmsService/AppraisalWorkflows/{workflowId} | Delete an appraisal workflow
*AppraisalWorkflowsApi* | [**getAppraisalWorkflowByIdAsync**](docs/AppraisalWorkflowsApi.md#getappraisalworkflowbyidasync) | **GET** /api/v2/HrmsService/AppraisalWorkflows/{workflowId} | Get appraisal workflow by ID
*AppraisalWorkflowsApi* | [**getAppraisalWorkflowsAsync**](docs/AppraisalWorkflowsApi.md#getappraisalworkflowsasync) | **GET** /api/v2/HrmsService/AppraisalWorkflows | Get appraisal workflows
*AppraisalWorkflowsApi* | [**getAppraisalWorkflowsCountAsync**](docs/AppraisalWorkflowsApi.md#getappraisalworkflowscountasync) | **GET** /api/v2/HrmsService/AppraisalWorkflows/Count | Count appraisal workflows
*AppraisalWorkflowsApi* | [**updateAppraisalWorkflowAsync**](docs/AppraisalWorkflowsApi.md#updateappraisalworkflowasync) | **PUT** /api/v2/HrmsService/AppraisalWorkflows/{workflowId} | Update an appraisal workflow
*CompletionsApi* | [**apiV2AiServiceCompletionsCompleteGet**](docs/CompletionsApi.md#apiv2aiservicecompletionscompleteget) | **GET** /api/v2/AiService/Completions/Complete | 
*EmployeeAppraisalSessionsApi* | [**createEmployeeAppraisalSessionAsync**](docs/EmployeeAppraisalSessionsApi.md#createemployeeappraisalsessionasync) | **POST** /api/v2/HrmsService/EmployeeAppraisalSessions | Create an employee appraisal session
*EmployeeAppraisalSessionsApi* | [**deleteEmployeeAppraisalSessionAsync**](docs/EmployeeAppraisalSessionsApi.md#deleteemployeeappraisalsessionasync) | **DELETE** /api/v2/HrmsService/EmployeeAppraisalSessions/{sessionId} | Delete an employee appraisal session
*EmployeeAppraisalSessionsApi* | [**getEmployeeAppraisalSessionByIdAsync**](docs/EmployeeAppraisalSessionsApi.md#getemployeeappraisalsessionbyidasync) | **GET** /api/v2/HrmsService/EmployeeAppraisalSessions/{sessionId} | Get employee appraisal session by ID
*EmployeeAppraisalSessionsApi* | [**getEmployeeAppraisalSessionsAsync**](docs/EmployeeAppraisalSessionsApi.md#getemployeeappraisalsessionsasync) | **GET** /api/v2/HrmsService/EmployeeAppraisalSessions | Get employee appraisal sessions
*EmployeeAppraisalSessionsApi* | [**getEmployeeAppraisalSessionsCountAsync**](docs/EmployeeAppraisalSessionsApi.md#getemployeeappraisalsessionscountasync) | **GET** /api/v2/HrmsService/EmployeeAppraisalSessions/Count | Count employee appraisal sessions
*EmployeeAppraisalSessionsApi* | [**patchEmployeeAppraisalSessionAsync**](docs/EmployeeAppraisalSessionsApi.md#patchemployeeappraisalsessionasync) | **PATCH** /api/v2/HrmsService/EmployeeAppraisalSessions/{sessionId} | Patch an employee appraisal session
*EmployeeAppraisalSessionsApi* | [**updateEmployeeAppraisalSessionAsync**](docs/EmployeeAppraisalSessionsApi.md#updateemployeeappraisalsessionasync) | **PUT** /api/v2/HrmsService/EmployeeAppraisalSessions/{sessionId} | Update an employee appraisal session
*EmployeeTypesApi* | [**createEmployeeTypeAsync**](docs/EmployeeTypesApi.md#createemployeetypeasync) | **POST** /api/v2/HrmsService/EmployeeTypes | Create an employee type
*EmployeeTypesApi* | [**deleteEmployeeTypeAsync**](docs/EmployeeTypesApi.md#deleteemployeetypeasync) | **DELETE** /api/v2/HrmsService/EmployeeTypes/{employeeTypeId} | Delete an employee type
*EmployeeTypesApi* | [**getEmployeeTypeByIdAsync**](docs/EmployeeTypesApi.md#getemployeetypebyidasync) | **GET** /api/v2/HrmsService/EmployeeTypes/{employeeTypeId} | Get employee type by ID
*EmployeeTypesApi* | [**getEmployeeTypesAsync**](docs/EmployeeTypesApi.md#getemployeetypesasync) | **GET** /api/v2/HrmsService/EmployeeTypes | Get employee types
*EmployeeTypesApi* | [**getEmployeeTypesCountAsync**](docs/EmployeeTypesApi.md#getemployeetypescountasync) | **GET** /api/v2/HrmsService/EmployeeTypes/Count | Count employee types
*EmployeeTypesApi* | [**patchEmployeeTypeAsync**](docs/EmployeeTypesApi.md#patchemployeetypeasync) | **PATCH** /api/v2/HrmsService/EmployeeTypes/{employeeTypeId} | Patch an employee type
*EmployeeTypesApi* | [**updateEmployeeTypeAsync**](docs/EmployeeTypesApi.md#updateemployeetypeasync) | **PUT** /api/v2/HrmsService/EmployeeTypes/{employeeTypeId} | Update an employee type
*EmployeesApi* | [**createEmployeeAsync**](docs/EmployeesApi.md#createemployeeasync) | **POST** /api/v2/HrmsService/Employees | Create an employee
*EmployeesApi* | [**deleteEmployeeAsync**](docs/EmployeesApi.md#deleteemployeeasync) | **DELETE** /api/v2/HrmsService/Employees/{employeeId} | Delete an employee
*EmployeesApi* | [**getEmployeeByIdAsync**](docs/EmployeesApi.md#getemployeebyidasync) | **GET** /api/v2/HrmsService/Employees/{employeeId} | Get employee by ID
*EmployeesApi* | [**getEmployeesAsync**](docs/EmployeesApi.md#getemployeesasync) | **GET** /api/v2/HrmsService/Employees | Get employees
*EmployeesApi* | [**getEmployeesCountAsync**](docs/EmployeesApi.md#getemployeescountasync) | **GET** /api/v2/HrmsService/Employees/Count | Count employees
*EmployeesApi* | [**patchEmployeeAsync**](docs/EmployeesApi.md#patchemployeeasync) | **PATCH** /api/v2/HrmsService/Employees/{employeeId} | Patch an employee
*EmployeesApi* | [**updateEmployeeAsync**](docs/EmployeesApi.md#updateemployeeasync) | **PUT** /api/v2/HrmsService/Employees/{employeeId} | Update an employee
*EmployersApi* | [**createEmployerAsync**](docs/EmployersApi.md#createemployerasync) | **POST** /api/v2/HrmsService/Employers | Create an employer
*EmployersApi* | [**deleteEmployerAsync**](docs/EmployersApi.md#deleteemployerasync) | **DELETE** /api/v2/HrmsService/Employers/{employerId} | Delete an employer
*EmployersApi* | [**getEmployerByIdAsync**](docs/EmployersApi.md#getemployerbyidasync) | **GET** /api/v2/HrmsService/Employers/{employerId} | Get employer by ID
*EmployersApi* | [**getEmployersAsync**](docs/EmployersApi.md#getemployersasync) | **GET** /api/v2/HrmsService/Employers | Get employers
*EmployersApi* | [**getEmployersCountAsync**](docs/EmployersApi.md#getemployerscountasync) | **GET** /api/v2/HrmsService/Employers/Count | Count employers
*EmployersApi* | [**patchEmployerAsync**](docs/EmployersApi.md#patchemployerasync) | **PATCH** /api/v2/HrmsService/Employers/{employerId} | Patch an employer
*EmployersApi* | [**updateEmployerAsync**](docs/EmployersApi.md#updateemployerasync) | **PUT** /api/v2/HrmsService/Employers/{employerId} | Update an employer
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
*GigsApi* | [**createGigAsync**](docs/GigsApi.md#creategigasync) | **POST** /api/v2/HrmsService/Gigs | Create a gig
*GigsApi* | [**deleteGigAsync**](docs/GigsApi.md#deletegigasync) | **DELETE** /api/v2/HrmsService/Gigs/{gigId} | Delete a gig
*GigsApi* | [**getGigByIdAsync**](docs/GigsApi.md#getgigbyidasync) | **GET** /api/v2/HrmsService/Gigs/{gigId} | Get gig by ID
*GigsApi* | [**getGigsAsync**](docs/GigsApi.md#getgigsasync) | **GET** /api/v2/HrmsService/Gigs | Get gigs
*GigsApi* | [**getGigsCountAsync**](docs/GigsApi.md#getgigscountasync) | **GET** /api/v2/HrmsService/Gigs/Count | Count gigs
*GigsApi* | [**patchGigAsync**](docs/GigsApi.md#patchgigasync) | **PATCH** /api/v2/HrmsService/Gigs/{gigId} | Patch a gig
*GigsApi* | [**updateGigAsync**](docs/GigsApi.md#updategigasync) | **PUT** /api/v2/HrmsService/Gigs/{gigId} | Update a gig
*JobOffersApi* | [**createJobOfferAsync**](docs/JobOffersApi.md#createjobofferasync) | **POST** /api/v2/HrmsService/JobOffers | Create a job offer
*JobOffersApi* | [**deleteJobOfferAsync**](docs/JobOffersApi.md#deletejobofferasync) | **DELETE** /api/v2/HrmsService/JobOffers/{jobOfferId} | Delete a job offer
*JobOffersApi* | [**getJobOfferByIdAsync**](docs/JobOffersApi.md#getjobofferbyidasync) | **GET** /api/v2/HrmsService/JobOffers/{jobOfferId} | Get job offer by ID
*JobOffersApi* | [**getJobOffersAsync**](docs/JobOffersApi.md#getjoboffersasync) | **GET** /api/v2/HrmsService/JobOffers | Get job offers
*JobOffersApi* | [**getJobOffersCountAsync**](docs/JobOffersApi.md#getjobofferscountasync) | **GET** /api/v2/HrmsService/JobOffers/Count | Count job offers
*JobOffersApi* | [**patchJobOfferAsync**](docs/JobOffersApi.md#patchjobofferasync) | **PATCH** /api/v2/HrmsService/JobOffers/{jobOfferId} | Patch a job offer
*JobOffersApi* | [**updateJobOfferAsync**](docs/JobOffersApi.md#updatejobofferasync) | **PUT** /api/v2/HrmsService/JobOffers/{jobOfferId} | Update a job offer
*JobTitlesApi* | [**createJobTitleAsync**](docs/JobTitlesApi.md#createjobtitleasync) | **POST** /api/v2/HrmsService/JobTitles | Create a job title
*JobTitlesApi* | [**deleteJobTitleAsync**](docs/JobTitlesApi.md#deletejobtitleasync) | **DELETE** /api/v2/HrmsService/JobTitles/{jobTitleId} | Delete a job title
*JobTitlesApi* | [**getJobTitleByIdAsync**](docs/JobTitlesApi.md#getjobtitlebyidasync) | **GET** /api/v2/HrmsService/JobTitles/{jobTitleId} | Get job title by ID
*JobTitlesApi* | [**getJobTitlesAsync**](docs/JobTitlesApi.md#getjobtitlesasync) | **GET** /api/v2/HrmsService/JobTitles | Get job titles
*JobTitlesApi* | [**getJobTitlesCountAsync**](docs/JobTitlesApi.md#getjobtitlescountasync) | **GET** /api/v2/HrmsService/JobTitles/Count | Count job titles
*JobTitlesApi* | [**patchJobTitleAsync**](docs/JobTitlesApi.md#patchjobtitleasync) | **PATCH** /api/v2/HrmsService/JobTitles/{jobTitleId} | Patch a job title
*JobTitlesApi* | [**updateJobTitleAsync**](docs/JobTitlesApi.md#updatejobtitleasync) | **PUT** /api/v2/HrmsService/JobTitles/{jobTitleId} | Update a job title
*LeaveApplicationsApi* | [**createLeaveApplicationAsync**](docs/LeaveApplicationsApi.md#createleaveapplicationasync) | **POST** /api/v2/HrmsService/LeaveApplications | Create a leave application
*LeaveApplicationsApi* | [**deleteLeaveApplicationAsync**](docs/LeaveApplicationsApi.md#deleteleaveapplicationasync) | **DELETE** /api/v2/HrmsService/LeaveApplications/{leaveApplicationId} | Delete a leave application
*LeaveApplicationsApi* | [**getLeaveApplicationByIdAsync**](docs/LeaveApplicationsApi.md#getleaveapplicationbyidasync) | **GET** /api/v2/HrmsService/LeaveApplications/{leaveApplicationId} | Get leave application by ID
*LeaveApplicationsApi* | [**getLeaveApplicationsAsync**](docs/LeaveApplicationsApi.md#getleaveapplicationsasync) | **GET** /api/v2/HrmsService/LeaveApplications | Get leave applications
*LeaveApplicationsApi* | [**getLeaveApplicationsCountAsync**](docs/LeaveApplicationsApi.md#getleaveapplicationscountasync) | **GET** /api/v2/HrmsService/LeaveApplications/Count | Count leave applications
*LeaveApplicationsApi* | [**patchLeaveApplicationAsync**](docs/LeaveApplicationsApi.md#patchleaveapplicationasync) | **PATCH** /api/v2/HrmsService/LeaveApplications/{leaveApplicationId} | Patch a leave application
*LeaveApplicationsApi* | [**updateLeaveApplicationAsync**](docs/LeaveApplicationsApi.md#updateleaveapplicationasync) | **PUT** /api/v2/HrmsService/LeaveApplications/{leaveApplicationId} | Update a leave application
*LeaveTypesApi* | [**createLeaveTypeAsync**](docs/LeaveTypesApi.md#createleavetypeasync) | **POST** /api/v2/HrmsService/LeaveTypes | Create a leave type
*LeaveTypesApi* | [**deleteLeaveTypeAsync**](docs/LeaveTypesApi.md#deleteleavetypeasync) | **DELETE** /api/v2/HrmsService/LeaveTypes/{leaveTypeId} | Delete a leave type
*LeaveTypesApi* | [**getLeaveTypeByIdAsync**](docs/LeaveTypesApi.md#getleavetypebyidasync) | **GET** /api/v2/HrmsService/LeaveTypes/{leaveTypeId} | Get leave type by ID
*LeaveTypesApi* | [**getLeaveTypesAsync**](docs/LeaveTypesApi.md#getleavetypesasync) | **GET** /api/v2/HrmsService/LeaveTypes | Get leave types
*LeaveTypesApi* | [**getLeaveTypesCountAsync**](docs/LeaveTypesApi.md#getleavetypescountasync) | **GET** /api/v2/HrmsService/LeaveTypes/Count | Count leave types
*LeaveTypesApi* | [**updateLeaveTypeAsync**](docs/LeaveTypesApi.md#updateleavetypeasync) | **PUT** /api/v2/HrmsService/LeaveTypes/{leaveTypeId} | Update a leave type
*PayrollPeriodsApi* | [**createPayrollPeriodAsync**](docs/PayrollPeriodsApi.md#createpayrollperiodasync) | **POST** /api/v2/HrmsService/PayrollPeriods | Create a payroll period
*PayrollPeriodsApi* | [**deletePayrollPeriodAsync**](docs/PayrollPeriodsApi.md#deletepayrollperiodasync) | **DELETE** /api/v2/HrmsService/PayrollPeriods/{periodId} | Delete a payroll period
*PayrollPeriodsApi* | [**getPayrollPeriodByIdAsync**](docs/PayrollPeriodsApi.md#getpayrollperiodbyidasync) | **GET** /api/v2/HrmsService/PayrollPeriods/{periodId} | Get payroll period by ID
*PayrollPeriodsApi* | [**getPayrollPeriodsAsync**](docs/PayrollPeriodsApi.md#getpayrollperiodsasync) | **GET** /api/v2/HrmsService/PayrollPeriods | Get payroll periods
*PayrollPeriodsApi* | [**getPayrollPeriodsCountAsync**](docs/PayrollPeriodsApi.md#getpayrollperiodscountasync) | **GET** /api/v2/HrmsService/PayrollPeriods/Count | Count payroll periods
*PayrollPeriodsApi* | [**updatePayrollPeriodAsync**](docs/PayrollPeriodsApi.md#updatepayrollperiodasync) | **PUT** /api/v2/HrmsService/PayrollPeriods/{periodId} | Update a payroll period
*PayrollsApi* | [**createPayrollAsync**](docs/PayrollsApi.md#createpayrollasync) | **POST** /api/v2/HrmsService/Payrolls | Create a payroll
*PayrollsApi* | [**deletePayrollAsync**](docs/PayrollsApi.md#deletepayrollasync) | **DELETE** /api/v2/HrmsService/Payrolls/{payrollId} | Delete a payroll
*PayrollsApi* | [**getPayrollByIdAsync**](docs/PayrollsApi.md#getpayrollbyidasync) | **GET** /api/v2/HrmsService/Payrolls/{payrollId} | Get payroll by ID
*PayrollsApi* | [**getPayrollsAsync**](docs/PayrollsApi.md#getpayrollsasync) | **GET** /api/v2/HrmsService/Payrolls | Get payrolls
*PayrollsApi* | [**getPayrollsCountAsync**](docs/PayrollsApi.md#getpayrollscountasync) | **GET** /api/v2/HrmsService/Payrolls/Count | Count payrolls
*PayrollsApi* | [**patchPayrollAsync**](docs/PayrollsApi.md#patchpayrollasync) | **PATCH** /api/v2/HrmsService/Payrolls/{payrollId} | Patch a payroll
*PayrollsApi* | [**updatePayrollAsync**](docs/PayrollsApi.md#updatepayrollasync) | **PUT** /api/v2/HrmsService/Payrolls/{payrollId} | Update a payroll
*SalariesApi* | [**createSalaryAsync**](docs/SalariesApi.md#createsalaryasync) | **POST** /api/v2/HrmsService/Salaries | Create a salary
*SalariesApi* | [**deleteSalaryAsync**](docs/SalariesApi.md#deletesalaryasync) | **DELETE** /api/v2/HrmsService/Salaries/{salaryId} | Delete a salary
*SalariesApi* | [**getSalariesAsync**](docs/SalariesApi.md#getsalariesasync) | **GET** /api/v2/HrmsService/Salaries | Get salaries
*SalariesApi* | [**getSalariesCountAsync**](docs/SalariesApi.md#getsalariescountasync) | **GET** /api/v2/HrmsService/Salaries/Count | Count salaries
*SalariesApi* | [**getSalaryByIdAsync**](docs/SalariesApi.md#getsalarybyidasync) | **GET** /api/v2/HrmsService/Salaries/{salaryId} | Get salary by ID
*SalariesApi* | [**patchSalaryAsync**](docs/SalariesApi.md#patchsalaryasync) | **PATCH** /api/v2/HrmsService/Salaries/{salaryId} | Patch a salary
*SalariesApi* | [**updateSalaryAsync**](docs/SalariesApi.md#updatesalaryasync) | **PUT** /api/v2/HrmsService/Salaries/{salaryId} | Update a salary
*SchedulesApi* | [**createScheduleAsync**](docs/SchedulesApi.md#createscheduleasync) | **POST** /api/v2/HrmsService/Schedules | Create a schedule
*SchedulesApi* | [**deleteScheduleAsync**](docs/SchedulesApi.md#deletescheduleasync) | **DELETE** /api/v2/HrmsService/Schedules/{scheduleId} | Delete a schedule
*SchedulesApi* | [**getScheduleByIdAsync**](docs/SchedulesApi.md#getschedulebyidasync) | **GET** /api/v2/HrmsService/Schedules/{scheduleId} | Get schedule by ID
*SchedulesApi* | [**getSchedulesAsync**](docs/SchedulesApi.md#getschedulesasync) | **GET** /api/v2/HrmsService/Schedules | Get schedules
*SchedulesApi* | [**getSchedulesCountAsync**](docs/SchedulesApi.md#getschedulescountasync) | **GET** /api/v2/HrmsService/Schedules/Count | Count schedules
*SchedulesApi* | [**patchScheduleAsync**](docs/SchedulesApi.md#patchscheduleasync) | **PATCH** /api/v2/HrmsService/Schedules/{scheduleId} | Patch a schedule
*SchedulesApi* | [**updateScheduleAsync**](docs/SchedulesApi.md#updatescheduleasync) | **PUT** /api/v2/HrmsService/Schedules/{scheduleId} | Update a schedule
*ShiftsApi* | [**createShiftAsync**](docs/ShiftsApi.md#createshiftasync) | **POST** /api/v2/HrmsService/Shifts | Create a shift
*ShiftsApi* | [**deleteShiftAsync**](docs/ShiftsApi.md#deleteshiftasync) | **DELETE** /api/v2/HrmsService/Shifts/{shiftId} | Delete a shift
*ShiftsApi* | [**getShiftByIdAsync**](docs/ShiftsApi.md#getshiftbyidasync) | **GET** /api/v2/HrmsService/Shifts/{shiftId} | Get shift by ID
*ShiftsApi* | [**getShiftsAsync**](docs/ShiftsApi.md#getshiftsasync) | **GET** /api/v2/HrmsService/Shifts | Get shifts
*ShiftsApi* | [**getShiftsCountAsync**](docs/ShiftsApi.md#getshiftscountasync) | **GET** /api/v2/HrmsService/Shifts/Count | Count shifts
*ShiftsApi* | [**patchShiftAsync**](docs/ShiftsApi.md#patchshiftasync) | **PATCH** /api/v2/HrmsService/Shifts/{shiftId} | Patch a shift
*ShiftsApi* | [**updateShiftAsync**](docs/ShiftsApi.md#updateshiftasync) | **PUT** /api/v2/HrmsService/Shifts/{shiftId} | Update a shift
*TimeIntervalsApi* | [**createTimeIntervalAsync**](docs/TimeIntervalsApi.md#createtimeintervalasync) | **POST** /api/v2/HrmsService/TimeIntervals | Create a time interval
*TimeIntervalsApi* | [**deleteTimeIntervalAsync**](docs/TimeIntervalsApi.md#deletetimeintervalasync) | **DELETE** /api/v2/HrmsService/TimeIntervals/{timeIntervalId} | Delete a time interval
*TimeIntervalsApi* | [**getTimeIntervalByIdAsync**](docs/TimeIntervalsApi.md#gettimeintervalbyidasync) | **GET** /api/v2/HrmsService/TimeIntervals/{timeIntervalId} | Get time interval by ID
*TimeIntervalsApi* | [**getTimeIntervalsAsync**](docs/TimeIntervalsApi.md#gettimeintervalsasync) | **GET** /api/v2/HrmsService/TimeIntervals | Get time intervals
*TimeIntervalsApi* | [**getTimeIntervalsCountAsync**](docs/TimeIntervalsApi.md#gettimeintervalscountasync) | **GET** /api/v2/HrmsService/TimeIntervals/Count | Count time intervals
*TimeIntervalsApi* | [**patchTimeIntervalAsync**](docs/TimeIntervalsApi.md#patchtimeintervalasync) | **PATCH** /api/v2/HrmsService/TimeIntervals/{timeIntervalId} | Patch a time interval
*TimeIntervalsApi* | [**updateTimeIntervalAsync**](docs/TimeIntervalsApi.md#updatetimeintervalasync) | **PUT** /api/v2/HrmsService/TimeIntervals/{timeIntervalId} | Update a time interval
*TrainingProgramCoursesApi* | [**createTrainingProgramCourseAsync**](docs/TrainingProgramCoursesApi.md#createtrainingprogramcourseasync) | **POST** /api/v2/HrmsService/TrainingProgramCourses | Create a training program course
*TrainingProgramCoursesApi* | [**deleteTrainingProgramCourseAsync**](docs/TrainingProgramCoursesApi.md#deletetrainingprogramcourseasync) | **DELETE** /api/v2/HrmsService/TrainingProgramCourses/{courseId} | Delete a training program course
*TrainingProgramCoursesApi* | [**getTrainingProgramCourseByIdAsync**](docs/TrainingProgramCoursesApi.md#gettrainingprogramcoursebyidasync) | **GET** /api/v2/HrmsService/TrainingProgramCourses/{courseId} | Get training program course by ID
*TrainingProgramCoursesApi* | [**getTrainingProgramCoursesAsync**](docs/TrainingProgramCoursesApi.md#gettrainingprogramcoursesasync) | **GET** /api/v2/HrmsService/TrainingProgramCourses | Get training program courses
*TrainingProgramCoursesApi* | [**getTrainingProgramCoursesCountAsync**](docs/TrainingProgramCoursesApi.md#gettrainingprogramcoursescountasync) | **GET** /api/v2/HrmsService/TrainingProgramCourses/Count | Count training program courses
*TrainingProgramCoursesApi* | [**patchTrainingProgramCourseAsync**](docs/TrainingProgramCoursesApi.md#patchtrainingprogramcourseasync) | **PATCH** /api/v2/HrmsService/TrainingProgramCourses/{courseId} | Patch a training program course
*TrainingProgramCoursesApi* | [**updateTrainingProgramCourseAsync**](docs/TrainingProgramCoursesApi.md#updatetrainingprogramcourseasync) | **PUT** /api/v2/HrmsService/TrainingProgramCourses/{courseId} | Update a training program course
*TrainingProgramEventsApi* | [**createTrainingProgramEventAsync**](docs/TrainingProgramEventsApi.md#createtrainingprogrameventasync) | **POST** /api/v2/HrmsService/TrainingProgramEvents | Create a training program event
*TrainingProgramEventsApi* | [**deleteTrainingProgramEventAsync**](docs/TrainingProgramEventsApi.md#deletetrainingprogrameventasync) | **DELETE** /api/v2/HrmsService/TrainingProgramEvents/{eventId} | Delete a training program event
*TrainingProgramEventsApi* | [**getTrainingProgramEventByIdAsync**](docs/TrainingProgramEventsApi.md#gettrainingprogrameventbyidasync) | **GET** /api/v2/HrmsService/TrainingProgramEvents/{eventId} | Get training program event by ID
*TrainingProgramEventsApi* | [**getTrainingProgramEventsAsync**](docs/TrainingProgramEventsApi.md#gettrainingprogrameventsasync) | **GET** /api/v2/HrmsService/TrainingProgramEvents | Get training program events
*TrainingProgramEventsApi* | [**getTrainingProgramEventsCountAsync**](docs/TrainingProgramEventsApi.md#gettrainingprogrameventscountasync) | **GET** /api/v2/HrmsService/TrainingProgramEvents/Count | Count training program events
*TrainingProgramEventsApi* | [**patchTrainingProgramEventAsync**](docs/TrainingProgramEventsApi.md#patchtrainingprogrameventasync) | **PATCH** /api/v2/HrmsService/TrainingProgramEvents/{eventId} | Patch a training program event
*TrainingProgramEventsApi* | [**updateTrainingProgramEventAsync**](docs/TrainingProgramEventsApi.md#updatetrainingprogrameventasync) | **PUT** /api/v2/HrmsService/TrainingProgramEvents/{eventId} | Update a training program event
*TrainingProgramsApi* | [**createTrainingProgramAsync**](docs/TrainingProgramsApi.md#createtrainingprogramasync) | **POST** /api/v2/HrmsService/TrainingPrograms | Create a training program
*TrainingProgramsApi* | [**deleteTrainingProgramAsync**](docs/TrainingProgramsApi.md#deletetrainingprogramasync) | **DELETE** /api/v2/HrmsService/TrainingPrograms/{programId} | Delete a training program
*TrainingProgramsApi* | [**getTrainingProgramByIdAsync**](docs/TrainingProgramsApi.md#gettrainingprogrambyidasync) | **GET** /api/v2/HrmsService/TrainingPrograms/{programId} | Get training program by ID
*TrainingProgramsApi* | [**getTrainingProgramsAsync**](docs/TrainingProgramsApi.md#gettrainingprogramsasync) | **GET** /api/v2/HrmsService/TrainingPrograms | Get training programs
*TrainingProgramsApi* | [**getTrainingProgramsCountAsync**](docs/TrainingProgramsApi.md#gettrainingprogramscountasync) | **GET** /api/v2/HrmsService/TrainingPrograms/Count | Count training programs
*TrainingProgramsApi* | [**updateTrainingProgramAsync**](docs/TrainingProgramsApi.md#updatetrainingprogramasync) | **PUT** /api/v2/HrmsService/TrainingPrograms/{programId} | Update a training program


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [AppraisalStageCreateDto](docs/AppraisalStageCreateDto.md)
 - [AppraisalStageDto](docs/AppraisalStageDto.md)
 - [AppraisalStageDtoEnvelope](docs/AppraisalStageDtoEnvelope.md)
 - [AppraisalStageDtoListEnvelope](docs/AppraisalStageDtoListEnvelope.md)
 - [AppraisalStageUpdateDto](docs/AppraisalStageUpdateDto.md)
 - [AppraisalWorkflowCreateDto](docs/AppraisalWorkflowCreateDto.md)
 - [AppraisalWorkflowDto](docs/AppraisalWorkflowDto.md)
 - [AppraisalWorkflowDtoEnvelope](docs/AppraisalWorkflowDtoEnvelope.md)
 - [AppraisalWorkflowDtoListEnvelope](docs/AppraisalWorkflowDtoListEnvelope.md)
 - [AppraisalWorkflowUpdateDto](docs/AppraisalWorkflowUpdateDto.md)
 - [ContactDto](docs/ContactDto.md)
 - [EmployeeAppraisalSessionCreateDto](docs/EmployeeAppraisalSessionCreateDto.md)
 - [EmployeeAppraisalSessionDto](docs/EmployeeAppraisalSessionDto.md)
 - [EmployeeAppraisalSessionDtoEnvelope](docs/EmployeeAppraisalSessionDtoEnvelope.md)
 - [EmployeeAppraisalSessionDtoListEnvelope](docs/EmployeeAppraisalSessionDtoListEnvelope.md)
 - [EmployeeAppraisalSessionUpdateDto](docs/EmployeeAppraisalSessionUpdateDto.md)
 - [EmployeeProfileCreateDto](docs/EmployeeProfileCreateDto.md)
 - [EmployeeProfileDto](docs/EmployeeProfileDto.md)
 - [EmployeeProfileDtoEnvelope](docs/EmployeeProfileDtoEnvelope.md)
 - [EmployeeProfileDtoListEnvelope](docs/EmployeeProfileDtoListEnvelope.md)
 - [EmployeeProfileUpdateDto](docs/EmployeeProfileUpdateDto.md)
 - [EmployeeTypeCreateDto](docs/EmployeeTypeCreateDto.md)
 - [EmployeeTypeDto](docs/EmployeeTypeDto.md)
 - [EmployeeTypeDtoEnvelope](docs/EmployeeTypeDtoEnvelope.md)
 - [EmployeeTypeDtoListEnvelope](docs/EmployeeTypeDtoListEnvelope.md)
 - [EmployeeTypeUpdateDto](docs/EmployeeTypeUpdateDto.md)
 - [EmployerProfileCreateDto](docs/EmployerProfileCreateDto.md)
 - [EmployerProfileDto](docs/EmployerProfileDto.md)
 - [EmployerProfileDtoEnvelope](docs/EmployerProfileDtoEnvelope.md)
 - [EmployerProfileDtoListEnvelope](docs/EmployerProfileDtoListEnvelope.md)
 - [EmployerProfileUpdateDto](docs/EmployerProfileUpdateDto.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [GigCreateDto](docs/GigCreateDto.md)
 - [GigDto](docs/GigDto.md)
 - [GigDtoEnvelope](docs/GigDtoEnvelope.md)
 - [GigDtoListEnvelope](docs/GigDtoListEnvelope.md)
 - [GigUpdateDto](docs/GigUpdateDto.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [JobOfferCreateDto](docs/JobOfferCreateDto.md)
 - [JobOfferDto](docs/JobOfferDto.md)
 - [JobOfferDtoEnvelope](docs/JobOfferDtoEnvelope.md)
 - [JobOfferDtoListEnvelope](docs/JobOfferDtoListEnvelope.md)
 - [JobOfferUpdateDto](docs/JobOfferUpdateDto.md)
 - [JobTitleCreateDto](docs/JobTitleCreateDto.md)
 - [JobTitleDto](docs/JobTitleDto.md)
 - [JobTitleDtoEnvelope](docs/JobTitleDtoEnvelope.md)
 - [JobTitleDtoListEnvelope](docs/JobTitleDtoListEnvelope.md)
 - [JobTitleUpdateDto](docs/JobTitleUpdateDto.md)
 - [LeaveApplicationCreateDto](docs/LeaveApplicationCreateDto.md)
 - [LeaveApplicationDto](docs/LeaveApplicationDto.md)
 - [LeaveApplicationDtoEnvelope](docs/LeaveApplicationDtoEnvelope.md)
 - [LeaveApplicationDtoListEnvelope](docs/LeaveApplicationDtoListEnvelope.md)
 - [LeaveApplicationUpdateDto](docs/LeaveApplicationUpdateDto.md)
 - [LeaveTypeCreateDto](docs/LeaveTypeCreateDto.md)
 - [LeaveTypeDto](docs/LeaveTypeDto.md)
 - [LeaveTypeDtoEnvelope](docs/LeaveTypeDtoEnvelope.md)
 - [LeaveTypeDtoListEnvelope](docs/LeaveTypeDtoListEnvelope.md)
 - [LeaveTypeUpdateDto](docs/LeaveTypeUpdateDto.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [Operation](docs/Operation.md)
 - [PayrollCreateDto](docs/PayrollCreateDto.md)
 - [PayrollDto](docs/PayrollDto.md)
 - [PayrollDtoEnvelope](docs/PayrollDtoEnvelope.md)
 - [PayrollDtoListEnvelope](docs/PayrollDtoListEnvelope.md)
 - [PayrollPeriodCreateDto](docs/PayrollPeriodCreateDto.md)
 - [PayrollPeriodDto](docs/PayrollPeriodDto.md)
 - [PayrollPeriodDtoEnvelope](docs/PayrollPeriodDtoEnvelope.md)
 - [PayrollPeriodDtoListEnvelope](docs/PayrollPeriodDtoListEnvelope.md)
 - [PayrollPeriodUpdateDto](docs/PayrollPeriodUpdateDto.md)
 - [PayrollUpdateDto](docs/PayrollUpdateDto.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [SalaryCreateDto](docs/SalaryCreateDto.md)
 - [SalaryDto](docs/SalaryDto.md)
 - [SalaryDtoEnvelope](docs/SalaryDtoEnvelope.md)
 - [SalaryDtoListEnvelope](docs/SalaryDtoListEnvelope.md)
 - [SalaryUpdateDto](docs/SalaryUpdateDto.md)
 - [ScheduleCreateDto](docs/ScheduleCreateDto.md)
 - [ScheduleDto](docs/ScheduleDto.md)
 - [ScheduleDtoEnvelope](docs/ScheduleDtoEnvelope.md)
 - [ScheduleDtoListEnvelope](docs/ScheduleDtoListEnvelope.md)
 - [ScheduleUpdateDto](docs/ScheduleUpdateDto.md)
 - [ShiftCreateDto](docs/ShiftCreateDto.md)
 - [ShiftDto](docs/ShiftDto.md)
 - [ShiftDtoEnvelope](docs/ShiftDtoEnvelope.md)
 - [ShiftDtoListEnvelope](docs/ShiftDtoListEnvelope.md)
 - [ShiftUpdateDto](docs/ShiftUpdateDto.md)
 - [TimeIntervalCreateDto](docs/TimeIntervalCreateDto.md)
 - [TimeIntervalDto](docs/TimeIntervalDto.md)
 - [TimeIntervalDtoEnvelope](docs/TimeIntervalDtoEnvelope.md)
 - [TimeIntervalDtoListEnvelope](docs/TimeIntervalDtoListEnvelope.md)
 - [TimeIntervalUpdateDto](docs/TimeIntervalUpdateDto.md)
 - [TrainingProgramCourseCreateDto](docs/TrainingProgramCourseCreateDto.md)
 - [TrainingProgramCourseDto](docs/TrainingProgramCourseDto.md)
 - [TrainingProgramCourseDtoEnvelope](docs/TrainingProgramCourseDtoEnvelope.md)
 - [TrainingProgramCourseDtoListEnvelope](docs/TrainingProgramCourseDtoListEnvelope.md)
 - [TrainingProgramCourseUpdateDto](docs/TrainingProgramCourseUpdateDto.md)
 - [TrainingProgramCreateDto](docs/TrainingProgramCreateDto.md)
 - [TrainingProgramDto](docs/TrainingProgramDto.md)
 - [TrainingProgramDtoEnvelope](docs/TrainingProgramDtoEnvelope.md)
 - [TrainingProgramDtoListEnvelope](docs/TrainingProgramDtoListEnvelope.md)
 - [TrainingProgramEventCreateDto](docs/TrainingProgramEventCreateDto.md)
 - [TrainingProgramEventDto](docs/TrainingProgramEventDto.md)
 - [TrainingProgramEventDtoEnvelope](docs/TrainingProgramEventDtoEnvelope.md)
 - [TrainingProgramEventDtoListEnvelope](docs/TrainingProgramEventDtoListEnvelope.md)
 - [TrainingProgramEventUpdateDto](docs/TrainingProgramEventUpdateDto.md)
 - [TrainingProgramUpdateDto](docs/TrainingProgramUpdateDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

