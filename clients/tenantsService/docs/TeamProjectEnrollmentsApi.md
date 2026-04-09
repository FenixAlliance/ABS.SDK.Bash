# TeamProjectEnrollmentsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTenantTeamProjectEnrollment**](TeamProjectEnrollmentsApi.md#createTenantTeamProjectEnrollment) | **POST** /api/v2/TenantsService/TeamProjectEnrollments | Create a new tenant team project enrollment
[**deleteTenantTeamProjectEnrollment**](TeamProjectEnrollmentsApi.md#deleteTenantTeamProjectEnrollment) | **DELETE** /api/v2/TenantsService/TeamProjectEnrollments/{tenantTeamProjectEnrollmentId} | Delete a tenant team project enrollment
[**getTenantTeamProjectEnrollmentById**](TeamProjectEnrollmentsApi.md#getTenantTeamProjectEnrollmentById) | **GET** /api/v2/TenantsService/TeamProjectEnrollments/{tenantTeamProjectEnrollmentId} | Retrieve a single tenant team project enrollment by its ID
[**getTenantTeamProjectEnrollments**](TeamProjectEnrollmentsApi.md#getTenantTeamProjectEnrollments) | **GET** /api/v2/TenantsService/TeamProjectEnrollments | Retrieve a list of tenant team project enrollments
[**getTenantTeamProjectEnrollmentsCount**](TeamProjectEnrollmentsApi.md#getTenantTeamProjectEnrollmentsCount) | **GET** /api/v2/TenantsService/TeamProjectEnrollments/Count | Get the count of tenant team project enrollments
[**updateTenantTeamProjectEnrollment**](TeamProjectEnrollmentsApi.md#updateTenantTeamProjectEnrollment) | **PUT** /api/v2/TenantsService/TeamProjectEnrollments/{tenantTeamProjectEnrollmentId} | Update a tenant team project enrollment



## createTenantTeamProjectEnrollment

Create a new tenant team project enrollment

Create a new tenant team project enrollment

### Example

```bash
 createTenantTeamProjectEnrollment  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **tenantTeamProjectEnrollmentCreateDto** | [**TenantTeamProjectEnrollmentCreateDto**](TenantTeamProjectEnrollmentCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteTenantTeamProjectEnrollment

Delete a tenant team project enrollment

Delete a tenant team project enrollment

### Example

```bash
 deleteTenantTeamProjectEnrollment  tenantId=value tenantTeamProjectEnrollmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **tenantTeamProjectEnrollmentId** | **string** |  | [default to null]
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


## getTenantTeamProjectEnrollmentById

Retrieve a single tenant team project enrollment by its ID

Retrieve a single tenant team project enrollment by its ID

### Example

```bash
 getTenantTeamProjectEnrollmentById  tenantId=value tenantTeamProjectEnrollmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **tenantTeamProjectEnrollmentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TenantTeamProjectEnrollmentDtoEnvelope**](TenantTeamProjectEnrollmentDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTenantTeamProjectEnrollments

Retrieve a list of tenant team project enrollments

Retrieve a list of tenant team project enrollments

### Example

```bash
 getTenantTeamProjectEnrollments  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**TenantTeamProjectEnrollmentDtoListEnvelope**](TenantTeamProjectEnrollmentDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTenantTeamProjectEnrollmentsCount

Get the count of tenant team project enrollments

Get the count of tenant team project enrollments

### Example

```bash
 getTenantTeamProjectEnrollmentsCount  tenantId=value  api-version=value x-api-version:value
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


## updateTenantTeamProjectEnrollment

Update a tenant team project enrollment

Update a tenant team project enrollment

### Example

```bash
 updateTenantTeamProjectEnrollment  tenantId=value tenantTeamProjectEnrollmentId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **tenantTeamProjectEnrollmentId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **tenantTeamProjectEnrollmentUpdateDto** | [**TenantTeamProjectEnrollmentUpdateDto**](TenantTeamProjectEnrollmentUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

