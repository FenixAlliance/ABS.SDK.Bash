# ExecutionContext

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isAuthenticated** | **boolean** |  | [optional] [default to null]
**currentCartId** | **string** |  | [optional] [readonly] [default to null]
**currentUserId** | **string** |  | [optional] [readonly] [default to null]
**currentTenantId** | **string** |  | [optional] [readonly] [default to null]
**currentPortalId** | **string** |  | [optional] [readonly] [default to null]
**currentEnrollmentId** | **string** |  | [optional] [readonly] [default to null]
**currencyId** | **string** |  | [optional] [readonly] [default to null]
**pageSize** | **integer** |  | [optional] [default to null]
**dateFormat** | **string** |  | [optional] [default to null]
**currencyFormat** | **string** |  | [optional] [default to null]
**dateTimeFormat** | **string** |  | [optional] [default to null]
**toDateDataSummaries** | **string** |  | [optional] [default to null]
**fromDateDataSummaries** | **string** |  | [optional] [default to null]
**authorization** | [**AuthResult**](AuthResult.md) |  | [optional] [default to null]
**user** | [**ExtendedUserDto**](ExtendedUserDto.md) |  | [optional] [default to null]
**currentTenant** | [**ExtendedTenantDto**](ExtendedTenantDto.md) |  | [optional] [default to null]
**currentEnrollment** | [**TenantEnrollmentDto**](TenantEnrollmentDto.md) |  | [optional] [default to null]
**selectedTenantMappings** | [**CrmContext**](CrmContext.md) |  | [optional] [default to null]
**portalOwnerMappings** | [**CrmContext**](CrmContext.md) |  | [optional] [default to null]
**rootTenantMappings** | [**CrmContext**](CrmContext.md) |  | [optional] [default to null]
**cart** | [**CartDto**](CartDto.md) |  | [optional] [default to null]
**currency** | [**CurrencyDto**](CurrencyDto.md) |  | [optional] [default to null]
**forexRates** | [**ForexRatesDto**](ForexRatesDto.md) |  | [optional] [default to null]
**exchangeRate** | [**Money**](Money.md) |  | [optional] [default to null]
**country** | [**CountryDto**](CountryDto.md) |  | [optional] [default to null]
**rootTenant** | [**TenantDto**](TenantDto.md) |  | [optional] [default to null]
**currentPortal** | [**WebPortalDto**](WebPortalDto.md) |  | [optional] [default to null]
**tenants** | [**array[ExtendedTenantDto]**](ExtendedTenantDto.md) |  | [optional] [default to null]
**enrollments** | [**array[ExtendedTenantEnrollmentDto]**](ExtendedTenantEnrollmentDto.md) |  | [optional] [default to null]
**availablePortals** | [**array[WebPortalDto]**](WebPortalDto.md) |  | [optional] [default to null]
**invitations** | [**array[ExtendedInviteDto]**](ExtendedInviteDto.md) |  | [optional] [default to null]
**grantedPermissions** | **array[string]** |  | [optional] [default to null]
**accessibleFeatures** | [**array[SuiteLicenseFeatureDto]**](SuiteLicenseFeatureDto.md) |  | [optional] [default to null]
**cultureName** | **string** |  | [optional] [readonly] [default to null]
**timezoneId** | **string** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


