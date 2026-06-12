# LearningService Bash client

## Overview

This is a Bash client script for accessing LearningService service.

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
*CourseArticlesApi* | [**createCourseArticleAsync**](docs/CourseArticlesApi.md#createcoursearticleasync) | **POST** /api/v2/LearningService/CourseArticles | Create a new course article
*CourseArticlesApi* | [**deleteCourseArticleAsync**](docs/CourseArticlesApi.md#deletecoursearticleasync) | **DELETE** /api/v2/LearningService/CourseArticles/{articleId} | Delete a course article
*CourseArticlesApi* | [**getCourseArticleByIdAsync**](docs/CourseArticlesApi.md#getcoursearticlebyidasync) | **GET** /api/v2/LearningService/CourseArticles/{articleId} | Get course article by ID
*CourseArticlesApi* | [**getCourseArticlesAsync**](docs/CourseArticlesApi.md#getcoursearticlesasync) | **GET** /api/v2/LearningService/CourseArticles | Get all course articles
*CourseArticlesApi* | [**getCourseArticlesCountAsync**](docs/CourseArticlesApi.md#getcoursearticlescountasync) | **GET** /api/v2/LearningService/CourseArticles/Count | Get course articles count
*CourseArticlesApi* | [**patchCourseArticleAsync**](docs/CourseArticlesApi.md#patchcoursearticleasync) | **PATCH** /api/v2/LearningService/CourseArticles/{articleId} | Patch a course article
*CourseArticlesApi* | [**updateCourseArticleAsync**](docs/CourseArticlesApi.md#updatecoursearticleasync) | **PUT** /api/v2/LearningService/CourseArticles/{articleId} | Update a course article
*CourseAssignmentComponentsApi* | [**createCourseAssignmentComponentAsync**](docs/CourseAssignmentComponentsApi.md#createcourseassignmentcomponentasync) | **POST** /api/v2/LearningService/CourseAssignmentComponents | Create a course assignment component
*CourseAssignmentComponentsApi* | [**deleteCourseAssignmentComponentAsync**](docs/CourseAssignmentComponentsApi.md#deletecourseassignmentcomponentasync) | **DELETE** /api/v2/LearningService/CourseAssignmentComponents/{componentId} | Delete a course assignment component
*CourseAssignmentComponentsApi* | [**getCourseAssignmentComponentByIdAsync**](docs/CourseAssignmentComponentsApi.md#getcourseassignmentcomponentbyidasync) | **GET** /api/v2/LearningService/CourseAssignmentComponents/{componentId} | Get course assignment component by ID
*CourseAssignmentComponentsApi* | [**getCourseAssignmentComponentsAsync**](docs/CourseAssignmentComponentsApi.md#getcourseassignmentcomponentsasync) | **GET** /api/v2/LearningService/CourseAssignmentComponents | Get all course assignment components
*CourseAssignmentComponentsApi* | [**getCourseAssignmentComponentsCountAsync**](docs/CourseAssignmentComponentsApi.md#getcourseassignmentcomponentscountasync) | **GET** /api/v2/LearningService/CourseAssignmentComponents/Count | Get course assignment components count
*CourseAssignmentComponentsApi* | [**patchCourseAssignmentComponentAsync**](docs/CourseAssignmentComponentsApi.md#patchcourseassignmentcomponentasync) | **PATCH** /api/v2/LearningService/CourseAssignmentComponents/{componentId} | Patch a course assignment component
*CourseAssignmentComponentsApi* | [**updateCourseAssignmentComponentAsync**](docs/CourseAssignmentComponentsApi.md#updatecourseassignmentcomponentasync) | **PUT** /api/v2/LearningService/CourseAssignmentComponents/{componentId} | Update a course assignment component
*CourseAssignmentTypesApi* | [**createCourseAssignmentTypeAsync**](docs/CourseAssignmentTypesApi.md#createcourseassignmenttypeasync) | **POST** /api/v2/LearningService/CourseAssignmentTypes | Create a course assignment type
*CourseAssignmentTypesApi* | [**deleteCourseAssignmentTypeAsync**](docs/CourseAssignmentTypesApi.md#deletecourseassignmenttypeasync) | **DELETE** /api/v2/LearningService/CourseAssignmentTypes/{assignmentTypeId} | Delete a course assignment type
*CourseAssignmentTypesApi* | [**getCourseAssignmentTypeByIdAsync**](docs/CourseAssignmentTypesApi.md#getcourseassignmenttypebyidasync) | **GET** /api/v2/LearningService/CourseAssignmentTypes/{assignmentTypeId} | Get course assignment type by ID
*CourseAssignmentTypesApi* | [**getCourseAssignmentTypesAsync**](docs/CourseAssignmentTypesApi.md#getcourseassignmenttypesasync) | **GET** /api/v2/LearningService/CourseAssignmentTypes | Get all course assignment types
*CourseAssignmentTypesApi* | [**getCourseAssignmentTypesCountAsync**](docs/CourseAssignmentTypesApi.md#getcourseassignmenttypescountasync) | **GET** /api/v2/LearningService/CourseAssignmentTypes/Count | Get course assignment types count
*CourseAssignmentTypesApi* | [**patchCourseAssignmentTypeAsync**](docs/CourseAssignmentTypesApi.md#patchcourseassignmenttypeasync) | **PATCH** /api/v2/LearningService/CourseAssignmentTypes/{assignmentTypeId} | Patch a course assignment type
*CourseAssignmentTypesApi* | [**updateCourseAssignmentTypeAsync**](docs/CourseAssignmentTypesApi.md#updatecourseassignmenttypeasync) | **PUT** /api/v2/LearningService/CourseAssignmentTypes/{assignmentTypeId} | Update a course assignment type
*CourseAssignmentsApi* | [**createCourseAssignmentAsync**](docs/CourseAssignmentsApi.md#createcourseassignmentasync) | **POST** /api/v2/LearningService/CourseAssignments | Create a new course assignment
*CourseAssignmentsApi* | [**deleteCourseAssignmentAsync**](docs/CourseAssignmentsApi.md#deletecourseassignmentasync) | **DELETE** /api/v2/LearningService/CourseAssignments/{assignmentId} | Delete a course assignment
*CourseAssignmentsApi* | [**getCourseAssignmentByIdAsync**](docs/CourseAssignmentsApi.md#getcourseassignmentbyidasync) | **GET** /api/v2/LearningService/CourseAssignments/{assignmentId} | Get course assignment by ID
*CourseAssignmentsApi* | [**getCourseAssignmentsAsync**](docs/CourseAssignmentsApi.md#getcourseassignmentsasync) | **GET** /api/v2/LearningService/CourseAssignments | Get all course assignments
*CourseAssignmentsApi* | [**getCourseAssignmentsCountAsync**](docs/CourseAssignmentsApi.md#getcourseassignmentscountasync) | **GET** /api/v2/LearningService/CourseAssignments/Count | Get course assignments count
*CourseAssignmentsApi* | [**patchCourseAssignmentAsync**](docs/CourseAssignmentsApi.md#patchcourseassignmentasync) | **PATCH** /api/v2/LearningService/CourseAssignments/{assignmentId} | Patch a course assignment
*CourseAssignmentsApi* | [**updateCourseAssignmentAsync**](docs/CourseAssignmentsApi.md#updatecourseassignmentasync) | **PUT** /api/v2/LearningService/CourseAssignments/{assignmentId} | Update a course assignment
*CourseCategoriesApi* | [**createCourseCategoryAsync**](docs/CourseCategoriesApi.md#createcoursecategoryasync) | **POST** /api/v2/LearningService/CourseCategories | Create a new course category
*CourseCategoriesApi* | [**deleteCourseCategoryAsync**](docs/CourseCategoriesApi.md#deletecoursecategoryasync) | **DELETE** /api/v2/LearningService/CourseCategories/{categoryId} | Delete a course category
*CourseCategoriesApi* | [**getCourseCategoriesAsync**](docs/CourseCategoriesApi.md#getcoursecategoriesasync) | **GET** /api/v2/LearningService/CourseCategories | Get all course categories
*CourseCategoriesApi* | [**getCourseCategoriesCountAsync**](docs/CourseCategoriesApi.md#getcoursecategoriescountasync) | **GET** /api/v2/LearningService/CourseCategories/Count | Get course categories count
*CourseCategoriesApi* | [**getCourseCategoryByIdAsync**](docs/CourseCategoriesApi.md#getcoursecategorybyidasync) | **GET** /api/v2/LearningService/CourseCategories/{categoryId} | Get course category by ID
*CourseCategoriesApi* | [**patchCourseCategoryAsync**](docs/CourseCategoriesApi.md#patchcoursecategoryasync) | **PATCH** /api/v2/LearningService/CourseCategories/{categoryId} | Patch a course category
*CourseCategoriesApi* | [**updateCourseCategoryAsync**](docs/CourseCategoriesApi.md#updatecoursecategoryasync) | **PUT** /api/v2/LearningService/CourseCategories/{categoryId} | Update a course category
*CourseCertificatesApi* | [**createCourseCertificateAsync**](docs/CourseCertificatesApi.md#createcoursecertificateasync) | **POST** /api/v2/LearningService/CourseCertificates | Create a course certificate
*CourseCertificatesApi* | [**createCourseCertificateTemplateAsync**](docs/CourseCertificatesApi.md#createcoursecertificatetemplateasync) | **POST** /api/v2/LearningService/CourseCertificates/Template | Create a certificate template
*CourseCertificatesApi* | [**deleteCourseCertificateAsync**](docs/CourseCertificatesApi.md#deletecoursecertificateasync) | **DELETE** /api/v2/LearningService/CourseCertificates/{courseCertificateId} | Delete a course certificate
*CourseCertificatesApi* | [**deleteCourseCertificateTemplateAsync**](docs/CourseCertificatesApi.md#deletecoursecertificatetemplateasync) | **DELETE** /api/v2/LearningService/CourseCertificates/Template/{courseCertificateTemplateId} | Delete a certificate template
*CourseCertificatesApi* | [**getCourseCertificateAsync**](docs/CourseCertificatesApi.md#getcoursecertificateasync) | **GET** /api/v2/LearningService/CourseCertificates/{courseCertificateId} | Get course certificate by ID
*CourseCertificatesApi* | [**getCourseCertificateTemplateAsync**](docs/CourseCertificatesApi.md#getcoursecertificatetemplateasync) | **GET** /api/v2/LearningService/CourseCertificates/Template/{courseCertificateTemplateId} | Get certificate template by ID
*CourseCertificatesApi* | [**getCourseCertificateTemplatesAsync**](docs/CourseCertificatesApi.md#getcoursecertificatetemplatesasync) | **GET** /api/v2/LearningService/CourseCertificates/Template | Get all certificate templates
*CourseCertificatesApi* | [**getCourseCertificateTemplatesCountAsync**](docs/CourseCertificatesApi.md#getcoursecertificatetemplatescountasync) | **GET** /api/v2/LearningService/CourseCertificates/Template/Count | Get certificate templates count
*CourseCertificatesApi* | [**getCourseCertificatesAsync**](docs/CourseCertificatesApi.md#getcoursecertificatesasync) | **GET** /api/v2/LearningService/CourseCertificates | Get all course certificates
*CourseCertificatesApi* | [**getCourseCertificatesCountAsync**](docs/CourseCertificatesApi.md#getcoursecertificatescountasync) | **GET** /api/v2/LearningService/CourseCertificates/Count | Get course certificates count
*CourseCertificatesApi* | [**patchCourseCertificateAsync**](docs/CourseCertificatesApi.md#patchcoursecertificateasync) | **PATCH** /api/v2/LearningService/CourseCertificates/{courseCertificateId} | Patch a course certificate
*CourseCertificatesApi* | [**patchCourseCertificateTemplateAsync**](docs/CourseCertificatesApi.md#patchcoursecertificatetemplateasync) | **PATCH** /api/v2/LearningService/CourseCertificates/Template/{courseCertificateTemplateId} | Patch a certificate template
*CourseCertificatesApi* | [**updateCourseCertificateAsync**](docs/CourseCertificatesApi.md#updatecoursecertificateasync) | **PUT** /api/v2/LearningService/CourseCertificates/{courseCertificateId} | Update a course certificate
*CourseCertificatesApi* | [**updateCourseCertificateTemplateAsync**](docs/CourseCertificatesApi.md#updatecoursecertificatetemplateasync) | **PUT** /api/v2/LearningService/CourseCertificates/Template/{courseCertificateTemplateId} | Update a certificate template
*CourseCohortsApi* | [**createCourseCohortAsync**](docs/CourseCohortsApi.md#createcoursecohortasync) | **POST** /api/v2/LearningService/CourseCohorts | Create a new course cohort
*CourseCohortsApi* | [**deleteCourseCohortAsync**](docs/CourseCohortsApi.md#deletecoursecohortasync) | **DELETE** /api/v2/LearningService/CourseCohorts/{cohortId} | Delete a course cohort
*CourseCohortsApi* | [**getCourseCohortByIdAsync**](docs/CourseCohortsApi.md#getcoursecohortbyidasync) | **GET** /api/v2/LearningService/CourseCohorts/{cohortId} | Get course cohort by ID
*CourseCohortsApi* | [**getCourseCohortsAsync**](docs/CourseCohortsApi.md#getcoursecohortsasync) | **GET** /api/v2/LearningService/CourseCohorts | Get all course cohorts
*CourseCohortsApi* | [**getCourseCohortsCountAsync**](docs/CourseCohortsApi.md#getcoursecohortscountasync) | **GET** /api/v2/LearningService/CourseCohorts/Count | Get course cohorts count
*CourseCohortsApi* | [**patchCourseCohortAsync**](docs/CourseCohortsApi.md#patchcoursecohortasync) | **PATCH** /api/v2/LearningService/CourseCohorts/{cohortId} | Patch a course cohort
*CourseCohortsApi* | [**updateCourseCohortAsync**](docs/CourseCohortsApi.md#updatecoursecohortasync) | **PUT** /api/v2/LearningService/CourseCohorts/{cohortId} | Update a course cohort
*CourseContentGroupsApi* | [**createCourseContentGroupAsync**](docs/CourseContentGroupsApi.md#createcoursecontentgroupasync) | **POST** /api/v2/LearningService/CourseContentGroups | Create a new course content group
*CourseContentGroupsApi* | [**deleteCourseContentGroupAsync**](docs/CourseContentGroupsApi.md#deletecoursecontentgroupasync) | **DELETE** /api/v2/LearningService/CourseContentGroups/{groupId} | Delete a course content group
*CourseContentGroupsApi* | [**getCourseContentGroupByIdAsync**](docs/CourseContentGroupsApi.md#getcoursecontentgroupbyidasync) | **GET** /api/v2/LearningService/CourseContentGroups/{groupId} | Get course content group by ID
*CourseContentGroupsApi* | [**getCourseContentGroupsAsync**](docs/CourseContentGroupsApi.md#getcoursecontentgroupsasync) | **GET** /api/v2/LearningService/CourseContentGroups | Get all course content groups
*CourseContentGroupsApi* | [**getCourseContentGroupsByCourseAsync**](docs/CourseContentGroupsApi.md#getcoursecontentgroupsbycourseasync) | **GET** /api/v2/LearningService/Courses/{courseId}/ContentGroups | Get course content groups by course
*CourseContentGroupsApi* | [**getCourseContentGroupsByCourseCountAsync**](docs/CourseContentGroupsApi.md#getcoursecontentgroupsbycoursecountasync) | **GET** /api/v2/LearningService/Courses/{courseId}/ContentGroups/Count | Get course content groups count by course
*CourseContentGroupsApi* | [**getCourseContentGroupsCountAsync**](docs/CourseContentGroupsApi.md#getcoursecontentgroupscountasync) | **GET** /api/v2/LearningService/CourseContentGroups/Count | Get course content groups count
*CourseContentGroupsApi* | [**patchCourseContentGroupAsync**](docs/CourseContentGroupsApi.md#patchcoursecontentgroupasync) | **PATCH** /api/v2/LearningService/CourseContentGroups/{groupId} | Patch a course content group
*CourseContentGroupsApi* | [**updateCourseContentGroupAsync**](docs/CourseContentGroupsApi.md#updatecoursecontentgroupasync) | **PUT** /api/v2/LearningService/CourseContentGroups/{groupId} | Update a course content group
*CourseEnrollmentsApi* | [**createCourseEnrollmentAsync**](docs/CourseEnrollmentsApi.md#createcourseenrollmentasync) | **POST** /api/v2/LearningService/CourseEnrollments | Create a new course enrollment
*CourseEnrollmentsApi* | [**deleteCourseEnrollmentAsync**](docs/CourseEnrollmentsApi.md#deletecourseenrollmentasync) | **DELETE** /api/v2/LearningService/CourseEnrollments/{courseEnrollmentId} | Delete a course enrollment
*CourseEnrollmentsApi* | [**getCourseEnrollmentAsync**](docs/CourseEnrollmentsApi.md#getcourseenrollmentasync) | **GET** /api/v2/LearningService/CourseEnrollments/{courseEnrollmentId} | Get course enrollment by ID
*CourseEnrollmentsApi* | [**getEnrollmentsAsync**](docs/CourseEnrollmentsApi.md#getenrollmentsasync) | **GET** /api/v2/LearningService/CourseEnrollments | Get all course enrollments
*CourseEnrollmentsApi* | [**getEnrollmentsCountAsync**](docs/CourseEnrollmentsApi.md#getenrollmentscountasync) | **GET** /api/v2/LearningService/CourseEnrollments/Count | Get course enrollments count
*CourseEnrollmentsApi* | [**getStudentCourseEnrollmentsAsync**](docs/CourseEnrollmentsApi.md#getstudentcourseenrollmentsasync) | **GET** /api/v2/LearningService/CourseEnrollments/Student/{studentProfileId} | Get enrollments by student
*CourseEnrollmentsApi* | [**patchCourseEnrollmentAsync**](docs/CourseEnrollmentsApi.md#patchcourseenrollmentasync) | **PATCH** /api/v2/LearningService/CourseEnrollments/{courseEnrollmentId} | Patch a course enrollment
*CourseEnrollmentsApi* | [**updateCourseEnrollmentAsync**](docs/CourseEnrollmentsApi.md#updatecourseenrollmentasync) | **PUT** /api/v2/LearningService/CourseEnrollments/{courseEnrollmentId} | Update a course enrollment
*CourseFilesApi* | [**createCourseFileAsync**](docs/CourseFilesApi.md#createcoursefileasync) | **POST** /api/v2/LearningService/CourseFiles | Create a new course file
*CourseFilesApi* | [**deleteCourseFileAsync**](docs/CourseFilesApi.md#deletecoursefileasync) | **DELETE** /api/v2/LearningService/CourseFiles/{fileId} | Delete a course file
*CourseFilesApi* | [**getCourseFileByIdAsync**](docs/CourseFilesApi.md#getcoursefilebyidasync) | **GET** /api/v2/LearningService/CourseFiles/{fileId} | Get course file by ID
*CourseFilesApi* | [**getCourseFilesAsync**](docs/CourseFilesApi.md#getcoursefilesasync) | **GET** /api/v2/LearningService/CourseFiles | Get all course files
*CourseFilesApi* | [**getCourseFilesCountAsync**](docs/CourseFilesApi.md#getcoursefilescountasync) | **GET** /api/v2/LearningService/CourseFiles/Count | Get course files count
*CourseFilesApi* | [**patchCourseFileAsync**](docs/CourseFilesApi.md#patchcoursefileasync) | **PATCH** /api/v2/LearningService/CourseFiles/{fileId} | Patch a course file
*CourseFilesApi* | [**updateCourseFileAsync**](docs/CourseFilesApi.md#updatecoursefileasync) | **PUT** /api/v2/LearningService/CourseFiles/{fileId} | Update a course file
*CourseForumsApi* | [**createCourseForumAsync**](docs/CourseForumsApi.md#createcourseforumasync) | **POST** /api/v2/LearningService/CourseForums | Create a course forum
*CourseForumsApi* | [**deleteCourseForumAsync**](docs/CourseForumsApi.md#deletecourseforumasync) | **DELETE** /api/v2/LearningService/CourseForums/{forumId} | Delete a course forum
*CourseForumsApi* | [**getCourseForumByIdAsync**](docs/CourseForumsApi.md#getcourseforumbyidasync) | **GET** /api/v2/LearningService/CourseForums/{forumId} | Get course forum by ID
*CourseForumsApi* | [**getCourseForumsAsync**](docs/CourseForumsApi.md#getcourseforumsasync) | **GET** /api/v2/LearningService/CourseForums | Get all course forums
*CourseForumsApi* | [**getCourseForumsCountAsync**](docs/CourseForumsApi.md#getcourseforumscountasync) | **GET** /api/v2/LearningService/CourseForums/Count | Get course forums count
*CourseForumsApi* | [**patchCourseForumAsync**](docs/CourseForumsApi.md#patchcourseforumasync) | **PATCH** /api/v2/LearningService/CourseForums/{forumId} | Patch a course forum
*CourseForumsApi* | [**updateCourseForumAsync**](docs/CourseForumsApi.md#updatecourseforumasync) | **PUT** /api/v2/LearningService/CourseForums/{forumId} | Update a course forum
*CourseGradingRubricsApi* | [**createCourseGradingRubricAsync**](docs/CourseGradingRubricsApi.md#createcoursegradingrubricasync) | **POST** /api/v2/LearningService/CourseGradingRubrics | Create a course grading rubric
*CourseGradingRubricsApi* | [**deleteCourseGradingRubricAsync**](docs/CourseGradingRubricsApi.md#deletecoursegradingrubricasync) | **DELETE** /api/v2/LearningService/CourseGradingRubrics/{rubricId} | Delete a course grading rubric
*CourseGradingRubricsApi* | [**getCourseGradingRubricByIdAsync**](docs/CourseGradingRubricsApi.md#getcoursegradingrubricbyidasync) | **GET** /api/v2/LearningService/CourseGradingRubrics/{rubricId} | Get course grading rubric by ID
*CourseGradingRubricsApi* | [**getCourseGradingRubricsAsync**](docs/CourseGradingRubricsApi.md#getcoursegradingrubricsasync) | **GET** /api/v2/LearningService/CourseGradingRubrics | Get all course grading rubrics
*CourseGradingRubricsApi* | [**getCourseGradingRubricsCountAsync**](docs/CourseGradingRubricsApi.md#getcoursegradingrubricscountasync) | **GET** /api/v2/LearningService/CourseGradingRubrics/Count | Get course grading rubrics count
*CourseGradingRubricsApi* | [**patchCourseGradingRubricAsync**](docs/CourseGradingRubricsApi.md#patchcoursegradingrubricasync) | **PATCH** /api/v2/LearningService/CourseGradingRubrics/{rubricId} | Patch a course grading rubric
*CourseGradingRubricsApi* | [**updateCourseGradingRubricAsync**](docs/CourseGradingRubricsApi.md#updatecoursegradingrubricasync) | **PUT** /api/v2/LearningService/CourseGradingRubrics/{rubricId} | Update a course grading rubric
*CourseHandoutsApi* | [**createCourseHandoutAsync**](docs/CourseHandoutsApi.md#createcoursehandoutasync) | **POST** /api/v2/LearningService/CourseHandouts | Create a course handout
*CourseHandoutsApi* | [**deleteCourseHandoutAsync**](docs/CourseHandoutsApi.md#deletecoursehandoutasync) | **DELETE** /api/v2/LearningService/CourseHandouts/{handoutId} | Delete a course handout
*CourseHandoutsApi* | [**getCourseHandoutByIdAsync**](docs/CourseHandoutsApi.md#getcoursehandoutbyidasync) | **GET** /api/v2/LearningService/CourseHandouts/{handoutId} | Get course handout by ID
*CourseHandoutsApi* | [**getCourseHandoutsAsync**](docs/CourseHandoutsApi.md#getcoursehandoutsasync) | **GET** /api/v2/LearningService/CourseHandouts | Get all course handouts
*CourseHandoutsApi* | [**getCourseHandoutsCountAsync**](docs/CourseHandoutsApi.md#getcoursehandoutscountasync) | **GET** /api/v2/LearningService/CourseHandouts/Count | Get course handouts count
*CourseHandoutsApi* | [**patchCourseHandoutAsync**](docs/CourseHandoutsApi.md#patchcoursehandoutasync) | **PATCH** /api/v2/LearningService/CourseHandouts/{handoutId} | Patch a course handout
*CourseHandoutsApi* | [**updateCourseHandoutAsync**](docs/CourseHandoutsApi.md#updatecoursehandoutasync) | **PUT** /api/v2/LearningService/CourseHandouts/{handoutId} | Update a course handout
*CourseLibrariesApi* | [**createCourseLibraryAsync**](docs/CourseLibrariesApi.md#createcourselibraryasync) | **POST** /api/v2/LearningService/CourseLibraries | Create a course library
*CourseLibrariesApi* | [**deleteCourseLibraryAsync**](docs/CourseLibrariesApi.md#deletecourselibraryasync) | **DELETE** /api/v2/LearningService/CourseLibraries/{libraryId} | Delete a course library
*CourseLibrariesApi* | [**getCourseLibrariesAsync**](docs/CourseLibrariesApi.md#getcourselibrariesasync) | **GET** /api/v2/LearningService/CourseLibraries | Get all course libraries
*CourseLibrariesApi* | [**getCourseLibrariesCountAsync**](docs/CourseLibrariesApi.md#getcourselibrariescountasync) | **GET** /api/v2/LearningService/CourseLibraries/Count | Get course libraries count
*CourseLibrariesApi* | [**getCourseLibraryByIdAsync**](docs/CourseLibrariesApi.md#getcourselibrarybyidasync) | **GET** /api/v2/LearningService/CourseLibraries/{libraryId} | Get course library by ID
*CourseLibrariesApi* | [**patchCourseLibraryAsync**](docs/CourseLibrariesApi.md#patchcourselibraryasync) | **PATCH** /api/v2/LearningService/CourseLibraries/{libraryId} | Patch a course library
*CourseLibrariesApi* | [**updateCourseLibraryAsync**](docs/CourseLibrariesApi.md#updatecourselibraryasync) | **PUT** /api/v2/LearningService/CourseLibraries/{libraryId} | Update a course library
*CoursePagesApi* | [**createCoursePageAsync**](docs/CoursePagesApi.md#createcoursepageasync) | **POST** /api/v2/LearningService/CoursePages | Create a new course page
*CoursePagesApi* | [**deleteCoursePageAsync**](docs/CoursePagesApi.md#deletecoursepageasync) | **DELETE** /api/v2/LearningService/CoursePages/{pageId} | Delete a course page
*CoursePagesApi* | [**getCoursePageByIdAsync**](docs/CoursePagesApi.md#getcoursepagebyidasync) | **GET** /api/v2/LearningService/CoursePages/{pageId} | Get course page by ID
*CoursePagesApi* | [**getCoursePagesAsync**](docs/CoursePagesApi.md#getcoursepagesasync) | **GET** /api/v2/LearningService/CoursePages | Get all course pages
*CoursePagesApi* | [**getCoursePagesCountAsync**](docs/CoursePagesApi.md#getcoursepagescountasync) | **GET** /api/v2/LearningService/CoursePages/Count | Get course pages count
*CoursePagesApi* | [**patchCoursePageAsync**](docs/CoursePagesApi.md#patchcoursepageasync) | **PATCH** /api/v2/LearningService/CoursePages/{pageId} | Patch a course page
*CoursePagesApi* | [**updateCoursePageAsync**](docs/CoursePagesApi.md#updatecoursepageasync) | **PUT** /api/v2/LearningService/CoursePages/{pageId} | Update a course page
*CourseProblemSetsApi* | [**createCourseProblemSetAsync**](docs/CourseProblemSetsApi.md#createcourseproblemsetasync) | **POST** /api/v2/LearningService/CourseProblemSets | Create a new course problem set
*CourseProblemSetsApi* | [**deleteCourseProblemSetAsync**](docs/CourseProblemSetsApi.md#deletecourseproblemsetasync) | **DELETE** /api/v2/LearningService/CourseProblemSets/{problemSetId} | Delete a course problem set
*CourseProblemSetsApi* | [**getCourseProblemSetByIdAsync**](docs/CourseProblemSetsApi.md#getcourseproblemsetbyidasync) | **GET** /api/v2/LearningService/CourseProblemSets/{problemSetId} | Get course problem set by ID
*CourseProblemSetsApi* | [**getCourseProblemSetsAsync**](docs/CourseProblemSetsApi.md#getcourseproblemsetsasync) | **GET** /api/v2/LearningService/CourseProblemSets | Get all course problem sets
*CourseProblemSetsApi* | [**getCourseProblemSetsCountAsync**](docs/CourseProblemSetsApi.md#getcourseproblemsetscountasync) | **GET** /api/v2/LearningService/CourseProblemSets/Count | Get course problem sets count
*CourseProblemSetsApi* | [**patchCourseProblemSetAsync**](docs/CourseProblemSetsApi.md#patchcourseproblemsetasync) | **PATCH** /api/v2/LearningService/CourseProblemSets/{problemSetId} | Patch a course problem set
*CourseProblemSetsApi* | [**updateCourseProblemSetAsync**](docs/CourseProblemSetsApi.md#updatecourseproblemsetasync) | **PUT** /api/v2/LearningService/CourseProblemSets/{problemSetId} | Update a course problem set
*CourseSectionsApi* | [**createCourseSectionAsync**](docs/CourseSectionsApi.md#createcoursesectionasync) | **POST** /api/v2/LearningService/CourseSections | Create a new course section
*CourseSectionsApi* | [**deleteCourseSectionAsync**](docs/CourseSectionsApi.md#deletecoursesectionasync) | **DELETE** /api/v2/LearningService/CourseSections/{sectionId} | Delete a course section
*CourseSectionsApi* | [**getCourseSectionByIdAsync**](docs/CourseSectionsApi.md#getcoursesectionbyidasync) | **GET** /api/v2/LearningService/CourseSections/{sectionId} | Get course section by ID
*CourseSectionsApi* | [**getCourseSectionsAsync**](docs/CourseSectionsApi.md#getcoursesectionsasync) | **GET** /api/v2/LearningService/CourseSections | Get all course sections
*CourseSectionsApi* | [**getCourseSectionsCountAsync**](docs/CourseSectionsApi.md#getcoursesectionscountasync) | **GET** /api/v2/LearningService/CourseSections/Count | Get course sections count
*CourseSectionsApi* | [**patchCourseSectionAsync**](docs/CourseSectionsApi.md#patchcoursesectionasync) | **PATCH** /api/v2/LearningService/CourseSections/{sectionId} | Patch a course section
*CourseSectionsApi* | [**updateCourseSectionAsync**](docs/CourseSectionsApi.md#updatecoursesectionasync) | **PUT** /api/v2/LearningService/CourseSections/{sectionId} | Update a course section
*CourseTeamMembershipsApi* | [**createCourseTeamMembershipAsync**](docs/CourseTeamMembershipsApi.md#createcourseteammembershipasync) | **POST** /api/v2/LearningService/CourseTeamMemberships | Create a course team membership
*CourseTeamMembershipsApi* | [**deleteCourseTeamMembershipAsync**](docs/CourseTeamMembershipsApi.md#deletecourseteammembershipasync) | **DELETE** /api/v2/LearningService/CourseTeamMemberships/{membershipId} | Delete a course team membership
*CourseTeamMembershipsApi* | [**getCourseTeamMembershipByIdAsync**](docs/CourseTeamMembershipsApi.md#getcourseteammembershipbyidasync) | **GET** /api/v2/LearningService/CourseTeamMemberships/{membershipId} | Get course team membership by ID
*CourseTeamMembershipsApi* | [**getCourseTeamMembershipsAsync**](docs/CourseTeamMembershipsApi.md#getcourseteammembershipsasync) | **GET** /api/v2/LearningService/CourseTeamMemberships | Get all course team memberships
*CourseTeamMembershipsApi* | [**getCourseTeamMembershipsCountAsync**](docs/CourseTeamMembershipsApi.md#getcourseteammembershipscountasync) | **GET** /api/v2/LearningService/CourseTeamMemberships/Count | Get course team memberships count
*CourseTeamMembershipsApi* | [**patchCourseTeamMembershipAsync**](docs/CourseTeamMembershipsApi.md#patchcourseteammembershipasync) | **PATCH** /api/v2/LearningService/CourseTeamMemberships/{membershipId} | Patch a course team membership
*CourseTeamMembershipsApi* | [**updateCourseTeamMembershipAsync**](docs/CourseTeamMembershipsApi.md#updatecourseteammembershipasync) | **PUT** /api/v2/LearningService/CourseTeamMemberships/{membershipId} | Update a course team membership
*CourseUnitComponentsApi* | [**createCourseUnitComponentAsync**](docs/CourseUnitComponentsApi.md#createcourseunitcomponentasync) | **POST** /api/v2/LearningService/CourseUnitComponents | Create a new course unit component
*CourseUnitComponentsApi* | [**deleteCourseUnitComponentAsync**](docs/CourseUnitComponentsApi.md#deletecourseunitcomponentasync) | **DELETE** /api/v2/LearningService/CourseUnitComponents/{componentId} | Delete a course unit component
*CourseUnitComponentsApi* | [**getCourseUnitComponentByIdAsync**](docs/CourseUnitComponentsApi.md#getcourseunitcomponentbyidasync) | **GET** /api/v2/LearningService/CourseUnitComponents/{componentId} | Get course unit component by ID
*CourseUnitComponentsApi* | [**getCourseUnitComponentsAsync**](docs/CourseUnitComponentsApi.md#getcourseunitcomponentsasync) | **GET** /api/v2/LearningService/CourseUnitComponents | Get all course unit components
*CourseUnitComponentsApi* | [**getCourseUnitComponentsCountAsync**](docs/CourseUnitComponentsApi.md#getcourseunitcomponentscountasync) | **GET** /api/v2/LearningService/CourseUnitComponents/Count | Get course unit components count
*CourseUnitComponentsApi* | [**patchCourseUnitComponentAsync**](docs/CourseUnitComponentsApi.md#patchcourseunitcomponentasync) | **PATCH** /api/v2/LearningService/CourseUnitComponents/{componentId} | Patch a course unit component
*CourseUnitComponentsApi* | [**updateCourseUnitComponentAsync**](docs/CourseUnitComponentsApi.md#updatecourseunitcomponentasync) | **PUT** /api/v2/LearningService/CourseUnitComponents/{componentId} | Update a course unit component
*CourseUnitsApi* | [**createCourseUnitAsync**](docs/CourseUnitsApi.md#createcourseunitasync) | **POST** /api/v2/LearningService/CourseUnits | Create a new course unit
*CourseUnitsApi* | [**deleteCourseUnitAsync**](docs/CourseUnitsApi.md#deletecourseunitasync) | **DELETE** /api/v2/LearningService/CourseUnits/{unitId} | Delete a course unit
*CourseUnitsApi* | [**getCourseUnitByIdAsync**](docs/CourseUnitsApi.md#getcourseunitbyidasync) | **GET** /api/v2/LearningService/CourseUnits/{unitId} | Get course unit by ID
*CourseUnitsApi* | [**getCourseUnitsAsync**](docs/CourseUnitsApi.md#getcourseunitsasync) | **GET** /api/v2/LearningService/CourseUnits | Get all course units
*CourseUnitsApi* | [**getCourseUnitsCountAsync**](docs/CourseUnitsApi.md#getcourseunitscountasync) | **GET** /api/v2/LearningService/CourseUnits/Count | Get course units count
*CourseUnitsApi* | [**patchCourseUnitAsync**](docs/CourseUnitsApi.md#patchcourseunitasync) | **PATCH** /api/v2/LearningService/CourseUnits/{unitId} | Patch a course unit
*CourseUnitsApi* | [**updateCourseUnitAsync**](docs/CourseUnitsApi.md#updatecourseunitasync) | **PUT** /api/v2/LearningService/CourseUnits/{unitId} | Update a course unit
*CourseUpdatesApi* | [**createCourseUpdateAsync**](docs/CourseUpdatesApi.md#createcourseupdateasync) | **POST** /api/v2/LearningService/CourseUpdates | Create a new course update
*CourseUpdatesApi* | [**deleteCourseUpdateAsync**](docs/CourseUpdatesApi.md#deletecourseupdateasync) | **DELETE** /api/v2/LearningService/CourseUpdates/{updateId} | Delete a course update
*CourseUpdatesApi* | [**getCourseUpdateByIdAsync**](docs/CourseUpdatesApi.md#getcourseupdatebyidasync) | **GET** /api/v2/LearningService/CourseUpdates/{updateId} | Get course update by ID
*CourseUpdatesApi* | [**getCourseUpdatesAsync**](docs/CourseUpdatesApi.md#getcourseupdatesasync) | **GET** /api/v2/LearningService/CourseUpdates | Get all course updates
*CourseUpdatesApi* | [**getCourseUpdatesCountAsync**](docs/CourseUpdatesApi.md#getcourseupdatescountasync) | **GET** /api/v2/LearningService/CourseUpdates/Count | Get course updates count
*CourseUpdatesApi* | [**patchCourseUpdateAsync**](docs/CourseUpdatesApi.md#patchcourseupdateasync) | **PATCH** /api/v2/LearningService/CourseUpdates/{updateId} | Patch a course update
*CourseUpdatesApi* | [**updateCourseUpdateAsync**](docs/CourseUpdatesApi.md#updatecourseupdateasync) | **PUT** /api/v2/LearningService/CourseUpdates/{updateId} | Update a course update
*CourseWikisApi* | [**createCourseWikiAsync**](docs/CourseWikisApi.md#createcoursewikiasync) | **POST** /api/v2/LearningService/CourseWikis | Create a new course wiki
*CourseWikisApi* | [**deleteCourseWikiAsync**](docs/CourseWikisApi.md#deletecoursewikiasync) | **DELETE** /api/v2/LearningService/CourseWikis/{wikiId} | Delete a course wiki
*CourseWikisApi* | [**getCourseWikiByIdAsync**](docs/CourseWikisApi.md#getcoursewikibyidasync) | **GET** /api/v2/LearningService/CourseWikis/{wikiId} | Get course wiki by ID
*CourseWikisApi* | [**getCourseWikisAsync**](docs/CourseWikisApi.md#getcoursewikisasync) | **GET** /api/v2/LearningService/CourseWikis | Get all course wikis
*CourseWikisApi* | [**getCourseWikisCountAsync**](docs/CourseWikisApi.md#getcoursewikiscountasync) | **GET** /api/v2/LearningService/CourseWikis/Count | Get course wikis count
*CourseWikisApi* | [**patchCourseWikiAsync**](docs/CourseWikisApi.md#patchcoursewikiasync) | **PATCH** /api/v2/LearningService/CourseWikis/{wikiId} | Patch a course wiki
*CourseWikisApi* | [**updateCourseWikiAsync**](docs/CourseWikisApi.md#updatecoursewikiasync) | **PUT** /api/v2/LearningService/CourseWikis/{wikiId} | Update a course wiki
*CoursesApi* | [**createCourseAsync**](docs/CoursesApi.md#createcourseasync) | **POST** /api/v2/LearningService/Courses | Create a new course
*CoursesApi* | [**deleteCourseAsync**](docs/CoursesApi.md#deletecourseasync) | **DELETE** /api/v2/LearningService/Courses/{courseId} | Delete a course
*CoursesApi* | [**getCourseArticlesByCourseWikiAsync**](docs/CoursesApi.md#getcoursearticlesbycoursewikiasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Articles/{wikiId} | Get course articles by course wiki
*CoursesApi* | [**getCourseArticlesByCourseWikiCountAsync**](docs/CoursesApi.md#getcoursearticlesbycoursewikicountasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Articles/{wikiId}/Count | Get course articles by course wiki count
*CoursesApi* | [**getCourseAssignmentsByCourseAsync**](docs/CoursesApi.md#getcourseassignmentsbycourseasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Assignments | Get course assignments by course
*CoursesApi* | [**getCourseAssignmentsByCourseCountAsync**](docs/CoursesApi.md#getcourseassignmentsbycoursecountasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Assignments/Count | Get course assignments by course count
*CoursesApi* | [**getCourseByIdAsync**](docs/CoursesApi.md#getcoursebyidasync) | **GET** /api/v2/LearningService/Courses/{courseId} | Get course by ID
*CoursesApi* | [**getCourseCategoriesByCourseAsync**](docs/CoursesApi.md#getcoursecategoriesbycourseasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Categories | Get course categories by course
*CoursesApi* | [**getCourseCategoriesByCourseCountAsync**](docs/CoursesApi.md#getcoursecategoriesbycoursecountasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Categories/Count | Get course categories by course count
*CoursesApi* | [**getCourseCohortsByCourseAsync**](docs/CoursesApi.md#getcoursecohortsbycourseasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Cohorts | Get course cohorts by course
*CoursesApi* | [**getCourseCohortsByCourseCountAsync**](docs/CoursesApi.md#getcoursecohortsbycoursecountasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Cohorts/Count | Get course cohorts by course count
*CoursesApi* | [**getCourseEnrollmentsByCourseAsync**](docs/CoursesApi.md#getcourseenrollmentsbycourseasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Enrollments | Get enrollments by course
*CoursesApi* | [**getCourseFilesByCourseAsync**](docs/CoursesApi.md#getcoursefilesbycourseasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Files | Get course files by course
*CoursesApi* | [**getCourseFilesByCourseCountAsync**](docs/CoursesApi.md#getcoursefilesbycoursecountasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Files/Count | Get course files by course count
*CoursesApi* | [**getCourseForumsByCourseAsync**](docs/CoursesApi.md#getcourseforumsbycourseasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Forums | Get course forums by course
*CoursesApi* | [**getCourseForumsByCourseCountAsync**](docs/CoursesApi.md#getcourseforumsbycoursecountasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Forums/Count | Get course forums by course count
*CoursesApi* | [**getCourseHandoutsByCourseAsync**](docs/CoursesApi.md#getcoursehandoutsbycourseasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Handouts | Get course handouts by course
*CoursesApi* | [**getCourseHandoutsByCourseCountAsync**](docs/CoursesApi.md#getcoursehandoutsbycoursecountasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Handouts/Count | Get course handouts by course count
*CoursesApi* | [**getCourseLibrariesByCourseAsync**](docs/CoursesApi.md#getcourselibrariesbycourseasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Libraries | Get course libraries by course
*CoursesApi* | [**getCourseLibrariesByCourseCountAsync**](docs/CoursesApi.md#getcourselibrariesbycoursecountasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Libraries/Count | Get course libraries by course count
*CoursesApi* | [**getCoursePagesByCourseAsync**](docs/CoursesApi.md#getcoursepagesbycourseasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Pages | Get course pages by course
*CoursesApi* | [**getCoursePagesByCourseCountAsync**](docs/CoursesApi.md#getcoursepagesbycoursecountasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Pages/Count | Get course pages by course count
*CoursesApi* | [**getCourseProblemSetsByCourseAsync**](docs/CoursesApi.md#getcourseproblemsetsbycourseasync) | **GET** /api/v2/LearningService/Courses/{courseId}/ProblemSets | Get course problem sets by course
*CoursesApi* | [**getCourseProblemSetsByCourseCountAsync**](docs/CoursesApi.md#getcourseproblemsetsbycoursecountasync) | **GET** /api/v2/LearningService/Courses/{courseId}/ProblemSets/Count | Get course problem sets by course count
*CoursesApi* | [**getCourseSectionsByCourseAsync**](docs/CoursesApi.md#getcoursesectionsbycourseasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Sections | Get course sections by course
*CoursesApi* | [**getCourseSectionsByCourseCountAsync**](docs/CoursesApi.md#getcoursesectionsbycoursecountasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Sections/Count | Get course sections by course count
*CoursesApi* | [**getCourseUnitComponentsByCourseAsync**](docs/CoursesApi.md#getcourseunitcomponentsbycourseasync) | **GET** /api/v2/LearningService/Courses/{courseId}/UnitComponents | Get course unit components by course
*CoursesApi* | [**getCourseUnitComponentsByCourseCountAsync**](docs/CoursesApi.md#getcourseunitcomponentsbycoursecountasync) | **GET** /api/v2/LearningService/Courses/{courseId}/UnitComponents/Count | Get course unit components by course count
*CoursesApi* | [**getCourseUnitsBySectionAsync**](docs/CoursesApi.md#getcourseunitsbysectionasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Units/{sectionId} | Get course units by section
*CoursesApi* | [**getCourseUnitsBySectionCountAsync**](docs/CoursesApi.md#getcourseunitsbysectioncountasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Units/{sectionId}/Count | Get course units by section count
*CoursesApi* | [**getCourseUpdatesByCourseAsync**](docs/CoursesApi.md#getcourseupdatesbycourseasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Updates | Get course updates by course
*CoursesApi* | [**getCourseUpdatesByCourseCountAsync**](docs/CoursesApi.md#getcourseupdatesbycoursecountasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Updates/Count | Get course updates by course count
*CoursesApi* | [**getCourseWikisByCourseAsync**](docs/CoursesApi.md#getcoursewikisbycourseasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Wikis | Get course wikis by course
*CoursesApi* | [**getCourseWikisByCourseCountAsync**](docs/CoursesApi.md#getcoursewikisbycoursecountasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Wikis/Count | Get course wikis by course count
*CoursesApi* | [**getCoursesAsync**](docs/CoursesApi.md#getcoursesasync) | **GET** /api/v2/LearningService/Courses | Get courses
*CoursesApi* | [**getCoursesCountAsync**](docs/CoursesApi.md#getcoursescountasync) | **GET** /api/v2/LearningService/Courses/Count | Get courses count
*CoursesApi* | [**getInstructorProfilesByCourseAsync**](docs/CoursesApi.md#getinstructorprofilesbycourseasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Instructors | Get instructor profiles by course
*CoursesApi* | [**getInstructorProfilesByCourseCountAsync**](docs/CoursesApi.md#getinstructorprofilesbycoursecountasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Instructors/Count | Get instructor profiles by course count
*CoursesApi* | [**getStudentProfilesByCourseAsync**](docs/CoursesApi.md#getstudentprofilesbycourseasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Students | Get student profiles by course
*CoursesApi* | [**getStudentProfilesByCourseCountAsync**](docs/CoursesApi.md#getstudentprofilesbycoursecountasync) | **GET** /api/v2/LearningService/Courses/{courseId}/Students/Count | Get student profiles by course count
*CoursesApi* | [**patchCourseAsync**](docs/CoursesApi.md#patchcourseasync) | **PATCH** /api/v2/LearningService/Courses/{courseId} | Patch a course
*CoursesApi* | [**updateCourseAsync**](docs/CoursesApi.md#updatecourseasync) | **PUT** /api/v2/LearningService/Courses/{courseId} | Update a course
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
*InstructorProfilesApi* | [**apiV2LearningServiceInstructorProfilesCountGet**](docs/InstructorProfilesApi.md#apiv2learningserviceinstructorprofilescountget) | **GET** /api/v2/LearningService/InstructorProfiles/Count | 
*InstructorProfilesApi* | [**apiV2LearningServiceInstructorProfilesGet**](docs/InstructorProfilesApi.md#apiv2learningserviceinstructorprofilesget) | **GET** /api/v2/LearningService/InstructorProfiles | 
*InstructorProfilesApi* | [**apiV2LearningServiceInstructorProfilesInstructorProfileIdDelete**](docs/InstructorProfilesApi.md#apiv2learningserviceinstructorprofilesinstructorprofileiddelete) | **DELETE** /api/v2/LearningService/InstructorProfiles/{instructorProfileId} | 
*InstructorProfilesApi* | [**apiV2LearningServiceInstructorProfilesInstructorProfileIdGet**](docs/InstructorProfilesApi.md#apiv2learningserviceinstructorprofilesinstructorprofileidget) | **GET** /api/v2/LearningService/InstructorProfiles/{instructorProfileId} | 
*InstructorProfilesApi* | [**apiV2LearningServiceInstructorProfilesInstructorProfileIdPatch**](docs/InstructorProfilesApi.md#apiv2learningserviceinstructorprofilesinstructorprofileidpatch) | **PATCH** /api/v2/LearningService/InstructorProfiles/{instructorProfileId} | 
*InstructorProfilesApi* | [**apiV2LearningServiceInstructorProfilesInstructorProfileIdPut**](docs/InstructorProfilesApi.md#apiv2learningserviceinstructorprofilesinstructorprofileidput) | **PUT** /api/v2/LearningService/InstructorProfiles/{instructorProfileId} | 
*InstructorProfilesApi* | [**apiV2LearningServiceInstructorProfilesPost**](docs/InstructorProfilesApi.md#apiv2learningserviceinstructorprofilespost) | **POST** /api/v2/LearningService/InstructorProfiles | 
*MeApi* | [**getMyAverageScoreAsync**](docs/MeApi.md#getmyaveragescoreasync) | **GET** /api/v2/LearningService/Me/AverageScore | Get current user&#39;s average score
*MeApi* | [**getMyCertificatesAsync**](docs/MeApi.md#getmycertificatesasync) | **GET** /api/v2/LearningService/Me/Certificates | Get current user&#39;s completion certificates
*MeApi* | [**getMyCertificatesCountAsync**](docs/MeApi.md#getmycertificatescountasync) | **GET** /api/v2/LearningService/Me/Certificates/Count | Get current user&#39;s certificates count
*MeApi* | [**getMyEnrollmentsAsync**](docs/MeApi.md#getmyenrollmentsasync) | **GET** /api/v2/LearningService/Me/Enrollments | Get current user&#39;s course enrollments
*MeApi* | [**getMyEnrollmentsCountAsync**](docs/MeApi.md#getmyenrollmentscountasync) | **GET** /api/v2/LearningService/Me/Enrollments/Count | Get current user&#39;s enrollment count
*MeApi* | [**getMyHoursCompletedAsync**](docs/MeApi.md#getmyhourscompletedasync) | **GET** /api/v2/LearningService/Me/HoursCompleted | Get current user&#39;s completed hours
*MeApi* | [**getMyInstructorCoursesAsync**](docs/MeApi.md#getmyinstructorcoursesasync) | **GET** /api/v2/LearningService/Me/InstructorCourses | Get current user&#39;s instructor courses
*MeApi* | [**getMyInstructorCoursesCountAsync**](docs/MeApi.md#getmyinstructorcoursescountasync) | **GET** /api/v2/LearningService/Me/InstructorCourses/Count | Get current user&#39;s instructor courses count
*MeApi* | [**getMyInstructorProfilesAsync**](docs/MeApi.md#getmyinstructorprofilesasync) | **GET** /api/v2/LearningService/Me/InstructorProfiles | Get current user&#39;s instructor profiles
*MeApi* | [**getMyInstructorProfilesCountAsync**](docs/MeApi.md#getmyinstructorprofilescountasync) | **GET** /api/v2/LearningService/Me/InstructorProfiles/Count | Get current user&#39;s instructor profiles count
*MeApi* | [**getMyPendingTaskCountAsync**](docs/MeApi.md#getmypendingtaskcountasync) | **GET** /api/v2/LearningService/Me/PendingTasks | Get current user&#39;s pending task count
*MeApi* | [**getMyStudentCoursesAsync**](docs/MeApi.md#getmystudentcoursesasync) | **GET** /api/v2/LearningService/Me/Courses | Get current user&#39;s enrolled courses
*MeApi* | [**getMyStudentCoursesCountAsync**](docs/MeApi.md#getmystudentcoursescountasync) | **GET** /api/v2/LearningService/Me/Courses/Count | Get current user&#39;s enrolled courses count
*MeApi* | [**getMyStudentProfilesAsync**](docs/MeApi.md#getmystudentprofilesasync) | **GET** /api/v2/LearningService/Me/StudentProfiles | Get current user&#39;s student profiles
*MeApi* | [**getMyStudentProfilesCountAsync**](docs/MeApi.md#getmystudentprofilescountasync) | **GET** /api/v2/LearningService/Me/StudentProfiles/Count | Get current user&#39;s student profiles count
*StudentProfilesApi* | [**apiV2LearningServiceStudentProfilesCountGet**](docs/StudentProfilesApi.md#apiv2learningservicestudentprofilescountget) | **GET** /api/v2/LearningService/StudentProfiles/Count | 
*StudentProfilesApi* | [**apiV2LearningServiceStudentProfilesGet**](docs/StudentProfilesApi.md#apiv2learningservicestudentprofilesget) | **GET** /api/v2/LearningService/StudentProfiles | 
*StudentProfilesApi* | [**apiV2LearningServiceStudentProfilesPost**](docs/StudentProfilesApi.md#apiv2learningservicestudentprofilespost) | **POST** /api/v2/LearningService/StudentProfiles | 
*StudentProfilesApi* | [**apiV2LearningServiceStudentProfilesStudentProfileIdAverageGet**](docs/StudentProfilesApi.md#apiv2learningservicestudentprofilesstudentprofileidaverageget) | **GET** /api/v2/LearningService/StudentProfiles/{studentProfileId}/Average | 
*StudentProfilesApi* | [**apiV2LearningServiceStudentProfilesStudentProfileIdDelete**](docs/StudentProfilesApi.md#apiv2learningservicestudentprofilesstudentprofileiddelete) | **DELETE** /api/v2/LearningService/StudentProfiles/{studentProfileId} | 
*StudentProfilesApi* | [**apiV2LearningServiceStudentProfilesStudentProfileIdGet**](docs/StudentProfilesApi.md#apiv2learningservicestudentprofilesstudentprofileidget) | **GET** /api/v2/LearningService/StudentProfiles/{studentProfileId} | 
*StudentProfilesApi* | [**apiV2LearningServiceStudentProfilesStudentProfileIdHoursCompletedGet**](docs/StudentProfilesApi.md#apiv2learningservicestudentprofilesstudentprofileidhourscompletedget) | **GET** /api/v2/LearningService/StudentProfiles/{studentProfileId}/HoursCompleted | 
*StudentProfilesApi* | [**apiV2LearningServiceStudentProfilesStudentProfileIdPatch**](docs/StudentProfilesApi.md#apiv2learningservicestudentprofilesstudentprofileidpatch) | **PATCH** /api/v2/LearningService/StudentProfiles/{studentProfileId} | 
*StudentProfilesApi* | [**apiV2LearningServiceStudentProfilesStudentProfileIdPut**](docs/StudentProfilesApi.md#apiv2learningservicestudentprofilesstudentprofileidput) | **PUT** /api/v2/LearningService/StudentProfiles/{studentProfileId} | 


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [AverageDto](docs/AverageDto.md)
 - [AverageDtoEnvelope](docs/AverageDtoEnvelope.md)
 - [ContactDto](docs/ContactDto.md)
 - [CountDto](docs/CountDto.md)
 - [CountDtoEnvelope](docs/CountDtoEnvelope.md)
 - [CourseArticleCreateDto](docs/CourseArticleCreateDto.md)
 - [CourseArticleDto](docs/CourseArticleDto.md)
 - [CourseArticleUpdateDto](docs/CourseArticleUpdateDto.md)
 - [CourseAssignmentComponentCreateDto](docs/CourseAssignmentComponentCreateDto.md)
 - [CourseAssignmentComponentDto](docs/CourseAssignmentComponentDto.md)
 - [CourseAssignmentComponentUpdateDto](docs/CourseAssignmentComponentUpdateDto.md)
 - [CourseAssignmentCreateDto](docs/CourseAssignmentCreateDto.md)
 - [CourseAssignmentDto](docs/CourseAssignmentDto.md)
 - [CourseAssignmentTypeCreateDto](docs/CourseAssignmentTypeCreateDto.md)
 - [CourseAssignmentTypeDto](docs/CourseAssignmentTypeDto.md)
 - [CourseAssignmentTypeUpdateDto](docs/CourseAssignmentTypeUpdateDto.md)
 - [CourseAssignmentUpdateDto](docs/CourseAssignmentUpdateDto.md)
 - [CourseCategoryCreateDto](docs/CourseCategoryCreateDto.md)
 - [CourseCategoryDto](docs/CourseCategoryDto.md)
 - [CourseCategoryUpdateDto](docs/CourseCategoryUpdateDto.md)
 - [CourseCertificateTemplateCreateDto](docs/CourseCertificateTemplateCreateDto.md)
 - [CourseCertificateTemplateDto](docs/CourseCertificateTemplateDto.md)
 - [CourseCertificateTemplateUpdateDto](docs/CourseCertificateTemplateUpdateDto.md)
 - [CourseCohortCreateDto](docs/CourseCohortCreateDto.md)
 - [CourseCohortDto](docs/CourseCohortDto.md)
 - [CourseCohortUpdateDto](docs/CourseCohortUpdateDto.md)
 - [CourseCompletionCertificateCreateDto](docs/CourseCompletionCertificateCreateDto.md)
 - [CourseCompletionCertificateDto](docs/CourseCompletionCertificateDto.md)
 - [CourseCompletionCertificateDtoIReadOnlyListEnvelope](docs/CourseCompletionCertificateDtoIReadOnlyListEnvelope.md)
 - [CourseCompletionCertificateUpdateDto](docs/CourseCompletionCertificateUpdateDto.md)
 - [CourseContentGroupCreateDto](docs/CourseContentGroupCreateDto.md)
 - [CourseContentGroupDto](docs/CourseContentGroupDto.md)
 - [CourseContentGroupUpdateDto](docs/CourseContentGroupUpdateDto.md)
 - [CourseCreateDto](docs/CourseCreateDto.md)
 - [CourseDto](docs/CourseDto.md)
 - [CourseDtoIReadOnlyListEnvelope](docs/CourseDtoIReadOnlyListEnvelope.md)
 - [CourseEnrollmentCreateDto](docs/CourseEnrollmentCreateDto.md)
 - [CourseEnrollmentDto](docs/CourseEnrollmentDto.md)
 - [CourseEnrollmentDtoIReadOnlyListEnvelope](docs/CourseEnrollmentDtoIReadOnlyListEnvelope.md)
 - [CourseEnrollmentUpdateDto](docs/CourseEnrollmentUpdateDto.md)
 - [CourseFileCreateDto](docs/CourseFileCreateDto.md)
 - [CourseFileDto](docs/CourseFileDto.md)
 - [CourseFileUpdateDto](docs/CourseFileUpdateDto.md)
 - [CourseForumCreateDto](docs/CourseForumCreateDto.md)
 - [CourseForumDto](docs/CourseForumDto.md)
 - [CourseForumUpdateDto](docs/CourseForumUpdateDto.md)
 - [CourseGradingRubricCreateDto](docs/CourseGradingRubricCreateDto.md)
 - [CourseGradingRubricDto](docs/CourseGradingRubricDto.md)
 - [CourseGradingRubricUpdateDto](docs/CourseGradingRubricUpdateDto.md)
 - [CourseHandoutCreateDto](docs/CourseHandoutCreateDto.md)
 - [CourseHandoutDto](docs/CourseHandoutDto.md)
 - [CourseHandoutUpdateDto](docs/CourseHandoutUpdateDto.md)
 - [CourseLibraryCreateDto](docs/CourseLibraryCreateDto.md)
 - [CourseLibraryDto](docs/CourseLibraryDto.md)
 - [CourseLibraryUpdateDto](docs/CourseLibraryUpdateDto.md)
 - [CourseNewsCreateDto](docs/CourseNewsCreateDto.md)
 - [CourseNewsDto](docs/CourseNewsDto.md)
 - [CourseNewsUpdateDto](docs/CourseNewsUpdateDto.md)
 - [CoursePageCreateDto](docs/CoursePageCreateDto.md)
 - [CoursePageDto](docs/CoursePageDto.md)
 - [CoursePageUpdateDto](docs/CoursePageUpdateDto.md)
 - [CourseProblemSetCreateDto](docs/CourseProblemSetCreateDto.md)
 - [CourseProblemSetDto](docs/CourseProblemSetDto.md)
 - [CourseProblemSetUpdateDto](docs/CourseProblemSetUpdateDto.md)
 - [CourseSectionCreateDto](docs/CourseSectionCreateDto.md)
 - [CourseSectionDto](docs/CourseSectionDto.md)
 - [CourseSectionUpdateDto](docs/CourseSectionUpdateDto.md)
 - [CourseTeamMembershipCreateDto](docs/CourseTeamMembershipCreateDto.md)
 - [CourseTeamMembershipDto](docs/CourseTeamMembershipDto.md)
 - [CourseTeamMembershipUpdateDto](docs/CourseTeamMembershipUpdateDto.md)
 - [CourseUnitComponentCreateDto](docs/CourseUnitComponentCreateDto.md)
 - [CourseUnitComponentDto](docs/CourseUnitComponentDto.md)
 - [CourseUnitComponentUpdateDto](docs/CourseUnitComponentUpdateDto.md)
 - [CourseUnitCreateDto](docs/CourseUnitCreateDto.md)
 - [CourseUnitDto](docs/CourseUnitDto.md)
 - [CourseUnitUpdateDto](docs/CourseUnitUpdateDto.md)
 - [CourseUpdateDto](docs/CourseUpdateDto.md)
 - [CourseWikiCreateDto](docs/CourseWikiCreateDto.md)
 - [CourseWikiDto](docs/CourseWikiDto.md)
 - [CourseWikiUpdateDto](docs/CourseWikiUpdateDto.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [InstructorProfileCreateDto](docs/InstructorProfileCreateDto.md)
 - [InstructorProfileDto](docs/InstructorProfileDto.md)
 - [InstructorProfileDtoIReadOnlyListEnvelope](docs/InstructorProfileDtoIReadOnlyListEnvelope.md)
 - [InstructorProfileUpdateDto](docs/InstructorProfileUpdateDto.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [Operation](docs/Operation.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [StudentProfileCreateDto](docs/StudentProfileCreateDto.md)
 - [StudentProfileDto](docs/StudentProfileDto.md)
 - [StudentProfileDtoIReadOnlyListEnvelope](docs/StudentProfileDtoIReadOnlyListEnvelope.md)
 - [StudentProfileUpdateDto](docs/StudentProfileUpdateDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

