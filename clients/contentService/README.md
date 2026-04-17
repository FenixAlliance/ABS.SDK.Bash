# ContentService Bash client

## Overview

This is a Bash client script for accessing ContentService service.

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
*BlogPostAuthorsApi* | [**countBlogPostsByAuthorAsync**](docs/BlogPostAuthorsApi.md#countblogpostsbyauthorasync) | **GET** /api/v2/ContentService/BlogPostAuthors/{authorId}/BlogPosts/Count | Count blog posts by author
*BlogPostAuthorsApi* | [**getBlogAuthorByIdAsync**](docs/BlogPostAuthorsApi.md#getblogauthorbyidasync) | **GET** /api/v2/ContentService/BlogPostAuthors/{authorId} | Get blog author by ID
*BlogPostAuthorsApi* | [**getBlogAuthorsAsync**](docs/BlogPostAuthorsApi.md#getblogauthorsasync) | **GET** /api/v2/ContentService/BlogPostAuthors | Get blog authors
*BlogPostAuthorsApi* | [**getBlogPostsByAuthorAsync**](docs/BlogPostAuthorsApi.md#getblogpostsbyauthorasync) | **GET** /api/v2/ContentService/BlogPostAuthors/{authorId}/BlogPosts | Get blog posts by author
*BlogPostCategoriesApi* | [**countBlogPostCategoriesAsync**](docs/BlogPostCategoriesApi.md#countblogpostcategoriesasync) | **GET** /api/v2/ContentService/BlogPostCategories/Count | Count blog post categories
*BlogPostCategoriesApi* | [**createBlogPostCategoryAsync**](docs/BlogPostCategoriesApi.md#createblogpostcategoryasync) | **POST** /api/v2/ContentService/BlogPostCategories | Create a blog post category
*BlogPostCategoriesApi* | [**deleteBlogPostCategoryAsync**](docs/BlogPostCategoriesApi.md#deleteblogpostcategoryasync) | **DELETE** /api/v2/ContentService/BlogPostCategories/{blogPostCategoryId} | Delete a blog post category
*BlogPostCategoriesApi* | [**getBlogPostCategoriesAsync**](docs/BlogPostCategoriesApi.md#getblogpostcategoriesasync) | **GET** /api/v2/ContentService/BlogPostCategories | Get blog post categories
*BlogPostCategoriesApi* | [**getBlogPostCategoryByIdAsync**](docs/BlogPostCategoriesApi.md#getblogpostcategorybyidasync) | **GET** /api/v2/ContentService/BlogPostCategories/{blogPostCategoryId} | Get blog post category by ID
*BlogPostCategoriesApi* | [**updateBlogPostCategoryAsync**](docs/BlogPostCategoriesApi.md#updateblogpostcategoryasync) | **PUT** /api/v2/ContentService/BlogPostCategories/{blogPostCategoryId} | Update a blog post category
*BlogPostTagsApi* | [**countBlogPostTagsAsync**](docs/BlogPostTagsApi.md#countblogposttagsasync) | **GET** /api/v2/ContentService/BlogPostTags/Count | Count blog post tags
*BlogPostTagsApi* | [**createBlogPostTagAsync**](docs/BlogPostTagsApi.md#createblogposttagasync) | **POST** /api/v2/ContentService/BlogPostTags | Create a blog post tag
*BlogPostTagsApi* | [**deleteBlogPostTagAsync**](docs/BlogPostTagsApi.md#deleteblogposttagasync) | **DELETE** /api/v2/ContentService/BlogPostTags/{blogPostTagId} | Delete a blog post tag
*BlogPostTagsApi* | [**getBlogPostTagByIdAsync**](docs/BlogPostTagsApi.md#getblogposttagbyidasync) | **GET** /api/v2/ContentService/BlogPostTags/{blogPostTagId} | Get blog post tag by ID
*BlogPostTagsApi* | [**getBlogPostTagsAsync**](docs/BlogPostTagsApi.md#getblogposttagsasync) | **GET** /api/v2/ContentService/BlogPostTags | Get blog post tags
*BlogPostTagsApi* | [**updateBlogPostTagAsync**](docs/BlogPostTagsApi.md#updateblogposttagasync) | **PUT** /api/v2/ContentService/BlogPostTags/{blogPostTagId} | Update a blog post tag
*BlogPostsApi* | [**createBlogPostAsync**](docs/BlogPostsApi.md#createblogpostasync) | **POST** /api/v2/ContentService/BlogPosts | Create a new blog post
*BlogPostsApi* | [**createCategoryForBlogPostAsync**](docs/BlogPostsApi.md#createcategoryforblogpostasync) | **POST** /api/v2/ContentService/BlogPosts/{blogPostId}/Categories | Create a category for a blog post
*BlogPostsApi* | [**createCommentForBlogPostAsync**](docs/BlogPostsApi.md#createcommentforblogpostasync) | **POST** /api/v2/ContentService/BlogPosts/{blogPostId}/Comments | Create a comment for a blog post
*BlogPostsApi* | [**createTagForBlogPostAsync**](docs/BlogPostsApi.md#createtagforblogpostasync) | **POST** /api/v2/ContentService/BlogPosts/{blogPostId}/Tags | Create a tag for a blog post
*BlogPostsApi* | [**deleteBlogPostAsync**](docs/BlogPostsApi.md#deleteblogpostasync) | **DELETE** /api/v2/ContentService/BlogPosts/{blogPostId} | Delete a blog post
*BlogPostsApi* | [**deleteCommentFromBlogPostAsync**](docs/BlogPostsApi.md#deletecommentfromblogpostasync) | **DELETE** /api/v2/ContentService/BlogPosts/{blogPostId}/Comments/{commentId} | Delete a blog post comment
*BlogPostsApi* | [**getBlogPostByIdAsync**](docs/BlogPostsApi.md#getblogpostbyidasync) | **GET** /api/v2/ContentService/BlogPosts/{blogPostId} | Get a blog post by ID
*BlogPostsApi* | [**getBlogPostsAsync**](docs/BlogPostsApi.md#getblogpostsasync) | **GET** /api/v2/ContentService/BlogPosts | Retrieve a list of blog posts
*BlogPostsApi* | [**getBlogPostsCountAsync**](docs/BlogPostsApi.md#getblogpostscountasync) | **GET** /api/v2/ContentService/BlogPosts/Count | Get the count of blog posts
*BlogPostsApi* | [**getCategoriesForBlogPostAsync**](docs/BlogPostsApi.md#getcategoriesforblogpostasync) | **GET** /api/v2/ContentService/BlogPosts/{blogPostId}/Categories | Get categories for a blog post
*BlogPostsApi* | [**getCommentsForBlogPostAsync**](docs/BlogPostsApi.md#getcommentsforblogpostasync) | **GET** /api/v2/ContentService/BlogPosts/{blogPostId}/Comments | Get comments for a blog post
*BlogPostsApi* | [**getRepliesForCommentAsync**](docs/BlogPostsApi.md#getrepliesforcommentasync) | **GET** /api/v2/ContentService/BlogPosts/{blogPostId}/Comments/{commentId}/Replies | Get replies for a comment
*BlogPostsApi* | [**getTagsForBlogPostAsync**](docs/BlogPostsApi.md#gettagsforblogpostasync) | **GET** /api/v2/ContentService/BlogPosts/{blogPostId}/Tags | Get tags for a blog post
*BlogPostsApi* | [**relateCategoryToBlogPostAsync**](docs/BlogPostsApi.md#relatecategorytoblogpostasync) | **POST** /api/v2/ContentService/BlogPosts/{blogPostId}/Categories/{categoryId} | Relate an existing category to a blog post
*BlogPostsApi* | [**relateTagToBlogPostAsync**](docs/BlogPostsApi.md#relatetagtoblogpostasync) | **POST** /api/v2/ContentService/BlogPosts/{blogPostId}/Tags/{tagId} | Relate an existing tag to a blog post
*BlogPostsApi* | [**replyToCommentAsync**](docs/BlogPostsApi.md#replytocommentasync) | **POST** /api/v2/ContentService/BlogPosts/{blogPostId}/Comments/{commentId}/Reply | Reply to a blog post comment
*BlogPostsApi* | [**unrelateCategoryFromBlogPostAsync**](docs/BlogPostsApi.md#unrelatecategoryfromblogpostasync) | **DELETE** /api/v2/ContentService/BlogPosts/{blogPostId}/Categories/{categoryId} | Remove a category from a blog post
*BlogPostsApi* | [**unrelateTagFromBlogPostAsync**](docs/BlogPostsApi.md#unrelatetagfromblogpostasync) | **DELETE** /api/v2/ContentService/BlogPosts/{blogPostId}/Tags/{tagId} | Remove a tag from a blog post
*BlogPostsApi* | [**updateBlogPostAsync**](docs/BlogPostsApi.md#updateblogpostasync) | **PUT** /api/v2/ContentService/BlogPosts/{blogPostId} | Update a blog post
*BusinessDomainsApi* | [**getBusinessDomainByIdAsync**](docs/BusinessDomainsApi.md#getbusinessdomainbyidasync) | **GET** /api/v2/ContentService/BusinessDomains/{businessDomainId} | Get business domain by ID
*BusinessDomainsApi* | [**getBusinessDomainsAsync**](docs/BusinessDomainsApi.md#getbusinessdomainsasync) | **GET** /api/v2/ContentService/BusinessDomains | Get business domains
*BusinessDomainsApi* | [**getBusinessDomainsCountAsync**](docs/BusinessDomainsApi.md#getbusinessdomainscountasync) | **GET** /api/v2/ContentService/BusinessDomains/Count | Get business domains count
*FenixAllianceABPWebApi* | [**forgotPasswordPost**](docs/FenixAllianceABPWebApi.md#forgotpasswordpost) | **POST** /forgotPassword | 
*FenixAllianceABPWebApi* | [**healthGet**](docs/FenixAllianceABPWebApi.md#healthget) | **GET** /health | 
*FenixAllianceABPWebApi* | [**helloGet**](docs/FenixAllianceABPWebApi.md#helloget) | **GET** /hello | 
*FenixAllianceABPWebApi* | [**loginPost**](docs/FenixAllianceABPWebApi.md#loginpost) | **POST** /login | 
*FenixAllianceABPWebApi* | [**manage2faPost**](docs/FenixAllianceABPWebApi.md#manage2fapost) | **POST** /manage/2fa | 
*FenixAllianceABPWebApi* | [**manageInfoGet**](docs/FenixAllianceABPWebApi.md#manageinfoget) | **GET** /manage/info | 
*FenixAllianceABPWebApi* | [**manageInfoPost**](docs/FenixAllianceABPWebApi.md#manageinfopost) | **POST** /manage/info | 
*FenixAllianceABPWebApi* | [**mapIdentityApiConfirmEmail**](docs/FenixAllianceABPWebApi.md#mapidentityapiconfirmemail) | **GET** /confirmEmail | 
*FenixAllianceABPWebApi* | [**refreshPost**](docs/FenixAllianceABPWebApi.md#refreshpost) | **POST** /refresh | 
*FenixAllianceABPWebApi* | [**registerPost**](docs/FenixAllianceABPWebApi.md#registerpost) | **POST** /register | 
*FenixAllianceABPWebApi* | [**resendConfirmationEmailPost**](docs/FenixAllianceABPWebApi.md#resendconfirmationemailpost) | **POST** /resendConfirmationEmail | 
*FenixAllianceABPWebApi* | [**resetPasswordPost**](docs/FenixAllianceABPWebApi.md#resetpasswordpost) | **POST** /resetPassword | 
*FenixAllianceABPWebApi* | [**versionGet**](docs/FenixAllianceABPWebApi.md#versionget) | **GET** /version | 
*PortalsApi* | [**countPortalsAsync**](docs/PortalsApi.md#countportalsasync) | **GET** /api/v2/ContentService/Portals/Count | Count portals
*PortalsApi* | [**createWebPortalAsync**](docs/PortalsApi.md#createwebportalasync) | **POST** /api/v2/ContentService/Portals | Create a new web portal
*PortalsApi* | [**deleteWebPortalAsync**](docs/PortalsApi.md#deletewebportalasync) | **DELETE** /api/v2/ContentService/Portals/{portalId} | Delete a web portal
*PortalsApi* | [**getCurrentWebPortalAsync**](docs/PortalsApi.md#getcurrentwebportalasync) | **GET** /api/v2/ContentService/Portals/Current | Get the current portal
*PortalsApi* | [**getCurrentWebPortalOptionsAsync**](docs/PortalsApi.md#getcurrentwebportaloptionsasync) | **GET** /api/v2/ContentService/Portals/Current/Options | Get the current portal&#39;s options
*PortalsApi* | [**getPortalsAsync**](docs/PortalsApi.md#getportalsasync) | **GET** /api/v2/ContentService/Portals | Get portals
*PortalsApi* | [**getRootWebPortalAsync**](docs/PortalsApi.md#getrootwebportalasync) | **GET** /api/v2/ContentService/Portals/Root | Get the root portal
*PortalsApi* | [**getWebPortalByIdAsync**](docs/PortalsApi.md#getwebportalbyidasync) | **GET** /api/v2/ContentService/Portals/{portalId} | Get a web portal by its ID
*PortalsApi* | [**getWebPortalOptionsAsync**](docs/PortalsApi.md#getwebportaloptionsasync) | **GET** /api/v2/ContentService/Portals/{portalId}/Options | Get a web portal&#39;s options by its ID
*PortalsApi* | [**getWebPortalSettingsAsync**](docs/PortalsApi.md#getwebportalsettingsasync) | **GET** /api/v2/ContentService/Portals/{portalId}/Settings | Get a web portal&#39;s settings by its ID
*PortalsApi* | [**initializeCurrentWebPortalAsync**](docs/PortalsApi.md#initializecurrentwebportalasync) | **POST** /api/v2/ContentService/Portals/Initialize | Initialize the current portal
*PortalsApi* | [**patchWebPortalAsync**](docs/PortalsApi.md#patchwebportalasync) | **PATCH** /api/v2/ContentService/Portals/{portalId} | Partially update a web portal
*PortalsApi* | [**searchWebPortalAsync**](docs/PortalsApi.md#searchwebportalasync) | **GET** /api/v2/ContentService/Portals/Search | Search for a portal by its domain
*PortalsApi* | [**updateWebPortalAsync**](docs/PortalsApi.md#updatewebportalasync) | **PUT** /api/v2/ContentService/Portals/{portalId} | Update an existing web portal
*ThemesApi* | [**getLatestCurrencyRatesModelAsync**](docs/ThemesApi.md#getlatestcurrencyratesmodelasync) | **GET** /api/v2/ContentService/Themes/Update | Update base web content themes
*WebContentsApi* | [**countWebContentsAsync**](docs/WebContentsApi.md#countwebcontentsasync) | **GET** /api/v2/ContentService/WebContents/Count | Count web contents
*WebContentsApi* | [**createWebContentAsync**](docs/WebContentsApi.md#createwebcontentasync) | **POST** /api/v2/ContentService/WebContents | Create a web content
*WebContentsApi* | [**deleteWebContentAsync**](docs/WebContentsApi.md#deletewebcontentasync) | **DELETE** /api/v2/ContentService/WebContents/{webContentId} | Delete a web content
*WebContentsApi* | [**getWebContentByIdAsync**](docs/WebContentsApi.md#getwebcontentbyidasync) | **GET** /api/v2/ContentService/WebContents/{webContentId} | Get web content by ID
*WebContentsApi* | [**getWebContentsAsync**](docs/WebContentsApi.md#getwebcontentsasync) | **GET** /api/v2/ContentService/WebContents | Get web contents
*WebContentsApi* | [**updateWebContentAsync**](docs/WebContentsApi.md#updatewebcontentasync) | **PUT** /api/v2/ContentService/WebContents/{webContentId} | Update a web content
*WebPageCategoriesApi* | [**countWebPageCategoriesAsync**](docs/WebPageCategoriesApi.md#countwebpagecategoriesasync) | **GET** /api/v2/ContentService/WebPageCategories/Count | Count web page categories
*WebPageCategoriesApi* | [**createWebPageCategoryAsync**](docs/WebPageCategoriesApi.md#createwebpagecategoryasync) | **POST** /api/v2/ContentService/WebPageCategories | Create a web page category
*WebPageCategoriesApi* | [**deleteWebPageCategoryAsync**](docs/WebPageCategoriesApi.md#deletewebpagecategoryasync) | **DELETE** /api/v2/ContentService/WebPageCategories/{webPageCategoryId} | Delete a web page category
*WebPageCategoriesApi* | [**getWebPageCategoriesAsync**](docs/WebPageCategoriesApi.md#getwebpagecategoriesasync) | **GET** /api/v2/ContentService/WebPageCategories | Get web page categories
*WebPageCategoriesApi* | [**getWebPageCategoryByIdAsync**](docs/WebPageCategoriesApi.md#getwebpagecategorybyidasync) | **GET** /api/v2/ContentService/WebPageCategories/{webPageCategoryId} | Get web page category by ID
*WebPageCategoriesApi* | [**updateWebPageCategoryAsync**](docs/WebPageCategoriesApi.md#updatewebpagecategoryasync) | **PUT** /api/v2/ContentService/WebPageCategories/{webPageCategoryId} | Update a web page category
*WebPageTagsApi* | [**countWebPageTagsAsync**](docs/WebPageTagsApi.md#countwebpagetagsasync) | **GET** /api/v2/ContentService/WebPageTags/Count | Count web page tags
*WebPageTagsApi* | [**createWebPageTagAsync**](docs/WebPageTagsApi.md#createwebpagetagasync) | **POST** /api/v2/ContentService/WebPageTags | Create a web page tag
*WebPageTagsApi* | [**deleteWebPageTagAsync**](docs/WebPageTagsApi.md#deletewebpagetagasync) | **DELETE** /api/v2/ContentService/WebPageTags/{webPageTagId} | Delete a web page tag
*WebPageTagsApi* | [**getWebPageTagByIdAsync**](docs/WebPageTagsApi.md#getwebpagetagbyidasync) | **GET** /api/v2/ContentService/WebPageTags/{webPageTagId} | Get web page tag by ID
*WebPageTagsApi* | [**getWebPageTagsAsync**](docs/WebPageTagsApi.md#getwebpagetagsasync) | **GET** /api/v2/ContentService/WebPageTags | Get web page tags
*WebPageTagsApi* | [**updateWebPageTagAsync**](docs/WebPageTagsApi.md#updatewebpagetagasync) | **PUT** /api/v2/ContentService/WebPageTags/{webPageTagId} | Update a web page tag
*WebPagesApi* | [**countWebPagesAsync**](docs/WebPagesApi.md#countwebpagesasync) | **GET** /api/v2/ContentService/WebPages/Count | Count web pages
*WebPagesApi* | [**createWebPageAsync**](docs/WebPagesApi.md#createwebpageasync) | **POST** /api/v2/ContentService/WebPages | Create a web page
*WebPagesApi* | [**createWebPageCategoryRelationAsync**](docs/WebPagesApi.md#createwebpagecategoryrelationasync) | **POST** /api/v2/ContentService/WebPages/{webPageId}/Categories | Create a web page category relation
*WebPagesApi* | [**createWebPageTagRelationAsync**](docs/WebPagesApi.md#createwebpagetagrelationasync) | **POST** /api/v2/ContentService/WebPages/{webPageId}/Tags | Create a web page tag relation
*WebPagesApi* | [**deleteWebPageAsync**](docs/WebPagesApi.md#deletewebpageasync) | **DELETE** /api/v2/ContentService/WebPages/{webPageId} | Delete a web page
*WebPagesApi* | [**getCategoriesByWebPageAsync**](docs/WebPagesApi.md#getcategoriesbywebpageasync) | **GET** /api/v2/ContentService/WebPages/{webPageId}/Categories | Get categories by web page
*WebPagesApi* | [**getTagsByWebPageAsync**](docs/WebPagesApi.md#gettagsbywebpageasync) | **GET** /api/v2/ContentService/WebPages/{webPageId}/Tags | Get tags by web page
*WebPagesApi* | [**getWebPageByIdAsync**](docs/WebPagesApi.md#getwebpagebyidasync) | **GET** /api/v2/ContentService/WebPages/{webPageId} | Get web page by ID
*WebPagesApi* | [**getWebPagesAsync**](docs/WebPagesApi.md#getwebpagesasync) | **GET** /api/v2/ContentService/WebPages | Get web pages
*WebPagesApi* | [**relateWebPageToCategoryAsync**](docs/WebPagesApi.md#relatewebpagetocategoryasync) | **POST** /api/v2/ContentService/WebPages/{webPageId}/Categories/{categoryId} | Relate web page to category
*WebPagesApi* | [**relateWebPageToTagAsync**](docs/WebPagesApi.md#relatewebpagetotagasync) | **POST** /api/v2/ContentService/WebPages/{webPageId}/Tags/{tagId} | Relate web page to tag
*WebPagesApi* | [**unrelateWebPageCategoryAsync**](docs/WebPagesApi.md#unrelatewebpagecategoryasync) | **DELETE** /api/v2/ContentService/WebPages/{webPageId}/Categories/{categoryId} | Unrelate web page from category
*WebPagesApi* | [**unrelateWebPageTagAsync**](docs/WebPagesApi.md#unrelatewebpagetagasync) | **DELETE** /api/v2/ContentService/WebPages/{webPageId}/Tags/{tagId} | Unrelate web page from tag
*WebPagesApi* | [**updateWebPageAsync**](docs/WebPagesApi.md#updatewebpageasync) | **PUT** /api/v2/ContentService/WebPages/{webPageId} | Update a web page
*WebTemplatesApi* | [**countWebTemplatesAsync**](docs/WebTemplatesApi.md#countwebtemplatesasync) | **GET** /api/v2/ContentService/WebTemplates/Count | Count web templates
*WebTemplatesApi* | [**createWebTemplateAsync**](docs/WebTemplatesApi.md#createwebtemplateasync) | **POST** /api/v2/ContentService/WebTemplates | Create a web template
*WebTemplatesApi* | [**deleteWebTemplateAsync**](docs/WebTemplatesApi.md#deletewebtemplateasync) | **DELETE** /api/v2/ContentService/WebTemplates/{webTemplateId} | Delete a web template
*WebTemplatesApi* | [**getWebTemplateByIdAsync**](docs/WebTemplatesApi.md#getwebtemplatebyidasync) | **GET** /api/v2/ContentService/WebTemplates/{webTemplateId} | Get web template by ID
*WebTemplatesApi* | [**getWebTemplatesAsync**](docs/WebTemplatesApi.md#getwebtemplatesasync) | **GET** /api/v2/ContentService/WebTemplates | Get web templates
*WebTemplatesApi* | [**updateWebTemplateAsync**](docs/WebTemplatesApi.md#updatewebtemplateasync) | **PUT** /api/v2/ContentService/WebTemplates/{webTemplateId} | Update a web template


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [AdvancedOptions](docs/AdvancedOptions.md)
 - [AllianceBusinessSuiteIntegrationOptions](docs/AllianceBusinessSuiteIntegrationOptions.md)
 - [AppleIcons](docs/AppleIcons.md)
 - [AzureAppInsightIntegrationOptions](docs/AzureAppInsightIntegrationOptions.md)
 - [AzureStorageIntegrationOptions](docs/AzureStorageIntegrationOptions.md)
 - [Background](docs/Background.md)
 - [BackgroundOptions](docs/BackgroundOptions.md)
 - [BlogAuthorDto](docs/BlogAuthorDto.md)
 - [BlogAuthorDtoEnvelope](docs/BlogAuthorDtoEnvelope.md)
 - [BlogAuthorDtoListEnvelope](docs/BlogAuthorDtoListEnvelope.md)
 - [BlogOptions](docs/BlogOptions.md)
 - [BlogPostCategoryCreateDto](docs/BlogPostCategoryCreateDto.md)
 - [BlogPostCategoryDto](docs/BlogPostCategoryDto.md)
 - [BlogPostCategoryDtoEnvelope](docs/BlogPostCategoryDtoEnvelope.md)
 - [BlogPostCategoryDtoListEnvelope](docs/BlogPostCategoryDtoListEnvelope.md)
 - [BlogPostCategoryUpdateDto](docs/BlogPostCategoryUpdateDto.md)
 - [BlogPostCommentCreateDto](docs/BlogPostCommentCreateDto.md)
 - [BlogPostCommentDto](docs/BlogPostCommentDto.md)
 - [BlogPostCommentDtoListEnvelope](docs/BlogPostCommentDtoListEnvelope.md)
 - [BlogPostCreateDto](docs/BlogPostCreateDto.md)
 - [BlogPostDto](docs/BlogPostDto.md)
 - [BlogPostDtoEnvelope](docs/BlogPostDtoEnvelope.md)
 - [BlogPostDtoListEnvelope](docs/BlogPostDtoListEnvelope.md)
 - [BlogPostTagCreateDto](docs/BlogPostTagCreateDto.md)
 - [BlogPostTagDto](docs/BlogPostTagDto.md)
 - [BlogPostTagDtoEnvelope](docs/BlogPostTagDtoEnvelope.md)
 - [BlogPostTagDtoListEnvelope](docs/BlogPostTagDtoListEnvelope.md)
 - [BlogPostTagUpdateDto](docs/BlogPostTagUpdateDto.md)
 - [BlogPostUpdateDto](docs/BlogPostUpdateDto.md)
 - [BrandingOptions](docs/BrandingOptions.md)
 - [BreadcrumbsOptions](docs/BreadcrumbsOptions.md)
 - [BusinessDomainDto](docs/BusinessDomainDto.md)
 - [BusinessDomainDtoEnvelope](docs/BusinessDomainDtoEnvelope.md)
 - [BusinessDomainDtoListEnvelope](docs/BusinessDomainDtoListEnvelope.md)
 - [CartOptions](docs/CartOptions.md)
 - [ColorOptions](docs/ColorOptions.md)
 - [ColorScheme](docs/ColorScheme.md)
 - [ContactOptions](docs/ContactOptions.md)
 - [ContactPoint](docs/ContactPoint.md)
 - [CouponsOptions](docs/CouponsOptions.md)
 - [Creator](docs/Creator.md)
 - [CustomFont](docs/CustomFont.md)
 - [DashboardOptions](docs/DashboardOptions.md)
 - [DownloadablesOptions](docs/DownloadablesOptions.md)
 - [EPaycoIntegrationOptions](docs/EPaycoIntegrationOptions.md)
 - [EmailOptions](docs/EmailOptions.md)
 - [EmailsOptions](docs/EmailsOptions.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [FacebookIntegrationOptions](docs/FacebookIntegrationOptions.md)
 - [Favicons](docs/Favicons.md)
 - [FenixAllianceIntegrationsOptions](docs/FenixAllianceIntegrationsOptions.md)
 - [FooterOptions](docs/FooterOptions.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [ForumOptions](docs/ForumOptions.md)
 - [FreeGeoIPIntegrationOptions](docs/FreeGeoIPIntegrationOptions.md)
 - [GoogleAnalytics](docs/GoogleAnalytics.md)
 - [GoogleIntegrationOptions](docs/GoogleIntegrationOptions.md)
 - [GoogleMapsIntegrationOptions](docs/GoogleMapsIntegrationOptions.md)
 - [GoogleMerchantCenterIntegrationOptions](docs/GoogleMerchantCenterIntegrationOptions.md)
 - [GoogleMyBusinessIntegrationOptions](docs/GoogleMyBusinessIntegrationOptions.md)
 - [GoogleRecaptchaIntegrationOptions](docs/GoogleRecaptchaIntegrationOptions.md)
 - [GoogleTagManagerIntegrationOptions](docs/GoogleTagManagerIntegrationOptions.md)
 - [HeaderOptions](docs/HeaderOptions.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [IdentityAndPrivacyOptions](docs/IdentityAndPrivacyOptions.md)
 - [InfinityComexIntegrationOptions](docs/InfinityComexIntegrationOptions.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [IntegrationOptions](docs/IntegrationOptions.md)
 - [IntegrationsOptions](docs/IntegrationsOptions.md)
 - [InventoryOptions](docs/InventoryOptions.md)
 - [LayoutOptions](docs/LayoutOptions.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [Logo](docs/Logo.md)
 - [MSAppTile](docs/MSAppTile.md)
 - [Margin](docs/Margin.md)
 - [MeasurementOptions](docs/MeasurementOptions.md)
 - [MenuOptions](docs/MenuOptions.md)
 - [MicrosoftAzureIntegrationOptions](docs/MicrosoftAzureIntegrationOptions.md)
 - [MicrosoftIntegrationsOptions](docs/MicrosoftIntegrationsOptions.md)
 - [OpenExchangeRatesIntegrationsOptions](docs/OpenExchangeRatesIntegrationsOptions.md)
 - [Operation](docs/Operation.md)
 - [Organization](docs/Organization.md)
 - [Padding](docs/Padding.md)
 - [PaymentMethod](docs/PaymentMethod.md)
 - [PaymentOptions](docs/PaymentOptions.md)
 - [PortalOptions](docs/PortalOptions.md)
 - [PortalOptionsEnvelope](docs/PortalOptionsEnvelope.md)
 - [PortalSettings](docs/PortalSettings.md)
 - [PortalSettingsEnvelope](docs/PortalSettingsEnvelope.md)
 - [PriceCalculationOptions](docs/PriceCalculationOptions.md)
 - [PrivacyOptions](docs/PrivacyOptions.md)
 - [RecommendationOptions](docs/RecommendationOptions.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [ResponsiveOptions](docs/ResponsiveOptions.md)
 - [ReviewsOptions](docs/ReviewsOptions.md)
 - [SendgridIntegrationsOptions](docs/SendgridIntegrationsOptions.md)
 - [SeoOptions](docs/SeoOptions.md)
 - [ServicesOptions](docs/ServicesOptions.md)
 - [SlidingBarOptions](docs/SlidingBarOptions.md)
 - [SocialMediaOptions](docs/SocialMediaOptions.md)
 - [StoreDataRetentionPolicy](docs/StoreDataRetentionPolicy.md)
 - [StoreOptions](docs/StoreOptions.md)
 - [StudioOptions](docs/StudioOptions.md)
 - [SubscriptionsOptions](docs/SubscriptionsOptions.md)
 - [TaxCalculationOptions](docs/TaxCalculationOptions.md)
 - [ThemingOptions](docs/ThemingOptions.md)
 - [TitleBarOptions](docs/TitleBarOptions.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)
 - [Typography](docs/Typography.md)
 - [TypographyOptions](docs/TypographyOptions.md)
 - [WebContentCreateDto](docs/WebContentCreateDto.md)
 - [WebContentDto](docs/WebContentDto.md)
 - [WebContentDtoEnvelope](docs/WebContentDtoEnvelope.md)
 - [WebContentDtoListEnvelope](docs/WebContentDtoListEnvelope.md)
 - [WebContentUpdateDto](docs/WebContentUpdateDto.md)
 - [WebPageCategoryCreateDto](docs/WebPageCategoryCreateDto.md)
 - [WebPageCategoryDto](docs/WebPageCategoryDto.md)
 - [WebPageCategoryDtoEnvelope](docs/WebPageCategoryDtoEnvelope.md)
 - [WebPageCategoryDtoListEnvelope](docs/WebPageCategoryDtoListEnvelope.md)
 - [WebPageCategoryUpdateDto](docs/WebPageCategoryUpdateDto.md)
 - [WebPageCreateDto](docs/WebPageCreateDto.md)
 - [WebPageDto](docs/WebPageDto.md)
 - [WebPageDtoEnvelope](docs/WebPageDtoEnvelope.md)
 - [WebPageDtoListEnvelope](docs/WebPageDtoListEnvelope.md)
 - [WebPageTagCreateDto](docs/WebPageTagCreateDto.md)
 - [WebPageTagDto](docs/WebPageTagDto.md)
 - [WebPageTagDtoEnvelope](docs/WebPageTagDtoEnvelope.md)
 - [WebPageTagDtoListEnvelope](docs/WebPageTagDtoListEnvelope.md)
 - [WebPageTagUpdateDto](docs/WebPageTagUpdateDto.md)
 - [WebPageUpdateDto](docs/WebPageUpdateDto.md)
 - [WebPortalCreateDto](docs/WebPortalCreateDto.md)
 - [WebPortalDto](docs/WebPortalDto.md)
 - [WebPortalDtoEnvelope](docs/WebPortalDtoEnvelope.md)
 - [WebPortalDtoListEnvelope](docs/WebPortalDtoListEnvelope.md)
 - [WebPortalUpdateDto](docs/WebPortalUpdateDto.md)
 - [WebTemplateCreateDto](docs/WebTemplateCreateDto.md)
 - [WebTemplateDto](docs/WebTemplateDto.md)
 - [WebTemplateDtoEnvelope](docs/WebTemplateDtoEnvelope.md)
 - [WebTemplateDtoListEnvelope](docs/WebTemplateDtoListEnvelope.md)
 - [WebTemplateUpdateDto](docs/WebTemplateUpdateDto.md)


## Documentation For Authorization

 All endpoints do not require authorization.

