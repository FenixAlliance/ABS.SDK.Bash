# QuotesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**calculateQuote**](QuotesApi.md#calculateQuote) | **PUT** /api/v2/QuotesService/Quotes/{quoteId}/Calculate | Calculate a quote.
[**calculateQuoteLine**](QuotesApi.md#calculateQuoteLine) | **PUT** /api/v2/QuotesService/Quotes/{quoteId}/Lines/{quoteLineId}/Calculate | Calculate a quote line.
[**closeQuote**](QuotesApi.md#closeQuote) | **PUT** /api/v2/QuotesService/Quotes/{quoteId}/Close | Close a quote.
[**createOrderFromQuote**](QuotesApi.md#createOrderFromQuote) | **POST** /api/v2/QuotesService/Quotes/{quoteId}/Orders | Create an order from a quote.
[**createQuote**](QuotesApi.md#createQuote) | **POST** /api/v2/QuotesService/Quotes | Create a new quote.
[**createQuoteLine**](QuotesApi.md#createQuoteLine) | **POST** /api/v2/QuotesService/Quotes/{quoteId}/Lines | Create a new quote line.
[**deleteQuote**](QuotesApi.md#deleteQuote) | **DELETE** /api/v2/QuotesService/Quotes/{quoteId} | Delete a quote.
[**deleteQuoteLine**](QuotesApi.md#deleteQuoteLine) | **DELETE** /api/v2/QuotesService/Quotes/{quoteId}/Lines/{quoteLineId} | Delete a quote line.
[**getExtendedQuotes**](QuotesApi.md#getExtendedQuotes) | **GET** /api/v2/QuotesService/Quotes/Extended | Get a list of extended quotes.
[**getQuote**](QuotesApi.md#getQuote) | **GET** /api/v2/QuotesService/Quotes/{quoteId} | Get a quote by ID.
[**getQuoteLine**](QuotesApi.md#getQuoteLine) | **GET** /api/v2/QuotesService/Quotes/{quoteId}/Lines/{quoteLineId} | Get a quote line by ID.
[**getQuoteLines**](QuotesApi.md#getQuoteLines) | **GET** /api/v2/QuotesService/Quotes/{quoteId}/Lines | Get quote lines for a quote.
[**getQuoteLinesCount**](QuotesApi.md#getQuoteLinesCount) | **GET** /api/v2/QuotesService/Quotes/{quoteId}/Lines/Count | Get the count of quote lines.
[**getQuotes**](QuotesApi.md#getQuotes) | **GET** /api/v2/QuotesService/Quotes | Get a list of quotes.
[**getQuotesCount**](QuotesApi.md#getQuotesCount) | **GET** /api/v2/QuotesService/Quotes/Count | Get the count of quotes.
[**previewQuoteEmailTemplate**](QuotesApi.md#previewQuoteEmailTemplate) | **POST** /api/v2/QuotesService/Quotes/{quoteId}/Emails/Preview | Preview the rendered email for an invoice.
[**quoteLineExists**](QuotesApi.md#quoteLineExists) | **GET** /api/v2/QuotesService/Quotes/{quoteId}/Lines/Exists | Check if a quote line exists.
[**reopenQuote**](QuotesApi.md#reopenQuote) | **PUT** /api/v2/QuotesService/Quotes/{quoteId}/Reopen | Reopen a closed quote.
[**sendQuoteEmail**](QuotesApi.md#sendQuoteEmail) | **POST** /api/v2/QuotesService/Quotes/{quoteId}/Emails/Send | Send a quote transactional email to recipients.
[**updateQuote**](QuotesApi.md#updateQuote) | **PUT** /api/v2/QuotesService/Quotes/{quoteId} | Update an existing quote.
[**updateQuoteLine**](QuotesApi.md#updateQuoteLine) | **PUT** /api/v2/QuotesService/Quotes/{quoteId}/Lines/{quoteLineId} | Update a quote line.
[**upsertQuoteLine**](QuotesApi.md#upsertQuoteLine) | **PUT** /api/v2/QuotesService/Quotes/{quoteId}/Lines/{quoteLineId}/Upsert | Upsert a quote line.



## calculateQuote

Calculate a quote.

Performs calculation logic for the specified quote.

### Example

```bash
 calculateQuote  tenantId=value quoteId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## calculateQuoteLine

Calculate a quote line.

Performs calculation logic for the specified quote line.

### Example

```bash
 calculateQuoteLine  tenantId=value quoteId=value quoteLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]
 **quoteLineId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## closeQuote

Close a quote.

Closes the specified quote for the tenant.

### Example

```bash
 closeQuote  tenantId=value quoteId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createOrderFromQuote

Create an order from a quote.

Creates an order based on the specified quote for the tenant.

### Example

```bash
 createOrderFromQuote  tenantId=value quoteId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createQuote

Create a new quote.

Creates a new quote for the specified tenant.

### Example

```bash
 createQuote  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteCreateDto** | [**QuoteCreateDto**](QuoteCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createQuoteLine

Create a new quote line.

Creates a new quote line for the specified quote and tenant.

### Example

```bash
 createQuoteLine  tenantId=value quoteId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]
 **quoteLineCreateDto** | [**QuoteLineCreateDto**](QuoteLineCreateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteQuote

Delete a quote.

Deletes the specified quote for the tenant.

### Example

```bash
 deleteQuote quoteId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quoteId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteQuoteLine

Delete a quote line.

Deletes the specified quote line for the quote and tenant.

### Example

```bash
 deleteQuoteLine  tenantId=value quoteId=value quoteLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]
 **quoteLineId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getExtendedQuotes

Get a list of extended quotes.

Retrieves a list of extended quotes for the specified tenant, supporting OData query options.

### Example

```bash
 getExtendedQuotes  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**ExtendedQuoteDtoListEnvelope**](ExtendedQuoteDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getQuote

Get a quote by ID.

Retrieves a single quote by its unique identifier for the specified tenant.

### Example

```bash
 getQuote  tenantId=value quoteId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]

### Return type

[**QuoteDtoEnvelope**](QuoteDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getQuoteLine

Get a quote line by ID.

Retrieves a single quote line by its unique identifier for the specified quote and tenant.

### Example

```bash
 getQuoteLine  tenantId=value quoteId=value quoteLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]
 **quoteLineId** | **string** |  | [default to null]

### Return type

[**QuoteLineDtoEnvelope**](QuoteLineDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getQuoteLines

Get quote lines for a quote.

Retrieves all quote lines for the specified quote and tenant.

### Example

```bash
 getQuoteLines  tenantId=value quoteId=value  itemId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]
 **itemId** | **string** |  | [optional] [default to null]

### Return type

[**QuoteLineDtoListEnvelope**](QuoteLineDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getQuoteLinesCount

Get the count of quote lines.

Retrieves the total count of quote lines for the specified quote and tenant.

### Example

```bash
 getQuoteLinesCount  tenantId=value quoteId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getQuotes

Get a list of quotes.

Retrieves a list of quotes for the specified tenant, supporting OData query options.

### Example

```bash
 getQuotes  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]

### Return type

[**QuoteDtoListEnvelope**](QuoteDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getQuotesCount

Get the count of quotes.

Retrieves the total count of quotes for the specified tenant, supporting OData query options.

### Example

```bash
 getQuotesCount  tenantId=value
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


## previewQuoteEmailTemplate

Preview the rendered email for an invoice.

This action is only available for users with the 'send_email' permission.

### Example

```bash
 previewQuoteEmailTemplate quoteId=value  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quoteId** | **string** |  | [default to null]
 **tenantId** | **string** |  | [default to null]
 **emailDispatchRequest** | [**EmailDispatchRequest**](EmailDispatchRequest.md) |  | [optional]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## quoteLineExists

Check if a quote line exists.

Checks if a quote line exists for the specified quote and tenant, by quote line ID or item ID.

### Example

```bash
 quoteLineExists  tenantId=value quoteId=value  quoteLineId=value  itemId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]
 **quoteLineId** | **string** |  | [optional] [default to null]
 **itemId** | **string** |  | [optional] [default to null]

### Return type

[**BooleanEnvelope**](BooleanEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## reopenQuote

Reopen a closed quote.

Reopens a previously closed quote for the tenant.

### Example

```bash
 reopenQuote  tenantId=value quoteId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## sendQuoteEmail

Send a quote transactional email to recipients.

This action is only available for users with the 'send_email' permission.

### Example

```bash
 sendQuoteEmail  tenantId=value quoteId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]
 **emailDispatchRequest** | [**EmailDispatchRequest**](EmailDispatchRequest.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateQuote

Update an existing quote.

Updates an existing quote for the specified tenant and quote ID.

### Example

```bash
 updateQuote  tenantId=value quoteId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]
 **quoteUpdateDto** | [**QuoteUpdateDto**](QuoteUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## updateQuoteLine

Update a quote line.

Updates an existing quote line for the specified quote and tenant.

### Example

```bash
 updateQuoteLine  tenantId=value quoteId=value quoteLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]
 **quoteLineId** | **string** |  | [default to null]
 **quoteLineUpdateDto** | [**QuoteLineUpdateDto**](QuoteLineUpdateDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## upsertQuoteLine

Upsert a quote line.

Creates or updates a quote line for the specified quote and tenant.

### Example

```bash
 upsertQuoteLine  tenantId=value quoteId=value quoteLineId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **quoteId** | **string** |  | [default to null]
 **quoteLineId** | **string** |  | [default to null]
 **quoteLineUpsertDto** | [**QuoteLineUpsertDto**](QuoteLineUpsertDto.md) |  | [optional]

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

