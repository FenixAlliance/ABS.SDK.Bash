# RequiredSkillsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRequiredSkillAsync**](RequiredSkillsApi.md#createRequiredSkillAsync) | **POST** /api/v2/HrmsService/RequiredSkills | Create a required skill
[**deleteRequiredSkillAsync**](RequiredSkillsApi.md#deleteRequiredSkillAsync) | **DELETE** /api/v2/HrmsService/RequiredSkills/{requiredSkillId} | Delete a required skill
[**getRequiredSkillByIdAsync**](RequiredSkillsApi.md#getRequiredSkillByIdAsync) | **GET** /api/v2/HrmsService/RequiredSkills/{requiredSkillId} | Get required skill by ID
[**getRequiredSkillsAsync**](RequiredSkillsApi.md#getRequiredSkillsAsync) | **GET** /api/v2/HrmsService/RequiredSkills | Get required skills
[**getRequiredSkillsCountAsync**](RequiredSkillsApi.md#getRequiredSkillsCountAsync) | **GET** /api/v2/HrmsService/RequiredSkills/Count | Count required skills
[**patchRequiredSkillAsync**](RequiredSkillsApi.md#patchRequiredSkillAsync) | **PATCH** /api/v2/HrmsService/RequiredSkills/{requiredSkillId} | Patch a required skill
[**updateRequiredSkillAsync**](RequiredSkillsApi.md#updateRequiredSkillAsync) | **PUT** /api/v2/HrmsService/RequiredSkills/{requiredSkillId} | Update a required skill



## createRequiredSkillAsync

Create a required skill

Creates a new required-skill record for the specified tenant.

### Example

```bash
 createRequiredSkillAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **requiredSkillRecordCreateDto** | [**RequiredSkillRecordCreateDto**](RequiredSkillRecordCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteRequiredSkillAsync

Delete a required skill

Deletes a required-skill record for the specified tenant.

### Example

```bash
 deleteRequiredSkillAsync  tenantId=value requiredSkillId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **requiredSkillId** | **string** |  | [default to null]
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


## getRequiredSkillByIdAsync

Get required skill by ID

Retrieves a specific required-skill record by its identifier.

### Example

```bash
 getRequiredSkillByIdAsync  tenantId=value requiredSkillId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **requiredSkillId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**RequiredSkillRecordDtoEnvelope**](RequiredSkillRecordDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getRequiredSkillsAsync

Get required skills

Retrieves required-skill records for the specified tenant. Filter by '$filter=JobOfferId eq '...'' or 'EmployerProfileId eq '...''.

### Example

```bash
 getRequiredSkillsAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**RequiredSkillRecordDtoListEnvelope**](RequiredSkillRecordDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getRequiredSkillsCountAsync

Count required skills

Counts required-skill records for the specified tenant.

### Example

```bash
 getRequiredSkillsCountAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
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


## patchRequiredSkillAsync

Patch a required skill

Partially updates an existing required-skill record for the specified tenant.

### Example

```bash
 patchRequiredSkillAsync  tenantId=value requiredSkillId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **requiredSkillId** | **string** |  | [default to null]
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


## updateRequiredSkillAsync

Update a required skill

Updates an existing required-skill record for the specified tenant.

### Example

```bash
 updateRequiredSkillAsync  tenantId=value requiredSkillId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **requiredSkillId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **requiredSkillRecordUpdateDto** | [**RequiredSkillRecordUpdateDto**](RequiredSkillRecordUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

