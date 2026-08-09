# CurriculumExperiencesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCurriculumExperienceAsync**](CurriculumExperiencesApi.md#createCurriculumExperienceAsync) | **POST** /api/v2/SocialService/Curriculums/{curriculumId}/Experiences | Create a curriculum experience
[**deleteCurriculumExperienceAsync**](CurriculumExperiencesApi.md#deleteCurriculumExperienceAsync) | **DELETE** /api/v2/SocialService/Curriculums/{curriculumId}/Experiences/{experienceId} | Delete a curriculum experience
[**getCurriculumExperienceAsync**](CurriculumExperiencesApi.md#getCurriculumExperienceAsync) | **GET** /api/v2/SocialService/Curriculums/{curriculumId}/Experiences/{experienceId} | Get curriculum experience by ID
[**getCurriculumExperiencesAsync**](CurriculumExperiencesApi.md#getCurriculumExperiencesAsync) | **GET** /api/v2/SocialService/Curriculums/{curriculumId}/Experiences | Get curriculum experiences
[**getCurriculumExperiencesCountAsync**](CurriculumExperiencesApi.md#getCurriculumExperiencesCountAsync) | **GET** /api/v2/SocialService/Curriculums/{curriculumId}/Experiences/Count | Count curriculum experiences
[**patchCurriculumExperienceAsync**](CurriculumExperiencesApi.md#patchCurriculumExperienceAsync) | **PATCH** /api/v2/SocialService/Curriculums/{curriculumId}/Experiences/{experienceId} | Patch a curriculum experience
[**updateCurriculumExperienceAsync**](CurriculumExperiencesApi.md#updateCurriculumExperienceAsync) | **PUT** /api/v2/SocialService/Curriculums/{curriculumId}/Experiences/{experienceId} | Update a curriculum experience



## createCurriculumExperienceAsync

Create a curriculum experience

Adds a work-experience record to a curriculum authored on the specified social profile.

### Example

```bash
 createCurriculumExperienceAsync curriculumId=value  socialProfileId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **curriculumId** | **string** |  | [default to null]
 **socialProfileId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **curriculumExperienceCreateDto** | [**CurriculumExperienceCreateDto**](CurriculumExperienceCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCurriculumExperienceAsync

Delete a curriculum experience

Removes a work-experience record from a curriculum.

### Example

```bash
 deleteCurriculumExperienceAsync curriculumId=value experienceId=value  socialProfileId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **curriculumId** | **string** |  | [default to null]
 **experienceId** | **string** |  | [default to null]
 **socialProfileId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurriculumExperienceAsync

Get curriculum experience by ID

Retrieves a specific work-experience record of a curriculum.

### Example

```bash
 getCurriculumExperienceAsync curriculumId=value experienceId=value  socialProfileId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **curriculumId** | **string** |  | [default to null]
 **experienceId** | **string** |  | [default to null]
 **socialProfileId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CurriculumExperienceDtoEnvelope**](CurriculumExperienceDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurriculumExperiencesAsync

Get curriculum experiences

Retrieves the work-experience records of a curriculum authored on the specified social profile.

### Example

```bash
 getCurriculumExperiencesAsync curriculumId=value  socialProfileId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **curriculumId** | **string** |  | [default to null]
 **socialProfileId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **curriculumExperienceDtoCollectionQueryParameters** | [**CurriculumExperienceDtoCollectionQueryParameters**](CurriculumExperienceDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**CurriculumExperienceDtoListEnvelope**](CurriculumExperienceDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurriculumExperiencesCountAsync

Count curriculum experiences

Returns the count of work-experience records of a curriculum.

### Example

```bash
 getCurriculumExperiencesCountAsync curriculumId=value  socialProfileId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **curriculumId** | **string** |  | [default to null]
 **socialProfileId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **curriculumExperienceDtoCollectionQueryParameters** | [**CurriculumExperienceDtoCollectionQueryParameters**](CurriculumExperienceDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchCurriculumExperienceAsync

Patch a curriculum experience

Partially updates an existing work-experience record of a curriculum.

### Example

```bash
 patchCurriculumExperienceAsync curriculumId=value experienceId=value  socialProfileId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **curriculumId** | **string** |  | [default to null]
 **experienceId** | **string** |  | [default to null]
 **socialProfileId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **patchOperation** | [**array[PatchOperation]**](PatchOperation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateCurriculumExperienceAsync

Update a curriculum experience

Updates an existing work-experience record of a curriculum.

### Example

```bash
 updateCurriculumExperienceAsync curriculumId=value experienceId=value  socialProfileId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **curriculumId** | **string** |  | [default to null]
 **experienceId** | **string** |  | [default to null]
 **socialProfileId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **curriculumExperienceUpdateDto** | [**CurriculumExperienceUpdateDto**](CurriculumExperienceUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

