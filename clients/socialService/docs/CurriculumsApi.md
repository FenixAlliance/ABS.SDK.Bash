# CurriculumsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCurriculumAsync**](CurriculumsApi.md#createCurriculumAsync) | **POST** /api/v2/SocialService/Curriculums | Create a curriculum
[**deleteCurriculumAsync**](CurriculumsApi.md#deleteCurriculumAsync) | **DELETE** /api/v2/SocialService/Curriculums/{curriculumId} | Delete a curriculum
[**getCurriculumAsync**](CurriculumsApi.md#getCurriculumAsync) | **GET** /api/v2/SocialService/Curriculums/{curriculumId} | Get curriculum by ID
[**getCurriculumsAsync**](CurriculumsApi.md#getCurriculumsAsync) | **GET** /api/v2/SocialService/Curriculums | Get curricula
[**getCurriculumsCountAsync**](CurriculumsApi.md#getCurriculumsCountAsync) | **GET** /api/v2/SocialService/Curriculums/Count | Count curricula
[**patchCurriculumAsync**](CurriculumsApi.md#patchCurriculumAsync) | **PATCH** /api/v2/SocialService/Curriculums/{curriculumId} | Patch a curriculum
[**updateCurriculumAsync**](CurriculumsApi.md#updateCurriculumAsync) | **PUT** /api/v2/SocialService/Curriculums/{curriculumId} | Update a curriculum



## createCurriculumAsync

Create a curriculum

Creates a curriculum (CV) on the specified social profile.

### Example

```bash
 createCurriculumAsync  socialProfileId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialProfileId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **curriculumCreateDto** | [**CurriculumCreateDto**](CurriculumCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteCurriculumAsync

Delete a curriculum

Deletes a curriculum authored on the specified social profile.

### Example

```bash
 deleteCurriculumAsync  socialProfileId=value curriculumId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialProfileId** | **string** |  | [default to null]
 **curriculumId** | **string** |  | [default to null]
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


## getCurriculumAsync

Get curriculum by ID

Retrieves a specific curriculum authored on the specified social profile.

### Example

```bash
 getCurriculumAsync  socialProfileId=value curriculumId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialProfileId** | **string** |  | [default to null]
 **curriculumId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CurriculumDtoEnvelope**](CurriculumDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurriculumsAsync

Get curricula

Retrieves the curricula (CVs) authored on the specified social profile.

### Example

```bash
 getCurriculumsAsync  socialProfileId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialProfileId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**CurriculumDtoListEnvelope**](CurriculumDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCurriculumsCountAsync

Count curricula

Returns the count of curricula authored on the specified social profile.

### Example

```bash
 getCurriculumsCountAsync  socialProfileId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialProfileId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchCurriculumAsync

Patch a curriculum

Partially updates an existing curriculum authored on the specified social profile.

### Example

```bash
 patchCurriculumAsync  socialProfileId=value curriculumId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialProfileId** | **string** |  | [default to null]
 **curriculumId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
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


## updateCurriculumAsync

Update a curriculum

Updates an existing curriculum authored on the specified social profile.

### Example

```bash
 updateCurriculumAsync  socialProfileId=value curriculumId=value  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **socialProfileId** | **string** |  | [default to null]
 **curriculumId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [optional] [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **curriculumUpdateDto** | [**CurriculumUpdateDto**](CurriculumUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

