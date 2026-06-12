# CourseSectionsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseSectionAsync**](CourseSectionsApi.md#createCourseSectionAsync) | **POST** /api/v2/LearningService/CourseSections | Create a new course section
[**deleteCourseSectionAsync**](CourseSectionsApi.md#deleteCourseSectionAsync) | **DELETE** /api/v2/LearningService/CourseSections/{sectionId} | Delete a course section
[**getCourseSectionByIdAsync**](CourseSectionsApi.md#getCourseSectionByIdAsync) | **GET** /api/v2/LearningService/CourseSections/{sectionId} | Get course section by ID
[**getCourseSectionsAsync**](CourseSectionsApi.md#getCourseSectionsAsync) | **GET** /api/v2/LearningService/CourseSections | Get all course sections
[**getCourseSectionsCountAsync**](CourseSectionsApi.md#getCourseSectionsCountAsync) | **GET** /api/v2/LearningService/CourseSections/Count | Get course sections count
[**patchCourseSectionAsync**](CourseSectionsApi.md#patchCourseSectionAsync) | **PATCH** /api/v2/LearningService/CourseSections/{sectionId} | Patch a course section
[**updateCourseSectionAsync**](CourseSectionsApi.md#updateCourseSectionAsync) | **PUT** /api/v2/LearningService/CourseSections/{sectionId} | Update a course section



## createCourseSectionAsync

Create a new course section

Creates a new course section for the specified tenant.

### Example

```bash
 createCourseSectionAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseSectionCreateDto** | [**CourseSectionCreateDto**](CourseSectionCreateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCourseSectionAsync

Delete a course section

Deletes a course section for the specified tenant.

### Example

```bash
 deleteCourseSectionAsync  tenantId=value sectionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **sectionId** | **string** |  | [default to null]
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


## getCourseSectionByIdAsync

Get course section by ID

Retrieves a specific course section by its ID.

### Example

```bash
 getCourseSectionByIdAsync sectionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sectionId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CourseSectionDto**](CourseSectionDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCourseSectionsAsync

Get all course sections

Retrieves all course sections for the specified tenant.

### Example

```bash
 getCourseSectionsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
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


## getCourseSectionsCountAsync

Get course sections count

Returns the count of course sections for the specified tenant.

### Example

```bash
 getCourseSectionsCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchCourseSectionAsync

Patch a course section

Partially updates a course section for the specified tenant.

### Example

```bash
 patchCourseSectionAsync  tenantId=value sectionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **sectionId** | **string** |  | [default to null]
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


## updateCourseSectionAsync

Update a course section

Updates an existing course section for the specified tenant.

### Example

```bash
 updateCourseSectionAsync  tenantId=value sectionId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **sectionId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **courseSectionUpdateDto** | [**CourseSectionUpdateDto**](CourseSectionUpdateDto.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

