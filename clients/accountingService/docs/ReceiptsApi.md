# ReceiptsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createReceiptAsync**](ReceiptsApi.md#createReceiptAsync) | **POST** /api/v2/AccountingService/Receipts | Creates a new receipt
[**deleteReceiptAsync**](ReceiptsApi.md#deleteReceiptAsync) | **DELETE** /api/v2/AccountingService/Receipts/{receiptId} | Deletes a receipt
[**getReceiptDetailsAsync**](ReceiptsApi.md#getReceiptDetailsAsync) | **GET** /api/v2/AccountingService/Receipts/{receiptId} | Gets details of a receipt
[**getReceiptsAsync**](ReceiptsApi.md#getReceiptsAsync) | **GET** /api/v2/AccountingService/Receipts | Retrieves tenant receipts
[**getReceiptsCountAsync**](ReceiptsApi.md#getReceiptsCountAsync) | **GET** /api/v2/AccountingService/Receipts/Count | Gets count of tenant receipts
[**updateReceiptAsync**](ReceiptsApi.md#updateReceiptAsync) | **PUT** /api/v2/AccountingService/Receipts/{receiptId} | Updates a receipt



## createReceiptAsync

Creates a new receipt

Adds a new receipt record under the specified tenant.

### Example

```bash
 createReceiptAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **receiptCreateDto** | [**ReceiptCreateDto**](ReceiptCreateDto.md) |  |

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteReceiptAsync

Deletes a receipt

Removes an existing receipt from the tenant’s records.

### Example

```bash
 deleteReceiptAsync  tenantId=value receiptId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **receiptId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getReceiptDetailsAsync

Gets details of a receipt

Retrieves a specific receipt by its ID for the given tenant.

### Example

```bash
 getReceiptDetailsAsync  tenantId=value receiptId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **receiptId** | **string** |  | [default to null]

### Return type

[**ReceiptDtoEnvelope**](ReceiptDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getReceiptsAsync

Retrieves tenant receipts

Fetches all receipts for a given tenant with OData support.

### Example

```bash
 getReceiptsAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**ReceiptDtoIReadOnlyListEnvelope**](ReceiptDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getReceiptsCountAsync

Gets count of tenant receipts

Returns total number of receipts for the tenant with OData filter support.

### Example

```bash
 getReceiptsCountAsync  tenantId=value
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


## updateReceiptAsync

Updates a receipt

Modifies the data of an existing receipt for the given tenant.

### Example

```bash
 updateReceiptAsync  tenantId=value receiptId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **receiptId** | **string** |  | [default to null]
 **receiptUpdateDto** | [**ReceiptUpdateDto**](ReceiptUpdateDto.md) |  |

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

