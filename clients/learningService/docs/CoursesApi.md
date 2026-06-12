# CoursesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseAsync**](CoursesApi.md#createCourseAsync) | **POST** /api/v2/LearningService/Courses | Create a new course
[**deleteCourseAsync**](CoursesApi.md#deleteCourseAsync) | **DELETE** /api/v2/LearningService/Courses/{courseId} | Delete a course
[**getCourseArticlesByCourseWikiAsync**](CoursesApi.md#getCourseArticlesByCourseWikiAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Articles/{wikiId} | Get course articles by course wiki
[**getCourseArticlesByCourseWikiCountAsync**](CoursesApi.md#getCourseArticlesByCourseWikiCountAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Articles/{wikiId}/Count | Get course articles by course wiki count
[**getCourseAssignmentsByCourseAsync**](CoursesApi.md#getCourseAssignmentsByCourseAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Assignments | Get course assignments by course
[**getCourseAssignmentsByCourseCountAsync**](CoursesApi.md#getCourseAssignmentsByCourseCountAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Assignments/Count | Get course assignments by course count
[**getCourseByIdAsync**](CoursesApi.md#getCourseByIdAsync) | **GET** /api/v2/LearningService/Courses/{courseId} | Get course by ID
[**getCourseCategoriesByCourseAsync**](CoursesApi.md#getCourseCategoriesByCourseAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Categories | Get course categories by course
[**getCourseCategoriesByCourseCountAsync**](CoursesApi.md#getCourseCategoriesByCourseCountAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Categories/Count | Get course categories by course count
[**getCourseCohortsByCourseAsync**](CoursesApi.md#getCourseCohortsByCourseAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Cohorts | Get course cohorts by course
[**getCourseCohortsByCourseCountAsync**](CoursesApi.md#getCourseCohortsByCourseCountAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Cohorts/Count | Get course cohorts by course count
[**getCourseEnrollmentsByCourseAsync**](CoursesApi.md#getCourseEnrollmentsByCourseAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Enrollments | Get enrollments by course
[**getCourseFilesByCourseAsync**](CoursesApi.md#getCourseFilesByCourseAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Files | Get course files by course
[**getCourseFilesByCourseCountAsync**](CoursesApi.md#getCourseFilesByCourseCountAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Files/Count | Get course files by course count
[**getCourseForumsByCourseAsync**](CoursesApi.md#getCourseForumsByCourseAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Forums | Get course forums by course
[**getCourseForumsByCourseCountAsync**](CoursesApi.md#getCourseForumsByCourseCountAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Forums/Count | Get course forums by course count
[**getCourseHandoutsByCourseAsync**](CoursesApi.md#getCourseHandoutsByCourseAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Handouts | Get course handouts by course
[**getCourseHandoutsByCourseCountAsync**](CoursesApi.md#getCourseHandoutsByCourseCountAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Handouts/Count | Get course handouts by course count
[**getCourseLibrariesByCourseAsync**](CoursesApi.md#getCourseLibrariesByCourseAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Libraries | Get course libraries by course
[**getCourseLibrariesByCourseCountAsync**](CoursesApi.md#getCourseLibrariesByCourseCountAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Libraries/Count | Get course libraries by course count
[**getCoursePagesByCourseAsync**](CoursesApi.md#getCoursePagesByCourseAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Pages | Get course pages by course
[**getCoursePagesByCourseCountAsync**](CoursesApi.md#getCoursePagesByCourseCountAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Pages/Count | Get course pages by course count
[**getCourseProblemSetsByCourseAsync**](CoursesApi.md#getCourseProblemSetsByCourseAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/ProblemSets | Get course problem sets by course
[**getCourseProblemSetsByCourseCountAsync**](CoursesApi.md#getCourseProblemSetsByCourseCountAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/ProblemSets/Count | Get course problem sets by course count
[**getCourseSectionsByCourseAsync**](CoursesApi.md#getCourseSectionsByCourseAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Sections | Get course sections by course
[**getCourseSectionsByCourseCountAsync**](CoursesApi.md#getCourseSectionsByCourseCountAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Sections/Count | Get course sections by course count
[**getCourseUnitComponentsByCourseAsync**](CoursesApi.md#getCourseUnitComponentsByCourseAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/UnitComponents | Get course unit components by course
[**getCourseUnitComponentsByCourseCountAsync**](CoursesApi.md#getCourseUnitComponentsByCourseCountAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/UnitComponents/Count | Get course unit components by course count
[**getCourseUnitsBySectionAsync**](CoursesApi.md#getCourseUnitsBySectionAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Units/{sectionId} | Get course units by section
[**getCourseUnitsBySectionCountAsync**](CoursesApi.md#getCourseUnitsBySectionCountAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Units/{sectionId}/Count | Get course units by section count
[**getCourseUpdatesByCourseAsync**](CoursesApi.md#getCourseUpdatesByCourseAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Updates | Get course updates by course
[**getCourseUpdatesByCourseCountAsync**](CoursesApi.md#getCourseUpdatesByCourseCountAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Updates/Count | Get course updates by course count
[**getCourseWikisByCourseAsync**](CoursesApi.md#getCourseWikisByCourseAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Wikis | Get course wikis by course
[**getCourseWikisByCourseCountAsync**](CoursesApi.md#getCourseWikisByCourseCountAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Wikis/Count | Get course wikis by course count
[**getCoursesAsync**](CoursesApi.md#getCoursesAsync) | **GET** /api/v2/LearningService/Courses | Get courses
[**getCoursesCountAsync**](CoursesApi.md#getCoursesCountAsync) | **GET** /api/v2/LearningService/Courses/Count | Get courses count
[**getInstructorProfilesByCourseAsync**](CoursesApi.md#getInstructorProfilesByCourseAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Instructors | Get instructor profiles by course
[**getInstructorProfilesByCourseCountAsync**](CoursesApi.md#getInstructorProfilesByCourseCountAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Instructors/Count | Get instructor profiles by course count
[**getStudentProfilesByCourseAsync**](CoursesApi.md#getStudentProfilesByCourseAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Students | Get student profiles by course
[**getStudentProfilesByCourseCountAsync**](CoursesApi.md#getStudentProfilesByCourseCountAsync) | **GET** /api/v2/LearningService/Courses/{courseId}/Students/Count | Get student profiles by course count
[**patchCourseAsync**](CoursesApi.md#patchCourseAsync) | **PATCH** /api/v2/LearningService/Courses/{courseId} | Patch a course
[**updateCourseAsync**](CoursesApi.md#updateCourseAsync) | **PUT** /api/v2/LearningService/Courses/{courseId} | Update a course



## createCourseAsync

Create a new course

Creates a new course for the specified tenant.

### Example

```bash
 createCourseAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseCreateDto** | [**CourseCreateDto**](CourseCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCourseAsync

Delete a course

Deletes a course for the specified tenant.

### Example

```bash
 deleteCourseAsync  tenantId=value courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseArticlesByCourseWikiAsync

Get course articles by course wiki

Retrieves all course articles for a specific course wiki.

### Example

```bash
 getCourseArticlesByCourseWikiAsync courseId=value wikiId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **wikiId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseArticleDto]**](CourseArticleDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseArticlesByCourseWikiCountAsync

Get course articles by course wiki count

Returns the count of course articles for a specific course wiki.

### Example

```bash
 getCourseArticlesByCourseWikiCountAsync courseId=value wikiId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **wikiId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseAssignmentsByCourseAsync

Get course assignments by course

Retrieves all course assignments for a specific course.

### Example

```bash
 getCourseAssignmentsByCourseAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseAssignmentDto]**](CourseAssignmentDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseAssignmentsByCourseCountAsync

Get course assignments by course count

Returns the count of course assignments for a specific course.

### Example

```bash
 getCourseAssignmentsByCourseCountAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseByIdAsync

Get course by ID

Retrieves a specific course by its ID.

### Example

```bash
 getCourseByIdAsync courseId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CourseDto**](CourseDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseCategoriesByCourseAsync

Get course categories by course

Retrieves all course categories for a specific course.

### Example

```bash
 getCourseCategoriesByCourseAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseCategoryDto]**](CourseCategoryDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseCategoriesByCourseCountAsync

Get course categories by course count

Returns the count of course categories for a specific course.

### Example

```bash
 getCourseCategoriesByCourseCountAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseCohortsByCourseAsync

Get course cohorts by course

Retrieves all course cohorts for a specific course.

### Example

```bash
 getCourseCohortsByCourseAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseCohortDto]**](CourseCohortDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseCohortsByCourseCountAsync

Get course cohorts by course count

Returns the count of course cohorts for a specific course.

### Example

```bash
 getCourseCohortsByCourseCountAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseEnrollmentsByCourseAsync

Get enrollments by course

Retrieves all enrollments for a specific course.

### Example

```bash
 getCourseEnrollmentsByCourseAsync  tenantId=value courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseEnrollmentDto]**](CourseEnrollmentDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseFilesByCourseAsync

Get course files by course

Retrieves all course files for a specific course.

### Example

```bash
 getCourseFilesByCourseAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseFileDto]**](CourseFileDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseFilesByCourseCountAsync

Get course files by course count

Returns the count of course files for a specific course.

### Example

```bash
 getCourseFilesByCourseCountAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseForumsByCourseAsync

Get course forums by course

Retrieves all course forums for a specific course.

### Example

```bash
 getCourseForumsByCourseAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseForumDto]**](CourseForumDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseForumsByCourseCountAsync

Get course forums by course count

Returns the count of course forums for a specific course.

### Example

```bash
 getCourseForumsByCourseCountAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseHandoutsByCourseAsync

Get course handouts by course

Retrieves all course handouts for a specific course.

### Example

```bash
 getCourseHandoutsByCourseAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseHandoutDto]**](CourseHandoutDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseHandoutsByCourseCountAsync

Get course handouts by course count

Returns the count of course handouts for a specific course.

### Example

```bash
 getCourseHandoutsByCourseCountAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseLibrariesByCourseAsync

Get course libraries by course

Retrieves all course libraries for a specific course.

### Example

```bash
 getCourseLibrariesByCourseAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseLibraryDto]**](CourseLibraryDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseLibrariesByCourseCountAsync

Get course libraries by course count

Returns the count of course libraries for a specific course.

### Example

```bash
 getCourseLibrariesByCourseCountAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCoursePagesByCourseAsync

Get course pages by course

Retrieves all course pages for a specific course.

### Example

```bash
 getCoursePagesByCourseAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CoursePageDto]**](CoursePageDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCoursePagesByCourseCountAsync

Get course pages by course count

Returns the count of course pages for a specific course.

### Example

```bash
 getCoursePagesByCourseCountAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseProblemSetsByCourseAsync

Get course problem sets by course

Retrieves all course problem sets for a specific course.

### Example

```bash
 getCourseProblemSetsByCourseAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseProblemSetDto]**](CourseProblemSetDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseProblemSetsByCourseCountAsync

Get course problem sets by course count

Returns the count of course problem sets for a specific course.

### Example

```bash
 getCourseProblemSetsByCourseCountAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseSectionsByCourseAsync

Get course sections by course

Retrieves all course sections for a specific course.

### Example

```bash
 getCourseSectionsByCourseAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseSectionDto]**](CourseSectionDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseSectionsByCourseCountAsync

Get course sections by course count

Returns the count of course sections for a specific course.

### Example

```bash
 getCourseSectionsByCourseCountAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseUnitComponentsByCourseAsync

Get course unit components by course

Retrieves all course unit components for a specific course.

### Example

```bash
 getCourseUnitComponentsByCourseAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseUnitComponentDto]**](CourseUnitComponentDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseUnitComponentsByCourseCountAsync

Get course unit components by course count

Returns the count of course unit components for a specific course.

### Example

```bash
 getCourseUnitComponentsByCourseCountAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseUnitsBySectionAsync

Get course units by section

Retrieves all course units for a specific course section.

### Example

```bash
 getCourseUnitsBySectionAsync courseId=value sectionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **sectionId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseUnitDto]**](CourseUnitDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseUnitsBySectionCountAsync

Get course units by section count

Returns the count of course units for a specific course section.

### Example

```bash
 getCourseUnitsBySectionCountAsync courseId=value sectionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **sectionId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseUpdatesByCourseAsync

Get course updates by course

Retrieves all course updates for a specific course.

### Example

```bash
 getCourseUpdatesByCourseAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseNewsDto]**](CourseNewsDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseUpdatesByCourseCountAsync

Get course updates by course count

Returns the count of course updates for a specific course.

### Example

```bash
 getCourseUpdatesByCourseCountAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseWikisByCourseAsync

Get course wikis by course

Retrieves all course wikis for a specific course.

### Example

```bash
 getCourseWikisByCourseAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseWikiDto]**](CourseWikiDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseWikisByCourseCountAsync

Get course wikis by course count

Returns the count of course wikis for a specific course.

### Example

```bash
 getCourseWikisByCourseCountAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCoursesAsync

Get courses

Retrieves courses. When tenantId is provided, returns tenant-scoped courses; otherwise returns all courses.

### Example

```bash
 getCoursesAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[CourseDto]**](CourseDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCoursesCountAsync

Get courses count

Returns the count of courses. When tenantId is provided, returns tenant-scoped count; otherwise returns global count.

### Example

```bash
 getCoursesCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInstructorProfilesByCourseAsync

Get instructor profiles by course

Retrieves all instructor profiles teaching a specific course.

### Example

```bash
 getInstructorProfilesByCourseAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[InstructorProfileDto]**](InstructorProfileDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInstructorProfilesByCourseCountAsync

Get instructor profiles by course count

Returns the count of instructor profiles teaching a specific course.

### Example

```bash
 getInstructorProfilesByCourseCountAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getStudentProfilesByCourseAsync

Get student profiles by course

Retrieves all student profiles enrolled in a specific course.

### Example

```bash
 getStudentProfilesByCourseAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**array[StudentProfileDto]**](StudentProfileDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getStudentProfilesByCourseCountAsync

Get student profiles by course count

Returns the count of student profiles enrolled in a specific course.

### Example

```bash
 getStudentProfilesByCourseCountAsync courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

**integer**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchCourseAsync

Patch a course

Partially updates a course for the specified tenant.

### Example

```bash
 patchCourseAsync  tenantId=value courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateCourseAsync

Update a course

Updates an existing course for the specified tenant.

### Example

```bash
 updateCourseAsync  tenantId=value courseId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **courseId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseUpdateDto** | [**CourseUpdateDto**](CourseUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

