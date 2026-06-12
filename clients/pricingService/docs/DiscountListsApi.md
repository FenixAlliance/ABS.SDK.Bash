# DiscountListsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDiscountList**](DiscountListsApi.md#createDiscountList) | **POST** /api/v2/PricingService/DiscountLists | Creates a new discount list
[**createDiscountListEntry**](DiscountListsApi.md#createDiscountListEntry) | **POST** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts | Creates a discount list entry
[**deleteDiscountList**](DiscountListsApi.md#deleteDiscountList) | **DELETE** /api/v2/PricingService/DiscountLists/{discountListId} | Deletes a discount list
[**deleteDiscountListEntry**](DiscountListsApi.md#deleteDiscountListEntry) | **DELETE** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts/{discountListEntryId} | Deletes a discount list entry
[**getDiscountList**](DiscountListsApi.md#getDiscountList) | **GET** /api/v2/PricingService/DiscountLists/{discountListId} | Gets a discount list by ID
[**getDiscountListEntries**](DiscountListsApi.md#getDiscountListEntries) | **GET** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts | Retrieves discounts in a discount list
[**getDiscountListEntriesCount**](DiscountListsApi.md#getDiscountListEntriesCount) | **GET** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts/Count | Counts discounts in a discount list
[**getDiscountListEntry**](DiscountListsApi.md#getDiscountListEntry) | **GET** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts/{discountListEntryId} | Gets a discount list entry by ID
[**getDiscountLists**](DiscountListsApi.md#getDiscountLists) | **GET** /api/v2/PricingService/DiscountLists | Retrieves all discount lists
[**getDiscountListsCount**](DiscountListsApi.md#getDiscountListsCount) | **GET** /api/v2/PricingService/DiscountLists/Count | Counts discount lists
[**patchDiscountList**](DiscountListsApi.md#patchDiscountList) | **PATCH** /api/v2/PricingService/DiscountLists/{discountListId} | Patches a discount list
[**patchDiscountListEntry**](DiscountListsApi.md#patchDiscountListEntry) | **PATCH** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts/{discountListEntryId} | Patches a discount list entry
[**updateDiscountList**](DiscountListsApi.md#updateDiscountList) | **PUT** /api/v2/PricingService/DiscountLists/{discountListId} | Updates a discount list
[**updateDiscountListEntry**](DiscountListsApi.md#updateDiscountListEntry) | **PUT** /api/v2/PricingService/DiscountLists/{discountListId}/Discounts/{discountListEntryId} | Updates a discount list entry



## createDiscountList

Creates a new discount list

Creates a new discount list for the current tenant.

### Example

```bash
 createDiscountList  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListCreateDto** | [**DiscountListCreateDto**](DiscountListCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createDiscountListEntry

Creates a discount list entry

Creates a new discount entry in the specified discount list.

### Example

```bash
 createDiscountListEntry  tenantId=value discountListId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListId** | **string** |  | [default to null]
 **discountCreateDto** | [**DiscountCreateDto**](DiscountCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteDiscountList

Deletes a discount list

Deletes the specified discount list.

### Example

```bash
 deleteDiscountList  tenantId=value discountListId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteDiscountListEntry

Deletes a discount list entry

Deletes the specified discount entry from a discount list.

### Example

```bash
 deleteDiscountListEntry  tenantId=value discountListId=value discountListEntryId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListId** | **string** |  | [default to null]
 **discountListEntryId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDiscountList

Gets a discount list by ID

Retrieves the details of a discount list using its unique identifier.

### Example

```bash
 getDiscountList  tenantId=value discountListId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListId** | **string** |  | [default to null]

### Return type

[**DiscountListDtoEnvelope**](DiscountListDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDiscountListEntries

Retrieves discounts in a discount list

Gets all discount entries for a specific discount list with OData support.

### Example

```bash
 getDiscountListEntries  tenantId=value discountListId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListId** | **string** |  | [default to null]

### Return type

[**DiscountDtoListEnvelope**](DiscountDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDiscountListEntriesCount

Counts discounts in a discount list

Gets the count of discount entries for a specific discount list.

### Example

```bash
 getDiscountListEntriesCount  tenantId=value discountListId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDiscountListEntry

Gets a discount list entry by ID

Retrieves a specific discount entry from a discount list.

### Example

```bash
 getDiscountListEntry  tenantId=value discountListId=value discountListEntryId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListId** | **string** |  | [default to null]
 **discountListEntryId** | **string** |  | [default to null]

### Return type

[**DiscountDtoEnvelope**](DiscountDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDiscountLists

Retrieves all discount lists

Gets all discount lists for the current tenant with OData support.

### Example

```bash
 getDiscountLists  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**DiscountListDtoListEnvelope**](DiscountListDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDiscountListsCount

Counts discount lists

Gets the count of discount lists for the current tenant.

### Example

```bash
 getDiscountListsCount  tenantId=value
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


## patchDiscountList

Patches a discount list

Partially updates the specified discount list using a JSON Patch document.

### Example

```bash
 patchDiscountList  tenantId=value discountListId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListId** | **string** |  | [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## patchDiscountListEntry

Patches a discount list entry

Partially updates the specified discount entry using a JSON Patch document.

### Example

```bash
 patchDiscountListEntry  tenantId=value discountListId=value discountListEntryId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListId** | **string** |  | [default to null]
 **discountListEntryId** | **string** |  | [default to null]
 **operation** | [**array[Operation]**](Operation.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateDiscountList

Updates a discount list

Updates the specified discount list.

### Example

```bash
 updateDiscountList  tenantId=value discountListId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListId** | **string** |  | [default to null]
 **discountListUpdateDto** | [**DiscountListUpdateDto**](DiscountListUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateDiscountListEntry

Updates a discount list entry

Updates the specified discount entry in a discount list.

### Example

```bash
 updateDiscountListEntry  tenantId=value discountListId=value discountListEntryId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **discountListId** | **string** |  | [default to null]
 **discountListEntryId** | **string** |  | [default to null]
 **discountUpdateDto** | [**DiscountUpdateDto**](DiscountUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

