# LoyaltyProgramsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**countLoyaltyProgramsAsync**](LoyaltyProgramsApi.md#countLoyaltyProgramsAsync) | **GET** /api/v2/SalesService/LoyaltyPrograms/Count | Get loyalty programs count
[**createLoyaltyProgramAsync**](LoyaltyProgramsApi.md#createLoyaltyProgramAsync) | **POST** /api/v2/SalesService/LoyaltyPrograms | Create a loyalty program
[**deleteLoyaltyProgramAsync**](LoyaltyProgramsApi.md#deleteLoyaltyProgramAsync) | **DELETE** /api/v2/SalesService/LoyaltyPrograms/{loyaltyProgramId} | Delete a loyalty program
[**getLoyaltyProgramAsync**](LoyaltyProgramsApi.md#getLoyaltyProgramAsync) | **GET** /api/v2/SalesService/LoyaltyPrograms/{loyaltyProgramId} | Get loyalty program by ID
[**getLoyaltyProgramsAsync**](LoyaltyProgramsApi.md#getLoyaltyProgramsAsync) | **GET** /api/v2/SalesService/LoyaltyPrograms | Get loyalty programs
[**patchLoyaltyProgramAsync**](LoyaltyProgramsApi.md#patchLoyaltyProgramAsync) | **PATCH** /api/v2/SalesService/LoyaltyPrograms/{loyaltyProgramId} | Patch a loyalty program
[**updateLoyaltyProgramAsync**](LoyaltyProgramsApi.md#updateLoyaltyProgramAsync) | **PUT** /api/v2/SalesService/LoyaltyPrograms/{loyaltyProgramId} | Update a loyalty program



## countLoyaltyProgramsAsync

Get loyalty programs count

Returns the total count of loyalty programs for the specified tenant with OData filter support.

### Example

```bash
 countLoyaltyProgramsAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createLoyaltyProgramAsync

Create a loyalty program

Creates a new loyalty program for the specified tenant.

### Example

```bash
 createLoyaltyProgramAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **loyaltyProgramCreateDto** | [**LoyaltyProgramCreateDto**](LoyaltyProgramCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteLoyaltyProgramAsync

Delete a loyalty program

Deletes an existing loyalty program by its unique identifier.

### Example

```bash
 deleteLoyaltyProgramAsync  tenantId=value loyaltyProgramId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **loyaltyProgramId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getLoyaltyProgramAsync

Get loyalty program by ID

Retrieves a single loyalty program by its unique identifier.

### Example

```bash
 getLoyaltyProgramAsync  tenantId=value loyaltyProgramId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **loyaltyProgramId** | **string** |  | [default to null]

### Return type

[**LoyaltyProgramDtoEnvelope**](LoyaltyProgramDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getLoyaltyProgramsAsync

Get loyalty programs

Retrieves a list of loyalty programs for the specified tenant with OData query support.

### Example

```bash
 getLoyaltyProgramsAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**LoyaltyProgramDtoListEnvelope**](LoyaltyProgramDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchLoyaltyProgramAsync

Patch a loyalty program

Partially updates an existing loyalty program using a JSON Patch document.

### Example

```bash
 patchLoyaltyProgramAsync  tenantId=value loyaltyProgramId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **loyaltyProgramId** | **string** |  | [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateLoyaltyProgramAsync

Update a loyalty program

Updates an existing loyalty program by its unique identifier.

### Example

```bash
 updateLoyaltyProgramAsync  tenantId=value loyaltyProgramId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **loyaltyProgramId** | **string** |  | [default to null]
 **loyaltyProgramUpdateDto** | [**LoyaltyProgramUpdateDto**](LoyaltyProgramUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

