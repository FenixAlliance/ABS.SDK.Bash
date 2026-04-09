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
*CourseArticlesApi* | [**createCourseArticleAsync**](docs/CourseArticlesApi.md#createcoursearticleasync) | **POST** /api/v2/LearningService/CourseArticles | Create a new course article
*CourseArticlesApi* | [**deleteCourseArticleAsync**](docs/CourseArticlesApi.md#deletecoursearticleasync) | **DELETE** /api/v2/LearningService/CourseArticles/{articleId} | Delete a course article
*CourseArticlesApi* | [**getCourseArticleByIdAsync**](docs/CourseArticlesApi.md#getcoursearticlebyidasync) | **GET** /api/v2/LearningService/CourseArticles/{articleId} | Get course article by ID
*CourseArticlesApi* | [**getCourseArticlesAsync**](docs/CourseArticlesApi.md#getcoursearticlesasync) | **GET** /api/v2/LearningService/CourseArticles | Get all course articles
*CourseArticlesApi* | [**getCourseArticlesCountAsync**](docs/CourseArticlesApi.md#getcoursearticlescountasync) | **GET** /api/v2/LearningService/CourseArticles/Count | Get course articles count
*CourseArticlesApi* | [**updateCourseArticleAsync**](docs/CourseArticlesApi.md#updatecoursearticleasync) | **PUT** /api/v2/LearningService/CourseArticles/{articleId} | Update a course article
*CourseAssignmentsApi* | [**createCourseAssignmentAsync**](docs/CourseAssignmentsApi.md#createcourseassignmentasync) | **POST** /api/v2/LearningService/CourseAssignments | Create a new course assignment
*CourseAssignmentsApi* | [**deleteCourseAssignmentAsync**](docs/CourseAssignmentsApi.md#deletecourseassignmentasync) | **DELETE** /api/v2/LearningService/CourseAssignments/{assignmentId} | Delete a course assignment
*CourseAssignmentsApi* | [**getCourseAssignmentByIdAsync**](docs/CourseAssignmentsApi.md#getcourseassignmentbyidasync) | **GET** /api/v2/LearningService/CourseAssignments/{assignmentId} | Get course assignment by ID
*CourseAssignmentsApi* | [**getCourseAssignmentsAsync**](docs/CourseAssignmentsApi.md#getcourseassignmentsasync) | **GET** /api/v2/LearningService/CourseAssignments | Get all course assignments
*CourseAssignmentsApi* | [**getCourseAssignmentsCountAsync**](docs/CourseAssignmentsApi.md#getcourseassignmentscountasync) | **GET** /api/v2/LearningService/CourseAssignments/Count | Get course assignments count
*CourseAssignmentsApi* | [**updateCourseAssignmentAsync**](docs/CourseAssignmentsApi.md#updatecourseassignmentasync) | **PUT** /api/v2/LearningService/CourseAssignments/{assignmentId} | Update a course assignment
*CourseCategoriesApi* | [**createCourseCategoryAsync**](docs/CourseCategoriesApi.md#createcoursecategoryasync) | **POST** /api/v2/LearningService/CourseCategories | Create a new course category
*CourseCategoriesApi* | [**deleteCourseCategoryAsync**](docs/CourseCategoriesApi.md#deletecoursecategoryasync) | **DELETE** /api/v2/LearningService/CourseCategories/{categoryId} | Delete a course category
*CourseCategoriesApi* | [**getCourseCategoriesAsync**](docs/CourseCategoriesApi.md#getcoursecategoriesasync) | **GET** /api/v2/LearningService/CourseCategories | Get all course categories
*CourseCategoriesApi* | [**getCourseCategoriesCountAsync**](docs/CourseCategoriesApi.md#getcoursecategoriescountasync) | **GET** /api/v2/LearningService/CourseCategories/Count | Get course categories count
*CourseCategoriesApi* | [**getCourseCategoryByIdAsync**](docs/CourseCategoriesApi.md#getcoursecategorybyidasync) | **GET** /api/v2/LearningService/CourseCategories/{categoryId} | Get course category by ID
*CourseCategoriesApi* | [**updateCourseCategoryAsync**](docs/CourseCategoriesApi.md#updatecoursecategoryasync) | **PUT** /api/v2/LearningService/CourseCategories/{categoryId} | Update a course category
*CourseCertificatesApi* | [**createCourseCertificateAsync**](docs/CourseCertificatesApi.md#createcoursecertificateasync) | **POST** /api/v2/LearningService/CourseCertificates | Create a course certificate
*CourseCertificatesApi* | [**createCourseCertificateTemplateAsync**](docs/CourseCertificatesApi.md#createcoursecertificatetemplateasync) | **POST** /api/v2/LearningService/CourseCertificates/Template | Create a certificate template
*CourseCertificatesApi* | [**deleteCourseCertificateAsync**](docs/CourseCertificatesApi.md#deletecoursecertificateasync) | **DELETE** /api/v2/LearningService/CourseCertificates/{courseCertificateId} | Delete a course certificate
*CourseCertificatesApi* | [**deleteCourseCertificateTemplateAsync**](docs/CourseCertificatesApi.md#deletecoursecertificatetemplateasync) | **DELETE** /api/v2/LearningService/CourseCertificates/Template/{courseCertificateTemplateId} | Delete a certificate template
*CourseCertificatesApi* | [**getCourseCertificateAsync**](docs/CourseCertificatesApi.md#getcoursecertificateasync) | **GET** /api/v2/LearningService/CourseCertificates/{courseCertificateId} | Get course certificate by ID
*CourseCertificatesApi* | [**getCourseCertificateTemplateAsync**](docs/CourseCertificatesApi.md#getcoursecertificatetemplateasync) | **GET** /api/v2/LearningService/CourseCertificates/Template/{courseCertificateTemplateId} | Get certificate template by ID
*CourseCertificatesApi* | [**getCourseCertificateTemplatesAsync**](docs/CourseCertificatesApi.md#getcoursecertificatetemplatesasync) | **GET** /api/v2/LearningService/CourseCertificates/Template | Get all certificate templates
*CourseCertificatesApi* | [**getCourseCertificatesAsync**](docs/CourseCertificatesApi.md#getcoursecertificatesasync) | **GET** /api/v2/LearningService/CourseCertificates | Get all course certificates
*CourseCertificatesApi* | [**getCourseCertificatesCountAsync**](docs/CourseCertificatesApi.md#getcoursecertificatescountasync) | **GET** /api/v2/LearningService/CourseCertificates/Count | Get course certificates count
*CourseCertificatesApi* | [**updateCourseCertificateAsync**](docs/CourseCertificatesApi.md#updatecoursecertificateasync) | **PUT** /api/v2/LearningService/CourseCertificates/{courseCertificateId} | Update a course certificate
*CourseCohortsApi* | [**createCourseCohortAsync**](docs/CourseCohortsApi.md#createcoursecohortasync) | **POST** /api/v2/LearningService/CourseCohorts | Create a new course cohort
*CourseCohortsApi* | [**deleteCourseCohortAsync**](docs/CourseCohortsApi.md#deletecoursecohortasync) | **DELETE** /api/v2/LearningService/CourseCohorts/{cohortId} | Delete a course cohort
*CourseCohortsApi* | [**getCourseCohortByIdAsync**](docs/CourseCohortsApi.md#getcoursecohortbyidasync) | **GET** /api/v2/LearningService/CourseCohorts/{cohortId} | Get course cohort by ID
*CourseCohortsApi* | [**getCourseCohortsAsync**](docs/CourseCohortsApi.md#getcoursecohortsasync) | **GET** /api/v2/LearningService/CourseCohorts | Get all course cohorts
*CourseCohortsApi* | [**getCourseCohortsCountAsync**](docs/CourseCohortsApi.md#getcoursecohortscountasync) | **GET** /api/v2/LearningService/CourseCohorts/Count | Get course cohorts count
*CourseCohortsApi* | [**updateCourseCohortAsync**](docs/CourseCohortsApi.md#updatecoursecohortasync) | **PUT** /api/v2/LearningService/CourseCohorts/{cohortId} | Update a course cohort
*CourseEnrollmentsApi* | [**createCourseEnrollmentAsync**](docs/CourseEnrollmentsApi.md#createcourseenrollmentasync) | **POST** /api/v2/LearningService/CourseEnrollments | Create a new course enrollment
*CourseEnrollmentsApi* | [**deleteCourseEnrollmentAsync**](docs/CourseEnrollmentsApi.md#deletecourseenrollmentasync) | **DELETE** /api/v2/LearningService/CourseEnrollments/{courseEnrollmentId} | Delete a course enrollment
*CourseEnrollmentsApi* | [**getCourseEnrollmentAsync**](docs/CourseEnrollmentsApi.md#getcourseenrollmentasync) | **GET** /api/v2/LearningService/CourseEnrollments/{courseEnrollmentId} | Get course enrollment by ID
*CourseEnrollmentsApi* | [**getEnrollmentsAsync**](docs/CourseEnrollmentsApi.md#getenrollmentsasync) | **GET** /api/v2/LearningService/CourseEnrollments | Get all course enrollments
*CourseEnrollmentsApi* | [**getEnrollmentsCountAsync**](docs/CourseEnrollmentsApi.md#getenrollmentscountasync) | **GET** /api/v2/LearningService/CourseEnrollments/Count | Get course enrollments count
*CourseEnrollmentsApi* | [**getStudentCourseEnrollmentsAsync**](docs/CourseEnrollmentsApi.md#getstudentcourseenrollmentsasync) | **GET** /api/v2/LearningService/CourseEnrollments/Student/{studentProfileId} | Get enrollments by student
*CourseEnrollmentsApi* | [**updateCourseEnrollmentAsync**](docs/CourseEnrollmentsApi.md#updatecourseenrollmentasync) | **PUT** /api/v2/LearningService/CourseEnrollments/{courseEnrollmentId} | Update a course enrollment
*CourseFilesApi* | [**createCourseFileAsync**](docs/CourseFilesApi.md#createcoursefileasync) | **POST** /api/v2/LearningService/CourseFiles | Create a new course file
*CourseFilesApi* | [**deleteCourseFileAsync**](docs/CourseFilesApi.md#deletecoursefileasync) | **DELETE** /api/v2/LearningService/CourseFiles/{fileId} | Delete a course file
*CourseFilesApi* | [**getCourseFileByIdAsync**](docs/CourseFilesApi.md#getcoursefilebyidasync) | **GET** /api/v2/LearningService/CourseFiles/{fileId} | Get course file by ID
*CourseFilesApi* | [**getCourseFilesAsync**](docs/CourseFilesApi.md#getcoursefilesasync) | **GET** /api/v2/LearningService/CourseFiles | Get all course files
*CourseFilesApi* | [**getCourseFilesCountAsync**](docs/CourseFilesApi.md#getcoursefilescountasync) | **GET** /api/v2/LearningService/CourseFiles/Count | Get course files count
*CourseFilesApi* | [**updateCourseFileAsync**](docs/CourseFilesApi.md#updatecoursefileasync) | **PUT** /api/v2/LearningService/CourseFiles/{fileId} | Update a course file
*CourseForumsApi* | [**createCourseForumAsync**](docs/CourseForumsApi.md#createcourseforumasync) | **POST** /api/v2/LearningService/CourseForums | Create a course forum
*CourseForumsApi* | [**deleteCourseForumAsync**](docs/CourseForumsApi.md#deletecourseforumasync) | **DELETE** /api/v2/LearningService/CourseForums/{forumId} | Delete a course forum
*CourseForumsApi* | [**getCourseForumByIdAsync**](docs/CourseForumsApi.md#getcourseforumbyidasync) | **GET** /api/v2/LearningService/CourseForums/{forumId} | Get course forum by ID
*CourseForumsApi* | [**getCourseForumsAsync**](docs/CourseForumsApi.md#getcourseforumsasync) | **GET** /api/v2/LearningService/CourseForums | Get all course forums
*CourseForumsApi* | [**getCourseForumsCountAsync**](docs/CourseForumsApi.md#getcourseforumscountasync) | **GET** /api/v2/LearningService/CourseForums/Count | Get course forums count
*CourseForumsApi* | [**updateCourseForumAsync**](docs/CourseForumsApi.md#updatecourseforumasync) | **PUT** /api/v2/LearningService/CourseForums/{forumId} | Update a course forum
*CourseHandoutsApi* | [**createCourseHandoutAsync**](docs/CourseHandoutsApi.md#createcoursehandoutasync) | **POST** /api/v2/LearningService/CourseHandouts | Create a course handout
*CourseHandoutsApi* | [**deleteCourseHandoutAsync**](docs/CourseHandoutsApi.md#deletecoursehandoutasync) | **DELETE** /api/v2/LearningService/CourseHandouts/{handoutId} | Delete a course handout
*CourseHandoutsApi* | [**getCourseHandoutByIdAsync**](docs/CourseHandoutsApi.md#getcoursehandoutbyidasync) | **GET** /api/v2/LearningService/CourseHandouts/{handoutId} | Get course handout by ID
*CourseHandoutsApi* | [**getCourseHandoutsAsync**](docs/CourseHandoutsApi.md#getcoursehandoutsasync) | **GET** /api/v2/LearningService/CourseHandouts | Get all course handouts
*CourseHandoutsApi* | [**getCourseHandoutsCountAsync**](docs/CourseHandoutsApi.md#getcoursehandoutscountasync) | **GET** /api/v2/LearningService/CourseHandouts/Count | Get course handouts count
*CourseHandoutsApi* | [**updateCourseHandoutAsync**](docs/CourseHandoutsApi.md#updatecoursehandoutasync) | **PUT** /api/v2/LearningService/CourseHandouts/{handoutId} | Update a course handout
*CourseLibrariesApi* | [**createCourseLibraryAsync**](docs/CourseLibrariesApi.md#createcourselibraryasync) | **POST** /api/v2/LearningService/CourseLibraries | Create a course library
*CourseLibrariesApi* | [**deleteCourseLibraryAsync**](docs/CourseLibrariesApi.md#deletecourselibraryasync) | **DELETE** /api/v2/LearningService/CourseLibraries/{libraryId} | Delete a course library
*CourseLibrariesApi* | [**getCourseLibrariesAsync**](docs/CourseLibrariesApi.md#getcourselibrariesasync) | **GET** /api/v2/LearningService/CourseLibraries | Get all course libraries
*CourseLibrariesApi* | [**getCourseLibrariesCountAsync**](docs/CourseLibrariesApi.md#getcourselibrariescountasync) | **GET** /api/v2/LearningService/CourseLibraries/Count | Get course libraries count
*CourseLibrariesApi* | [**getCourseLibraryByIdAsync**](docs/CourseLibrariesApi.md#getcourselibrarybyidasync) | **GET** /api/v2/LearningService/CourseLibraries/{libraryId} | Get course library by ID
*CourseLibrariesApi* | [**updateCourseLibraryAsync**](docs/CourseLibrariesApi.md#updatecourselibraryasync) | **PUT** /api/v2/LearningService/CourseLibraries/{libraryId} | Update a course library
*CoursePagesApi* | [**createCoursePageAsync**](docs/CoursePagesApi.md#createcoursepageasync) | **POST** /api/v2/LearningService/CoursePages | Create a new course page
*CoursePagesApi* | [**deleteCoursePageAsync**](docs/CoursePagesApi.md#deletecoursepageasync) | **DELETE** /api/v2/LearningService/CoursePages/{pageId} | Delete a course page
*CoursePagesApi* | [**getCoursePageByIdAsync**](docs/CoursePagesApi.md#getcoursepagebyidasync) | **GET** /api/v2/LearningService/CoursePages/{pageId} | Get course page by ID
*CoursePagesApi* | [**getCoursePagesAsync**](docs/CoursePagesApi.md#getcoursepagesasync) | **GET** /api/v2/LearningService/CoursePages | Get all course pages
*CoursePagesApi* | [**getCoursePagesCountAsync**](docs/CoursePagesApi.md#getcoursepagescountasync) | **GET** /api/v2/LearningService/CoursePages/Count | Get course pages count
*CoursePagesApi* | [**updateCoursePageAsync**](docs/CoursePagesApi.md#updatecoursepageasync) | **PUT** /api/v2/LearningService/CoursePages/{pageId} | Update a course page
*CourseProblemSetsApi* | [**createCourseProblemSetAsync**](docs/CourseProblemSetsApi.md#createcourseproblemsetasync) | **POST** /api/v2/LearningService/CourseProblemSets | Create a new course problem set
*CourseProblemSetsApi* | [**deleteCourseProblemSetAsync**](docs/CourseProblemSetsApi.md#deletecourseproblemsetasync) | **DELETE** /api/v2/LearningService/CourseProblemSets/{problemSetId} | Delete a course problem set
*CourseProblemSetsApi* | [**getCourseProblemSetByIdAsync**](docs/CourseProblemSetsApi.md#getcourseproblemsetbyidasync) | **GET** /api/v2/LearningService/CourseProblemSets/{problemSetId} | Get course problem set by ID
*CourseProblemSetsApi* | [**getCourseProblemSetsAsync**](docs/CourseProblemSetsApi.md#getcourseproblemsetsasync) | **GET** /api/v2/LearningService/CourseProblemSets | Get all course problem sets
*CourseProblemSetsApi* | [**getCourseProblemSetsCountAsync**](docs/CourseProblemSetsApi.md#getcourseproblemsetscountasync) | **GET** /api/v2/LearningService/CourseProblemSets/Count | Get course problem sets count
*CourseProblemSetsApi* | [**updateCourseProblemSetAsync**](docs/CourseProblemSetsApi.md#updatecourseproblemsetasync) | **PUT** /api/v2/LearningService/CourseProblemSets/{problemSetId} | Update a course problem set
*CourseSectionsApi* | [**createCourseSectionAsync**](docs/CourseSectionsApi.md#createcoursesectionasync) | **POST** /api/v2/LearningService/CourseSections | Create a new course section
*CourseSectionsApi* | [**deleteCourseSectionAsync**](docs/CourseSectionsApi.md#deletecoursesectionasync) | **DELETE** /api/v2/LearningService/CourseSections/{sectionId} | Delete a course section
*CourseSectionsApi* | [**getCourseSectionByIdAsync**](docs/CourseSectionsApi.md#getcoursesectionbyidasync) | **GET** /api/v2/LearningService/CourseSections/{sectionId} | Get course section by ID
*CourseSectionsApi* | [**getCourseSectionsAsync**](docs/CourseSectionsApi.md#getcoursesectionsasync) | **GET** /api/v2/LearningService/CourseSections | Get all course sections
*CourseSectionsApi* | [**getCourseSectionsCountAsync**](docs/CourseSectionsApi.md#getcoursesectionscountasync) | **GET** /api/v2/LearningService/CourseSections/Count | Get course sections count
*CourseSectionsApi* | [**updateCourseSectionAsync**](docs/CourseSectionsApi.md#updatecoursesectionasync) | **PUT** /api/v2/LearningService/CourseSections/{sectionId} | Update a course section
*CourseUnitComponentsApi* | [**createCourseUnitComponentAsync**](docs/CourseUnitComponentsApi.md#createcourseunitcomponentasync) | **POST** /api/v2/LearningService/CourseUnitComponents | Create a new course unit component
*CourseUnitComponentsApi* | [**deleteCourseUnitComponentAsync**](docs/CourseUnitComponentsApi.md#deletecourseunitcomponentasync) | **DELETE** /api/v2/LearningService/CourseUnitComponents/{componentId} | Delete a course unit component
*CourseUnitComponentsApi* | [**getCourseUnitComponentByIdAsync**](docs/CourseUnitComponentsApi.md#getcourseunitcomponentbyidasync) | **GET** /api/v2/LearningService/CourseUnitComponents/{componentId} | Get course unit component by ID
*CourseUnitComponentsApi* | [**getCourseUnitComponentsAsync**](docs/CourseUnitComponentsApi.md#getcourseunitcomponentsasync) | **GET** /api/v2/LearningService/CourseUnitComponents | Get all course unit components
*CourseUnitComponentsApi* | [**getCourseUnitComponentsCountAsync**](docs/CourseUnitComponentsApi.md#getcourseunitcomponentscountasync) | **GET** /api/v2/LearningService/CourseUnitComponents/Count | Get course unit components count
*CourseUnitComponentsApi* | [**updateCourseUnitComponentAsync**](docs/CourseUnitComponentsApi.md#updatecourseunitcomponentasync) | **PUT** /api/v2/LearningService/CourseUnitComponents/{componentId} | Update a course unit component
*CourseUnitsApi* | [**createCourseUnitAsync**](docs/CourseUnitsApi.md#createcourseunitasync) | **POST** /api/v2/LearningService/CourseUnits | Create a new course unit
*CourseUnitsApi* | [**deleteCourseUnitAsync**](docs/CourseUnitsApi.md#deletecourseunitasync) | **DELETE** /api/v2/LearningService/CourseUnits/{unitId} | Delete a course unit
*CourseUnitsApi* | [**getCourseUnitByIdAsync**](docs/CourseUnitsApi.md#getcourseunitbyidasync) | **GET** /api/v2/LearningService/CourseUnits/{unitId} | Get course unit by ID
*CourseUnitsApi* | [**getCourseUnitsAsync**](docs/CourseUnitsApi.md#getcourseunitsasync) | **GET** /api/v2/LearningService/CourseUnits | Get all course units
*CourseUnitsApi* | [**getCourseUnitsCountAsync**](docs/CourseUnitsApi.md#getcourseunitscountasync) | **GET** /api/v2/LearningService/CourseUnits/Count | Get course units count
*CourseUnitsApi* | [**updateCourseUnitAsync**](docs/CourseUnitsApi.md#updatecourseunitasync) | **PUT** /api/v2/LearningService/CourseUnits/{unitId} | Update a course unit
*CourseUpdatesApi* | [**createCourseUpdateAsync**](docs/CourseUpdatesApi.md#createcourseupdateasync) | **POST** /api/v2/LearningService/CourseUpdates | Create a new course update
*CourseUpdatesApi* | [**deleteCourseUpdateAsync**](docs/CourseUpdatesApi.md#deletecourseupdateasync) | **DELETE** /api/v2/LearningService/CourseUpdates/{updateId} | Delete a course update
*CourseUpdatesApi* | [**getCourseUpdateByIdAsync**](docs/CourseUpdatesApi.md#getcourseupdatebyidasync) | **GET** /api/v2/LearningService/CourseUpdates/{updateId} | Get course update by ID
*CourseUpdatesApi* | [**getCourseUpdatesAsync**](docs/CourseUpdatesApi.md#getcourseupdatesasync) | **GET** /api/v2/LearningService/CourseUpdates | Get all course updates
*CourseUpdatesApi* | [**getCourseUpdatesCountAsync**](docs/CourseUpdatesApi.md#getcourseupdatescountasync) | **GET** /api/v2/LearningService/CourseUpdates/Count | Get course updates count
*CourseUpdatesApi* | [**updateCourseUpdateAsync**](docs/CourseUpdatesApi.md#updatecourseupdateasync) | **PUT** /api/v2/LearningService/CourseUpdates/{updateId} | Update a course update
*CourseWikisApi* | [**createCourseWikiAsync**](docs/CourseWikisApi.md#createcoursewikiasync) | **POST** /api/v2/LearningService/CourseWikis | Create a new course wiki
*CourseWikisApi* | [**deleteCourseWikiAsync**](docs/CourseWikisApi.md#deletecoursewikiasync) | **DELETE** /api/v2/LearningService/CourseWikis/{wikiId} | Delete a course wiki
*CourseWikisApi* | [**getCourseWikiByIdAsync**](docs/CourseWikisApi.md#getcoursewikibyidasync) | **GET** /api/v2/LearningService/CourseWikis/{wikiId} | Get course wiki by ID
*CourseWikisApi* | [**getCourseWikisAsync**](docs/CourseWikisApi.md#getcoursewikisasync) | **GET** /api/v2/LearningService/CourseWikis | Get all course wikis
*CourseWikisApi* | [**getCourseWikisCountAsync**](docs/CourseWikisApi.md#getcoursewikiscountasync) | **GET** /api/v2/LearningService/CourseWikis/Count | Get course wikis count
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
*CoursesApi* | [**updateCourseAsync**](docs/CoursesApi.md#updatecourseasync) | **PUT** /api/v2/LearningService/Courses/{courseId} | Update a course
*FenixAllianceABPWebApi* | [**forgotPasswordPost**](docs/FenixAllianceABPWebApi.md#forgotpasswordpost) | **POST** /forgotPassword | 
*FenixAllianceABPWebApi* | [**healthGet**](docs/FenixAllianceABPWebApi.md#healthget) | **GET** /health | 
*FenixAllianceABPWebApi* | [**helloGet**](docs/FenixAllianceABPWebApi.md#helloget) | **GET** /hello | 
*FenixAllianceABPWebApi* | [**loginPost**](docs/FenixAllianceABPWebApi.md#loginpost) | **POST** /login | 
*FenixAllianceABPWebApi* | [**manage2faPost**](docs/FenixAllianceABPWebApi.md#manage2fapost) | **POST** /manage/2fa | 
*FenixAllianceABPWebApi* | [**manageInfoGet**](docs/FenixAllianceABPWebApi.md#manageinfoget) | **GET** /manage/info | 
*FenixAllianceABPWebApi* | [**manageInfoPost**](docs/FenixAllianceABPWebApi.md#manageinfopost) | **POST** /manage/info | 
*FenixAllianceABPWebApi* | [**mapIdentityApiConfirmEmail**](docs/FenixAllianceABPWebApi.md#mapidentityapiconfirmemail) | **GET** /confirmEmail | 
*FenixAllianceABPWebApi* | [**refreshPost**](docs/FenixAllianceABPWebApi.md#refreshpost) | **POST** /refresh | 
*FenixAllianceABPWebApi* | [**registerPost**](docs/FenixAllianceABPWebApi.md#registerpost) | **POST** /register | 
*FenixAllianceABPWebApi* | [**resendConfirmationEmailPost**](docs/FenixAllianceABPWebApi.md#resendconfirmationemailpost) | **POST** /resendConfirmationEmail | 
*FenixAllianceABPWebApi* | [**resetPasswordPost**](docs/FenixAllianceABPWebApi.md#resetpasswordpost) | **POST** /resetPassword | 
*FenixAllianceABPWebApi* | [**versionGet**](docs/FenixAllianceABPWebApi.md#versionget) | **GET** /version | 
*InstructorProfilesApi* | [**apiV2LearningServiceInstructorProfilesCountGet**](docs/InstructorProfilesApi.md#apiv2learningserviceinstructorprofilescountget) | **GET** /api/v2/LearningService/InstructorProfiles/Count | 
*InstructorProfilesApi* | [**apiV2LearningServiceInstructorProfilesGet**](docs/InstructorProfilesApi.md#apiv2learningserviceinstructorprofilesget) | **GET** /api/v2/LearningService/InstructorProfiles | 
*InstructorProfilesApi* | [**apiV2LearningServiceInstructorProfilesInstructorProfileIdDelete**](docs/InstructorProfilesApi.md#apiv2learningserviceinstructorprofilesinstructorprofileiddelete) | **DELETE** /api/v2/LearningService/InstructorProfiles/{instructorProfileId} | 
*InstructorProfilesApi* | [**apiV2LearningServiceInstructorProfilesInstructorProfileIdGet**](docs/InstructorProfilesApi.md#apiv2learningserviceinstructorprofilesinstructorprofileidget) | **GET** /api/v2/LearningService/InstructorProfiles/{instructorProfileId} | 
*InstructorProfilesApi* | [**apiV2LearningServiceInstructorProfilesInstructorProfileIdPut**](docs/InstructorProfilesApi.md#apiv2learningserviceinstructorprofilesinstructorprofileidput) | **PUT** /api/v2/LearningService/InstructorProfiles/{instructorProfileId} | 
*InstructorProfilesApi* | [**apiV2LearningServiceInstructorProfilesPost**](docs/InstructorProfilesApi.md#apiv2learningserviceinstructorprofilespost) | **POST** /api/v2/LearningService/InstructorProfiles | 
*StudentProfilesApi* | [**apiV2LearningServiceStudentProfilesCountGet**](docs/StudentProfilesApi.md#apiv2learningservicestudentprofilescountget) | **GET** /api/v2/LearningService/StudentProfiles/Count | 
*StudentProfilesApi* | [**apiV2LearningServiceStudentProfilesGet**](docs/StudentProfilesApi.md#apiv2learningservicestudentprofilesget) | **GET** /api/v2/LearningService/StudentProfiles | 
*StudentProfilesApi* | [**apiV2LearningServiceStudentProfilesPost**](docs/StudentProfilesApi.md#apiv2learningservicestudentprofilespost) | **POST** /api/v2/LearningService/StudentProfiles | 
*StudentProfilesApi* | [**apiV2LearningServiceStudentProfilesStudentProfileIdAverageGet**](docs/StudentProfilesApi.md#apiv2learningservicestudentprofilesstudentprofileidaverageget) | **GET** /api/v2/LearningService/StudentProfiles/{studentProfileId}/Average | 
*StudentProfilesApi* | [**apiV2LearningServiceStudentProfilesStudentProfileIdDelete**](docs/StudentProfilesApi.md#apiv2learningservicestudentprofilesstudentprofileiddelete) | **DELETE** /api/v2/LearningService/StudentProfiles/{studentProfileId} | 
*StudentProfilesApi* | [**apiV2LearningServiceStudentProfilesStudentProfileIdGet**](docs/StudentProfilesApi.md#apiv2learningservicestudentprofilesstudentprofileidget) | **GET** /api/v2/LearningService/StudentProfiles/{studentProfileId} | 
*StudentProfilesApi* | [**apiV2LearningServiceStudentProfilesStudentProfileIdHoursCompletedGet**](docs/StudentProfilesApi.md#apiv2learningservicestudentprofilesstudentprofileidhourscompletedget) | **GET** /api/v2/LearningService/StudentProfiles/{studentProfileId}/HoursCompleted | 
*StudentProfilesApi* | [**apiV2LearningServiceStudentProfilesStudentProfileIdPut**](docs/StudentProfilesApi.md#apiv2learningservicestudentprofilesstudentprofileidput) | **PUT** /api/v2/LearningService/StudentProfiles/{studentProfileId} | 


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [AverageDto](docs/AverageDto.md)
 - [CountDto](docs/CountDto.md)
 - [CourseArticleCreateDto](docs/CourseArticleCreateDto.md)
 - [CourseArticleDto](docs/CourseArticleDto.md)
 - [CourseArticleUpdateDto](docs/CourseArticleUpdateDto.md)
 - [CourseAssignmentCreateDto](docs/CourseAssignmentCreateDto.md)
 - [CourseAssignmentDto](docs/CourseAssignmentDto.md)
 - [CourseAssignmentUpdateDto](docs/CourseAssignmentUpdateDto.md)
 - [CourseCategoryCreateDto](docs/CourseCategoryCreateDto.md)
 - [CourseCategoryDto](docs/CourseCategoryDto.md)
 - [CourseCategoryUpdateDto](docs/CourseCategoryUpdateDto.md)
 - [CourseCertificateTemplateCreateDto](docs/CourseCertificateTemplateCreateDto.md)
 - [CourseCertificateTemplateDto](docs/CourseCertificateTemplateDto.md)
 - [CourseCohortCreateDto](docs/CourseCohortCreateDto.md)
 - [CourseCohortDto](docs/CourseCohortDto.md)
 - [CourseCohortUpdateDto](docs/CourseCohortUpdateDto.md)
 - [CourseCompletionCertificateCreateDto](docs/CourseCompletionCertificateCreateDto.md)
 - [CourseCompletionCertificateDto](docs/CourseCompletionCertificateDto.md)
 - [CourseCompletionCertificateUpdateDto](docs/CourseCompletionCertificateUpdateDto.md)
 - [CourseCreateDto](docs/CourseCreateDto.md)
 - [CourseDto](docs/CourseDto.md)
 - [CourseEnrollmentCreateDto](docs/CourseEnrollmentCreateDto.md)
 - [CourseEnrollmentDto](docs/CourseEnrollmentDto.md)
 - [CourseEnrollmentUpdateDto](docs/CourseEnrollmentUpdateDto.md)
 - [CourseFileCreateDto](docs/CourseFileCreateDto.md)
 - [CourseFileDto](docs/CourseFileDto.md)
 - [CourseFileUpdateDto](docs/CourseFileUpdateDto.md)
 - [CourseForumCreateDto](docs/CourseForumCreateDto.md)
 - [CourseForumDto](docs/CourseForumDto.md)
 - [CourseForumUpdateDto](docs/CourseForumUpdateDto.md)
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
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [InstructorProfileCreateDto](docs/InstructorProfileCreateDto.md)
 - [InstructorProfileDto](docs/InstructorProfileDto.md)
 - [InstructorProfileUpdateDto](docs/InstructorProfileUpdateDto.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [StudentProfileCreateDto](docs/StudentProfileCreateDto.md)
 - [StudentProfileDto](docs/StudentProfileDto.md)
 - [StudentProfileUpdateDto](docs/StudentProfileUpdateDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

