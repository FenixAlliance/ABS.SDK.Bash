# SubscriptionPlansApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSubscriptionPlanAsync**](SubscriptionPlansApi.md#createSubscriptionPlanAsync) | **POST** /api/v2/SubscriptionsService/SubscriptionPlans | Create a subscription plan
[**deleteSubscriptionPlanAsync**](SubscriptionPlansApi.md#deleteSubscriptionPlanAsync) | **DELETE** /api/v2/SubscriptionsService/SubscriptionPlans/{planId} | Delete a subscription plan
[**getSubscriptionPlanByIdAsync**](SubscriptionPlansApi.md#getSubscriptionPlanByIdAsync) | **GET** /api/v2/SubscriptionsService/SubscriptionPlans/{planId} | Get a subscription plan by ID
[**getSubscriptionPlansAsync**](SubscriptionPlansApi.md#getSubscriptionPlansAsync) | **GET** /api/v2/SubscriptionsService/SubscriptionPlans | Get all subscription plans
[**getSubscriptionPlansCountAsync**](SubscriptionPlansApi.md#getSubscriptionPlansCountAsync) | **GET** /api/v2/SubscriptionsService/SubscriptionPlans/Count | Get subscription plans count
[**patchSubscriptionPlanAsync**](SubscriptionPlansApi.md#patchSubscriptionPlanAsync) | **PATCH** /api/v2/SubscriptionsService/SubscriptionPlans/{planId} | Patch a subscription plan
[**updateSubscriptionPlanAsync**](SubscriptionPlansApi.md#updateSubscriptionPlanAsync) | **PUT** /api/v2/SubscriptionsService/SubscriptionPlans/{planId} | Update a subscription plan



## createSubscriptionPlanAsync

Create a subscription plan

Creates a new subscription plan for the specified tenant.

### Example

```bash
 createSubscriptionPlanAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **subscriptionPlanCreateDto** | [**SubscriptionPlanCreateDto**](SubscriptionPlanCreateDto.md) |  | [optional]

### Return type

[**Envelope**](Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## deleteSubscriptionPlanAsync

Delete a subscription plan

Deletes a subscription plan by its identifier.

### Example

```bash
 deleteSubscriptionPlanAsync  tenantId=value planId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **planId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**Envelope**](Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSubscriptionPlanByIdAsync

Get a subscription plan by ID

Retrieves a subscription plan by its identifier.

### Example

```bash
 getSubscriptionPlanByIdAsync  tenantId=value planId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **planId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SubscriptionPlanDtoEnvelope**](SubscriptionPlanDtoEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSubscriptionPlansAsync

Get all subscription plans

Retrieves all subscription plans for the specified tenant.

### Example

```bash
 getSubscriptionPlansAsync  tenantId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]

### Return type

[**SubscriptionPlanDtoIReadOnlyListEnvelope**](SubscriptionPlanDtoIReadOnlyListEnvelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSubscriptionPlansCountAsync

Get subscription plans count

Returns the count of subscription plans for the specified tenant.

### Example

```bash
 getSubscriptionPlansCountAsync  tenantId=value  api-version=value x-api-version:value
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


## patchSubscriptionPlanAsync

Patch a subscription plan

Patch a subscription plan

### Example

```bash
 patchSubscriptionPlanAsync  tenantId=value planId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **planId** | **string** |  | [default to null]
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


## updateSubscriptionPlanAsync

Update a subscription plan

Updates an existing subscription plan.

### Example

```bash
 updateSubscriptionPlanAsync  tenantId=value planId=value  api-version=value x-api-version:value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **string** |  | [default to null]
 **planId** | **string** |  | [default to null]
 **apiVersion** | **string** |  | [optional] [default to null]
 **xApiVersion** | **string** |  | [optional] [default to null]
 **subscriptionPlanUpdateDto** | [**SubscriptionPlanUpdateDto**](SubscriptionPlanUpdateDto.md) |  | [optional]

### Return type

[**Envelope**](Envelope.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

