# SharesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createShareClass**](SharesApi.md#createShareClass) | **POST** /api/v2/AccountingService/Shares/Classes | Creates a new share class
[**createShareIssuance**](SharesApi.md#createShareIssuance) | **POST** /api/v2/AccountingService/Shares/Issuances | Creates a new share issuance
[**createShareTransfer**](SharesApi.md#createShareTransfer) | **POST** /api/v2/AccountingService/Shares/Transfers | Creates a new share transfer
[**createShareTransferReason**](SharesApi.md#createShareTransferReason) | **POST** /api/v2/AccountingService/Shares/TransferReasons | Creates a new share transfer reason
[**deleteShareClass**](SharesApi.md#deleteShareClass) | **DELETE** /api/v2/AccountingService/Shares/Classes/{shareClassId} | Deletes an existing share class
[**deleteShareIssuance**](SharesApi.md#deleteShareIssuance) | **DELETE** /api/v2/AccountingService/Shares/Issuances/{issuanceId} | Deletes an existing share issuance
[**deleteShareTransfer**](SharesApi.md#deleteShareTransfer) | **DELETE** /api/v2/AccountingService/Shares/Transfers/{transferId} | Deletes an existing share transfer
[**deleteShareTransferReason**](SharesApi.md#deleteShareTransferReason) | **DELETE** /api/v2/AccountingService/Shares/TransferReasons/{reasonId} | Deletes an existing share transfer reason
[**getShareClass**](SharesApi.md#getShareClass) | **GET** /api/v2/AccountingService/Shares/Classes/{shareClassId} | Gets a share class by id
[**getShareClasses**](SharesApi.md#getShareClasses) | **GET** /api/v2/AccountingService/Shares/Classes | Gets the current tenant share classes
[**getShareClassesCount**](SharesApi.md#getShareClassesCount) | **GET** /api/v2/AccountingService/Shares/Classes/Count | Gets the current tenant share classes count
[**getShareIssuance**](SharesApi.md#getShareIssuance) | **GET** /api/v2/AccountingService/Shares/Issuances/{issuanceId} | Gets a share issuance by id
[**getShareIssuances**](SharesApi.md#getShareIssuances) | **GET** /api/v2/AccountingService/Shares/Issuances | Gets the current tenant share issuances
[**getShareIssuancesCount**](SharesApi.md#getShareIssuancesCount) | **GET** /api/v2/AccountingService/Shares/Issuances/Count | Gets the current tenant share issuances count
[**getShareTransfer**](SharesApi.md#getShareTransfer) | **GET** /api/v2/AccountingService/Shares/Transfers/{transferId} | Gets a share transfer by id
[**getShareTransferReason**](SharesApi.md#getShareTransferReason) | **GET** /api/v2/AccountingService/Shares/TransferReasons/{reasonId} | Gets a share transfer reason by id
[**getShareTransferReasons**](SharesApi.md#getShareTransferReasons) | **GET** /api/v2/AccountingService/Shares/TransferReasons | Gets the current tenant share transfer reasons
[**getShareTransferReasonsCount**](SharesApi.md#getShareTransferReasonsCount) | **GET** /api/v2/AccountingService/Shares/TransferReasons/Count | Gets the current tenant share transfer reasons count
[**getShareTransfers**](SharesApi.md#getShareTransfers) | **GET** /api/v2/AccountingService/Shares/Transfers | Gets the current tenant share transfers
[**getShareTransfersCount**](SharesApi.md#getShareTransfersCount) | **GET** /api/v2/AccountingService/Shares/Transfers/Count | Gets the current tenant share transfers count
[**patchShareClass**](SharesApi.md#patchShareClass) | **PATCH** /api/v2/AccountingService/Shares/Classes/{shareClassId} | Patches a share class
[**patchShareIssuance**](SharesApi.md#patchShareIssuance) | **PATCH** /api/v2/AccountingService/Shares/Issuances/{issuanceId} | Patches a share issuance
[**patchShareTransfer**](SharesApi.md#patchShareTransfer) | **PATCH** /api/v2/AccountingService/Shares/Transfers/{transferId} | Patches a share transfer
[**patchShareTransferReason**](SharesApi.md#patchShareTransferReason) | **PATCH** /api/v2/AccountingService/Shares/TransferReasons/{reasonId} | Patches a share transfer reason
[**updateShareClass**](SharesApi.md#updateShareClass) | **PUT** /api/v2/AccountingService/Shares/Classes/{shareClassId} | Updates an existing share class
[**updateShareIssuance**](SharesApi.md#updateShareIssuance) | **PUT** /api/v2/AccountingService/Shares/Issuances/{issuanceId} | Updates an existing share issuance
[**updateShareTransfer**](SharesApi.md#updateShareTransfer) | **PUT** /api/v2/AccountingService/Shares/Transfers/{transferId} | Updates an existing share transfer
[**updateShareTransferReason**](SharesApi.md#updateShareTransferReason) | **PUT** /api/v2/AccountingService/Shares/TransferReasons/{reasonId} | Updates an existing share transfer reason



## createShareClass

Creates a new share class

Creates a new share class.

### Example

```bash
 createShareClass  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **shareClassCreateDto** | [**ShareClassCreateDto**](ShareClassCreateDto.md) |  | [optional]

### Return type

[**ShareClassDtoEnvelope**](ShareClassDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createShareIssuance

Creates a new share issuance

Creates a new share issuance.

### Example

```bash
 createShareIssuance  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **shareIssuanceCreateDto** | [**ShareIssuanceCreateDto**](ShareIssuanceCreateDto.md) |  | [optional]

### Return type

[**ShareIssuanceDtoEnvelope**](ShareIssuanceDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createShareTransfer

Creates a new share transfer

Creates a new share transfer.

### Example

```bash
 createShareTransfer  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **shareTransferCreateDto** | [**ShareTransferCreateDto**](ShareTransferCreateDto.md) |  | [optional]

### Return type

[**ShareTransferDtoEnvelope**](ShareTransferDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createShareTransferReason

Creates a new share transfer reason

Creates a new share transfer reason.

### Example

```bash
 createShareTransferReason  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **shareTransferReasonCreateDto** | [**ShareTransferReasonCreateDto**](ShareTransferReasonCreateDto.md) |  | [optional]

### Return type

[**ShareTransferReasonDtoEnvelope**](ShareTransferReasonDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteShareClass

Deletes an existing share class

Deletes an existing share class.

### Example

```bash
 deleteShareClass  tenantId=value shareClassId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **shareClassId** | **string** |  | [default to null]
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


## deleteShareIssuance

Deletes an existing share issuance

Deletes an existing share issuance.

### Example

```bash
 deleteShareIssuance  tenantId=value issuanceId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **issuanceId** | **string** |  | [default to null]
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


## deleteShareTransfer

Deletes an existing share transfer

Deletes an existing share transfer.

### Example

```bash
 deleteShareTransfer  tenantId=value transferId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **transferId** | **string** |  | [default to null]
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


## deleteShareTransferReason

Deletes an existing share transfer reason

Deletes an existing share transfer reason.

### Example

```bash
 deleteShareTransferReason  tenantId=value reasonId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **reasonId** | **string** |  | [default to null]
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


## getShareClass

Gets a share class by id

Get a specific share class by its identifier.

### Example

```bash
 getShareClass  tenantId=value shareClassId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **shareClassId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ShareClassDtoEnvelope**](ShareClassDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getShareClasses

Gets the current tenant share classes

Get the currently acting tenant share classes.

### Example

```bash
 getShareClasses  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ShareClassDtoListEnvelope**](ShareClassDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getShareClassesCount

Gets the current tenant share classes count

Get the currently acting tenant share classes count.

### Example

```bash
 getShareClassesCount  tenantId=value  api-version=value x-api-version:value
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


## getShareIssuance

Gets a share issuance by id

Get a specific share issuance by its identifier.

### Example

```bash
 getShareIssuance  tenantId=value issuanceId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **issuanceId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ShareIssuanceDtoEnvelope**](ShareIssuanceDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getShareIssuances

Gets the current tenant share issuances

Get the currently acting tenant share issuances.

### Example

```bash
 getShareIssuances  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ShareIssuanceDtoListEnvelope**](ShareIssuanceDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getShareIssuancesCount

Gets the current tenant share issuances count

Get the currently acting tenant share issuances count.

### Example

```bash
 getShareIssuancesCount  tenantId=value  api-version=value x-api-version:value
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


## getShareTransfer

Gets a share transfer by id

Get a specific share transfer by its identifier.

### Example

```bash
 getShareTransfer  tenantId=value transferId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **transferId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ShareTransferDtoEnvelope**](ShareTransferDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getShareTransferReason

Gets a share transfer reason by id

Get a specific share transfer reason by its identifier.

### Example

```bash
 getShareTransferReason  tenantId=value reasonId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **reasonId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ShareTransferReasonDtoEnvelope**](ShareTransferReasonDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getShareTransferReasons

Gets the current tenant share transfer reasons

Get the currently acting tenant share transfer reasons.

### Example

```bash
 getShareTransferReasons  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ShareTransferReasonDtoListEnvelope**](ShareTransferReasonDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getShareTransferReasonsCount

Gets the current tenant share transfer reasons count

Get the currently acting tenant share transfer reasons count.

### Example

```bash
 getShareTransferReasonsCount  tenantId=value  api-version=value x-api-version:value
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


## getShareTransfers

Gets the current tenant share transfers

Get the currently acting tenant share transfers.

### Example

```bash
 getShareTransfers  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**ShareTransferDtoListEnvelope**](ShareTransferDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getShareTransfersCount

Gets the current tenant share transfers count

Get the currently acting tenant share transfers count.

### Example

```bash
 getShareTransfersCount  tenantId=value  api-version=value x-api-version:value
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


## patchShareClass

Patches a share class

Partially updates a share class using a JSON Patch document.

### Example

```bash
 patchShareClass  tenantId=value shareClassId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **shareClassId** | **string** |  | [default to null]
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


## patchShareIssuance

Patches a share issuance

Partially updates a share issuance using a JSON Patch document.

### Example

```bash
 patchShareIssuance  tenantId=value issuanceId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **issuanceId** | **string** |  | [default to null]
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


## patchShareTransfer

Patches a share transfer

Partially updates a share transfer using a JSON Patch document.

### Example

```bash
 patchShareTransfer  tenantId=value transferId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **transferId** | **string** |  | [default to null]
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


## patchShareTransferReason

Patches a share transfer reason

Partially updates a share transfer reason using a JSON Patch document.

### Example

```bash
 patchShareTransferReason  tenantId=value reasonId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **reasonId** | **string** |  | [default to null]
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


## updateShareClass

Updates an existing share class

Updates an existing share class.

### Example

```bash
 updateShareClass  tenantId=value shareClassId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **shareClassId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **shareClassUpdateDto** | [**ShareClassUpdateDto**](ShareClassUpdateDto.md) |  | [optional]

### Return type

[**ShareClassDtoEnvelope**](ShareClassDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateShareIssuance

Updates an existing share issuance

Updates an existing share issuance.

### Example

```bash
 updateShareIssuance  tenantId=value issuanceId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **issuanceId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **shareIssuanceUpdateDto** | [**ShareIssuanceUpdateDto**](ShareIssuanceUpdateDto.md) |  | [optional]

### Return type

[**ShareIssuanceDtoEnvelope**](ShareIssuanceDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateShareTransfer

Updates an existing share transfer

Updates an existing share transfer.

### Example

```bash
 updateShareTransfer  tenantId=value transferId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **transferId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **shareTransferUpdateDto** | [**ShareTransferUpdateDto**](ShareTransferUpdateDto.md) |  | [optional]

### Return type

[**ShareTransferDtoEnvelope**](ShareTransferDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateShareTransferReason

Updates an existing share transfer reason

Updates an existing share transfer reason.

### Example

```bash
 updateShareTransferReason  tenantId=value reasonId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **reasonId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **shareTransferReasonUpdateDto** | [**ShareTransferReasonUpdateDto**](ShareTransferReasonUpdateDto.md) |  | [optional]

### Return type

[**ShareTransferReasonDtoEnvelope**](ShareTransferReasonDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

