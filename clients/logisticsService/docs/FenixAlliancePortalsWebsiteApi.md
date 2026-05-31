# FenixAlliancePortalsWebsiteApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountLogoutPost**](FenixAlliancePortalsWebsiteApi.md#accountLogoutPost) | **POST** /Account/Logout | 
[**accountManageDownloadPersonalDataPost**](FenixAlliancePortalsWebsiteApi.md#accountManageDownloadPersonalDataPost) | **POST** /Account/Manage/DownloadPersonalData | 
[**accountManageLinkExternalLoginPost**](FenixAlliancePortalsWebsiteApi.md#accountManageLinkExternalLoginPost) | **POST** /Account/Manage/LinkExternalLogin | 
[**accountPerformExternalLoginPost**](FenixAlliancePortalsWebsiteApi.md#accountPerformExternalLoginPost) | **POST** /Account/PerformExternalLogin | 
[**forgotPasswordPost**](FenixAlliancePortalsWebsiteApi.md#forgotPasswordPost) | **POST** /forgotPassword | 
[**healthGet**](FenixAlliancePortalsWebsiteApi.md#healthGet) | **GET** /health | 
[**helloGet**](FenixAlliancePortalsWebsiteApi.md#helloGet) | **GET** /hello | 
[**loginPost**](FenixAlliancePortalsWebsiteApi.md#loginPost) | **POST** /login | 
[**manage2faPost**](FenixAlliancePortalsWebsiteApi.md#manage2faPost) | **POST** /manage/2fa | 
[**manageInfoGet**](FenixAlliancePortalsWebsiteApi.md#manageInfoGet) | **GET** /manage/info | 
[**manageInfoPost**](FenixAlliancePortalsWebsiteApi.md#manageInfoPost) | **POST** /manage/info | 
[**mapIdentityApiConfirmEmail**](FenixAlliancePortalsWebsiteApi.md#mapIdentityApiConfirmEmail) | **GET** /confirmEmail | 
[**refreshPost**](FenixAlliancePortalsWebsiteApi.md#refreshPost) | **POST** /refresh | 
[**registerPost**](FenixAlliancePortalsWebsiteApi.md#registerPost) | **POST** /register | 
[**resendConfirmationEmailPost**](FenixAlliancePortalsWebsiteApi.md#resendConfirmationEmailPost) | **POST** /resendConfirmationEmail | 
[**resetPasswordPost**](FenixAlliancePortalsWebsiteApi.md#resetPasswordPost) | **POST** /resetPassword | 
[**versionGet**](FenixAlliancePortalsWebsiteApi.md#versionGet) | **GET** /version | 



## accountLogoutPost



### Example

```bash
 accountLogoutPost
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **returnUrl** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data, application/x-www-form-urlencoded
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## accountManageDownloadPersonalDataPost



### Example

```bash
 accountManageDownloadPersonalDataPost
```

### Parameters

This endpoint does not need any parameter.

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## accountManageLinkExternalLoginPost



### Example

```bash
 accountManageLinkExternalLoginPost
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data, application/x-www-form-urlencoded
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## accountPerformExternalLoginPost



### Example

```bash
 accountPerformExternalLoginPost
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider** | **string** |  | [optional] [default to null]
 **returnUrl** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data, application/x-www-form-urlencoded
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## forgotPasswordPost



### Example

```bash
 forgotPasswordPost
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forgotPasswordRequest** | [**ForgotPasswordRequest**](ForgotPasswordRequest.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## healthGet



### Example

```bash
 healthGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## helloGet



### Example

```bash
 helloGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## loginPost



### Example

```bash
 loginPost  useCookies=value  useSessionCookies=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginRequest** | [**LoginRequest**](LoginRequest.md) |  |
 **useCookies** | **boolean** |  | [optional] [default to null]
 **useSessionCookies** | **boolean** |  | [optional] [default to null]

### Return type

[**AccessTokenResponse**](AccessTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## manage2faPost



### Example

```bash
 manage2faPost
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **twoFactorRequest** | [**TwoFactorRequest**](TwoFactorRequest.md) |  |

### Return type

[**TwoFactorResponse**](TwoFactorResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## manageInfoGet



### Example

```bash
 manageInfoGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InfoResponse**](InfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## manageInfoPost



### Example

```bash
 manageInfoPost
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **infoRequest** | [**InfoRequest**](InfoRequest.md) |  |

### Return type

[**InfoResponse**](InfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## mapIdentityApiConfirmEmail



### Example

```bash
 mapIdentityApiConfirmEmail  userId=value  code=value  changedEmail=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **string** |  | [default to null]
 **code** | **string** |  | [default to null]
 **changedEmail** | **string** |  | [optional] [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## refreshPost



### Example

```bash
 refreshPost
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshRequest** | [**RefreshRequest**](RefreshRequest.md) |  |

### Return type

[**AccessTokenResponse**](AccessTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## registerPost



### Example

```bash
 registerPost
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registerRequest** | [**RegisterRequest**](RegisterRequest.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## resendConfirmationEmailPost



### Example

```bash
 resendConfirmationEmailPost
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resendConfirmationEmailRequest** | [**ResendConfirmationEmailRequest**](ResendConfirmationEmailRequest.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## resetPasswordPost



### Example

```bash
 resetPasswordPost
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resetPasswordRequest** | [**ResetPasswordRequest**](ResetPasswordRequest.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## versionGet



### Example

```bash
 versionGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

