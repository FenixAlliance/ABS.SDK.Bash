# ExtendedOrderDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] [default to null]
**timestamp** | **string** |  | [optional] [default to null]
**closed** | **boolean** |  | [optional] [default to null]
**type** | **string** |  | [optional] [default to null]
**title** | **string** |  | [optional] [default to null]
**userId** | **string** |  | [optional] [default to null]
**tenantId** | **string** |  | [optional] [default to null]
**currencyId** | **string** |  | [optional] [default to null]
**description** | **string** |  | [optional] [default to null]
**priceListId** | **string** |  | [optional] [default to null]
**enrollmentId** | **string** |  | [optional] [default to null]
**individualId** | **string** |  | [optional] [default to null]
**organizationId** | **string** |  | [optional] [default to null]
**receiverTenantId** | **string** |  | [optional] [default to null]
**firstName** | **string** |  | [optional] [default to null]
**lastName** | **string** |  | [optional] [default to null]
**companyName** | **string** |  | [optional] [default to null]
**billingEmail** | **string** |  | [optional] [default to null]
**addressLine1** | **string** |  | [optional] [default to null]
**addressLine2** | **string** |  | [optional] [default to null]
**postalCode** | **string** |  | [optional] [default to null]
**countryId** | **string** |  | [optional] [default to null]
**stateId** | **string** |  | [optional] [default to null]
**cityId** | **string** |  | [optional] [default to null]
**customerNotes** | **string** |  | [optional] [default to null]
**forexRate** | **float** |  | [optional] [default to null]
**total** | **float** |  | [optional] [default to null]
**totalTaxes** | **float** |  | [optional] [default to null]
**totalTaxBase** | **float** |  | [optional] [default to null]
**totalDiscounts** | **float** |  | [optional] [default to null]
**totalSurcharges** | **float** |  | [optional] [default to null]
**totalGlobalDiscounts** | **float** |  | [optional] [default to null]
**totalGlobalSurcharges** | **float** |  | [optional] [default to null]
**totalTaxesInUsd** | **float** |  | [optional] [default to null]
**totalAmountInUsd** | **float** |  | [optional] [default to null]
**totalProfitInUsd** | **float** |  | [optional] [default to null]
**totalTaxBaseInUsd** | **float** |  | [optional] [default to null]
**totalDiscountsInUsd** | **float** |  | [optional] [default to null]
**totalSurchargesInUsd** | **float** |  | [optional] [default to null]
**totalDetailAmountInUsd** | **float** |  | [optional] [default to null]
**totalGlobalDiscountsInUsd** | **float** |  | [optional] [default to null]
**totalGlobalSurchargesInUsd** | **float** |  | [optional] [default to null]
**totalWithholdingTaxesInUsd** | **float** |  | [optional] [default to null]
**totalShippingCostInUsd** | **float** |  | [optional] [default to null]
**totalShippingTaxesInUsd** | **float** |  | [optional] [default to null]
**currency** | [**Currency**](Currency.md) |  | [optional] [default to null]
**totalInUsd** | [**Money**](Money.md) |  | [optional] [default to null]
**totalTaxAmountInUsd** | [**Money**](Money.md) |  | [optional] [default to null]
**totalTaxBaseAmountInUsd** | [**Money**](Money.md) |  | [optional] [default to null]
**totalDiscountsAmountInUsd** | [**Money**](Money.md) |  | [optional] [default to null]
**totalSurchargesAmountInUsd** | [**Money**](Money.md) |  | [optional] [default to null]
**totalGlobalDiscountsAmountInUsd** | [**Money**](Money.md) |  | [optional] [default to null]
**totalGlobalSurchargesAmountInUsd** | [**Money**](Money.md) |  | [optional] [default to null]
**totalAmount** | [**Money**](Money.md) |  | [optional] [default to null]
**totalTaxAmount** | [**Money**](Money.md) |  | [optional] [default to null]
**totalTaxBaseAmount** | [**Money**](Money.md) |  | [optional] [default to null]
**totalDiscountsAmount** | [**Money**](Money.md) |  | [optional] [default to null]
**totalSurchargesAmount** | [**Money**](Money.md) |  | [optional] [default to null]
**totalGlobalDiscountsAmount** | [**Money**](Money.md) |  | [optional] [default to null]
**totalGlobalSurchargesAmount** | [**Money**](Money.md) |  | [optional] [default to null]
**orderLinesCount** | **integer** |  | [optional] [default to null]
**quoteId** | **string** |  | [optional] [default to null]
**walletId** | **string** |  | [optional] [default to null]
**paymentTermId** | **string** |  | [optional] [default to null]
**parentOrderId** | **string** |  | [optional] [default to null]
**shippingMethodId** | **string** |  | [optional] [default to null]
**billingLocationId** | **string** |  | [optional] [default to null]
**shippingLocationId** | **string** |  | [optional] [default to null]
**qualifiedIdentifier** | **string** |  | [optional] [default to null]
**costCalculationMethod** | **integer** |  | [optional] [default to null]
**freightTerms** | **integer** |  | [optional] [default to null]
**orderStatus** | **integer** |  | [optional] [default to null]
**requestedDeliveryDate** | **string** |  | [optional] [default to null]
**customTaxAmount** | **float** |  | [optional] [default to null]
**customTotalAmount** | **float** |  | [optional] [default to null]
**customDetailAmount** | **float** |  | [optional] [default to null]
**customProfitAmount** | **float** |  | [optional] [default to null]
**customDiscountsAmount** | **float** |  | [optional] [default to null]
**customSurchargesAmount** | **float** |  | [optional] [default to null]
**customShippingTaxAmount** | **float** |  | [optional] [default to null]
**customShippingCostAmount** | **float** |  | [optional] [default to null]
**customWithholdingTaxAmount** | **float** |  | [optional] [default to null]
**user** | [**UserDto**](UserDto.md) |  | [optional] [default to null]
**tenant** | [**TenantDto**](TenantDto.md) |  | [optional] [default to null]
**individual** | [**ContactDto**](ContactDto.md) |  | [optional] [default to null]
**organization** | [**ContactDto**](ContactDto.md) |  | [optional] [default to null]
**receiverTenant** | [**TenantDto**](TenantDto.md) |  | [optional] [default to null]
**enrollment** | [**TenantEnrolmentDto**](TenantEnrolmentDto.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

