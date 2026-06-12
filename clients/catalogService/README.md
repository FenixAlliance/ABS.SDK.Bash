# CatalogService Bash client

## Overview

This is a Bash client script for accessing CatalogService service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x 

# Print the list of operations available on the service
$ ./ -h

# Print the service description
$ ./ --about

# Print detailed information about specific operation
$ ./ <operationId> -h

# Make GET request
./ --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
 -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
$  --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
$  --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image

You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash

The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source .bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp .bash-completion /etc/bash-completion.d/
```

#### OS X

On OSX you might need to install bash-completion using Homebrew:

```shell
brew install bash-completion
```

and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh

In Zsh, the generated `_` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to **

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CompletionsApi* | [**apiV2AiServiceCompletionsCompleteGet**](docs/CompletionsApi.md#apiv2aiservicecompletionscompleteget) | **GET** /api/v2/AiService/Completions/Complete | 
*FenixAlliancePortalsWebsiteApi* | [**accountLogoutPost**](docs/FenixAlliancePortalsWebsiteApi.md#accountlogoutpost) | **POST** /Account/Logout | 
*FenixAlliancePortalsWebsiteApi* | [**accountManageDownloadPersonalDataPost**](docs/FenixAlliancePortalsWebsiteApi.md#accountmanagedownloadpersonaldatapost) | **POST** /Account/Manage/DownloadPersonalData | 
*FenixAlliancePortalsWebsiteApi* | [**accountManageLinkExternalLoginPost**](docs/FenixAlliancePortalsWebsiteApi.md#accountmanagelinkexternalloginpost) | **POST** /Account/Manage/LinkExternalLogin | 
*FenixAlliancePortalsWebsiteApi* | [**accountPerformExternalLoginPost**](docs/FenixAlliancePortalsWebsiteApi.md#accountperformexternalloginpost) | **POST** /Account/PerformExternalLogin | 
*FenixAlliancePortalsWebsiteApi* | [**forgotPasswordPost**](docs/FenixAlliancePortalsWebsiteApi.md#forgotpasswordpost) | **POST** /forgotPassword | 
*FenixAlliancePortalsWebsiteApi* | [**healthGet**](docs/FenixAlliancePortalsWebsiteApi.md#healthget) | **GET** /health | 
*FenixAlliancePortalsWebsiteApi* | [**helloGet**](docs/FenixAlliancePortalsWebsiteApi.md#helloget) | **GET** /hello | 
*FenixAlliancePortalsWebsiteApi* | [**loginPost**](docs/FenixAlliancePortalsWebsiteApi.md#loginpost) | **POST** /login | 
*FenixAlliancePortalsWebsiteApi* | [**manage2faPost**](docs/FenixAlliancePortalsWebsiteApi.md#manage2fapost) | **POST** /manage/2fa | 
*FenixAlliancePortalsWebsiteApi* | [**manageInfoGet**](docs/FenixAlliancePortalsWebsiteApi.md#manageinfoget) | **GET** /manage/info | 
*FenixAlliancePortalsWebsiteApi* | [**manageInfoPost**](docs/FenixAlliancePortalsWebsiteApi.md#manageinfopost) | **POST** /manage/info | 
*FenixAlliancePortalsWebsiteApi* | [**mapIdentityApiConfirmEmail**](docs/FenixAlliancePortalsWebsiteApi.md#mapidentityapiconfirmemail) | **GET** /confirmEmail | 
*FenixAlliancePortalsWebsiteApi* | [**refreshPost**](docs/FenixAlliancePortalsWebsiteApi.md#refreshpost) | **POST** /refresh | 
*FenixAlliancePortalsWebsiteApi* | [**registerPost**](docs/FenixAlliancePortalsWebsiteApi.md#registerpost) | **POST** /register | 
*FenixAlliancePortalsWebsiteApi* | [**resendConfirmationEmailPost**](docs/FenixAlliancePortalsWebsiteApi.md#resendconfirmationemailpost) | **POST** /resendConfirmationEmail | 
*FenixAlliancePortalsWebsiteApi* | [**resetPasswordPost**](docs/FenixAlliancePortalsWebsiteApi.md#resetpasswordpost) | **POST** /resetPassword | 
*FenixAlliancePortalsWebsiteApi* | [**versionGet**](docs/FenixAlliancePortalsWebsiteApi.md#versionget) | **GET** /version | 
*ItemAttachmentsApi* | [**createItemAttachmentAsync**](docs/ItemAttachmentsApi.md#createitemattachmentasync) | **POST** /api/v2/CatalogService/ItemAttachments | Create a new item attachment
*ItemAttachmentsApi* | [**deleteItemAttachmentAsync**](docs/ItemAttachmentsApi.md#deleteitemattachmentasync) | **DELETE** /api/v2/CatalogService/ItemAttachments/{itemAttachmentId} | Delete an item attachment
*ItemAttachmentsApi* | [**getItemAttachmentByIdAsync**](docs/ItemAttachmentsApi.md#getitemattachmentbyidasync) | **GET** /api/v2/CatalogService/ItemAttachments/{itemAttachmentId} | Get item attachment by ID
*ItemAttachmentsApi* | [**getItemAttachmentsAsync**](docs/ItemAttachmentsApi.md#getitemattachmentsasync) | **GET** /api/v2/CatalogService/ItemAttachments | Get all item attachments
*ItemAttachmentsApi* | [**patchItemAttachmentAsync**](docs/ItemAttachmentsApi.md#patchitemattachmentasync) | **PATCH** /api/v2/CatalogService/ItemAttachments/{itemAttachmentId} | Patch an item attachment
*ItemAttachmentsApi* | [**updateItemAttachmentAsync**](docs/ItemAttachmentsApi.md#updateitemattachmentasync) | **PUT** /api/v2/CatalogService/ItemAttachments/{itemAttachmentId} | Update an item attachment
*ItemAttributeOptionsApi* | [**createItemAttributeOptionAsync**](docs/ItemAttributeOptionsApi.md#createitemattributeoptionasync) | **POST** /api/v2/CatalogService/ItemAttributeOptions | Create a new item attribute option
*ItemAttributeOptionsApi* | [**deleteItemAttributeOptionAsync**](docs/ItemAttributeOptionsApi.md#deleteitemattributeoptionasync) | **DELETE** /api/v2/CatalogService/ItemAttributeOptions/{itemAttributeOptionId} | Delete an item attribute option
*ItemAttributeOptionsApi* | [**getItemAttributeOptionByIdAsync**](docs/ItemAttributeOptionsApi.md#getitemattributeoptionbyidasync) | **GET** /api/v2/CatalogService/ItemAttributeOptions/{itemAttributeOptionId} | Get item attribute option by ID
*ItemAttributeOptionsApi* | [**getItemAttributeOptionsAsync**](docs/ItemAttributeOptionsApi.md#getitemattributeoptionsasync) | **GET** /api/v2/CatalogService/ItemAttributeOptions | Get all item attribute options
*ItemAttributeOptionsApi* | [**getItemAttributeOptionsCountAsync**](docs/ItemAttributeOptionsApi.md#getitemattributeoptionscountasync) | **GET** /api/v2/CatalogService/ItemAttributeOptions/Count | Get item attribute options count
*ItemAttributeOptionsApi* | [**patchItemAttributeOptionAsync**](docs/ItemAttributeOptionsApi.md#patchitemattributeoptionasync) | **PATCH** /api/v2/CatalogService/ItemAttributeOptions/{itemAttributeOptionId} | Patch an item attribute option
*ItemAttributeOptionsApi* | [**updateItemAttributeOptionAsync**](docs/ItemAttributeOptionsApi.md#updateitemattributeoptionasync) | **PUT** /api/v2/CatalogService/ItemAttributeOptions/{itemAttributeOptionId} | Update an item attribute option
*ItemAttributesApi* | [**countItemAttributesAsync**](docs/ItemAttributesApi.md#countitemattributesasync) | **GET** /api/v2/CatalogService/ItemAttributes/Count | Count item attributes
*ItemAttributesApi* | [**createItemAttributeAsync**](docs/ItemAttributesApi.md#createitemattributeasync) | **POST** /api/v2/CatalogService/ItemAttributes | Create a new item attribute
*ItemAttributesApi* | [**deleteItemAttributeAsync**](docs/ItemAttributesApi.md#deleteitemattributeasync) | **DELETE** /api/v2/CatalogService/ItemAttributes/{itemAttributeId} | Delete an item attribute
*ItemAttributesApi* | [**getItemAttributeByIdAsync**](docs/ItemAttributesApi.md#getitemattributebyidasync) | **GET** /api/v2/CatalogService/ItemAttributes/{itemAttributeId} | Get item attribute by ID
*ItemAttributesApi* | [**getItemAttributesAsync**](docs/ItemAttributesApi.md#getitemattributesasync) | **GET** /api/v2/CatalogService/ItemAttributes | Get all item attributes
*ItemAttributesApi* | [**patchItemAttributeAsync**](docs/ItemAttributesApi.md#patchitemattributeasync) | **PATCH** /api/v2/CatalogService/ItemAttributes/{itemAttributeId} | Patch an item attribute
*ItemAttributesApi* | [**updateItemAttributeAsync**](docs/ItemAttributesApi.md#updateitemattributeasync) | **PUT** /api/v2/CatalogService/ItemAttributes/{itemAttributeId} | Update an item attribute
*ItemBrandsApi* | [**createItemBrandAsync**](docs/ItemBrandsApi.md#createitembrandasync) | **POST** /api/v2/CatalogService/ItemBrands | Create a new item brand
*ItemBrandsApi* | [**deleteItemBrandAsync**](docs/ItemBrandsApi.md#deleteitembrandasync) | **DELETE** /api/v2/CatalogService/ItemBrands/{itemBrandId} | Delete an item brand
*ItemBrandsApi* | [**getItemBrandByIdAsync**](docs/ItemBrandsApi.md#getitembrandbyidasync) | **GET** /api/v2/CatalogService/ItemBrands/{itemBrandId} | Get item brand by ID
*ItemBrandsApi* | [**getItemBrandsAsync**](docs/ItemBrandsApi.md#getitembrandsasync) | **GET** /api/v2/CatalogService/ItemBrands | Get all item brands
*ItemBrandsApi* | [**patchItemBrandAsync**](docs/ItemBrandsApi.md#patchitembrandasync) | **PATCH** /api/v2/CatalogService/ItemBrands/{itemBrandId} | Patch an item brand
*ItemBrandsApi* | [**updateItemBrandAsync**](docs/ItemBrandsApi.md#updateitembrandasync) | **PUT** /api/v2/CatalogService/ItemBrands/{itemBrandId} | Update an item brand
*ItemBundlesApi* | [**createItemBundleAsync**](docs/ItemBundlesApi.md#createitembundleasync) | **POST** /api/v2/CatalogService/ItemBundles | Create a new item bundle
*ItemBundlesApi* | [**deleteItemBundleAsync**](docs/ItemBundlesApi.md#deleteitembundleasync) | **DELETE** /api/v2/CatalogService/ItemBundles/{itemBundleId} | Delete an item bundle
*ItemBundlesApi* | [**getItemBundleByIdAsync**](docs/ItemBundlesApi.md#getitembundlebyidasync) | **GET** /api/v2/CatalogService/ItemBundles/{itemBundleId} | Get item bundle by ID
*ItemBundlesApi* | [**getItemBundlesAsync**](docs/ItemBundlesApi.md#getitembundlesasync) | **GET** /api/v2/CatalogService/ItemBundles | Get all item bundles
*ItemBundlesApi* | [**getItemBundlesCountAsync**](docs/ItemBundlesApi.md#getitembundlescountasync) | **GET** /api/v2/CatalogService/ItemBundles/Count | Get item bundles count
*ItemBundlesApi* | [**patchItemBundleAsync**](docs/ItemBundlesApi.md#patchitembundleasync) | **PATCH** /api/v2/CatalogService/ItemBundles/{itemBundleId} | Patch an item bundle
*ItemBundlesApi* | [**updateItemBundleAsync**](docs/ItemBundlesApi.md#updateitembundleasync) | **PUT** /api/v2/CatalogService/ItemBundles/{itemBundleId} | Update an item bundle
*ItemCategoriesApi* | [**countItemCategoriesAsync**](docs/ItemCategoriesApi.md#countitemcategoriesasync) | **GET** /api/v2/CatalogService/ItemCategories/Count | Count item categories
*ItemCategoriesApi* | [**createItemCategoryAsync**](docs/ItemCategoriesApi.md#createitemcategoryasync) | **POST** /api/v2/CatalogService/ItemCategories | Create a new item category
*ItemCategoriesApi* | [**deleteItemCategoryAsync**](docs/ItemCategoriesApi.md#deleteitemcategoryasync) | **DELETE** /api/v2/CatalogService/ItemCategories/{itemCategoryId} | Delete an item category
*ItemCategoriesApi* | [**getItemCategoriesAsync**](docs/ItemCategoriesApi.md#getitemcategoriesasync) | **GET** /api/v2/CatalogService/ItemCategories | Get all item categories
*ItemCategoriesApi* | [**getItemCategoryByIdAsync**](docs/ItemCategoriesApi.md#getitemcategorybyidasync) | **GET** /api/v2/CatalogService/ItemCategories/{itemCategoryId} | Get item category by ID
*ItemCategoriesApi* | [**patchItemCategoryAsync**](docs/ItemCategoriesApi.md#patchitemcategoryasync) | **PATCH** /api/v2/CatalogService/ItemCategories/{itemCategoryId} | Patch an item category
*ItemCategoriesApi* | [**updateItemCategoryAsync**](docs/ItemCategoriesApi.md#updateitemcategoryasync) | **PUT** /api/v2/CatalogService/ItemCategories/{itemCategoryId} | Update an item category
*ItemFamiliesApi* | [**createItemFamilyAsync**](docs/ItemFamiliesApi.md#createitemfamilyasync) | **POST** /api/v2/CatalogService/ItemFamilies | Create a new item family
*ItemFamiliesApi* | [**deleteItemFamilyAsync**](docs/ItemFamiliesApi.md#deleteitemfamilyasync) | **DELETE** /api/v2/CatalogService/ItemFamilies/{itemFamilyId} | Delete an item family
*ItemFamiliesApi* | [**getItemFamiliesAsync**](docs/ItemFamiliesApi.md#getitemfamiliesasync) | **GET** /api/v2/CatalogService/ItemFamilies | Get all item families
*ItemFamiliesApi* | [**getItemFamiliesCountAsync**](docs/ItemFamiliesApi.md#getitemfamiliescountasync) | **GET** /api/v2/CatalogService/ItemFamilies/Count | Get item families count
*ItemFamiliesApi* | [**getItemFamilyByIdAsync**](docs/ItemFamiliesApi.md#getitemfamilybyidasync) | **GET** /api/v2/CatalogService/ItemFamilies/{itemFamilyId} | Get item family by ID
*ItemFamiliesApi* | [**patchItemFamilyAsync**](docs/ItemFamiliesApi.md#patchitemfamilyasync) | **PATCH** /api/v2/CatalogService/ItemFamilies/{itemFamilyId} | Patch an item family
*ItemFamiliesApi* | [**updateItemFamilyAsync**](docs/ItemFamiliesApi.md#updateitemfamilyasync) | **PUT** /api/v2/CatalogService/ItemFamilies/{itemFamilyId} | Update an item family
*ItemGoogleCategoriesApi* | [**getAllItemGoogleCategoriesAsync**](docs/ItemGoogleCategoriesApi.md#getallitemgooglecategoriesasync) | **GET** /api/v2/CatalogService/ItemGoogleCategories/All | Get all Google item categories (all)
*ItemGoogleCategoriesApi* | [**getChildrenItemGoogleCategoriesByIdAsync**](docs/ItemGoogleCategoriesApi.md#getchildrenitemgooglecategoriesbyidasync) | **GET** /api/v2/CatalogService/ItemGoogleCategories/{itemCategoryId}/Children | Get children Google item categories by ID
*ItemGoogleCategoriesApi* | [**getItemGoogleCategoriesAsync**](docs/ItemGoogleCategoriesApi.md#getitemgooglecategoriesasync) | **GET** /api/v2/CatalogService/ItemGoogleCategories | Get all Google item categories
*ItemGoogleCategoriesApi* | [**getItemGoogleCategoriesCountAsync**](docs/ItemGoogleCategoriesApi.md#getitemgooglecategoriescountasync) | **GET** /api/v2/CatalogService/ItemGoogleCategories/Count | Get Google item categories count
*ItemGoogleCategoriesApi* | [**getItemGoogleCategoriesTreeAsync**](docs/ItemGoogleCategoriesApi.md#getitemgooglecategoriestreeasync) | **GET** /api/v2/CatalogService/ItemGoogleCategories/tree | Get Google item categories tree
*ItemGoogleCategoriesApi* | [**getItemGoogleCategoryByIdAsync**](docs/ItemGoogleCategoriesApi.md#getitemgooglecategorybyidasync) | **GET** /api/v2/CatalogService/ItemGoogleCategories/{itemCategoryId} | Get Google item category by ID
*ItemGoogleCategoriesApi* | [**getRootItemGoogleCategoriesAsync**](docs/ItemGoogleCategoriesApi.md#getrootitemgooglecategoriesasync) | **GET** /api/v2/CatalogService/ItemGoogleCategories/Primary | Get root Google item categories
*ItemGoogleCategoriesApi* | [**mapItemGoogleCategoriesTreeAsync**](docs/ItemGoogleCategoriesApi.md#mapitemgooglecategoriestreeasync) | **POST** /api/v2/CatalogService/ItemGoogleCategories/tree | Map Google item categories tree
*ItemImagesApi* | [**createItemImageAsync**](docs/ItemImagesApi.md#createitemimageasync) | **POST** /api/v2/CatalogService/ItemImages | Create a new item image
*ItemImagesApi* | [**deleteItemImageAsync**](docs/ItemImagesApi.md#deleteitemimageasync) | **DELETE** /api/v2/CatalogService/ItemImages/{itemImageId} | Delete an item image
*ItemImagesApi* | [**getItemImageByIdAsync**](docs/ItemImagesApi.md#getitemimagebyidasync) | **GET** /api/v2/CatalogService/ItemImages/{itemImageId} | Get item image by ID
*ItemImagesApi* | [**getItemImagesAsync**](docs/ItemImagesApi.md#getitemimagesasync) | **GET** /api/v2/CatalogService/ItemImages | Get all item images
*ItemImagesApi* | [**patchItemImageAsync**](docs/ItemImagesApi.md#patchitemimageasync) | **PATCH** /api/v2/CatalogService/ItemImages/{itemImageId} | Patch an item image
*ItemImagesApi* | [**updateItemImageAsync**](docs/ItemImagesApi.md#updateitemimageasync) | **PUT** /api/v2/CatalogService/ItemImages/{itemImageId} | Update an item image
*ItemQuestionsApi* | [**createItemQuestionAsync**](docs/ItemQuestionsApi.md#createitemquestionasync) | **POST** /api/v2/CatalogService/ItemQuestions | Create a new item question
*ItemQuestionsApi* | [**deleteItemQuestionAsync**](docs/ItemQuestionsApi.md#deleteitemquestionasync) | **DELETE** /api/v2/CatalogService/ItemQuestions/{itemQuestionId} | Delete an item question
*ItemQuestionsApi* | [**getItemQuestionByIdAsync**](docs/ItemQuestionsApi.md#getitemquestionbyidasync) | **GET** /api/v2/CatalogService/ItemQuestions/{itemQuestionId} | Get item question by ID
*ItemQuestionsApi* | [**getItemQuestionsAsync**](docs/ItemQuestionsApi.md#getitemquestionsasync) | **GET** /api/v2/CatalogService/ItemQuestions | Get all item questions
*ItemQuestionsApi* | [**patchItemQuestionAsync**](docs/ItemQuestionsApi.md#patchitemquestionasync) | **PATCH** /api/v2/CatalogService/ItemQuestions/{itemQuestionId} | Patch an item question
*ItemQuestionsApi* | [**updateItemQuestionAsync**](docs/ItemQuestionsApi.md#updateitemquestionasync) | **PUT** /api/v2/CatalogService/ItemQuestions/{itemQuestionId} | Update an item question
*ItemRefundPoliciesApi* | [**countItemRefundPoliciesAsync**](docs/ItemRefundPoliciesApi.md#countitemrefundpoliciesasync) | **GET** /api/v2/CatalogService/ItemRefundPolicies/Count | Count item refund policies
*ItemRefundPoliciesApi* | [**getItemRefundPoliciesAsync**](docs/ItemRefundPoliciesApi.md#getitemrefundpoliciesasync) | **GET** /api/v2/CatalogService/ItemRefundPolicies | Get item refund policies
*ItemRefundPoliciesApi* | [**getItemRefundPolicyByIdAsync**](docs/ItemRefundPoliciesApi.md#getitemrefundpolicybyidasync) | **GET** /api/v2/CatalogService/ItemRefundPolicies/{itemRefundPolicyId} | Get item refund policy by ID
*ItemRefundPoliciesApi* | [**relateItemToRefundPolicyAsync**](docs/ItemRefundPoliciesApi.md#relateitemtorefundpolicyasync) | **POST** /api/v2/CatalogService/ItemRefundPolicies | Relate item to refund policy
*ItemRefundPoliciesApi* | [**removeRefundPolicyFromItemAsync**](docs/ItemRefundPoliciesApi.md#removerefundpolicyfromitemasync) | **DELETE** /api/v2/CatalogService/ItemRefundPolicies/{itemRefundPolicyId} | Remove refund policy from item
*ItemReturnPoliciesApi* | [**countItemReturnPoliciesAsync**](docs/ItemReturnPoliciesApi.md#countitemreturnpoliciesasync) | **GET** /api/v2/CatalogService/ItemReturnPolicies/Count | Count item return policies
*ItemReturnPoliciesApi* | [**getItemReturnPoliciesAsync**](docs/ItemReturnPoliciesApi.md#getitemreturnpoliciesasync) | **GET** /api/v2/CatalogService/ItemReturnPolicies | Get item return policies
*ItemReturnPoliciesApi* | [**getItemReturnPolicyByIdAsync**](docs/ItemReturnPoliciesApi.md#getitemreturnpolicybyidasync) | **GET** /api/v2/CatalogService/ItemReturnPolicies/{itemReturnPolicyId} | Get item return policy by ID
*ItemReturnPoliciesApi* | [**relateItemToReturnPolicyAsync**](docs/ItemReturnPoliciesApi.md#relateitemtoreturnpolicyasync) | **POST** /api/v2/CatalogService/ItemReturnPolicies | Relate item to return policy
*ItemReturnPoliciesApi* | [**removeReturnPolicyFromItemAsync**](docs/ItemReturnPoliciesApi.md#removereturnpolicyfromitemasync) | **DELETE** /api/v2/CatalogService/ItemReturnPolicies/{itemReturnPolicyId} | Remove return policy from item
*ItemReviewsApi* | [**createItemReviewAsync**](docs/ItemReviewsApi.md#createitemreviewasync) | **POST** /api/v2/CatalogService/ItemReviews | Create a new item review
*ItemReviewsApi* | [**deleteItemReviewAsync**](docs/ItemReviewsApi.md#deleteitemreviewasync) | **DELETE** /api/v2/CatalogService/ItemReviews/{itemReviewId} | Delete an item review
*ItemReviewsApi* | [**getItemReviewByIdAsync**](docs/ItemReviewsApi.md#getitemreviewbyidasync) | **GET** /api/v2/CatalogService/ItemReviews/{itemReviewId} | Get item review by ID
*ItemReviewsApi* | [**getItemReviewsAsync**](docs/ItemReviewsApi.md#getitemreviewsasync) | **GET** /api/v2/CatalogService/ItemReviews | Get all item reviews
*ItemReviewsApi* | [**patchItemReviewAsync**](docs/ItemReviewsApi.md#patchitemreviewasync) | **PATCH** /api/v2/CatalogService/ItemReviews/{itemReviewId} | Patch an item review
*ItemReviewsApi* | [**updateItemReviewAsync**](docs/ItemReviewsApi.md#updateitemreviewasync) | **PUT** /api/v2/CatalogService/ItemReviews/{itemReviewId} | Update an item review
*ItemShippingPoliciesApi* | [**countItemShippingPoliciesAsync**](docs/ItemShippingPoliciesApi.md#countitemshippingpoliciesasync) | **GET** /api/v2/CatalogService/ItemShippingPolicies/Count | Count item shipping policies
*ItemShippingPoliciesApi* | [**getItemShippingPoliciesAsync**](docs/ItemShippingPoliciesApi.md#getitemshippingpoliciesasync) | **GET** /api/v2/CatalogService/ItemShippingPolicies | Get item shipping policies
*ItemShippingPoliciesApi* | [**getItemShippingPolicyByIdAsync**](docs/ItemShippingPoliciesApi.md#getitemshippingpolicybyidasync) | **GET** /api/v2/CatalogService/ItemShippingPolicies/{itemShippingPolicyId} | Get item shipping policy by ID
*ItemShippingPoliciesApi* | [**relateItemToShippingPolicyAsync**](docs/ItemShippingPoliciesApi.md#relateitemtoshippingpolicyasync) | **POST** /api/v2/CatalogService/ItemShippingPolicies | Relate item to shipping policy
*ItemShippingPoliciesApi* | [**removeShippingPolicyFromItemAsync**](docs/ItemShippingPoliciesApi.md#removeshippingpolicyfromitemasync) | **DELETE** /api/v2/CatalogService/ItemShippingPolicies/{itemShippingPolicyId} | Remove shipping policy from item
*ItemTagsApi* | [**createItemTagAsync**](docs/ItemTagsApi.md#createitemtagasync) | **POST** /api/v2/CatalogService/ItemTags | Create a new item tag
*ItemTagsApi* | [**deleteItemTagAsync**](docs/ItemTagsApi.md#deleteitemtagasync) | **DELETE** /api/v2/CatalogService/ItemTags/{itemTagId} | Delete an item tag
*ItemTagsApi* | [**getItemTagByIdAsync**](docs/ItemTagsApi.md#getitemtagbyidasync) | **GET** /api/v2/CatalogService/ItemTags/{itemTagId} | Get item tag by ID
*ItemTagsApi* | [**getItemTagsAsync**](docs/ItemTagsApi.md#getitemtagsasync) | **GET** /api/v2/CatalogService/ItemTags | Get all item tags
*ItemTagsApi* | [**patchItemTagAsync**](docs/ItemTagsApi.md#patchitemtagasync) | **PATCH** /api/v2/CatalogService/ItemTags/{itemTagId} | Patch an item tag
*ItemTagsApi* | [**updateItemTagAsync**](docs/ItemTagsApi.md#updateitemtagasync) | **PUT** /api/v2/CatalogService/ItemTags/{itemTagId} | Update an item tag
*ItemTaxPoliciesApi* | [**countItemTaxPoliciesAsync**](docs/ItemTaxPoliciesApi.md#countitemtaxpoliciesasync) | **GET** /api/v2/CatalogService/ItemTaxPolicies/Count | Count item tax policies
*ItemTaxPoliciesApi* | [**getItemTaxPoliciesAsync**](docs/ItemTaxPoliciesApi.md#getitemtaxpoliciesasync) | **GET** /api/v2/CatalogService/ItemTaxPolicies | Get item tax policies
*ItemTaxPoliciesApi* | [**getItemTaxPolicyByIdAsync**](docs/ItemTaxPoliciesApi.md#getitemtaxpolicybyidasync) | **GET** /api/v2/CatalogService/ItemTaxPolicies/{itemTaxPolicyId} | Get item tax policy by ID
*ItemTaxPoliciesApi* | [**relateItemToTaxPolicyAsync**](docs/ItemTaxPoliciesApi.md#relateitemtotaxpolicyasync) | **POST** /api/v2/CatalogService/ItemTaxPolicies | Relate item to tax policy
*ItemTaxPoliciesApi* | [**removeTaxPolicyFromItemAsync**](docs/ItemTaxPoliciesApi.md#removetaxpolicyfromitemasync) | **DELETE** /api/v2/CatalogService/ItemTaxPolicies/{itemTaxPolicyId} | Remove tax policy from item
*ItemTypesApi* | [**countItemTypesAsync**](docs/ItemTypesApi.md#countitemtypesasync) | **GET** /api/v2/CatalogService/ItemTypes/Count | Count item types
*ItemTypesApi* | [**createItemTypeAsync**](docs/ItemTypesApi.md#createitemtypeasync) | **POST** /api/v2/CatalogService/ItemTypes | Create a new item type
*ItemTypesApi* | [**deleteItemTypeAsync**](docs/ItemTypesApi.md#deleteitemtypeasync) | **DELETE** /api/v2/CatalogService/ItemTypes/{itemTypeID} | Delete an item type
*ItemTypesApi* | [**getItemTypeByIdAsync**](docs/ItemTypesApi.md#getitemtypebyidasync) | **GET** /api/v2/CatalogService/ItemTypes/{itemTypeID} | Get item type by ID
*ItemTypesApi* | [**getItemTypesAsync**](docs/ItemTypesApi.md#getitemtypesasync) | **GET** /api/v2/CatalogService/ItemTypes | Get all item types
*ItemTypesApi* | [**patchItemTypeAsync**](docs/ItemTypesApi.md#patchitemtypeasync) | **PATCH** /api/v2/CatalogService/ItemTypes/{itemTypeID} | Patch an item type
*ItemTypesApi* | [**updateItemTypeAsync**](docs/ItemTypesApi.md#updateitemtypeasync) | **PUT** /api/v2/CatalogService/ItemTypes/{itemTypeID} | Update an item type
*ItemWarrantyPoliciesApi* | [**countItemWarrantyPoliciesAsync**](docs/ItemWarrantyPoliciesApi.md#countitemwarrantypoliciesasync) | **GET** /api/v2/CatalogService/ItemWarrantyPolicies/Count | Count item warranty policies
*ItemWarrantyPoliciesApi* | [**getItemWarrantyPoliciesAsync**](docs/ItemWarrantyPoliciesApi.md#getitemwarrantypoliciesasync) | **GET** /api/v2/CatalogService/ItemWarrantyPolicies | Get item warranty policies
*ItemWarrantyPoliciesApi* | [**getItemWarrantyPolicyByIdAsync**](docs/ItemWarrantyPoliciesApi.md#getitemwarrantypolicybyidasync) | **GET** /api/v2/CatalogService/ItemWarrantyPolicies/{itemWarrantyPolicyId} | Get item warranty policy by ID
*ItemWarrantyPoliciesApi* | [**relateItemToWarrantyPolicyAsync**](docs/ItemWarrantyPoliciesApi.md#relateitemtowarrantypolicyasync) | **POST** /api/v2/CatalogService/ItemWarrantyPolicies | Relate item to warranty policy
*ItemWarrantyPoliciesApi* | [**removeWarrantyPolicyFromItemAsync**](docs/ItemWarrantyPoliciesApi.md#removewarrantypolicyfromitemasync) | **DELETE** /api/v2/CatalogService/ItemWarrantyPolicies/{itemWarrantyPolicyId} | Remove warranty policy from item
*ItemsApi* | [**batchUpdateStockItems**](docs/ItemsApi.md#batchupdatestockitems) | **POST** /api/v2/CatalogService/Items/Batch | Bulk-update stock items
*ItemsApi* | [**bulkUpsertStockItems**](docs/ItemsApi.md#bulkupsertstockitems) | **POST** /api/v2/CatalogService/Items/BulkUpsert | Bulk upsert stock items from rows
*ItemsApi* | [**countStockItemTagsByItemId**](docs/ItemsApi.md#countstockitemtagsbyitemid) | **GET** /api/v2/CatalogService/Items/{itemId}/Tags/Count | Count tags for a stock item
*ItemsApi* | [**countStockItemsByBusiness**](docs/ItemsApi.md#countstockitemsbybusiness) | **GET** /api/v2/CatalogService/Items/Count | Count stock items by business
*ItemsApi* | [**createStockItem**](docs/ItemsApi.md#createstockitem) | **POST** /api/v2/CatalogService/Items | Create a new stock item
*ItemsApi* | [**deleteStockItem**](docs/ItemsApi.md#deletestockitem) | **DELETE** /api/v2/CatalogService/Items/{itemId} | Delete a stock item
*ItemsApi* | [**getExtendedStockItemById**](docs/ItemsApi.md#getextendedstockitembyid) | **GET** /api/v2/CatalogService/Items/{itemId}/Extended | Get extended stock item by ID
*ItemsApi* | [**getProductPrimaryImageAsync**](docs/ItemsApi.md#getproductprimaryimageasync) | **GET** /api/v2/CatalogService/Items/{itemId}/Images/Primary | Get item primary image
*ItemsApi* | [**getStockItemAttachmentById**](docs/ItemsApi.md#getstockitemattachmentbyid) | **GET** /api/v2/CatalogService/Items/{itemId}/Attachments/{itemAttachmentId} | Get attachment by ID for a stock item
*ItemsApi* | [**getStockItemAttachmentsByItemId**](docs/ItemsApi.md#getstockitemattachmentsbyitemid) | **GET** /api/v2/CatalogService/Items/{itemId}/Attachments | Get attachments for a stock item
*ItemsApi* | [**getStockItemAttributeOptionById**](docs/ItemsApi.md#getstockitemattributeoptionbyid) | **GET** /api/v2/CatalogService/Items/{itemId}/AttributeOptions/{itemAttributeOptionId} | Get attribute option by ID for a stock item
*ItemsApi* | [**getStockItemAttributeOptionsByItemId**](docs/ItemsApi.md#getstockitemattributeoptionsbyitemid) | **GET** /api/v2/CatalogService/Items/{itemId}/AttributeOptions | Get attribute options for a stock item
*ItemsApi* | [**getStockItemBrandById**](docs/ItemsApi.md#getstockitembrandbyid) | **GET** /api/v2/CatalogService/Items/{itemId}/Brands/{itemBrandId} | Get brand by ID for a stock item
*ItemsApi* | [**getStockItemBrandsByItemId**](docs/ItemsApi.md#getstockitembrandsbyitemid) | **GET** /api/v2/CatalogService/Items/{itemId}/Brands | Get brands for a stock item
*ItemsApi* | [**getStockItemById**](docs/ItemsApi.md#getstockitembyid) | **GET** /api/v2/CatalogService/Items/{itemId} | Get stock item by ID
*ItemsApi* | [**getStockItemCategoriesByItemId**](docs/ItemsApi.md#getstockitemcategoriesbyitemid) | **GET** /api/v2/CatalogService/Items/{itemId}/Categories | Get categories for a stock item
*ItemsApi* | [**getStockItemCategoryById**](docs/ItemsApi.md#getstockitemcategorybyid) | **GET** /api/v2/CatalogService/Items/{itemId}/Categories/{itemCategoryId} | Get category by ID for a stock item
*ItemsApi* | [**getStockItemGoogleCategoriesByItemId**](docs/ItemsApi.md#getstockitemgooglecategoriesbyitemid) | **GET** /api/v2/CatalogService/Items/{itemId}/GoogleCategories | Get Google categories for a stock item
*ItemsApi* | [**getStockItemGoogleCategoryById**](docs/ItemsApi.md#getstockitemgooglecategorybyid) | **GET** /api/v2/CatalogService/Items/{itemId}/GoogleCategories/{itemGoogleCategoryId} | Get Google category by ID for a stock item
*ItemsApi* | [**getStockItemImageById**](docs/ItemsApi.md#getstockitemimagebyid) | **GET** /api/v2/CatalogService/Items/{itemId}/Images/{itemImageId} | Get image by ID for a stock item
*ItemsApi* | [**getStockItemImagesByItemId**](docs/ItemsApi.md#getstockitemimagesbyitemid) | **GET** /api/v2/CatalogService/Items/{itemId}/Images | Get images for a stock item
*ItemsApi* | [**getStockItemPriceRuleById**](docs/ItemsApi.md#getstockitempricerulebyid) | **GET** /api/v2/CatalogService/Items/{itemId}/PriceRules/{itemPriceRuleId} | Get price rule by ID for a stock item
*ItemsApi* | [**getStockItemPriceRulesByItemId**](docs/ItemsApi.md#getstockitempricerulesbyitemid) | **GET** /api/v2/CatalogService/Items/{itemId}/PriceRules | Get price rules for a stock item
*ItemsApi* | [**getStockItemQuestionById**](docs/ItemsApi.md#getstockitemquestionbyid) | **GET** /api/v2/CatalogService/Items/{itemId}/Questions/{itemQuestionId} | Get question by ID for a stock item
*ItemsApi* | [**getStockItemQuestionsByItemId**](docs/ItemsApi.md#getstockitemquestionsbyitemid) | **GET** /api/v2/CatalogService/Items/{itemId}/Questions | Get questions for a stock item
*ItemsApi* | [**getStockItemRefundPoliciesByItemId**](docs/ItemsApi.md#getstockitemrefundpoliciesbyitemid) | **GET** /api/v2/CatalogService/Items/{itemId}/RefundPolicies | Get refund policies for a stock item
*ItemsApi* | [**getStockItemRefundPolicyById**](docs/ItemsApi.md#getstockitemrefundpolicybyid) | **GET** /api/v2/CatalogService/Items/{itemId}/RefundPolicies/{itemRefundPolicyId} | Get refund policy by ID for a stock item
*ItemsApi* | [**getStockItemReturnPoliciesByItemId**](docs/ItemsApi.md#getstockitemreturnpoliciesbyitemid) | **GET** /api/v2/CatalogService/Items/{itemId}/ReturnPolicies | Get return policies for a stock item
*ItemsApi* | [**getStockItemReturnPolicyById**](docs/ItemsApi.md#getstockitemreturnpolicybyid) | **GET** /api/v2/CatalogService/Items/{itemId}/ReturnPolicies/{itemReturnPolicyId} | Get return policy by ID for a stock item
*ItemsApi* | [**getStockItemReviewById**](docs/ItemsApi.md#getstockitemreviewbyid) | **GET** /api/v2/CatalogService/Items/{itemId}/Reviews/{itemReviewId} | Get review by ID for a stock item
*ItemsApi* | [**getStockItemReviewsByItemId**](docs/ItemsApi.md#getstockitemreviewsbyitemid) | **GET** /api/v2/CatalogService/Items/{itemId}/Reviews | Get reviews for a stock item
*ItemsApi* | [**getStockItemShippingPoliciesByItemId**](docs/ItemsApi.md#getstockitemshippingpoliciesbyitemid) | **GET** /api/v2/CatalogService/Items/{itemId}/ShippingPolicies | Get shipping policies for a stock item
*ItemsApi* | [**getStockItemShippingPolicyById**](docs/ItemsApi.md#getstockitemshippingpolicybyid) | **GET** /api/v2/CatalogService/Items/{itemId}/ShippingPolicies/{itemShippingPolicyId} | Get shipping policy by ID for a stock item
*ItemsApi* | [**getStockItemTagById**](docs/ItemsApi.md#getstockitemtagbyid) | **GET** /api/v2/CatalogService/Items/{itemId}/Tags/{itemTagId} | Get tag by ID for a stock item
*ItemsApi* | [**getStockItemTagsByItemId**](docs/ItemsApi.md#getstockitemtagsbyitemid) | **GET** /api/v2/CatalogService/Items/{itemId}/Tags | Get tags for a stock item
*ItemsApi* | [**getStockItemTaxPoliciesByItemId**](docs/ItemsApi.md#getstockitemtaxpoliciesbyitemid) | **GET** /api/v2/CatalogService/Items/{itemId}/TaxPolicies | Get tax policies for a stock item
*ItemsApi* | [**getStockItemTaxPolicyById**](docs/ItemsApi.md#getstockitemtaxpolicybyid) | **GET** /api/v2/CatalogService/Items/{itemId}/TaxPolicies/{itemTaxPolicyId} | Get tax policy by ID for a stock item
*ItemsApi* | [**getStockItemTypeById**](docs/ItemsApi.md#getstockitemtypebyid) | **GET** /api/v2/CatalogService/Items/{itemId}/Types/{itemTypeId} | Get type by ID for a stock item
*ItemsApi* | [**getStockItemTypesByItemId**](docs/ItemsApi.md#getstockitemtypesbyitemid) | **GET** /api/v2/CatalogService/Items/{itemId}/Types | Get types for a stock item
*ItemsApi* | [**getStockItemWarrantyPoliciesByItemId**](docs/ItemsApi.md#getstockitemwarrantypoliciesbyitemid) | **GET** /api/v2/CatalogService/Items/{itemId}/WarrantyPolicies | Get warranty policies for a stock item
*ItemsApi* | [**getStockItemWarrantyPolicyById**](docs/ItemsApi.md#getstockitemwarrantypolicybyid) | **GET** /api/v2/CatalogService/Items/{itemId}/WarrantyPolicies/{itemWarrantyPolicyId} | Get warranty policy by ID for a stock item
*ItemsApi* | [**getStockItemsOdataMaxPrice**](docs/ItemsApi.md#getstockitemsodatamaxprice) | **GET** /api/v2/CatalogService/Items/MaxPrice | Get max price of stock items
*ItemsApi* | [**getStockItemsOdataMinPrice**](docs/ItemsApi.md#getstockitemsodataminprice) | **GET** /api/v2/CatalogService/Items/MinPrice | Get min price of stock items
*ItemsApi* | [**getStockItemsQuery**](docs/ItemsApi.md#getstockitemsquery) | **GET** /api/v2/CatalogService/Items | Get all stock items
*ItemsApi* | [**patchStockItem**](docs/ItemsApi.md#patchstockitem) | **PATCH** /api/v2/CatalogService/Items/{itemId} | Patch a stock item
*ItemsApi* | [**recalculateStockItemPrices**](docs/ItemsApi.md#recalculatestockitemprices) | **POST** /api/v2/CatalogService/Items/RecalculatePrices | Recalculate stock item prices
*ItemsApi* | [**relateAttachmentToStockItem**](docs/ItemsApi.md#relateattachmenttostockitem) | **POST** /api/v2/CatalogService/Items/{itemId}/Attachments/{itemAttachmentId} | Relate attachment to stock item
*ItemsApi* | [**relateAttributeOptionToStockItem**](docs/ItemsApi.md#relateattributeoptiontostockitem) | **POST** /api/v2/CatalogService/Items/{itemId}/AttributeOptions/{itemAttributeOptionId} | Relate attribute option to stock item
*ItemsApi* | [**relateBrandToStockItem**](docs/ItemsApi.md#relatebrandtostockitem) | **POST** /api/v2/CatalogService/Items/{itemId}/Brands/{itemBrandId} | Relate brand to stock item
*ItemsApi* | [**relateCategoryToStockItem**](docs/ItemsApi.md#relatecategorytostockitem) | **POST** /api/v2/CatalogService/Items/{itemId}/Categories/{itemCategoryId} | Relate category to stock item
*ItemsApi* | [**relateGoogleCategoryToStockItem**](docs/ItemsApi.md#relategooglecategorytostockitem) | **POST** /api/v2/CatalogService/Items/{itemId}/GoogleCategories/{itemGoogleCategoryId} | Relate Google category to stock item
*ItemsApi* | [**relateImageToStockItem**](docs/ItemsApi.md#relateimagetostockitem) | **POST** /api/v2/CatalogService/Items/{itemId}/Images/{itemImageId} | Relate image to stock item
*ItemsApi* | [**relatePriceRuleToStockItem**](docs/ItemsApi.md#relatepriceruletostockitem) | **POST** /api/v2/CatalogService/Items/{itemId}/PriceRules/{itemPriceRuleId} | Relate price rule to stock item
*ItemsApi* | [**relateQuestionToStockItem**](docs/ItemsApi.md#relatequestiontostockitem) | **POST** /api/v2/CatalogService/Items/{itemId}/Questions | Create question for stock item
*ItemsApi* | [**relateRefundPolicyToStockItem**](docs/ItemsApi.md#relaterefundpolicytostockitem) | **POST** /api/v2/CatalogService/Items/{itemId}/RefundPolicies/{itemRefundPolicyId} | Relate refund policy to stock item
*ItemsApi* | [**relateReturnPolicyToStockItem**](docs/ItemsApi.md#relatereturnpolicytostockitem) | **POST** /api/v2/CatalogService/Items/{itemId}/ReturnPolicies/{itemReturnPolicyId} | Relate return policy to stock item
*ItemsApi* | [**relateReviewToStockItem**](docs/ItemsApi.md#relatereviewtostockitem) | **POST** /api/v2/CatalogService/Items/{itemId}/Reviews | Create review for stock item
*ItemsApi* | [**relateShippingPolicyToStockItem**](docs/ItemsApi.md#relateshippingpolicytostockitem) | **POST** /api/v2/CatalogService/Items/{itemId}/ShippingPolicies/{itemShippingPolicyId} | Relate shipping policy to stock item
*ItemsApi* | [**relateTagToStockItem**](docs/ItemsApi.md#relatetagtostockitem) | **POST** /api/v2/CatalogService/Items/{itemId}/Tags/{itemTagId} | Relate tag to stock item
*ItemsApi* | [**relateTaxPolicyToStockItem**](docs/ItemsApi.md#relatetaxpolicytostockitem) | **POST** /api/v2/CatalogService/Items/{itemId}/TaxPolicies/{itemTaxPolicyId} | Relate tax policy to stock item
*ItemsApi* | [**relateTypeToStockItem**](docs/ItemsApi.md#relatetypetostockitem) | **POST** /api/v2/CatalogService/Items/{itemId}/Types/{itemTypeId} | Relate type to stock item
*ItemsApi* | [**relateWarrantyPolicyToStockItem**](docs/ItemsApi.md#relatewarrantypolicytostockitem) | **POST** /api/v2/CatalogService/Items/{itemId}/WarrantyPolicies/{itemWarrantyPolicyId} | Relate warranty policy to stock item
*ItemsApi* | [**removeAttachmentFromStockItem**](docs/ItemsApi.md#removeattachmentfromstockitem) | **DELETE** /api/v2/CatalogService/Items/{itemId}/Attachments/{itemAttachmentId} | Remove attachment from stock item
*ItemsApi* | [**removeAttributeOptionFromStockItem**](docs/ItemsApi.md#removeattributeoptionfromstockitem) | **DELETE** /api/v2/CatalogService/Items/{itemId}/AttributeOptions/{itemAttributeOptionId} | Remove attribute option from stock item
*ItemsApi* | [**removeBrandFromStockItem**](docs/ItemsApi.md#removebrandfromstockitem) | **DELETE** /api/v2/CatalogService/Items/{itemId}/Brands/{itemBrandId} | Remove brand from stock item
*ItemsApi* | [**removeCategoryFromStockItem**](docs/ItemsApi.md#removecategoryfromstockitem) | **DELETE** /api/v2/CatalogService/Items/{itemId}/Categories/{itemCategoryId} | Remove category from stock item
*ItemsApi* | [**removeGoogleCategoryFromStockItem**](docs/ItemsApi.md#removegooglecategoryfromstockitem) | **DELETE** /api/v2/CatalogService/Items/{itemId}/GoogleCategories/{itemGoogleCategoryId} | Remove Google category from stock item
*ItemsApi* | [**removeImageFromStockItem**](docs/ItemsApi.md#removeimagefromstockitem) | **DELETE** /api/v2/CatalogService/Items/{itemId}/Images/{itemImageId} | Remove image from stock item
*ItemsApi* | [**removePriceRuleFromStockItem**](docs/ItemsApi.md#removepricerulefromstockitem) | **DELETE** /api/v2/CatalogService/Items/{itemId}/PriceRules/{itemPriceRuleId} | Remove price rule from stock item
*ItemsApi* | [**removeQuestionFromStockItem**](docs/ItemsApi.md#removequestionfromstockitem) | **DELETE** /api/v2/CatalogService/Items/{itemId}/Questions/{itemQuestionId} | Remove question from stock item
*ItemsApi* | [**removeRefundPolicyFromStockItem**](docs/ItemsApi.md#removerefundpolicyfromstockitem) | **DELETE** /api/v2/CatalogService/Items/{itemId}/RefundPolicies/{itemRefundPolicyId} | Remove refund policy from stock item
*ItemsApi* | [**removeReturnPolicyFromStockItem**](docs/ItemsApi.md#removereturnpolicyfromstockitem) | **DELETE** /api/v2/CatalogService/Items/{itemId}/ReturnPolicies/{itemReturnPolicyId} | Remove return policy from stock item
*ItemsApi* | [**removeReviewFromStockItem**](docs/ItemsApi.md#removereviewfromstockitem) | **DELETE** /api/v2/CatalogService/Items/{itemId}/Reviews/{itemReviewId} | Remove review from stock item
*ItemsApi* | [**removeShippingPolicyFromStockItem**](docs/ItemsApi.md#removeshippingpolicyfromstockitem) | **DELETE** /api/v2/CatalogService/Items/{itemId}/ShippingPolicies/{itemShippingPolicyId} | Remove shipping policy from stock item
*ItemsApi* | [**removeTagFromStockItem**](docs/ItemsApi.md#removetagfromstockitem) | **DELETE** /api/v2/CatalogService/Items/{itemId}/Tags/{itemTagId} | Remove tag from stock item
*ItemsApi* | [**removeTaxPolicyFromStockItem**](docs/ItemsApi.md#removetaxpolicyfromstockitem) | **DELETE** /api/v2/CatalogService/Items/{itemId}/TaxPolicies/{itemTaxPolicyId} | Remove tax policy from stock item
*ItemsApi* | [**removeTypeFromStockItem**](docs/ItemsApi.md#removetypefromstockitem) | **DELETE** /api/v2/CatalogService/Items/{itemId}/Types/{itemTypeId} | Remove type from stock item
*ItemsApi* | [**removeWarrantyPolicyFromStockItem**](docs/ItemsApi.md#removewarrantypolicyfromstockitem) | **DELETE** /api/v2/CatalogService/Items/{itemId}/WarrantyPolicies/{itemWarrantyPolicyId} | Remove warranty policy from stock item
*ItemsApi* | [**updateProductPrimaryImageAsync**](docs/ItemsApi.md#updateproductprimaryimageasync) | **POST** /api/v2/CatalogService/Items/{itemId}/Images/Primary | Update item primary image
*ItemsApi* | [**updateStockItem**](docs/ItemsApi.md#updatestockitem) | **PUT** /api/v2/CatalogService/Items/{itemId} | Update a stock item
*MerchantsApi* | [**getMerchantById**](docs/MerchantsApi.md#getmerchantbyid) | **GET** /api/v2/CatalogService/Merchants/{merchantId} | Get merchant by ID
*MerchantsApi* | [**getMerchants**](docs/MerchantsApi.md#getmerchants) | **GET** /api/v2/CatalogService/Merchants | Get all merchants
*MerchantsApi* | [**getMerchantsCount**](docs/MerchantsApi.md#getmerchantscount) | **GET** /api/v2/CatalogService/Merchants/Count | Count merchants


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [BatchStockItemUpdateRequest](docs/BatchStockItemUpdateRequest.md)
 - [BulkProduct](docs/BulkProduct.md)
 - [CatalogItemCreateDto](docs/CatalogItemCreateDto.md)
 - [CatalogItemDto](docs/CatalogItemDto.md)
 - [CatalogItemDtoEnvelope](docs/CatalogItemDtoEnvelope.md)
 - [CatalogItemDtoListEnvelope](docs/CatalogItemDtoListEnvelope.md)
 - [CatalogItemUpdateDto](docs/CatalogItemUpdateDto.md)
 - [CurrencyId](docs/CurrencyId.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [ItemAttachmentCreateDto](docs/ItemAttachmentCreateDto.md)
 - [ItemAttachmentDto](docs/ItemAttachmentDto.md)
 - [ItemAttachmentDtoEnvelope](docs/ItemAttachmentDtoEnvelope.md)
 - [ItemAttachmentDtoListEnvelope](docs/ItemAttachmentDtoListEnvelope.md)
 - [ItemAttachmentUpdateDto](docs/ItemAttachmentUpdateDto.md)
 - [ItemAttributeCreateDto](docs/ItemAttributeCreateDto.md)
 - [ItemAttributeDto](docs/ItemAttributeDto.md)
 - [ItemAttributeDtoEnvelope](docs/ItemAttributeDtoEnvelope.md)
 - [ItemAttributeDtoListEnvelope](docs/ItemAttributeDtoListEnvelope.md)
 - [ItemAttributeOptionCreateDto](docs/ItemAttributeOptionCreateDto.md)
 - [ItemAttributeOptionDto](docs/ItemAttributeOptionDto.md)
 - [ItemAttributeOptionDtoEnvelope](docs/ItemAttributeOptionDtoEnvelope.md)
 - [ItemAttributeOptionDtoListEnvelope](docs/ItemAttributeOptionDtoListEnvelope.md)
 - [ItemAttributeOptionUpdateDto](docs/ItemAttributeOptionUpdateDto.md)
 - [ItemAttributeUpdateDto](docs/ItemAttributeUpdateDto.md)
 - [ItemBrandCreateDto](docs/ItemBrandCreateDto.md)
 - [ItemBrandDto](docs/ItemBrandDto.md)
 - [ItemBrandDtoEnvelope](docs/ItemBrandDtoEnvelope.md)
 - [ItemBrandDtoListEnvelope](docs/ItemBrandDtoListEnvelope.md)
 - [ItemBrandUpdateDto](docs/ItemBrandUpdateDto.md)
 - [ItemBundleCreateDto](docs/ItemBundleCreateDto.md)
 - [ItemBundleDto](docs/ItemBundleDto.md)
 - [ItemBundleDtoEnvelope](docs/ItemBundleDtoEnvelope.md)
 - [ItemBundleDtoListEnvelope](docs/ItemBundleDtoListEnvelope.md)
 - [ItemBundleUpdateDto](docs/ItemBundleUpdateDto.md)
 - [ItemCategoryCreateDto](docs/ItemCategoryCreateDto.md)
 - [ItemCategoryDto](docs/ItemCategoryDto.md)
 - [ItemCategoryDtoEnvelope](docs/ItemCategoryDtoEnvelope.md)
 - [ItemCategoryDtoListEnvelope](docs/ItemCategoryDtoListEnvelope.md)
 - [ItemCategoryUpdateDto](docs/ItemCategoryUpdateDto.md)
 - [ItemFamilyCreateDto](docs/ItemFamilyCreateDto.md)
 - [ItemFamilyDto](docs/ItemFamilyDto.md)
 - [ItemFamilyDtoEnvelope](docs/ItemFamilyDtoEnvelope.md)
 - [ItemFamilyDtoListEnvelope](docs/ItemFamilyDtoListEnvelope.md)
 - [ItemFamilyUpdateDto](docs/ItemFamilyUpdateDto.md)
 - [ItemGoogleCategoryDto](docs/ItemGoogleCategoryDto.md)
 - [ItemGoogleCategoryDtoEnvelope](docs/ItemGoogleCategoryDtoEnvelope.md)
 - [ItemGoogleCategoryDtoListEnvelope](docs/ItemGoogleCategoryDtoListEnvelope.md)
 - [ItemImageCreateDto](docs/ItemImageCreateDto.md)
 - [ItemImageDto](docs/ItemImageDto.md)
 - [ItemImageDtoEnvelope](docs/ItemImageDtoEnvelope.md)
 - [ItemImageDtoListEnvelope](docs/ItemImageDtoListEnvelope.md)
 - [ItemImageUpdateDto](docs/ItemImageUpdateDto.md)
 - [ItemQuestionCreateDto](docs/ItemQuestionCreateDto.md)
 - [ItemQuestionDto](docs/ItemQuestionDto.md)
 - [ItemQuestionDtoEnvelope](docs/ItemQuestionDtoEnvelope.md)
 - [ItemQuestionDtoListEnvelope](docs/ItemQuestionDtoListEnvelope.md)
 - [ItemQuestionRecordCreateDto](docs/ItemQuestionRecordCreateDto.md)
 - [ItemQuestionUpdateDto](docs/ItemQuestionUpdateDto.md)
 - [ItemRefundPolicyDto](docs/ItemRefundPolicyDto.md)
 - [ItemRefundPolicyDtoEnvelope](docs/ItemRefundPolicyDtoEnvelope.md)
 - [ItemRefundPolicyDtoListEnvelope](docs/ItemRefundPolicyDtoListEnvelope.md)
 - [ItemReturnPolicyDto](docs/ItemReturnPolicyDto.md)
 - [ItemReturnPolicyDtoEnvelope](docs/ItemReturnPolicyDtoEnvelope.md)
 - [ItemReturnPolicyDtoListEnvelope](docs/ItemReturnPolicyDtoListEnvelope.md)
 - [ItemReviewCreateDto](docs/ItemReviewCreateDto.md)
 - [ItemReviewDto](docs/ItemReviewDto.md)
 - [ItemReviewDtoEnvelope](docs/ItemReviewDtoEnvelope.md)
 - [ItemReviewDtoListEnvelope](docs/ItemReviewDtoListEnvelope.md)
 - [ItemReviewRecordCreateDto](docs/ItemReviewRecordCreateDto.md)
 - [ItemReviewUpdateDto](docs/ItemReviewUpdateDto.md)
 - [ItemShippingPolicyDto](docs/ItemShippingPolicyDto.md)
 - [ItemShippingPolicyDtoEnvelope](docs/ItemShippingPolicyDtoEnvelope.md)
 - [ItemShippingPolicyDtoListEnvelope](docs/ItemShippingPolicyDtoListEnvelope.md)
 - [ItemTagCreateDto](docs/ItemTagCreateDto.md)
 - [ItemTagDto](docs/ItemTagDto.md)
 - [ItemTagDtoEnvelope](docs/ItemTagDtoEnvelope.md)
 - [ItemTagDtoListEnvelope](docs/ItemTagDtoListEnvelope.md)
 - [ItemTagUpdateDto](docs/ItemTagUpdateDto.md)
 - [ItemTaxPolicyDto](docs/ItemTaxPolicyDto.md)
 - [ItemTaxPolicyDtoEnvelope](docs/ItemTaxPolicyDtoEnvelope.md)
 - [ItemTaxPolicyDtoListEnvelope](docs/ItemTaxPolicyDtoListEnvelope.md)
 - [ItemTypeCreateDto](docs/ItemTypeCreateDto.md)
 - [ItemTypeDto](docs/ItemTypeDto.md)
 - [ItemTypeDtoEnvelope](docs/ItemTypeDtoEnvelope.md)
 - [ItemTypeDtoListEnvelope](docs/ItemTypeDtoListEnvelope.md)
 - [ItemTypeUpdateDto](docs/ItemTypeUpdateDto.md)
 - [ItemWarrantyPolicyDto](docs/ItemWarrantyPolicyDto.md)
 - [ItemWarrantyPolicyDtoEnvelope](docs/ItemWarrantyPolicyDtoEnvelope.md)
 - [ItemWarrantyPolicyDtoListEnvelope](docs/ItemWarrantyPolicyDtoListEnvelope.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [MerchantDto](docs/MerchantDto.md)
 - [MerchantDtoEnvelope](docs/MerchantDtoEnvelope.md)
 - [MerchantDtoListEnvelope](docs/MerchantDtoListEnvelope.md)
 - [Money](docs/Money.md)
 - [MoneyEnvelope](docs/MoneyEnvelope.md)
 - [Operation](docs/Operation.md)
 - [PricingRuleDto](docs/PricingRuleDto.md)
 - [PricingRuleDtoEnvelope](docs/PricingRuleDtoEnvelope.md)
 - [PricingRuleDtoListEnvelope](docs/PricingRuleDtoListEnvelope.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)
 - [UpdateProductPrimaryImageAsyncRequest](docs/UpdateProductPrimaryImageAsyncRequest.md)


## Documentation For Authorization

 All endpoints do not require authorization.

