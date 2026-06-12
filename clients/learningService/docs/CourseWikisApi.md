# CourseWikisApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseWikiAsync**](CourseWikisApi.md#createCourseWikiAsync) | **POST** /api/v2/LearningService/CourseWikis | Create a new course wiki
[**deleteCourseWikiAsync**](CourseWikisApi.md#deleteCourseWikiAsync) | **DELETE** /api/v2/LearningService/CourseWikis/{wikiId} | Delete a course wiki
[**getCourseWikiByIdAsync**](CourseWikisApi.md#getCourseWikiByIdAsync) | **GET** /api/v2/LearningService/CourseWikis/{wikiId} | Get course wiki by ID
[**getCourseWikisAsync**](CourseWikisApi.md#getCourseWikisAsync) | **GET** /api/v2/LearningService/CourseWikis | Get all course wikis
[**getCourseWikisCountAsync**](CourseWikisApi.md#getCourseWikisCountAsync) | **GET** /api/v2/LearningService/CourseWikis/Count | Get course wikis count
[**patchCourseWikiAsync**](CourseWikisApi.md#patchCourseWikiAsync) | **PATCH** /api/v2/LearningService/CourseWikis/{wikiId} | Patch a course wiki
[**updateCourseWikiAsync**](CourseWikisApi.md#updateCourseWikiAsync) | **PUT** /api/v2/LearningService/CourseWikis/{wikiId} | Update a course wiki



## createCourseWikiAsync

Create a new course wiki

Creates a new course wiki for the specified tenant.

### Example

```bash
 createCourseWikiAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseWikiCreateDto** | [**CourseWikiCreateDto**](CourseWikiCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCourseWikiAsync

Delete a course wiki

Deletes a course wiki for the specified tenant.

### Example

```bash
 deleteCourseWikiAsync  tenantId=value wikiId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **wikiId** | **string** |  | [default to null]
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


## getCourseWikiByIdAsync

Get course wiki by ID

Retrieves a specific course wiki by its ID.

### Example

```bash
 getCourseWikiByIdAsync wikiId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wikiId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CourseWikiDto**](CourseWikiDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseWikisAsync

Get all course wikis

Retrieves all course wikis for the specified tenant.

### Example

```bash
 getCourseWikisAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
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


## getCourseWikisCountAsync

Get course wikis count

Returns the count of course wikis for the specified tenant.

### Example

```bash
 getCourseWikisCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchCourseWikiAsync

Patch a course wiki

Partially updates a course wiki for the specified tenant.

### Example

```bash
 patchCourseWikiAsync  tenantId=value wikiId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **wikiId** | **string** |  | [default to null]
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


## updateCourseWikiAsync

Update a course wiki

Updates an existing course wiki for the specified tenant.

### Example

```bash
 updateCourseWikiAsync  tenantId=value wikiId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **wikiId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseWikiUpdateDto** | [**CourseWikiUpdateDto**](CourseWikiUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

