# InboxApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelInboxMessageRetry**](InboxApi.md#cancelInboxMessageRetry) | **POST** /api/v2/SystemService/Inbox/Messages/{id}/CancelRetry | Cancel a scheduled inbox retry
[**deadLetterInboxMessage**](InboxApi.md#deadLetterInboxMessage) | **POST** /api/v2/SystemService/Inbox/Messages/{id}/DeadLetter | Manually dead-letter an inbox message
[**expediteInboxMessage**](InboxApi.md#expediteInboxMessage) | **POST** /api/v2/SystemService/Inbox/Messages/{id}/Expedite | Expedite a retry-scheduled inbox message
[**getDuplicateInboxMessages**](InboxApi.md#getDuplicateInboxMessages) | **GET** /api/v2/SystemService/Inbox/Duplicates | List duplicate-bearing inbox messages
[**getDuplicateInboxMessagesCount**](InboxApi.md#getDuplicateInboxMessagesCount) | **GET** /api/v2/SystemService/Inbox/Duplicates/Count | Count duplicate-bearing inbox messages
[**getInboxCorrelationChain**](InboxApi.md#getInboxCorrelationChain) | **GET** /api/v2/SystemService/Inbox/Correlations/{correlationId} | Get an inbox correlation chain
[**getInboxHealth**](InboxApi.md#getInboxHealth) | **GET** /api/v2/SystemService/Inbox/Health | Get durable-inbox processor health
[**getInboxMessage**](InboxApi.md#getInboxMessage) | **GET** /api/v2/SystemService/Inbox/Messages/{id} | Get one inbox message
[**getInboxMessages**](InboxApi.md#getInboxMessages) | **GET** /api/v2/SystemService/Inbox/Messages | List inbox messages
[**getInboxMessagesCount**](InboxApi.md#getInboxMessagesCount) | **GET** /api/v2/SystemService/Inbox/Messages/Count | Count inbox messages
[**quarantineInboxMessage**](InboxApi.md#quarantineInboxMessage) | **POST** /api/v2/SystemService/Inbox/Messages/{id}/Quarantine | Manually quarantine an inbox message
[**releaseInboxMessageLease**](InboxApi.md#releaseInboxMessageLease) | **POST** /api/v2/SystemService/Inbox/Messages/{id}/ReleaseLease | Release a stuck inbox lease
[**replayInboxMessage**](InboxApi.md#replayInboxMessage) | **POST** /api/v2/SystemService/Inbox/Messages/{id}/Replay | Replay a terminal inbox message as a new generation



## cancelInboxMessageRetry

Cancel a scheduled inbox retry

Stops a RetryScheduled message from retrying by operator decision, moving it to the terminal Cancelled state (deliberately distinct from DeadLettered so the dead-letter gauge stays honest). The reason is audit-critical. Only a RetryScheduled message can be cancelled. Global-administrator only.

### Example

```bash
 cancelInboxMessageRetry id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **inboxAdminReasonDto** | [**InboxAdminReasonDto**](InboxAdminReasonDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deadLetterInboxMessage

Manually dead-letter an inbox message

Manually moves a non-terminal message to the terminal DeadLettered state. The reason is audit-critical. Global-administrator only.

### Example

```bash
 deadLetterInboxMessage id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **inboxAdminReasonDto** | [**InboxAdminReasonDto**](InboxAdminReasonDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## expediteInboxMessage

Expedite a retry-scheduled inbox message

Pulls a RetryScheduled message's scheduled instant forward to now so the processor claims it on the next poll, bypassing the remaining backoff. Same row, retry budget untouched. Only a RetryScheduled message can be expedited. Global-administrator only.

### Example

```bash
 expediteInboxMessage id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
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


## getDuplicateInboxMessages

List duplicate-bearing inbox messages

Lists inbox messages that have observed a re-delivery (DeliveryCount > 1) — durable evidence that a source is re-sending, surfaced with DeliveryCount / LastDuplicateReceivedAtUtc. Further OData filtering/paging applies. Global-administrator only.

### Example

```bash
 getDuplicateInboxMessages  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **inboxMessageDtoCollectionQueryParameters** | [**InboxMessageDtoCollectionQueryParameters**](InboxMessageDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**InboxMessageDtoIReadOnlyListEnvelope**](InboxMessageDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDuplicateInboxMessagesCount

Count duplicate-bearing inbox messages

Returns the count of duplicate-bearing inbox messages under the same OData shaping as the duplicates list. Global-administrator only.

### Example

```bash
 getDuplicateInboxMessagesCount  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **inboxMessageDtoCollectionQueryParameters** | [**InboxMessageDtoCollectionQueryParameters**](InboxMessageDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInboxCorrelationChain

Get an inbox correlation chain

Returns every inbox message that shares a correlation id — one logical inbound interaction end-to-end, including its replay generations — oldest-received first. Global-administrator only.

### Example

```bash
 getInboxCorrelationChain correlationId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **correlationId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**InboxMessageDtoIReadOnlyListEnvelope**](InboxMessageDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInboxHealth

Get durable-inbox processor health

Returns a single snapshot of the durable-inbox processor: whether it is enabled, the per-status counts (received/accepted/processing/retry-scheduled/rejected/quarantined/dead-lettered/cancelled), the age of the oldest accepted message, and the last successful processing instant. Global-administrator only.

### Example

```bash
 getInboxHealth  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**InboxHealthDtoEnvelope**](InboxHealthDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInboxMessage

Get one inbox message

Returns one inbox message's payload-safe detail by id — both lifecycle axes (processing status + independent verification status), the dedup lineage, attempt/generation counters, the recorded failure, and the timestamps. Global-administrator only.

### Example

```bash
 getInboxMessage id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**InboxMessageDtoEnvelope**](InboxMessageDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInboxMessages

List inbox messages

Lists durable-inbox messages (payload-safe fields only). Use OData to scope by any projected field — e.g. $filter=Status eq 'Quarantined' for the quarantine review, Status eq 'DeadLettered' for terminal failures, VerificationStatus eq 'Failed' for forged/untrusted callbacks, SourceSystem eq 'stripe', or a ReceivedAtUtc range — and to page/order. Global-administrator only.

### Example

```bash
 getInboxMessages  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **inboxMessageDtoCollectionQueryParameters** | [**InboxMessageDtoCollectionQueryParameters**](InboxMessageDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**InboxMessageDtoIReadOnlyListEnvelope**](InboxMessageDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getInboxMessagesCount

Count inbox messages

Returns the count of durable-inbox messages under the same OData shaping as the list read (e.g. $filter=Status eq 'Quarantined'). Global-administrator only.

### Example

```bash
 getInboxMessagesCount  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **inboxMessageDtoCollectionQueryParameters** | [**InboxMessageDtoCollectionQueryParameters**](InboxMessageDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## quarantineInboxMessage

Manually quarantine an inbox message

Manually holds a non-terminal message for review in the terminal Quarantined state (e.g. an operator judges it suspicious). The reason is audit-critical. Global-administrator only.

### Example

```bash
 quarantineInboxMessage id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **inboxAdminReasonDto** | [**InboxAdminReasonDto**](InboxAdminReasonDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## releaseInboxMessageLease

Release a stuck inbox lease

Force-releases the lease on a message wedged in Processing (a crashed/hung processor) and returns it to the claimable Accepted state, due now, so the next poll re-drives it. The in-flight attempt is NOT counted — a crash is not a business failure. Only a Processing message can have its lease released. Global-administrator only.

### Example

```bash
 releaseInboxMessageLease id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
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


## replayInboxMessage

Replay a terminal inbox message as a new generation

Replays a terminal message as a NEW processing generation over its immutable received evidence — the inbox's recovery lever (distinct from the outbox's same-row requeue). A selected replay-generation row is resolved back to its lineage root before replaying, so numbering stays global and collision-free; the new row is claimable at once with a fresh retry budget, and the root's evidence and budget are never mutated. Legal only from a terminal state whose authenticity passed. Returns the new generation's identity. The reason is audit-critical. Global-administrator only.

### Example

```bash
 replayInboxMessage id=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **inboxAdminReasonDto** | [**InboxAdminReasonDto**](InboxAdminReasonDto.md) |  | [optional]

### Return type

[**InboxReplayResultDtoEnvelope**](InboxReplayResultDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

