# EmployeeEnrollmentsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTenantEmployeeEnrollment**](EmployeeEnrollmentsApi.md#createTenantEmployeeEnrollment) | **POST** /api/v2/TenantsService/EmployeeEnrollments | Create a new tenant employee enrollment
[**deleteTenantEmployeeEnrollment**](EmployeeEnrollmentsApi.md#deleteTenantEmployeeEnrollment) | **DELETE** /api/v2/TenantsService/EmployeeEnrollments/{tenantEmployeeEnrollmentId} | Delete a tenant employee enrollment
[**getTenantEmployeeEnrollmentById**](EmployeeEnrollmentsApi.md#getTenantEmployeeEnrollmentById) | **GET** /api/v2/TenantsService/EmployeeEnrollments/{tenantEmployeeEnrollmentId} | Retrieve a single tenant employee enrollment by its ID
[**getTenantEmployeeEnrollments**](EmployeeEnrollmentsApi.md#getTenantEmployeeEnrollments) | **GET** /api/v2/TenantsService/EmployeeEnrollments | Retrieve a list of tenant employee enrollments
[**getTenantEmployeeEnrollmentsCount**](EmployeeEnrollmentsApi.md#getTenantEmployeeEnrollmentsCount) | **GET** /api/v2/TenantsService/EmployeeEnrollments/Count | Get the count of tenant employee enrollments
[**patchTenantEmployeeEnrollmentAsync**](EmployeeEnrollmentsApi.md#patchTenantEmployeeEnrollmentAsync) | **PATCH** /api/v2/TenantsService/EmployeeEnrollments/{tenantEmployeeEnrollmentId} | Patch a tenant employee enrollment
[**updateTenantEmployeeEnrollment**](EmployeeEnrollmentsApi.md#updateTenantEmployeeEnrollment) | **PUT** /api/v2/TenantsService/EmployeeEnrollments/{tenantEmployeeEnrollmentId} | Update a tenant employee enrollment



## createTenantEmployeeEnrollment

Create a new tenant employee enrollment

Create a new tenant employee enrollment

### Example

```bash
 createTenantEmployeeEnrollment  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **tenantTeamEmployeeEnrollmentCreateDto** | [**TenantTeamEmployeeEnrollmentCreateDto**](TenantTeamEmployeeEnrollmentCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteTenantEmployeeEnrollment

Delete a tenant employee enrollment

Delete a tenant employee enrollment

### Example

```bash
 deleteTenantEmployeeEnrollment  tenantId=value tenantEmployeeEnrollmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **tenantEmployeeEnrollmentId** | **string** |  | [default to null]
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


## getTenantEmployeeEnrollmentById

Retrieve a single tenant employee enrollment by its ID

Retrieve a single tenant employee enrollment by its ID

### Example

```bash
 getTenantEmployeeEnrollmentById  tenantId=value tenantEmployeeEnrollmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **tenantEmployeeEnrollmentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TenantTeamEmployeeEnrollmentDtoEnvelope**](TenantTeamEmployeeEnrollmentDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTenantEmployeeEnrollments

Retrieve a list of tenant employee enrollments

Retrieve a list of tenant employee enrollments

### Example

```bash
 getTenantEmployeeEnrollments  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TenantTeamEmployeeEnrollmentDtoListEnvelope**](TenantTeamEmployeeEnrollmentDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTenantEmployeeEnrollmentsCount

Get the count of tenant employee enrollments

Get the count of tenant employee enrollments

### Example

```bash
 getTenantEmployeeEnrollmentsCount  tenantId=value  api-version=value x-api-version:value
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


## patchTenantEmployeeEnrollmentAsync

Patch a tenant employee enrollment

Patch a tenant employee enrollment

### Example

```bash
 patchTenantEmployeeEnrollmentAsync  tenantId=value tenantEmployeeEnrollmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **tenantEmployeeEnrollmentId** | **string** |  | [default to null]
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


## updateTenantEmployeeEnrollment

Update a tenant employee enrollment

Update a tenant employee enrollment

### Example

```bash
 updateTenantEmployeeEnrollment  tenantId=value tenantEmployeeEnrollmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **tenantEmployeeEnrollmentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **tenantTeamEmployeeEnrollmentUpdateDto** | [**TenantTeamEmployeeEnrollmentUpdateDto**](TenantTeamEmployeeEnrollmentUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

