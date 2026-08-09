# PaymentProviderRegistrationsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAsync**](PaymentProviderRegistrationsApi.md#createAsync) | **POST** /api/v2/PaymentsService/PaymentProviderRegistrations | Provisions a provider webhook registration
[**getAsync**](PaymentProviderRegistrationsApi.md#getAsync) | **GET** /api/v2/PaymentsService/PaymentProviderRegistrations | Lists the tenant&#39;s provider registrations
[**getCountAsync**](PaymentProviderRegistrationsApi.md#getCountAsync) | **GET** /api/v2/PaymentsService/PaymentProviderRegistrations/Count | Counts the tenant&#39;s provider registrations
[**rotateKeyAsync**](PaymentProviderRegistrationsApi.md#rotateKeyAsync) | **POST** /api/v2/PaymentsService/PaymentProviderRegistrations/{registrationId}/RotateKey | Rotates a registration&#39;s webhook key



## createAsync

Provisions a provider webhook registration

Stores the BYO signing secret in the tenant options store, creates + activates the registration, and reveals the one-time plaintext webhook key plus its fully-composed inbound URL.

### Example

```bash
 createAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **createProviderWebhookRegistrationRequest** | [**CreateProviderWebhookRegistrationRequest**](CreateProviderWebhookRegistrationRequest.md) |  | [optional]

### Return type

[**ProviderWebhookRegistrationCreatedDtoEnvelope**](ProviderWebhookRegistrationCreatedDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAsync

Lists the tenant's provider registrations

Gets all provider registrations for the current tenant with OData support (no secret is ever returned).

### Example

```bash
 getAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **paymentProviderRegistrationDtoCollectionQueryParameters** | [**PaymentProviderRegistrationDtoCollectionQueryParameters**](PaymentProviderRegistrationDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**PaymentProviderRegistrationDtoListEnvelope**](PaymentProviderRegistrationDtoListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getCountAsync

Counts the tenant's provider registrations

Gets the count of provider registrations for the current tenant (OData sibling of the list).

### Example

```bash
 getCountAsync  tenantId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **paymentProviderRegistrationDtoCollectionQueryParameters** | [**PaymentProviderRegistrationDtoCollectionQueryParameters**](PaymentProviderRegistrationDtoCollectionQueryParameters.md) |  | [optional]

### Return type

[**Int32Envelope**](Int32Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## rotateKeyAsync

Rotates a registration's webhook key

Mints a fresh webhook key (invalidating the previous one) and reveals it once, plus its composed URL.

### Example

```bash
 rotateKeyAsync  tenantId=value registrationId=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **registrationId** | **string** |  | [default to null]

### Return type

[**ProviderWebhookRegistrationCreatedDtoEnvelope**](ProviderWebhookRegistrationCreatedDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

