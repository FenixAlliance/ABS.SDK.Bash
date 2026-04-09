#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# ! Generator version: 7.9.0
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#
# This is a Bash client for ContentService.
#
# LICENSE:
# https://fenix-alliance.com.co/Legal/Policies/eula
#
# CONTACT:
# support@fenix-alliance.com
#
# MORE INFORMATION:
# 
#

# For improved pattern matching in case statements
shopt -s extglob

###############################################################################
#
# Make sure Bash is at least in version 4.3
#
###############################################################################
if ! ( (("${BASH_VERSION:0:1}" == "4")) && (("${BASH_VERSION:2:1}" >= "3")) ) \
  && ! (("${BASH_VERSION:0:1}" >= "5")); then
    echo ""
    echo "Sorry - your Bash version is ${BASH_VERSION}"
    echo ""
    echo "You need at least Bash 4.3 to run this script."
    echo ""
    exit 1
fi

###############################################################################
#
# Global variables
#
###############################################################################

##
# The filename of this script for help messages
script_name=$(basename "$0")

##
# Map for headers passed after operation as KEY:VALUE
declare -A header_arguments


##
# Map for operation parameters passed after operation as PARAMETER=VALUE
# These will be mapped to appropriate path or query parameters
# The values in operation_parameters are arrays, so that multiple values
# can be provided for the same parameter if allowed by API specification
declare -A operation_parameters

##
# Declare colors with autodetection if output is terminal
if [ -t 1 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    MAGENTA="$(tput setaf 5)"
    CYAN="$(tput setaf 6)"
    WHITE="$(tput setaf 7)"
    BOLD="$(tput bold)"
    OFF="$(tput sgr0)"
else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    MAGENTA=""
    CYAN=""
    WHITE=""
    BOLD=""
    OFF=""
fi

declare -a result_color_table=( "$WHITE" "$WHITE" "$GREEN" "$YELLOW" "$WHITE" "$MAGENTA" "$WHITE" )

##
# This array stores the minimum number of required occurrences for parameter
# 0 - optional
# 1 - required
declare -A operation_parameters_minimum_occurrences
operation_parameters_minimum_occurrences["countBlogPostsByAuthorAsync:::authorId"]=1
operation_parameters_minimum_occurrences["countBlogPostsByAuthorAsync:::api-version"]=0
operation_parameters_minimum_occurrences["countBlogPostsByAuthorAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getBlogAuthorByIdAsync:::authorId"]=1
operation_parameters_minimum_occurrences["getBlogAuthorByIdAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getBlogAuthorByIdAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getBlogAuthorsAsync:::tenantId"]=0
operation_parameters_minimum_occurrences["getBlogAuthorsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getBlogAuthorsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getBlogPostsByAuthorAsync:::authorId"]=1
operation_parameters_minimum_occurrences["getBlogPostsByAuthorAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getBlogPostsByAuthorAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["countBlogPostCategoriesAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["countBlogPostCategoriesAsync:::api-version"]=0
operation_parameters_minimum_occurrences["countBlogPostCategoriesAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createBlogPostCategoryAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["createBlogPostCategoryAsync:::api-version"]=0
operation_parameters_minimum_occurrences["createBlogPostCategoryAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createBlogPostCategoryAsync:::BlogPostCategoryCreateDto"]=0
operation_parameters_minimum_occurrences["deleteBlogPostCategoryAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["deleteBlogPostCategoryAsync:::blogPostCategoryId"]=1
operation_parameters_minimum_occurrences["deleteBlogPostCategoryAsync:::api-version"]=0
operation_parameters_minimum_occurrences["deleteBlogPostCategoryAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getBlogPostCategoriesAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getBlogPostCategoriesAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getBlogPostCategoriesAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getBlogPostCategoryByIdAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getBlogPostCategoryByIdAsync:::blogPostCategoryId"]=1
operation_parameters_minimum_occurrences["getBlogPostCategoryByIdAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getBlogPostCategoryByIdAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateBlogPostCategoryAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["updateBlogPostCategoryAsync:::blogPostCategoryId"]=1
operation_parameters_minimum_occurrences["updateBlogPostCategoryAsync:::api-version"]=0
operation_parameters_minimum_occurrences["updateBlogPostCategoryAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateBlogPostCategoryAsync:::BlogPostCategoryUpdateDto"]=0
operation_parameters_minimum_occurrences["createBlogPostTagAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["createBlogPostTagAsync:::api-version"]=0
operation_parameters_minimum_occurrences["createBlogPostTagAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createBlogPostTagAsync:::BlogPostTagCreateDto"]=0
operation_parameters_minimum_occurrences["deleteBlogPostTagAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["deleteBlogPostTagAsync:::blogPostTagId"]=1
operation_parameters_minimum_occurrences["deleteBlogPostTagAsync:::api-version"]=0
operation_parameters_minimum_occurrences["deleteBlogPostTagAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getBlogPostTagByIdAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getBlogPostTagByIdAsync:::blogPostTagId"]=1
operation_parameters_minimum_occurrences["getBlogPostTagByIdAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getBlogPostTagByIdAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getBlogPostTagsAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getBlogPostTagsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getBlogPostTagsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateBlogPostTagAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["updateBlogPostTagAsync:::blogPostTagId"]=1
operation_parameters_minimum_occurrences["updateBlogPostTagAsync:::api-version"]=0
operation_parameters_minimum_occurrences["updateBlogPostTagAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateBlogPostTagAsync:::BlogPostTagUpdateDto"]=0
operation_parameters_minimum_occurrences["createBlogPostAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["createBlogPostAsync:::BlogPostCreateDto"]=0
operation_parameters_minimum_occurrences["createCategoryForBlogPostAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["createCategoryForBlogPostAsync:::blogPostId"]=1
operation_parameters_minimum_occurrences["createCategoryForBlogPostAsync:::BlogPostCategoryCreateDto"]=0
operation_parameters_minimum_occurrences["createCommentForBlogPostAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["createCommentForBlogPostAsync:::blogPostId"]=1
operation_parameters_minimum_occurrences["createCommentForBlogPostAsync:::BlogPostCommentCreateDto"]=0
operation_parameters_minimum_occurrences["createTagForBlogPostAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["createTagForBlogPostAsync:::blogPostId"]=1
operation_parameters_minimum_occurrences["createTagForBlogPostAsync:::BlogPostTagCreateDto"]=0
operation_parameters_minimum_occurrences["deleteBlogPostAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["deleteBlogPostAsync:::blogPostId"]=1
operation_parameters_minimum_occurrences["deleteCommentFromBlogPostAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["deleteCommentFromBlogPostAsync:::blogPostId"]=1
operation_parameters_minimum_occurrences["deleteCommentFromBlogPostAsync:::commentId"]=1
operation_parameters_minimum_occurrences["getBlogPostByIdAsync:::blogPostId"]=1
operation_parameters_minimum_occurrences["getBlogPostsAsync:::tenantId"]=0
operation_parameters_minimum_occurrences["getBlogPostsCountAsync:::tenantId"]=0
operation_parameters_minimum_occurrences["getCategoriesForBlogPostAsync:::blogPostId"]=1
operation_parameters_minimum_occurrences["getCommentsForBlogPostAsync:::blogPostId"]=1
operation_parameters_minimum_occurrences["getRepliesForCommentAsync:::commentId"]=1
operation_parameters_minimum_occurrences["getRepliesForCommentAsync:::blogPostId"]=1
operation_parameters_minimum_occurrences["getTagsForBlogPostAsync:::blogPostId"]=1
operation_parameters_minimum_occurrences["relateCategoryToBlogPostAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["relateCategoryToBlogPostAsync:::blogPostId"]=1
operation_parameters_minimum_occurrences["relateCategoryToBlogPostAsync:::categoryId"]=1
operation_parameters_minimum_occurrences["relateTagToBlogPostAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["relateTagToBlogPostAsync:::blogPostId"]=1
operation_parameters_minimum_occurrences["relateTagToBlogPostAsync:::tagId"]=1
operation_parameters_minimum_occurrences["replyToCommentAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["replyToCommentAsync:::blogPostId"]=1
operation_parameters_minimum_occurrences["replyToCommentAsync:::commentId"]=1
operation_parameters_minimum_occurrences["replyToCommentAsync:::BlogPostCommentCreateDto"]=0
operation_parameters_minimum_occurrences["unrelateCategoryFromBlogPostAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["unrelateCategoryFromBlogPostAsync:::blogPostId"]=1
operation_parameters_minimum_occurrences["unrelateCategoryFromBlogPostAsync:::categoryId"]=1
operation_parameters_minimum_occurrences["unrelateTagFromBlogPostAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["unrelateTagFromBlogPostAsync:::blogPostId"]=1
operation_parameters_minimum_occurrences["unrelateTagFromBlogPostAsync:::tagId"]=1
operation_parameters_minimum_occurrences["updateBlogPostAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["updateBlogPostAsync:::blogPostId"]=1
operation_parameters_minimum_occurrences["updateBlogPostAsync:::BlogPostUpdateDto"]=0
operation_parameters_minimum_occurrences["getBusinessDomainByIdAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getBusinessDomainByIdAsync:::businessDomainId"]=1
operation_parameters_minimum_occurrences["getBusinessDomainByIdAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getBusinessDomainByIdAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getBusinessDomainsAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getBusinessDomainsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getBusinessDomainsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getBusinessDomainsCountAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getBusinessDomainsCountAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getBusinessDomainsCountAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["forgotPasswordPost:::ForgotPasswordRequest"]=1
operation_parameters_minimum_occurrences["loginPost:::LoginRequest"]=1
operation_parameters_minimum_occurrences["loginPost:::useCookies"]=0
operation_parameters_minimum_occurrences["loginPost:::useSessionCookies"]=0
operation_parameters_minimum_occurrences["manage2faPost:::TwoFactorRequest"]=1
operation_parameters_minimum_occurrences["manageInfoPost:::InfoRequest"]=1
operation_parameters_minimum_occurrences["mapIdentityApiConfirmEmail:::userId"]=1
operation_parameters_minimum_occurrences["mapIdentityApiConfirmEmail:::code"]=1
operation_parameters_minimum_occurrences["mapIdentityApiConfirmEmail:::changedEmail"]=0
operation_parameters_minimum_occurrences["refreshPost:::RefreshRequest"]=1
operation_parameters_minimum_occurrences["registerPost:::RegisterRequest"]=1
operation_parameters_minimum_occurrences["resendConfirmationEmailPost:::ResendConfirmationEmailRequest"]=1
operation_parameters_minimum_occurrences["resetPasswordPost:::ResetPasswordRequest"]=1
operation_parameters_minimum_occurrences["createWebPortalAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["createWebPortalAsync:::api-version"]=0
operation_parameters_minimum_occurrences["createWebPortalAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createWebPortalAsync:::WebPortalCreateDto"]=0
operation_parameters_minimum_occurrences["deleteWebPortalAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["deleteWebPortalAsync:::portalId"]=1
operation_parameters_minimum_occurrences["deleteWebPortalAsync:::api-version"]=0
operation_parameters_minimum_occurrences["deleteWebPortalAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCurrentWebPortalAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCurrentWebPortalAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCurrentWebPortalOptionsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCurrentWebPortalOptionsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getRootWebPortalAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getRootWebPortalAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getWebPortalByIdAsync:::portalId"]=1
operation_parameters_minimum_occurrences["getWebPortalByIdAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getWebPortalByIdAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getWebPortalOptionsAsync:::portalId"]=1
operation_parameters_minimum_occurrences["getWebPortalOptionsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getWebPortalOptionsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getWebPortalSettingsAsync:::portalId"]=1
operation_parameters_minimum_occurrences["getWebPortalSettingsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getWebPortalSettingsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["initializeCurrentWebPortalAsync:::api-version"]=0
operation_parameters_minimum_occurrences["initializeCurrentWebPortalAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["patchWebPortalAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["patchWebPortalAsync:::portalId"]=1
operation_parameters_minimum_occurrences["patchWebPortalAsync:::api-version"]=0
operation_parameters_minimum_occurrences["patchWebPortalAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["patchWebPortalAsync:::Operation"]=0
operation_parameters_minimum_occurrences["searchWebPortalAsync:::domain"]=1
operation_parameters_minimum_occurrences["searchWebPortalAsync:::api-version"]=0
operation_parameters_minimum_occurrences["searchWebPortalAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateWebPortalAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["updateWebPortalAsync:::portalId"]=1
operation_parameters_minimum_occurrences["updateWebPortalAsync:::api-version"]=0
operation_parameters_minimum_occurrences["updateWebPortalAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateWebPortalAsync:::WebPortalUpdateDto"]=0
operation_parameters_minimum_occurrences["getLatestCurrencyRatesModelAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getLatestCurrencyRatesModelAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["countWebContentsAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["countWebContentsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["countWebContentsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createWebContentAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["createWebContentAsync:::api-version"]=0
operation_parameters_minimum_occurrences["createWebContentAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createWebContentAsync:::WebContentCreateDto"]=0
operation_parameters_minimum_occurrences["deleteWebContentAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["deleteWebContentAsync:::webContentId"]=1
operation_parameters_minimum_occurrences["deleteWebContentAsync:::api-version"]=0
operation_parameters_minimum_occurrences["deleteWebContentAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getWebContentByIdAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getWebContentByIdAsync:::webContentId"]=1
operation_parameters_minimum_occurrences["getWebContentByIdAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getWebContentByIdAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getWebContentsAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getWebContentsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getWebContentsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateWebContentAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["updateWebContentAsync:::webContentId"]=1
operation_parameters_minimum_occurrences["updateWebContentAsync:::api-version"]=0
operation_parameters_minimum_occurrences["updateWebContentAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateWebContentAsync:::WebContentUpdateDto"]=0
operation_parameters_minimum_occurrences["createWebPageCategoryAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["createWebPageCategoryAsync:::api-version"]=0
operation_parameters_minimum_occurrences["createWebPageCategoryAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createWebPageCategoryAsync:::WebPageCategoryCreateDto"]=0
operation_parameters_minimum_occurrences["deleteWebPageCategoryAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["deleteWebPageCategoryAsync:::webPageCategoryId"]=1
operation_parameters_minimum_occurrences["deleteWebPageCategoryAsync:::api-version"]=0
operation_parameters_minimum_occurrences["deleteWebPageCategoryAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getWebPageCategoriesAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getWebPageCategoriesAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getWebPageCategoriesAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getWebPageCategoryByIdAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getWebPageCategoryByIdAsync:::webPageCategoryId"]=1
operation_parameters_minimum_occurrences["getWebPageCategoryByIdAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getWebPageCategoryByIdAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateWebPageCategoryAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["updateWebPageCategoryAsync:::webPageCategoryId"]=1
operation_parameters_minimum_occurrences["updateWebPageCategoryAsync:::api-version"]=0
operation_parameters_minimum_occurrences["updateWebPageCategoryAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateWebPageCategoryAsync:::WebPageCategoryUpdateDto"]=0
operation_parameters_minimum_occurrences["createWebPageTagAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["createWebPageTagAsync:::api-version"]=0
operation_parameters_minimum_occurrences["createWebPageTagAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createWebPageTagAsync:::WebPageTagCreateDto"]=0
operation_parameters_minimum_occurrences["deleteWebPageTagAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["deleteWebPageTagAsync:::webPageTagId"]=1
operation_parameters_minimum_occurrences["deleteWebPageTagAsync:::api-version"]=0
operation_parameters_minimum_occurrences["deleteWebPageTagAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getWebPageTagByIdAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getWebPageTagByIdAsync:::webPageTagId"]=1
operation_parameters_minimum_occurrences["getWebPageTagByIdAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getWebPageTagByIdAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getWebPageTagsAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getWebPageTagsAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getWebPageTagsAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateWebPageTagAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["updateWebPageTagAsync:::webPageTagId"]=1
operation_parameters_minimum_occurrences["updateWebPageTagAsync:::api-version"]=0
operation_parameters_minimum_occurrences["updateWebPageTagAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateWebPageTagAsync:::WebPageTagUpdateDto"]=0
operation_parameters_minimum_occurrences["countWebPagesAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["countWebPagesAsync:::api-version"]=0
operation_parameters_minimum_occurrences["countWebPagesAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createWebPageAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["createWebPageAsync:::api-version"]=0
operation_parameters_minimum_occurrences["createWebPageAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createWebPageAsync:::WebPageCreateDto"]=0
operation_parameters_minimum_occurrences["createWebPageCategoryRelationAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["createWebPageCategoryRelationAsync:::webPageId"]=1
operation_parameters_minimum_occurrences["createWebPageCategoryRelationAsync:::api-version"]=0
operation_parameters_minimum_occurrences["createWebPageCategoryRelationAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createWebPageCategoryRelationAsync:::WebPageCategoryCreateDto"]=0
operation_parameters_minimum_occurrences["createWebPageTagRelationAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["createWebPageTagRelationAsync:::webPageId"]=1
operation_parameters_minimum_occurrences["createWebPageTagRelationAsync:::api-version"]=0
operation_parameters_minimum_occurrences["createWebPageTagRelationAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createWebPageTagRelationAsync:::WebPageTagCreateDto"]=0
operation_parameters_minimum_occurrences["deleteWebPageAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["deleteWebPageAsync:::webPageId"]=1
operation_parameters_minimum_occurrences["deleteWebPageAsync:::api-version"]=0
operation_parameters_minimum_occurrences["deleteWebPageAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getCategoriesByWebPageAsync:::webPageId"]=1
operation_parameters_minimum_occurrences["getCategoriesByWebPageAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getCategoriesByWebPageAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getTagsByWebPageAsync:::webPageId"]=1
operation_parameters_minimum_occurrences["getTagsByWebPageAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getTagsByWebPageAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getWebPageByIdAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getWebPageByIdAsync:::webPageId"]=1
operation_parameters_minimum_occurrences["getWebPageByIdAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getWebPageByIdAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getWebPagesAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getWebPagesAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getWebPagesAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["relateWebPageToCategoryAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["relateWebPageToCategoryAsync:::webPageId"]=1
operation_parameters_minimum_occurrences["relateWebPageToCategoryAsync:::categoryId"]=1
operation_parameters_minimum_occurrences["relateWebPageToCategoryAsync:::api-version"]=0
operation_parameters_minimum_occurrences["relateWebPageToCategoryAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["relateWebPageToTagAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["relateWebPageToTagAsync:::webPageId"]=1
operation_parameters_minimum_occurrences["relateWebPageToTagAsync:::tagId"]=1
operation_parameters_minimum_occurrences["relateWebPageToTagAsync:::api-version"]=0
operation_parameters_minimum_occurrences["relateWebPageToTagAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["unrelateWebPageCategoryAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["unrelateWebPageCategoryAsync:::webPageId"]=1
operation_parameters_minimum_occurrences["unrelateWebPageCategoryAsync:::categoryId"]=1
operation_parameters_minimum_occurrences["unrelateWebPageCategoryAsync:::api-version"]=0
operation_parameters_minimum_occurrences["unrelateWebPageCategoryAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["unrelateWebPageTagAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["unrelateWebPageTagAsync:::webPageId"]=1
operation_parameters_minimum_occurrences["unrelateWebPageTagAsync:::tagId"]=1
operation_parameters_minimum_occurrences["unrelateWebPageTagAsync:::api-version"]=0
operation_parameters_minimum_occurrences["unrelateWebPageTagAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateWebPageAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["updateWebPageAsync:::webPageId"]=1
operation_parameters_minimum_occurrences["updateWebPageAsync:::api-version"]=0
operation_parameters_minimum_occurrences["updateWebPageAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateWebPageAsync:::WebPageUpdateDto"]=0
operation_parameters_minimum_occurrences["countWebTemplatesAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["countWebTemplatesAsync:::api-version"]=0
operation_parameters_minimum_occurrences["countWebTemplatesAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createWebTemplateAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["createWebTemplateAsync:::api-version"]=0
operation_parameters_minimum_occurrences["createWebTemplateAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["createWebTemplateAsync:::WebTemplateCreateDto"]=0
operation_parameters_minimum_occurrences["deleteWebTemplateAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["deleteWebTemplateAsync:::webTemplateId"]=1
operation_parameters_minimum_occurrences["deleteWebTemplateAsync:::api-version"]=0
operation_parameters_minimum_occurrences["deleteWebTemplateAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getWebTemplateByIdAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getWebTemplateByIdAsync:::webTemplateId"]=1
operation_parameters_minimum_occurrences["getWebTemplateByIdAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getWebTemplateByIdAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["getWebTemplatesAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["getWebTemplatesAsync:::api-version"]=0
operation_parameters_minimum_occurrences["getWebTemplatesAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateWebTemplateAsync:::tenantId"]=1
operation_parameters_minimum_occurrences["updateWebTemplateAsync:::webTemplateId"]=1
operation_parameters_minimum_occurrences["updateWebTemplateAsync:::api-version"]=0
operation_parameters_minimum_occurrences["updateWebTemplateAsync:::x-api-version"]=0
operation_parameters_minimum_occurrences["updateWebTemplateAsync:::WebTemplateUpdateDto"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["countBlogPostsByAuthorAsync:::authorId"]=0
operation_parameters_maximum_occurrences["countBlogPostsByAuthorAsync:::api-version"]=0
operation_parameters_maximum_occurrences["countBlogPostsByAuthorAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getBlogAuthorByIdAsync:::authorId"]=0
operation_parameters_maximum_occurrences["getBlogAuthorByIdAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getBlogAuthorByIdAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getBlogAuthorsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getBlogAuthorsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getBlogAuthorsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getBlogPostsByAuthorAsync:::authorId"]=0
operation_parameters_maximum_occurrences["getBlogPostsByAuthorAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getBlogPostsByAuthorAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["countBlogPostCategoriesAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["countBlogPostCategoriesAsync:::api-version"]=0
operation_parameters_maximum_occurrences["countBlogPostCategoriesAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createBlogPostCategoryAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createBlogPostCategoryAsync:::api-version"]=0
operation_parameters_maximum_occurrences["createBlogPostCategoryAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createBlogPostCategoryAsync:::BlogPostCategoryCreateDto"]=0
operation_parameters_maximum_occurrences["deleteBlogPostCategoryAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["deleteBlogPostCategoryAsync:::blogPostCategoryId"]=0
operation_parameters_maximum_occurrences["deleteBlogPostCategoryAsync:::api-version"]=0
operation_parameters_maximum_occurrences["deleteBlogPostCategoryAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getBlogPostCategoriesAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getBlogPostCategoriesAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getBlogPostCategoriesAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getBlogPostCategoryByIdAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getBlogPostCategoryByIdAsync:::blogPostCategoryId"]=0
operation_parameters_maximum_occurrences["getBlogPostCategoryByIdAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getBlogPostCategoryByIdAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateBlogPostCategoryAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["updateBlogPostCategoryAsync:::blogPostCategoryId"]=0
operation_parameters_maximum_occurrences["updateBlogPostCategoryAsync:::api-version"]=0
operation_parameters_maximum_occurrences["updateBlogPostCategoryAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateBlogPostCategoryAsync:::BlogPostCategoryUpdateDto"]=0
operation_parameters_maximum_occurrences["createBlogPostTagAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createBlogPostTagAsync:::api-version"]=0
operation_parameters_maximum_occurrences["createBlogPostTagAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createBlogPostTagAsync:::BlogPostTagCreateDto"]=0
operation_parameters_maximum_occurrences["deleteBlogPostTagAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["deleteBlogPostTagAsync:::blogPostTagId"]=0
operation_parameters_maximum_occurrences["deleteBlogPostTagAsync:::api-version"]=0
operation_parameters_maximum_occurrences["deleteBlogPostTagAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getBlogPostTagByIdAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getBlogPostTagByIdAsync:::blogPostTagId"]=0
operation_parameters_maximum_occurrences["getBlogPostTagByIdAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getBlogPostTagByIdAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getBlogPostTagsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getBlogPostTagsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getBlogPostTagsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateBlogPostTagAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["updateBlogPostTagAsync:::blogPostTagId"]=0
operation_parameters_maximum_occurrences["updateBlogPostTagAsync:::api-version"]=0
operation_parameters_maximum_occurrences["updateBlogPostTagAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateBlogPostTagAsync:::BlogPostTagUpdateDto"]=0
operation_parameters_maximum_occurrences["createBlogPostAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createBlogPostAsync:::BlogPostCreateDto"]=0
operation_parameters_maximum_occurrences["createCategoryForBlogPostAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createCategoryForBlogPostAsync:::blogPostId"]=0
operation_parameters_maximum_occurrences["createCategoryForBlogPostAsync:::BlogPostCategoryCreateDto"]=0
operation_parameters_maximum_occurrences["createCommentForBlogPostAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createCommentForBlogPostAsync:::blogPostId"]=0
operation_parameters_maximum_occurrences["createCommentForBlogPostAsync:::BlogPostCommentCreateDto"]=0
operation_parameters_maximum_occurrences["createTagForBlogPostAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createTagForBlogPostAsync:::blogPostId"]=0
operation_parameters_maximum_occurrences["createTagForBlogPostAsync:::BlogPostTagCreateDto"]=0
operation_parameters_maximum_occurrences["deleteBlogPostAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["deleteBlogPostAsync:::blogPostId"]=0
operation_parameters_maximum_occurrences["deleteCommentFromBlogPostAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["deleteCommentFromBlogPostAsync:::blogPostId"]=0
operation_parameters_maximum_occurrences["deleteCommentFromBlogPostAsync:::commentId"]=0
operation_parameters_maximum_occurrences["getBlogPostByIdAsync:::blogPostId"]=0
operation_parameters_maximum_occurrences["getBlogPostsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getBlogPostsCountAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getCategoriesForBlogPostAsync:::blogPostId"]=0
operation_parameters_maximum_occurrences["getCommentsForBlogPostAsync:::blogPostId"]=0
operation_parameters_maximum_occurrences["getRepliesForCommentAsync:::commentId"]=0
operation_parameters_maximum_occurrences["getRepliesForCommentAsync:::blogPostId"]=0
operation_parameters_maximum_occurrences["getTagsForBlogPostAsync:::blogPostId"]=0
operation_parameters_maximum_occurrences["relateCategoryToBlogPostAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["relateCategoryToBlogPostAsync:::blogPostId"]=0
operation_parameters_maximum_occurrences["relateCategoryToBlogPostAsync:::categoryId"]=0
operation_parameters_maximum_occurrences["relateTagToBlogPostAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["relateTagToBlogPostAsync:::blogPostId"]=0
operation_parameters_maximum_occurrences["relateTagToBlogPostAsync:::tagId"]=0
operation_parameters_maximum_occurrences["replyToCommentAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["replyToCommentAsync:::blogPostId"]=0
operation_parameters_maximum_occurrences["replyToCommentAsync:::commentId"]=0
operation_parameters_maximum_occurrences["replyToCommentAsync:::BlogPostCommentCreateDto"]=0
operation_parameters_maximum_occurrences["unrelateCategoryFromBlogPostAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["unrelateCategoryFromBlogPostAsync:::blogPostId"]=0
operation_parameters_maximum_occurrences["unrelateCategoryFromBlogPostAsync:::categoryId"]=0
operation_parameters_maximum_occurrences["unrelateTagFromBlogPostAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["unrelateTagFromBlogPostAsync:::blogPostId"]=0
operation_parameters_maximum_occurrences["unrelateTagFromBlogPostAsync:::tagId"]=0
operation_parameters_maximum_occurrences["updateBlogPostAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["updateBlogPostAsync:::blogPostId"]=0
operation_parameters_maximum_occurrences["updateBlogPostAsync:::BlogPostUpdateDto"]=0
operation_parameters_maximum_occurrences["getBusinessDomainByIdAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getBusinessDomainByIdAsync:::businessDomainId"]=0
operation_parameters_maximum_occurrences["getBusinessDomainByIdAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getBusinessDomainByIdAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getBusinessDomainsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getBusinessDomainsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getBusinessDomainsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getBusinessDomainsCountAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getBusinessDomainsCountAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getBusinessDomainsCountAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["forgotPasswordPost:::ForgotPasswordRequest"]=0
operation_parameters_maximum_occurrences["loginPost:::LoginRequest"]=0
operation_parameters_maximum_occurrences["loginPost:::useCookies"]=0
operation_parameters_maximum_occurrences["loginPost:::useSessionCookies"]=0
operation_parameters_maximum_occurrences["manage2faPost:::TwoFactorRequest"]=0
operation_parameters_maximum_occurrences["manageInfoPost:::InfoRequest"]=0
operation_parameters_maximum_occurrences["mapIdentityApiConfirmEmail:::userId"]=0
operation_parameters_maximum_occurrences["mapIdentityApiConfirmEmail:::code"]=0
operation_parameters_maximum_occurrences["mapIdentityApiConfirmEmail:::changedEmail"]=0
operation_parameters_maximum_occurrences["refreshPost:::RefreshRequest"]=0
operation_parameters_maximum_occurrences["registerPost:::RegisterRequest"]=0
operation_parameters_maximum_occurrences["resendConfirmationEmailPost:::ResendConfirmationEmailRequest"]=0
operation_parameters_maximum_occurrences["resetPasswordPost:::ResetPasswordRequest"]=0
operation_parameters_maximum_occurrences["createWebPortalAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createWebPortalAsync:::api-version"]=0
operation_parameters_maximum_occurrences["createWebPortalAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createWebPortalAsync:::WebPortalCreateDto"]=0
operation_parameters_maximum_occurrences["deleteWebPortalAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["deleteWebPortalAsync:::portalId"]=0
operation_parameters_maximum_occurrences["deleteWebPortalAsync:::api-version"]=0
operation_parameters_maximum_occurrences["deleteWebPortalAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCurrentWebPortalAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCurrentWebPortalAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCurrentWebPortalOptionsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCurrentWebPortalOptionsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getRootWebPortalAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getRootWebPortalAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getWebPortalByIdAsync:::portalId"]=0
operation_parameters_maximum_occurrences["getWebPortalByIdAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getWebPortalByIdAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getWebPortalOptionsAsync:::portalId"]=0
operation_parameters_maximum_occurrences["getWebPortalOptionsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getWebPortalOptionsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getWebPortalSettingsAsync:::portalId"]=0
operation_parameters_maximum_occurrences["getWebPortalSettingsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getWebPortalSettingsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["initializeCurrentWebPortalAsync:::api-version"]=0
operation_parameters_maximum_occurrences["initializeCurrentWebPortalAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["patchWebPortalAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["patchWebPortalAsync:::portalId"]=0
operation_parameters_maximum_occurrences["patchWebPortalAsync:::api-version"]=0
operation_parameters_maximum_occurrences["patchWebPortalAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["patchWebPortalAsync:::Operation"]=0
operation_parameters_maximum_occurrences["searchWebPortalAsync:::domain"]=0
operation_parameters_maximum_occurrences["searchWebPortalAsync:::api-version"]=0
operation_parameters_maximum_occurrences["searchWebPortalAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateWebPortalAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["updateWebPortalAsync:::portalId"]=0
operation_parameters_maximum_occurrences["updateWebPortalAsync:::api-version"]=0
operation_parameters_maximum_occurrences["updateWebPortalAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateWebPortalAsync:::WebPortalUpdateDto"]=0
operation_parameters_maximum_occurrences["getLatestCurrencyRatesModelAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getLatestCurrencyRatesModelAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["countWebContentsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["countWebContentsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["countWebContentsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createWebContentAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createWebContentAsync:::api-version"]=0
operation_parameters_maximum_occurrences["createWebContentAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createWebContentAsync:::WebContentCreateDto"]=0
operation_parameters_maximum_occurrences["deleteWebContentAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["deleteWebContentAsync:::webContentId"]=0
operation_parameters_maximum_occurrences["deleteWebContentAsync:::api-version"]=0
operation_parameters_maximum_occurrences["deleteWebContentAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getWebContentByIdAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getWebContentByIdAsync:::webContentId"]=0
operation_parameters_maximum_occurrences["getWebContentByIdAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getWebContentByIdAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getWebContentsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getWebContentsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getWebContentsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateWebContentAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["updateWebContentAsync:::webContentId"]=0
operation_parameters_maximum_occurrences["updateWebContentAsync:::api-version"]=0
operation_parameters_maximum_occurrences["updateWebContentAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateWebContentAsync:::WebContentUpdateDto"]=0
operation_parameters_maximum_occurrences["createWebPageCategoryAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createWebPageCategoryAsync:::api-version"]=0
operation_parameters_maximum_occurrences["createWebPageCategoryAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createWebPageCategoryAsync:::WebPageCategoryCreateDto"]=0
operation_parameters_maximum_occurrences["deleteWebPageCategoryAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["deleteWebPageCategoryAsync:::webPageCategoryId"]=0
operation_parameters_maximum_occurrences["deleteWebPageCategoryAsync:::api-version"]=0
operation_parameters_maximum_occurrences["deleteWebPageCategoryAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getWebPageCategoriesAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getWebPageCategoriesAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getWebPageCategoriesAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getWebPageCategoryByIdAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getWebPageCategoryByIdAsync:::webPageCategoryId"]=0
operation_parameters_maximum_occurrences["getWebPageCategoryByIdAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getWebPageCategoryByIdAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateWebPageCategoryAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["updateWebPageCategoryAsync:::webPageCategoryId"]=0
operation_parameters_maximum_occurrences["updateWebPageCategoryAsync:::api-version"]=0
operation_parameters_maximum_occurrences["updateWebPageCategoryAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateWebPageCategoryAsync:::WebPageCategoryUpdateDto"]=0
operation_parameters_maximum_occurrences["createWebPageTagAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createWebPageTagAsync:::api-version"]=0
operation_parameters_maximum_occurrences["createWebPageTagAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createWebPageTagAsync:::WebPageTagCreateDto"]=0
operation_parameters_maximum_occurrences["deleteWebPageTagAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["deleteWebPageTagAsync:::webPageTagId"]=0
operation_parameters_maximum_occurrences["deleteWebPageTagAsync:::api-version"]=0
operation_parameters_maximum_occurrences["deleteWebPageTagAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getWebPageTagByIdAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getWebPageTagByIdAsync:::webPageTagId"]=0
operation_parameters_maximum_occurrences["getWebPageTagByIdAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getWebPageTagByIdAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getWebPageTagsAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getWebPageTagsAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getWebPageTagsAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateWebPageTagAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["updateWebPageTagAsync:::webPageTagId"]=0
operation_parameters_maximum_occurrences["updateWebPageTagAsync:::api-version"]=0
operation_parameters_maximum_occurrences["updateWebPageTagAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateWebPageTagAsync:::WebPageTagUpdateDto"]=0
operation_parameters_maximum_occurrences["countWebPagesAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["countWebPagesAsync:::api-version"]=0
operation_parameters_maximum_occurrences["countWebPagesAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createWebPageAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createWebPageAsync:::api-version"]=0
operation_parameters_maximum_occurrences["createWebPageAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createWebPageAsync:::WebPageCreateDto"]=0
operation_parameters_maximum_occurrences["createWebPageCategoryRelationAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createWebPageCategoryRelationAsync:::webPageId"]=0
operation_parameters_maximum_occurrences["createWebPageCategoryRelationAsync:::api-version"]=0
operation_parameters_maximum_occurrences["createWebPageCategoryRelationAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createWebPageCategoryRelationAsync:::WebPageCategoryCreateDto"]=0
operation_parameters_maximum_occurrences["createWebPageTagRelationAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createWebPageTagRelationAsync:::webPageId"]=0
operation_parameters_maximum_occurrences["createWebPageTagRelationAsync:::api-version"]=0
operation_parameters_maximum_occurrences["createWebPageTagRelationAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createWebPageTagRelationAsync:::WebPageTagCreateDto"]=0
operation_parameters_maximum_occurrences["deleteWebPageAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["deleteWebPageAsync:::webPageId"]=0
operation_parameters_maximum_occurrences["deleteWebPageAsync:::api-version"]=0
operation_parameters_maximum_occurrences["deleteWebPageAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getCategoriesByWebPageAsync:::webPageId"]=0
operation_parameters_maximum_occurrences["getCategoriesByWebPageAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getCategoriesByWebPageAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getTagsByWebPageAsync:::webPageId"]=0
operation_parameters_maximum_occurrences["getTagsByWebPageAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getTagsByWebPageAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getWebPageByIdAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getWebPageByIdAsync:::webPageId"]=0
operation_parameters_maximum_occurrences["getWebPageByIdAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getWebPageByIdAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getWebPagesAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getWebPagesAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getWebPagesAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["relateWebPageToCategoryAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["relateWebPageToCategoryAsync:::webPageId"]=0
operation_parameters_maximum_occurrences["relateWebPageToCategoryAsync:::categoryId"]=0
operation_parameters_maximum_occurrences["relateWebPageToCategoryAsync:::api-version"]=0
operation_parameters_maximum_occurrences["relateWebPageToCategoryAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["relateWebPageToTagAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["relateWebPageToTagAsync:::webPageId"]=0
operation_parameters_maximum_occurrences["relateWebPageToTagAsync:::tagId"]=0
operation_parameters_maximum_occurrences["relateWebPageToTagAsync:::api-version"]=0
operation_parameters_maximum_occurrences["relateWebPageToTagAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["unrelateWebPageCategoryAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["unrelateWebPageCategoryAsync:::webPageId"]=0
operation_parameters_maximum_occurrences["unrelateWebPageCategoryAsync:::categoryId"]=0
operation_parameters_maximum_occurrences["unrelateWebPageCategoryAsync:::api-version"]=0
operation_parameters_maximum_occurrences["unrelateWebPageCategoryAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["unrelateWebPageTagAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["unrelateWebPageTagAsync:::webPageId"]=0
operation_parameters_maximum_occurrences["unrelateWebPageTagAsync:::tagId"]=0
operation_parameters_maximum_occurrences["unrelateWebPageTagAsync:::api-version"]=0
operation_parameters_maximum_occurrences["unrelateWebPageTagAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateWebPageAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["updateWebPageAsync:::webPageId"]=0
operation_parameters_maximum_occurrences["updateWebPageAsync:::api-version"]=0
operation_parameters_maximum_occurrences["updateWebPageAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateWebPageAsync:::WebPageUpdateDto"]=0
operation_parameters_maximum_occurrences["countWebTemplatesAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["countWebTemplatesAsync:::api-version"]=0
operation_parameters_maximum_occurrences["countWebTemplatesAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createWebTemplateAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["createWebTemplateAsync:::api-version"]=0
operation_parameters_maximum_occurrences["createWebTemplateAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["createWebTemplateAsync:::WebTemplateCreateDto"]=0
operation_parameters_maximum_occurrences["deleteWebTemplateAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["deleteWebTemplateAsync:::webTemplateId"]=0
operation_parameters_maximum_occurrences["deleteWebTemplateAsync:::api-version"]=0
operation_parameters_maximum_occurrences["deleteWebTemplateAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getWebTemplateByIdAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getWebTemplateByIdAsync:::webTemplateId"]=0
operation_parameters_maximum_occurrences["getWebTemplateByIdAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getWebTemplateByIdAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["getWebTemplatesAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["getWebTemplatesAsync:::api-version"]=0
operation_parameters_maximum_occurrences["getWebTemplatesAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateWebTemplateAsync:::tenantId"]=0
operation_parameters_maximum_occurrences["updateWebTemplateAsync:::webTemplateId"]=0
operation_parameters_maximum_occurrences["updateWebTemplateAsync:::api-version"]=0
operation_parameters_maximum_occurrences["updateWebTemplateAsync:::x-api-version"]=0
operation_parameters_maximum_occurrences["updateWebTemplateAsync:::WebTemplateUpdateDto"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["countBlogPostsByAuthorAsync:::authorId"]=""
operation_parameters_collection_type["countBlogPostsByAuthorAsync:::api-version"]=""
operation_parameters_collection_type["countBlogPostsByAuthorAsync:::x-api-version"]=""
operation_parameters_collection_type["getBlogAuthorByIdAsync:::authorId"]=""
operation_parameters_collection_type["getBlogAuthorByIdAsync:::api-version"]=""
operation_parameters_collection_type["getBlogAuthorByIdAsync:::x-api-version"]=""
operation_parameters_collection_type["getBlogAuthorsAsync:::tenantId"]=""
operation_parameters_collection_type["getBlogAuthorsAsync:::api-version"]=""
operation_parameters_collection_type["getBlogAuthorsAsync:::x-api-version"]=""
operation_parameters_collection_type["getBlogPostsByAuthorAsync:::authorId"]=""
operation_parameters_collection_type["getBlogPostsByAuthorAsync:::api-version"]=""
operation_parameters_collection_type["getBlogPostsByAuthorAsync:::x-api-version"]=""
operation_parameters_collection_type["countBlogPostCategoriesAsync:::tenantId"]=""
operation_parameters_collection_type["countBlogPostCategoriesAsync:::api-version"]=""
operation_parameters_collection_type["countBlogPostCategoriesAsync:::x-api-version"]=""
operation_parameters_collection_type["createBlogPostCategoryAsync:::tenantId"]=""
operation_parameters_collection_type["createBlogPostCategoryAsync:::api-version"]=""
operation_parameters_collection_type["createBlogPostCategoryAsync:::x-api-version"]=""
operation_parameters_collection_type["createBlogPostCategoryAsync:::BlogPostCategoryCreateDto"]=""
operation_parameters_collection_type["deleteBlogPostCategoryAsync:::tenantId"]=""
operation_parameters_collection_type["deleteBlogPostCategoryAsync:::blogPostCategoryId"]=""
operation_parameters_collection_type["deleteBlogPostCategoryAsync:::api-version"]=""
operation_parameters_collection_type["deleteBlogPostCategoryAsync:::x-api-version"]=""
operation_parameters_collection_type["getBlogPostCategoriesAsync:::tenantId"]=""
operation_parameters_collection_type["getBlogPostCategoriesAsync:::api-version"]=""
operation_parameters_collection_type["getBlogPostCategoriesAsync:::x-api-version"]=""
operation_parameters_collection_type["getBlogPostCategoryByIdAsync:::tenantId"]=""
operation_parameters_collection_type["getBlogPostCategoryByIdAsync:::blogPostCategoryId"]=""
operation_parameters_collection_type["getBlogPostCategoryByIdAsync:::api-version"]=""
operation_parameters_collection_type["getBlogPostCategoryByIdAsync:::x-api-version"]=""
operation_parameters_collection_type["updateBlogPostCategoryAsync:::tenantId"]=""
operation_parameters_collection_type["updateBlogPostCategoryAsync:::blogPostCategoryId"]=""
operation_parameters_collection_type["updateBlogPostCategoryAsync:::api-version"]=""
operation_parameters_collection_type["updateBlogPostCategoryAsync:::x-api-version"]=""
operation_parameters_collection_type["updateBlogPostCategoryAsync:::BlogPostCategoryUpdateDto"]=""
operation_parameters_collection_type["createBlogPostTagAsync:::tenantId"]=""
operation_parameters_collection_type["createBlogPostTagAsync:::api-version"]=""
operation_parameters_collection_type["createBlogPostTagAsync:::x-api-version"]=""
operation_parameters_collection_type["createBlogPostTagAsync:::BlogPostTagCreateDto"]=""
operation_parameters_collection_type["deleteBlogPostTagAsync:::tenantId"]=""
operation_parameters_collection_type["deleteBlogPostTagAsync:::blogPostTagId"]=""
operation_parameters_collection_type["deleteBlogPostTagAsync:::api-version"]=""
operation_parameters_collection_type["deleteBlogPostTagAsync:::x-api-version"]=""
operation_parameters_collection_type["getBlogPostTagByIdAsync:::tenantId"]=""
operation_parameters_collection_type["getBlogPostTagByIdAsync:::blogPostTagId"]=""
operation_parameters_collection_type["getBlogPostTagByIdAsync:::api-version"]=""
operation_parameters_collection_type["getBlogPostTagByIdAsync:::x-api-version"]=""
operation_parameters_collection_type["getBlogPostTagsAsync:::tenantId"]=""
operation_parameters_collection_type["getBlogPostTagsAsync:::api-version"]=""
operation_parameters_collection_type["getBlogPostTagsAsync:::x-api-version"]=""
operation_parameters_collection_type["updateBlogPostTagAsync:::tenantId"]=""
operation_parameters_collection_type["updateBlogPostTagAsync:::blogPostTagId"]=""
operation_parameters_collection_type["updateBlogPostTagAsync:::api-version"]=""
operation_parameters_collection_type["updateBlogPostTagAsync:::x-api-version"]=""
operation_parameters_collection_type["updateBlogPostTagAsync:::BlogPostTagUpdateDto"]=""
operation_parameters_collection_type["createBlogPostAsync:::tenantId"]=""
operation_parameters_collection_type["createBlogPostAsync:::BlogPostCreateDto"]=""
operation_parameters_collection_type["createCategoryForBlogPostAsync:::tenantId"]=""
operation_parameters_collection_type["createCategoryForBlogPostAsync:::blogPostId"]=""
operation_parameters_collection_type["createCategoryForBlogPostAsync:::BlogPostCategoryCreateDto"]=""
operation_parameters_collection_type["createCommentForBlogPostAsync:::tenantId"]=""
operation_parameters_collection_type["createCommentForBlogPostAsync:::blogPostId"]=""
operation_parameters_collection_type["createCommentForBlogPostAsync:::BlogPostCommentCreateDto"]=""
operation_parameters_collection_type["createTagForBlogPostAsync:::tenantId"]=""
operation_parameters_collection_type["createTagForBlogPostAsync:::blogPostId"]=""
operation_parameters_collection_type["createTagForBlogPostAsync:::BlogPostTagCreateDto"]=""
operation_parameters_collection_type["deleteBlogPostAsync:::tenantId"]=""
operation_parameters_collection_type["deleteBlogPostAsync:::blogPostId"]=""
operation_parameters_collection_type["deleteCommentFromBlogPostAsync:::tenantId"]=""
operation_parameters_collection_type["deleteCommentFromBlogPostAsync:::blogPostId"]=""
operation_parameters_collection_type["deleteCommentFromBlogPostAsync:::commentId"]=""
operation_parameters_collection_type["getBlogPostByIdAsync:::blogPostId"]=""
operation_parameters_collection_type["getBlogPostsAsync:::tenantId"]=""
operation_parameters_collection_type["getBlogPostsCountAsync:::tenantId"]=""
operation_parameters_collection_type["getCategoriesForBlogPostAsync:::blogPostId"]=""
operation_parameters_collection_type["getCommentsForBlogPostAsync:::blogPostId"]=""
operation_parameters_collection_type["getRepliesForCommentAsync:::commentId"]=""
operation_parameters_collection_type["getRepliesForCommentAsync:::blogPostId"]=""
operation_parameters_collection_type["getTagsForBlogPostAsync:::blogPostId"]=""
operation_parameters_collection_type["relateCategoryToBlogPostAsync:::tenantId"]=""
operation_parameters_collection_type["relateCategoryToBlogPostAsync:::blogPostId"]=""
operation_parameters_collection_type["relateCategoryToBlogPostAsync:::categoryId"]=""
operation_parameters_collection_type["relateTagToBlogPostAsync:::tenantId"]=""
operation_parameters_collection_type["relateTagToBlogPostAsync:::blogPostId"]=""
operation_parameters_collection_type["relateTagToBlogPostAsync:::tagId"]=""
operation_parameters_collection_type["replyToCommentAsync:::tenantId"]=""
operation_parameters_collection_type["replyToCommentAsync:::blogPostId"]=""
operation_parameters_collection_type["replyToCommentAsync:::commentId"]=""
operation_parameters_collection_type["replyToCommentAsync:::BlogPostCommentCreateDto"]=""
operation_parameters_collection_type["unrelateCategoryFromBlogPostAsync:::tenantId"]=""
operation_parameters_collection_type["unrelateCategoryFromBlogPostAsync:::blogPostId"]=""
operation_parameters_collection_type["unrelateCategoryFromBlogPostAsync:::categoryId"]=""
operation_parameters_collection_type["unrelateTagFromBlogPostAsync:::tenantId"]=""
operation_parameters_collection_type["unrelateTagFromBlogPostAsync:::blogPostId"]=""
operation_parameters_collection_type["unrelateTagFromBlogPostAsync:::tagId"]=""
operation_parameters_collection_type["updateBlogPostAsync:::tenantId"]=""
operation_parameters_collection_type["updateBlogPostAsync:::blogPostId"]=""
operation_parameters_collection_type["updateBlogPostAsync:::BlogPostUpdateDto"]=""
operation_parameters_collection_type["getBusinessDomainByIdAsync:::tenantId"]=""
operation_parameters_collection_type["getBusinessDomainByIdAsync:::businessDomainId"]=""
operation_parameters_collection_type["getBusinessDomainByIdAsync:::api-version"]=""
operation_parameters_collection_type["getBusinessDomainByIdAsync:::x-api-version"]=""
operation_parameters_collection_type["getBusinessDomainsAsync:::tenantId"]=""
operation_parameters_collection_type["getBusinessDomainsAsync:::api-version"]=""
operation_parameters_collection_type["getBusinessDomainsAsync:::x-api-version"]=""
operation_parameters_collection_type["getBusinessDomainsCountAsync:::tenantId"]=""
operation_parameters_collection_type["getBusinessDomainsCountAsync:::api-version"]=""
operation_parameters_collection_type["getBusinessDomainsCountAsync:::x-api-version"]=""
operation_parameters_collection_type["forgotPasswordPost:::ForgotPasswordRequest"]=""
operation_parameters_collection_type["loginPost:::LoginRequest"]=""
operation_parameters_collection_type["loginPost:::useCookies"]=""
operation_parameters_collection_type["loginPost:::useSessionCookies"]=""
operation_parameters_collection_type["manage2faPost:::TwoFactorRequest"]=""
operation_parameters_collection_type["manageInfoPost:::InfoRequest"]=""
operation_parameters_collection_type["mapIdentityApiConfirmEmail:::userId"]=""
operation_parameters_collection_type["mapIdentityApiConfirmEmail:::code"]=""
operation_parameters_collection_type["mapIdentityApiConfirmEmail:::changedEmail"]=""
operation_parameters_collection_type["refreshPost:::RefreshRequest"]=""
operation_parameters_collection_type["registerPost:::RegisterRequest"]=""
operation_parameters_collection_type["resendConfirmationEmailPost:::ResendConfirmationEmailRequest"]=""
operation_parameters_collection_type["resetPasswordPost:::ResetPasswordRequest"]=""
operation_parameters_collection_type["createWebPortalAsync:::tenantId"]=""
operation_parameters_collection_type["createWebPortalAsync:::api-version"]=""
operation_parameters_collection_type["createWebPortalAsync:::x-api-version"]=""
operation_parameters_collection_type["createWebPortalAsync:::WebPortalCreateDto"]=""
operation_parameters_collection_type["deleteWebPortalAsync:::tenantId"]=""
operation_parameters_collection_type["deleteWebPortalAsync:::portalId"]=""
operation_parameters_collection_type["deleteWebPortalAsync:::api-version"]=""
operation_parameters_collection_type["deleteWebPortalAsync:::x-api-version"]=""
operation_parameters_collection_type["getCurrentWebPortalAsync:::api-version"]=""
operation_parameters_collection_type["getCurrentWebPortalAsync:::x-api-version"]=""
operation_parameters_collection_type["getCurrentWebPortalOptionsAsync:::api-version"]=""
operation_parameters_collection_type["getCurrentWebPortalOptionsAsync:::x-api-version"]=""
operation_parameters_collection_type["getRootWebPortalAsync:::api-version"]=""
operation_parameters_collection_type["getRootWebPortalAsync:::x-api-version"]=""
operation_parameters_collection_type["getWebPortalByIdAsync:::portalId"]=""
operation_parameters_collection_type["getWebPortalByIdAsync:::api-version"]=""
operation_parameters_collection_type["getWebPortalByIdAsync:::x-api-version"]=""
operation_parameters_collection_type["getWebPortalOptionsAsync:::portalId"]=""
operation_parameters_collection_type["getWebPortalOptionsAsync:::api-version"]=""
operation_parameters_collection_type["getWebPortalOptionsAsync:::x-api-version"]=""
operation_parameters_collection_type["getWebPortalSettingsAsync:::portalId"]=""
operation_parameters_collection_type["getWebPortalSettingsAsync:::api-version"]=""
operation_parameters_collection_type["getWebPortalSettingsAsync:::x-api-version"]=""
operation_parameters_collection_type["initializeCurrentWebPortalAsync:::api-version"]=""
operation_parameters_collection_type["initializeCurrentWebPortalAsync:::x-api-version"]=""
operation_parameters_collection_type["patchWebPortalAsync:::tenantId"]=""
operation_parameters_collection_type["patchWebPortalAsync:::portalId"]=""
operation_parameters_collection_type["patchWebPortalAsync:::api-version"]=""
operation_parameters_collection_type["patchWebPortalAsync:::x-api-version"]=""
operation_parameters_collection_type["patchWebPortalAsync:::Operation"]=
operation_parameters_collection_type["searchWebPortalAsync:::domain"]=""
operation_parameters_collection_type["searchWebPortalAsync:::api-version"]=""
operation_parameters_collection_type["searchWebPortalAsync:::x-api-version"]=""
operation_parameters_collection_type["updateWebPortalAsync:::tenantId"]=""
operation_parameters_collection_type["updateWebPortalAsync:::portalId"]=""
operation_parameters_collection_type["updateWebPortalAsync:::api-version"]=""
operation_parameters_collection_type["updateWebPortalAsync:::x-api-version"]=""
operation_parameters_collection_type["updateWebPortalAsync:::WebPortalUpdateDto"]=""
operation_parameters_collection_type["getLatestCurrencyRatesModelAsync:::api-version"]=""
operation_parameters_collection_type["getLatestCurrencyRatesModelAsync:::x-api-version"]=""
operation_parameters_collection_type["countWebContentsAsync:::tenantId"]=""
operation_parameters_collection_type["countWebContentsAsync:::api-version"]=""
operation_parameters_collection_type["countWebContentsAsync:::x-api-version"]=""
operation_parameters_collection_type["createWebContentAsync:::tenantId"]=""
operation_parameters_collection_type["createWebContentAsync:::api-version"]=""
operation_parameters_collection_type["createWebContentAsync:::x-api-version"]=""
operation_parameters_collection_type["createWebContentAsync:::WebContentCreateDto"]=""
operation_parameters_collection_type["deleteWebContentAsync:::tenantId"]=""
operation_parameters_collection_type["deleteWebContentAsync:::webContentId"]=""
operation_parameters_collection_type["deleteWebContentAsync:::api-version"]=""
operation_parameters_collection_type["deleteWebContentAsync:::x-api-version"]=""
operation_parameters_collection_type["getWebContentByIdAsync:::tenantId"]=""
operation_parameters_collection_type["getWebContentByIdAsync:::webContentId"]=""
operation_parameters_collection_type["getWebContentByIdAsync:::api-version"]=""
operation_parameters_collection_type["getWebContentByIdAsync:::x-api-version"]=""
operation_parameters_collection_type["getWebContentsAsync:::tenantId"]=""
operation_parameters_collection_type["getWebContentsAsync:::api-version"]=""
operation_parameters_collection_type["getWebContentsAsync:::x-api-version"]=""
operation_parameters_collection_type["updateWebContentAsync:::tenantId"]=""
operation_parameters_collection_type["updateWebContentAsync:::webContentId"]=""
operation_parameters_collection_type["updateWebContentAsync:::api-version"]=""
operation_parameters_collection_type["updateWebContentAsync:::x-api-version"]=""
operation_parameters_collection_type["updateWebContentAsync:::WebContentUpdateDto"]=""
operation_parameters_collection_type["createWebPageCategoryAsync:::tenantId"]=""
operation_parameters_collection_type["createWebPageCategoryAsync:::api-version"]=""
operation_parameters_collection_type["createWebPageCategoryAsync:::x-api-version"]=""
operation_parameters_collection_type["createWebPageCategoryAsync:::WebPageCategoryCreateDto"]=""
operation_parameters_collection_type["deleteWebPageCategoryAsync:::tenantId"]=""
operation_parameters_collection_type["deleteWebPageCategoryAsync:::webPageCategoryId"]=""
operation_parameters_collection_type["deleteWebPageCategoryAsync:::api-version"]=""
operation_parameters_collection_type["deleteWebPageCategoryAsync:::x-api-version"]=""
operation_parameters_collection_type["getWebPageCategoriesAsync:::tenantId"]=""
operation_parameters_collection_type["getWebPageCategoriesAsync:::api-version"]=""
operation_parameters_collection_type["getWebPageCategoriesAsync:::x-api-version"]=""
operation_parameters_collection_type["getWebPageCategoryByIdAsync:::tenantId"]=""
operation_parameters_collection_type["getWebPageCategoryByIdAsync:::webPageCategoryId"]=""
operation_parameters_collection_type["getWebPageCategoryByIdAsync:::api-version"]=""
operation_parameters_collection_type["getWebPageCategoryByIdAsync:::x-api-version"]=""
operation_parameters_collection_type["updateWebPageCategoryAsync:::tenantId"]=""
operation_parameters_collection_type["updateWebPageCategoryAsync:::webPageCategoryId"]=""
operation_parameters_collection_type["updateWebPageCategoryAsync:::api-version"]=""
operation_parameters_collection_type["updateWebPageCategoryAsync:::x-api-version"]=""
operation_parameters_collection_type["updateWebPageCategoryAsync:::WebPageCategoryUpdateDto"]=""
operation_parameters_collection_type["createWebPageTagAsync:::tenantId"]=""
operation_parameters_collection_type["createWebPageTagAsync:::api-version"]=""
operation_parameters_collection_type["createWebPageTagAsync:::x-api-version"]=""
operation_parameters_collection_type["createWebPageTagAsync:::WebPageTagCreateDto"]=""
operation_parameters_collection_type["deleteWebPageTagAsync:::tenantId"]=""
operation_parameters_collection_type["deleteWebPageTagAsync:::webPageTagId"]=""
operation_parameters_collection_type["deleteWebPageTagAsync:::api-version"]=""
operation_parameters_collection_type["deleteWebPageTagAsync:::x-api-version"]=""
operation_parameters_collection_type["getWebPageTagByIdAsync:::tenantId"]=""
operation_parameters_collection_type["getWebPageTagByIdAsync:::webPageTagId"]=""
operation_parameters_collection_type["getWebPageTagByIdAsync:::api-version"]=""
operation_parameters_collection_type["getWebPageTagByIdAsync:::x-api-version"]=""
operation_parameters_collection_type["getWebPageTagsAsync:::tenantId"]=""
operation_parameters_collection_type["getWebPageTagsAsync:::api-version"]=""
operation_parameters_collection_type["getWebPageTagsAsync:::x-api-version"]=""
operation_parameters_collection_type["updateWebPageTagAsync:::tenantId"]=""
operation_parameters_collection_type["updateWebPageTagAsync:::webPageTagId"]=""
operation_parameters_collection_type["updateWebPageTagAsync:::api-version"]=""
operation_parameters_collection_type["updateWebPageTagAsync:::x-api-version"]=""
operation_parameters_collection_type["updateWebPageTagAsync:::WebPageTagUpdateDto"]=""
operation_parameters_collection_type["countWebPagesAsync:::tenantId"]=""
operation_parameters_collection_type["countWebPagesAsync:::api-version"]=""
operation_parameters_collection_type["countWebPagesAsync:::x-api-version"]=""
operation_parameters_collection_type["createWebPageAsync:::tenantId"]=""
operation_parameters_collection_type["createWebPageAsync:::api-version"]=""
operation_parameters_collection_type["createWebPageAsync:::x-api-version"]=""
operation_parameters_collection_type["createWebPageAsync:::WebPageCreateDto"]=""
operation_parameters_collection_type["createWebPageCategoryRelationAsync:::tenantId"]=""
operation_parameters_collection_type["createWebPageCategoryRelationAsync:::webPageId"]=""
operation_parameters_collection_type["createWebPageCategoryRelationAsync:::api-version"]=""
operation_parameters_collection_type["createWebPageCategoryRelationAsync:::x-api-version"]=""
operation_parameters_collection_type["createWebPageCategoryRelationAsync:::WebPageCategoryCreateDto"]=""
operation_parameters_collection_type["createWebPageTagRelationAsync:::tenantId"]=""
operation_parameters_collection_type["createWebPageTagRelationAsync:::webPageId"]=""
operation_parameters_collection_type["createWebPageTagRelationAsync:::api-version"]=""
operation_parameters_collection_type["createWebPageTagRelationAsync:::x-api-version"]=""
operation_parameters_collection_type["createWebPageTagRelationAsync:::WebPageTagCreateDto"]=""
operation_parameters_collection_type["deleteWebPageAsync:::tenantId"]=""
operation_parameters_collection_type["deleteWebPageAsync:::webPageId"]=""
operation_parameters_collection_type["deleteWebPageAsync:::api-version"]=""
operation_parameters_collection_type["deleteWebPageAsync:::x-api-version"]=""
operation_parameters_collection_type["getCategoriesByWebPageAsync:::webPageId"]=""
operation_parameters_collection_type["getCategoriesByWebPageAsync:::api-version"]=""
operation_parameters_collection_type["getCategoriesByWebPageAsync:::x-api-version"]=""
operation_parameters_collection_type["getTagsByWebPageAsync:::webPageId"]=""
operation_parameters_collection_type["getTagsByWebPageAsync:::api-version"]=""
operation_parameters_collection_type["getTagsByWebPageAsync:::x-api-version"]=""
operation_parameters_collection_type["getWebPageByIdAsync:::tenantId"]=""
operation_parameters_collection_type["getWebPageByIdAsync:::webPageId"]=""
operation_parameters_collection_type["getWebPageByIdAsync:::api-version"]=""
operation_parameters_collection_type["getWebPageByIdAsync:::x-api-version"]=""
operation_parameters_collection_type["getWebPagesAsync:::tenantId"]=""
operation_parameters_collection_type["getWebPagesAsync:::api-version"]=""
operation_parameters_collection_type["getWebPagesAsync:::x-api-version"]=""
operation_parameters_collection_type["relateWebPageToCategoryAsync:::tenantId"]=""
operation_parameters_collection_type["relateWebPageToCategoryAsync:::webPageId"]=""
operation_parameters_collection_type["relateWebPageToCategoryAsync:::categoryId"]=""
operation_parameters_collection_type["relateWebPageToCategoryAsync:::api-version"]=""
operation_parameters_collection_type["relateWebPageToCategoryAsync:::x-api-version"]=""
operation_parameters_collection_type["relateWebPageToTagAsync:::tenantId"]=""
operation_parameters_collection_type["relateWebPageToTagAsync:::webPageId"]=""
operation_parameters_collection_type["relateWebPageToTagAsync:::tagId"]=""
operation_parameters_collection_type["relateWebPageToTagAsync:::api-version"]=""
operation_parameters_collection_type["relateWebPageToTagAsync:::x-api-version"]=""
operation_parameters_collection_type["unrelateWebPageCategoryAsync:::tenantId"]=""
operation_parameters_collection_type["unrelateWebPageCategoryAsync:::webPageId"]=""
operation_parameters_collection_type["unrelateWebPageCategoryAsync:::categoryId"]=""
operation_parameters_collection_type["unrelateWebPageCategoryAsync:::api-version"]=""
operation_parameters_collection_type["unrelateWebPageCategoryAsync:::x-api-version"]=""
operation_parameters_collection_type["unrelateWebPageTagAsync:::tenantId"]=""
operation_parameters_collection_type["unrelateWebPageTagAsync:::webPageId"]=""
operation_parameters_collection_type["unrelateWebPageTagAsync:::tagId"]=""
operation_parameters_collection_type["unrelateWebPageTagAsync:::api-version"]=""
operation_parameters_collection_type["unrelateWebPageTagAsync:::x-api-version"]=""
operation_parameters_collection_type["updateWebPageAsync:::tenantId"]=""
operation_parameters_collection_type["updateWebPageAsync:::webPageId"]=""
operation_parameters_collection_type["updateWebPageAsync:::api-version"]=""
operation_parameters_collection_type["updateWebPageAsync:::x-api-version"]=""
operation_parameters_collection_type["updateWebPageAsync:::WebPageUpdateDto"]=""
operation_parameters_collection_type["countWebTemplatesAsync:::tenantId"]=""
operation_parameters_collection_type["countWebTemplatesAsync:::api-version"]=""
operation_parameters_collection_type["countWebTemplatesAsync:::x-api-version"]=""
operation_parameters_collection_type["createWebTemplateAsync:::tenantId"]=""
operation_parameters_collection_type["createWebTemplateAsync:::api-version"]=""
operation_parameters_collection_type["createWebTemplateAsync:::x-api-version"]=""
operation_parameters_collection_type["createWebTemplateAsync:::WebTemplateCreateDto"]=""
operation_parameters_collection_type["deleteWebTemplateAsync:::tenantId"]=""
operation_parameters_collection_type["deleteWebTemplateAsync:::webTemplateId"]=""
operation_parameters_collection_type["deleteWebTemplateAsync:::api-version"]=""
operation_parameters_collection_type["deleteWebTemplateAsync:::x-api-version"]=""
operation_parameters_collection_type["getWebTemplateByIdAsync:::tenantId"]=""
operation_parameters_collection_type["getWebTemplateByIdAsync:::webTemplateId"]=""
operation_parameters_collection_type["getWebTemplateByIdAsync:::api-version"]=""
operation_parameters_collection_type["getWebTemplateByIdAsync:::x-api-version"]=""
operation_parameters_collection_type["getWebTemplatesAsync:::tenantId"]=""
operation_parameters_collection_type["getWebTemplatesAsync:::api-version"]=""
operation_parameters_collection_type["getWebTemplatesAsync:::x-api-version"]=""
operation_parameters_collection_type["updateWebTemplateAsync:::tenantId"]=""
operation_parameters_collection_type["updateWebTemplateAsync:::webTemplateId"]=""
operation_parameters_collection_type["updateWebTemplateAsync:::api-version"]=""
operation_parameters_collection_type["updateWebTemplateAsync:::x-api-version"]=""
operation_parameters_collection_type["updateWebTemplateAsync:::WebTemplateUpdateDto"]=""


##
# Map for body parameters passed after operation as
# PARAMETER==STRING_VALUE or PARAMETER:=NUMERIC_VALUE
# These will be mapped to top level json keys ( { "PARAMETER": "VALUE" })
declare -A body_parameters

##
# These arguments will be directly passed to cURL
curl_arguments=""

##
# The host for making the request
host=""

##
# The user credentials for basic authentication
basic_auth_credential=""


##
# If true, the script will only output the actual cURL command that would be
# used
print_curl=false

##
# The operation ID passed on the command line
operation=""

##
# The provided Accept header value
header_accept=""

##
# The provided Content-type header value
header_content_type=""

##
# If there is any body content on the stdin pass it to the body of the request
body_content_temp_file=""

##
# If this variable is set to true, the request will be performed even
# if parameters for required query, header or body values are not provided
# (path parameters are still required).
force=false

##
# Declare some mime types abbreviations for easier content-type and accepts
# headers specification
declare -A mime_type_abbreviations
# text/*
mime_type_abbreviations["text"]="text/plain"
mime_type_abbreviations["html"]="text/html"
mime_type_abbreviations["md"]="text/x-markdown"
mime_type_abbreviations["csv"]="text/csv"
mime_type_abbreviations["css"]="text/css"
mime_type_abbreviations["rtf"]="text/rtf"
# application/*
mime_type_abbreviations["json"]="application/json"
mime_type_abbreviations["xml"]="application/xml"
mime_type_abbreviations["yaml"]="application/yaml"
mime_type_abbreviations["js"]="application/javascript"
mime_type_abbreviations["bin"]="application/octet-stream"
mime_type_abbreviations["rdf"]="application/rdf+xml"
# image/*
mime_type_abbreviations["jpg"]="image/jpeg"
mime_type_abbreviations["png"]="image/png"
mime_type_abbreviations["gif"]="image/gif"
mime_type_abbreviations["bmp"]="image/bmp"
mime_type_abbreviations["tiff"]="image/tiff"


##############################################################################
#
# Escape special URL characters
# Based on table at http://www.w3schools.com/tags/ref_urlencode.asp
#
##############################################################################
url_escape() {
    local raw_url="$1"

    value=$(sed -e 's/ /%20/g' \
       -e 's/!/%21/g' \
       -e 's/"/%22/g' \
       -e 's/#/%23/g' \
       -e 's/\&/%26/g' \
       -e 's/'\''/%28/g' \
       -e 's/(/%28/g' \
       -e 's/)/%29/g' \
       -e 's/:/%3A/g' \
       -e 's/\\t/%09/g' \
       -e 's/?/%3F/g' <<<"$raw_url");

    echo "$value"
}

##############################################################################
#
# Lookup the mime type abbreviation in the mime_type_abbreviations array.
# If not present assume the user provided a valid mime type
#
##############################################################################
lookup_mime_type() {
    local mime_type="$1"

    if [[ ${mime_type_abbreviations[$mime_type]} ]]; then
        echo "${mime_type_abbreviations[$mime_type]}"
    else
        echo "$mime_type"
    fi
}

##############################################################################
#
# Converts an associative array into a list of cURL header
# arguments (-H "KEY: VALUE")
#
##############################################################################
header_arguments_to_curl() {
    local headers_curl=""

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
    done
    headers_curl+=" "

    echo "${headers_curl}"
}

##############################################################################
#
# Converts an associative array into a simple JSON with keys as top
# level object attributes
#
# \todo Add conversion of more complex attributes using paths
#
##############################################################################
body_parameters_to_json() {
    if [[ $RAW_BODY == "1" ]]; then
        echo "-d '${body_parameters["RAW_BODY"]}'"
    else
        local body_json="-d '{"
        local count=0
        for key in "${!body_parameters[@]}"; do
            if [[ $((count++)) -gt 0 ]]; then
                body_json+=", "
            fi
            body_json+="\"${key}\": ${body_parameters[${key}]}"
        done
        body_json+="}'"

        if [[ "${#body_parameters[@]}" -eq 0 ]]; then
            echo ""
        else
            echo "${body_json}"
        fi
    fi
}

##############################################################################
#
# Converts an associative array into form urlencoded string
#
##############################################################################
body_parameters_to_form_urlencoded() {
    local body_form_urlencoded="-d '"
    local count=0
    for key in "${!body_parameters[@]}"; do
        if [[ $((count++)) -gt 0 ]]; then
            body_form_urlencoded+="&"
        fi
        body_form_urlencoded+="${key}=${body_parameters[${key}]}"
    done
    body_form_urlencoded+="'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_form_urlencoded}"
    fi
}

##############################################################################
#
# Helper method for showing error because for example echo in
# build_request_path() is evaluated as part of command line not printed on
# output. Anyway better idea for resource clean up ;-).
#
##############################################################################
ERROR_MSG=""
function finish {
    if [[ -n "$ERROR_MSG" ]]; then
        echo >&2 "${OFF}${RED}$ERROR_MSG"
        echo >&2 "${OFF}Check usage: '${script_name} --help'"
    fi
}
trap finish EXIT


##############################################################################
#
# Validate and build request path including query parameters
#
##############################################################################
build_request_path() {
    local path_template=$1
    local -n path_params=$2
    local -n query_params=$3


    #
    # Check input parameters count against minimum and maximum required
    #
    if [[ "$force" = false ]]; then
        local was_error=""
        for qparam in "${query_params[@]}" "${path_params[@]}"; do
            local parameter_values
            mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")

            #
            # Check if the number of provided values is not less than minimum required
            #
            if [[ ${#parameter_values[@]} -lt ${operation_parameters_minimum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too few values provided for '${qparam}' parameter."
                was_error=true
            fi

            #
            # Check if the number of provided values is not more than maximum
            #
            if [[ ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} -gt 0 \
                  && ${#parameter_values[@]} -gt ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too many values provided for '${qparam}' parameter"
                was_error=true
            fi
        done
        if [[ -n "$was_error" ]]; then
            exit 1
        fi
    fi

    # First replace all path parameters in the path
    for pparam in "${path_params[@]}"; do
        local path_regex="(.*)(\\{$pparam\\})(.*)"
        if [[ $path_template =~ $path_regex ]]; then
            path_template=${BASH_REMATCH[1]}${operation_parameters[$pparam]}${BASH_REMATCH[3]}
        fi
    done

    local query_request_part=""

    for qparam in "${query_params[@]}"; do
        if [[ "${operation_parameters[$qparam]}" == "" ]]; then
            continue
        fi

        # Get the array of parameter values
        local parameter_value=""
        local parameter_values
        mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")



        #
        # Append parameters without specific cardinality
        #
        local collection_type="${operation_parameters_collection_type["${operation}:::${qparam}"]}"
        if [[ "${collection_type}" == "" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'multi' collections i.e. param=value1&param=value2&...
        #
        elif [[ "${collection_type}" == "multi" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'csv' collections i.e. param=value1,value2,...
        #
        elif [[ "${collection_type}" == "csv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=","
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'ssv' collections i.e. param="value1 value2 ..."
        #
        elif [[ "${collection_type}" == "ssv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=" "
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'tsv' collections i.e. param="value1\tvalue2\t..."
        #
        elif [[ "${collection_type}" == "tsv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="\\t"
                fi
                parameter_value+="${qvalue}"
            done
        else
            echo "Unsupported collection format \"${collection_type}\""
            exit 1
        fi

        if [[ -n "${parameter_value}" ]]; then
            if [[ -n "${query_request_part}" ]]; then
                query_request_part+="&"
            fi
            query_request_part+="${parameter_value}"
        fi

    done


    # Now append query parameters - if any
    if [[ -n "${query_request_part}" ]]; then
        path_template+="?${query_request_part}"
    fi

    echo "$path_template"
}



###############################################################################
#
# Print main help message
#
###############################################################################
print_help() {
cat <<EOF

${BOLD}${WHITE}ContentService command line client (API version 2.0.0.0)${OFF}

${BOLD}${WHITE}Usage${OFF}

  ${GREEN}${script_name}${OFF} [-h|--help] [-V|--version] [--about] [${RED}<curl-options>${OFF}]
           [-ac|--accept ${GREEN}<mime-type>${OFF}] [-ct,--content-type ${GREEN}<mime-type>${OFF}]
           [--host ${CYAN}<url>${OFF}] [--dry-run] [-nc|--no-colors] ${YELLOW}<operation>${OFF} [-h|--help]
           [${BLUE}<headers>${OFF}] [${MAGENTA}<parameters>${OFF}] [${MAGENTA}<body-parameters>${OFF}]

  - ${CYAN}<url>${OFF} - endpoint of the REST service without basepath

  - ${RED}<curl-options>${OFF} - any valid cURL options can be passed before ${YELLOW}<operation>${OFF}
  - ${GREEN}<mime-type>${OFF} - either full mime-type or one of supported abbreviations:
                   (text, html, md, csv, css, rtf, json, xml, yaml, js, bin,
                    rdf, jpg, png, gif, bmp, tiff)
  - ${BLUE}<headers>${OFF} - HTTP headers can be passed in the form ${YELLOW}HEADER${OFF}:${BLUE}VALUE${OFF}
  - ${MAGENTA}<parameters>${OFF} - REST operation parameters can be passed in the following
                   forms:
                   * ${YELLOW}KEY${OFF}=${BLUE}VALUE${OFF} - path or query parameters
  - ${MAGENTA}<body-parameters>${OFF} - simple JSON body content (first level only) can be build
                        using the following arguments:
                        * ${YELLOW}KEY${OFF}==${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": "${BLUE}VALUE${OFF}", ... }'
                        * ${YELLOW}KEY${OFF}:=${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": ${BLUE}VALUE${OFF}, ... }'

EOF
    echo -e "${BOLD}${WHITE}Operations (grouped by tags)${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}[blogPostAuthors]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}countBlogPostsByAuthorAsync${OFF};Count blog posts by author
  ${CYAN}getBlogAuthorByIdAsync${OFF};Get blog author by ID
  ${CYAN}getBlogAuthorsAsync${OFF};Get blog authors
  ${CYAN}getBlogPostsByAuthorAsync${OFF};Get blog posts by author
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[blogPostCategories]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}countBlogPostCategoriesAsync${OFF};Count blog post categories
  ${CYAN}createBlogPostCategoryAsync${OFF};Create a blog post category
  ${CYAN}deleteBlogPostCategoryAsync${OFF};Delete a blog post category
  ${CYAN}getBlogPostCategoriesAsync${OFF};Get blog post categories
  ${CYAN}getBlogPostCategoryByIdAsync${OFF};Get blog post category by ID
  ${CYAN}updateBlogPostCategoryAsync${OFF};Update a blog post category
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[blogPostTags]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}createBlogPostTagAsync${OFF};Create a blog post tag
  ${CYAN}deleteBlogPostTagAsync${OFF};Delete a blog post tag
  ${CYAN}getBlogPostTagByIdAsync${OFF};Get blog post tag by ID
  ${CYAN}getBlogPostTagsAsync${OFF};Get blog post tags
  ${CYAN}updateBlogPostTagAsync${OFF};Update a blog post tag
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[blogPosts]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}createBlogPostAsync${OFF};Create a new blog post
  ${CYAN}createCategoryForBlogPostAsync${OFF};Create a category for a blog post
  ${CYAN}createCommentForBlogPostAsync${OFF};Create a comment for a blog post
  ${CYAN}createTagForBlogPostAsync${OFF};Create a tag for a blog post
  ${CYAN}deleteBlogPostAsync${OFF};Delete a blog post
  ${CYAN}deleteCommentFromBlogPostAsync${OFF};Delete a blog post comment
  ${CYAN}getBlogPostByIdAsync${OFF};Get a blog post by ID
  ${CYAN}getBlogPostsAsync${OFF};Retrieve a list of blog posts
  ${CYAN}getBlogPostsCountAsync${OFF};Get the count of blog posts
  ${CYAN}getCategoriesForBlogPostAsync${OFF};Get categories for a blog post
  ${CYAN}getCommentsForBlogPostAsync${OFF};Get comments for a blog post
  ${CYAN}getRepliesForCommentAsync${OFF};Get replies for a comment
  ${CYAN}getTagsForBlogPostAsync${OFF};Get tags for a blog post
  ${CYAN}relateCategoryToBlogPostAsync${OFF};Relate an existing category to a blog post
  ${CYAN}relateTagToBlogPostAsync${OFF};Relate an existing tag to a blog post
  ${CYAN}replyToCommentAsync${OFF};Reply to a blog post comment
  ${CYAN}unrelateCategoryFromBlogPostAsync${OFF};Remove a category from a blog post
  ${CYAN}unrelateTagFromBlogPostAsync${OFF};Remove a tag from a blog post
  ${CYAN}updateBlogPostAsync${OFF};Update a blog post
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[businessDomains]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getBusinessDomainByIdAsync${OFF};Get business domain by ID
  ${CYAN}getBusinessDomainsAsync${OFF};Get business domains
  ${CYAN}getBusinessDomainsCountAsync${OFF};Get business domains count
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[fenixAllianceABPWeb]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}forgotPasswordPost${OFF};
  ${CYAN}healthGet${OFF};
  ${CYAN}helloGet${OFF};
  ${CYAN}loginPost${OFF};
  ${CYAN}manage2faPost${OFF};
  ${CYAN}manageInfoGet${OFF};
  ${CYAN}manageInfoPost${OFF};
  ${CYAN}mapIdentityApiConfirmEmail${OFF};
  ${CYAN}refreshPost${OFF};
  ${CYAN}registerPost${OFF};
  ${CYAN}resendConfirmationEmailPost${OFF};
  ${CYAN}resetPasswordPost${OFF};
  ${CYAN}versionGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[portals]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}createWebPortalAsync${OFF};Create a new web portal
  ${CYAN}deleteWebPortalAsync${OFF};Delete a web portal
  ${CYAN}getCurrentWebPortalAsync${OFF};Get the current portal
  ${CYAN}getCurrentWebPortalOptionsAsync${OFF};Get the current portal's options
  ${CYAN}getRootWebPortalAsync${OFF};Get the root portal
  ${CYAN}getWebPortalByIdAsync${OFF};Get a web portal by its ID
  ${CYAN}getWebPortalOptionsAsync${OFF};Get a web portal's options by its ID
  ${CYAN}getWebPortalSettingsAsync${OFF};Get a web portal's settings by its ID
  ${CYAN}initializeCurrentWebPortalAsync${OFF};Initialize the current portal
  ${CYAN}patchWebPortalAsync${OFF};Partially update a web portal
  ${CYAN}searchWebPortalAsync${OFF};Search for a portal by its domain
  ${CYAN}updateWebPortalAsync${OFF};Update an existing web portal
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[themes]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getLatestCurrencyRatesModelAsync${OFF};Update base web content themes
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[webContents]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}countWebContentsAsync${OFF};Count web contents
  ${CYAN}createWebContentAsync${OFF};Create a web content
  ${CYAN}deleteWebContentAsync${OFF};Delete a web content
  ${CYAN}getWebContentByIdAsync${OFF};Get web content by ID
  ${CYAN}getWebContentsAsync${OFF};Get web contents
  ${CYAN}updateWebContentAsync${OFF};Update a web content
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[webPageCategories]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}createWebPageCategoryAsync${OFF};Create a web page category
  ${CYAN}deleteWebPageCategoryAsync${OFF};Delete a web page category
  ${CYAN}getWebPageCategoriesAsync${OFF};Get web page categories
  ${CYAN}getWebPageCategoryByIdAsync${OFF};Get web page category by ID
  ${CYAN}updateWebPageCategoryAsync${OFF};Update a web page category
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[webPageTags]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}createWebPageTagAsync${OFF};Create a web page tag
  ${CYAN}deleteWebPageTagAsync${OFF};Delete a web page tag
  ${CYAN}getWebPageTagByIdAsync${OFF};Get web page tag by ID
  ${CYAN}getWebPageTagsAsync${OFF};Get web page tags
  ${CYAN}updateWebPageTagAsync${OFF};Update a web page tag
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[webPages]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}countWebPagesAsync${OFF};Count web pages
  ${CYAN}createWebPageAsync${OFF};Create a web page
  ${CYAN}createWebPageCategoryRelationAsync${OFF};Create a web page category relation
  ${CYAN}createWebPageTagRelationAsync${OFF};Create a web page tag relation
  ${CYAN}deleteWebPageAsync${OFF};Delete a web page
  ${CYAN}getCategoriesByWebPageAsync${OFF};Get categories by web page
  ${CYAN}getTagsByWebPageAsync${OFF};Get tags by web page
  ${CYAN}getWebPageByIdAsync${OFF};Get web page by ID
  ${CYAN}getWebPagesAsync${OFF};Get web pages
  ${CYAN}relateWebPageToCategoryAsync${OFF};Relate web page to category
  ${CYAN}relateWebPageToTagAsync${OFF};Relate web page to tag
  ${CYAN}unrelateWebPageCategoryAsync${OFF};Unrelate web page from category
  ${CYAN}unrelateWebPageTagAsync${OFF};Unrelate web page from tag
  ${CYAN}updateWebPageAsync${OFF};Update a web page
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[webTemplates]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}countWebTemplatesAsync${OFF};Count web templates
  ${CYAN}createWebTemplateAsync${OFF};Create a web template
  ${CYAN}deleteWebTemplateAsync${OFF};Delete a web template
  ${CYAN}getWebTemplateByIdAsync${OFF};Get web template by ID
  ${CYAN}getWebTemplatesAsync${OFF};Get web templates
  ${CYAN}updateWebTemplateAsync${OFF};Update a web template
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}Options${OFF}"
    echo -e "  -h,--help\\t\\t\\t\\tPrint this help"
    echo -e "  -V,--version\\t\\t\\t\\tPrint API version"
    echo -e "  --about\\t\\t\\t\\tPrint the information about service"
    echo -e "  --host ${CYAN}<url>${OFF}\\t\\t\\t\\tSpecify the host URL "
echo -e "              \\t\\t\\t\\t(e.g. 'https://localhost')"

    echo -e "  --force\\t\\t\\t\\tForce command invocation in spite of missing"
    echo -e "         \\t\\t\\t\\trequired parameters or wrong content type"
    echo -e "  --dry-run\\t\\t\\t\\tPrint out the cURL command without"
    echo -e "           \\t\\t\\t\\texecuting it"
    echo -e "  -nc,--no-colors\\t\\t\\tEnforce print without colors, otherwise autodetected"
    echo -e "  -ac,--accept ${YELLOW}<mime-type>${OFF}\\t\\tSet the 'Accept' header in the request"
    echo -e "  -ct,--content-type ${YELLOW}<mime-type>${OFF}\\tSet the 'Content-type' header in "
    echo -e "                                \\tthe request"
    echo ""
}


##############################################################################
#
# Print REST service description
#
##############################################################################
print_about() {
    echo ""
    echo -e "${BOLD}${WHITE}ContentService command line client (API version 2.0.0.0)${OFF}"
    echo ""
    echo -e "License: Fenix Alliance Inc."
    echo -e "Contact: support@fenix-alliance.com"
    echo ""
read -r -d '' appdescription <<EOF

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
EOF
echo "$appdescription" | paste -sd' ' | fold -sw 80
}


##############################################################################
#
# Print REST api version
#
##############################################################################
print_version() {
    echo ""
    echo -e "${BOLD}ContentService command line client (API version 2.0.0.0)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for countBlogPostsByAuthorAsync operation
#
##############################################################################
print_countBlogPostsByAuthorAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}countBlogPostsByAuthorAsync - Count blog posts by author${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Returns the count of blog posts written by a specific author." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}authorId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: authorId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getBlogAuthorByIdAsync operation
#
##############################################################################
print_getBlogAuthorByIdAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBlogAuthorByIdAsync - Get blog author by ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves a specific blog author by their identifier." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}authorId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: authorId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getBlogAuthorsAsync operation
#
##############################################################################
print_getBlogAuthorsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBlogAuthorsAsync - Get blog authors${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all blog authors, optionally filtered by tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getBlogPostsByAuthorAsync operation
#
##############################################################################
print_getBlogPostsByAuthorAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBlogPostsByAuthorAsync - Get blog posts by author${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all blog posts written by a specific author." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}authorId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: authorId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for countBlogPostCategoriesAsync operation
#
##############################################################################
print_countBlogPostCategoriesAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}countBlogPostCategoriesAsync - Count blog post categories${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Counts all blog post categories for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createBlogPostCategoryAsync operation
#
##############################################################################
print_createBlogPostCategoryAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createBlogPostCategoryAsync - Create a blog post category${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Creates a new blog post category for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteBlogPostCategoryAsync operation
#
##############################################################################
print_deleteBlogPostCategoryAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteBlogPostCategoryAsync - Delete a blog post category${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Deletes a blog post category for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}blogPostCategoryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostCategoryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getBlogPostCategoriesAsync operation
#
##############################################################################
print_getBlogPostCategoriesAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBlogPostCategoriesAsync - Get blog post categories${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all blog post categories for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getBlogPostCategoryByIdAsync operation
#
##############################################################################
print_getBlogPostCategoryByIdAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBlogPostCategoryByIdAsync - Get blog post category by ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves a specific blog post category by its ID." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}blogPostCategoryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostCategoryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateBlogPostCategoryAsync operation
#
##############################################################################
print_updateBlogPostCategoryAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateBlogPostCategoryAsync - Update a blog post category${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Updates an existing blog post category for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}blogPostCategoryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostCategoryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createBlogPostTagAsync operation
#
##############################################################################
print_createBlogPostTagAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createBlogPostTagAsync - Create a blog post tag${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Creates a new blog post tag for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteBlogPostTagAsync operation
#
##############################################################################
print_deleteBlogPostTagAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteBlogPostTagAsync - Delete a blog post tag${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Deletes a blog post tag for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}blogPostTagId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostTagId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getBlogPostTagByIdAsync operation
#
##############################################################################
print_getBlogPostTagByIdAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBlogPostTagByIdAsync - Get blog post tag by ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves a specific blog post tag by its ID." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}blogPostTagId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostTagId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getBlogPostTagsAsync operation
#
##############################################################################
print_getBlogPostTagsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBlogPostTagsAsync - Get blog post tags${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all blog post tags for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateBlogPostTagAsync operation
#
##############################################################################
print_updateBlogPostTagAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateBlogPostTagAsync - Update a blog post tag${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Updates an existing blog post tag for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}blogPostTagId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostTagId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createBlogPostAsync operation
#
##############################################################################
print_createBlogPostAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createBlogPostAsync - Create a new blog post${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Creates a new blog post for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createCategoryForBlogPostAsync operation
#
##############################################################################
print_createCategoryForBlogPostAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createCategoryForBlogPostAsync - Create a category for a blog post${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Creates a new category and relates it to a specific blog post." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}blogPostId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createCommentForBlogPostAsync operation
#
##############################################################################
print_createCommentForBlogPostAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createCommentForBlogPostAsync - Create a comment for a blog post${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Creates a new comment on a specific blog post." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}blogPostId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createTagForBlogPostAsync operation
#
##############################################################################
print_createTagForBlogPostAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createTagForBlogPostAsync - Create a tag for a blog post${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Creates a new tag and relates it to a specific blog post." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}blogPostId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteBlogPostAsync operation
#
##############################################################################
print_deleteBlogPostAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteBlogPostAsync - Delete a blog post${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Deletes a blog post for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}blogPostId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteCommentFromBlogPostAsync operation
#
##############################################################################
print_deleteCommentFromBlogPostAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteCommentFromBlogPostAsync - Delete a blog post comment${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Deletes a comment from a specific blog post." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}blogPostId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}commentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: commentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getBlogPostByIdAsync operation
#
##############################################################################
print_getBlogPostByIdAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBlogPostByIdAsync - Get a blog post by ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves a single blog post by its unique identifier." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}blogPostId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getBlogPostsAsync operation
#
##############################################################################
print_getBlogPostsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBlogPostsAsync - Retrieve a list of blog posts${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all blog posts, optionally filtered by tenant using OData query options." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getBlogPostsCountAsync operation
#
##############################################################################
print_getBlogPostsCountAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBlogPostsCountAsync - Get the count of blog posts${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Returns the total count of blog posts, optionally filtered by tenant using OData query options." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCategoriesForBlogPostAsync operation
#
##############################################################################
print_getCategoriesForBlogPostAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCategoriesForBlogPostAsync - Get categories for a blog post${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all categories related to a specific blog post." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}blogPostId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCommentsForBlogPostAsync operation
#
##############################################################################
print_getCommentsForBlogPostAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCommentsForBlogPostAsync - Get comments for a blog post${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all comments for a specific blog post." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}blogPostId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getRepliesForCommentAsync operation
#
##############################################################################
print_getRepliesForCommentAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getRepliesForCommentAsync - Get replies for a comment${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all replies for a specific blog post comment." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}commentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: commentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}blogPostId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getTagsForBlogPostAsync operation
#
##############################################################################
print_getTagsForBlogPostAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getTagsForBlogPostAsync - Get tags for a blog post${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all tags related to a specific blog post." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}blogPostId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for relateCategoryToBlogPostAsync operation
#
##############################################################################
print_relateCategoryToBlogPostAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}relateCategoryToBlogPostAsync - Relate an existing category to a blog post${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Creates a relationship between an existing category and a blog post." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}blogPostId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}categoryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: categoryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for relateTagToBlogPostAsync operation
#
##############################################################################
print_relateTagToBlogPostAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}relateTagToBlogPostAsync - Relate an existing tag to a blog post${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Creates a relationship between an existing tag and a blog post." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}blogPostId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tagId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: tagId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for replyToCommentAsync operation
#
##############################################################################
print_replyToCommentAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}replyToCommentAsync - Reply to a blog post comment${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Creates a reply to an existing comment on a blog post." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}blogPostId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}commentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: commentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for unrelateCategoryFromBlogPostAsync operation
#
##############################################################################
print_unrelateCategoryFromBlogPostAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}unrelateCategoryFromBlogPostAsync - Remove a category from a blog post${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Removes the relationship between a category and a blog post." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}blogPostId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}categoryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: categoryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for unrelateTagFromBlogPostAsync operation
#
##############################################################################
print_unrelateTagFromBlogPostAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}unrelateTagFromBlogPostAsync - Remove a tag from a blog post${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Removes the relationship between a tag and a blog post." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}blogPostId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tagId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: tagId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateBlogPostAsync operation
#
##############################################################################
print_updateBlogPostAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateBlogPostAsync - Update a blog post${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Updates an existing blog post for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}blogPostId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: blogPostId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getBusinessDomainByIdAsync operation
#
##############################################################################
print_getBusinessDomainByIdAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBusinessDomainByIdAsync - Get business domain by ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves a specific business domain." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}businessDomainId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: businessDomainId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getBusinessDomainsAsync operation
#
##############################################################################
print_getBusinessDomainsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBusinessDomainsAsync - Get business domains${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves business domains for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getBusinessDomainsCountAsync operation
#
##############################################################################
print_getBusinessDomainsCountAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getBusinessDomainsCountAsync - Get business domains count${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves the count of business domains for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for forgotPasswordPost operation
#
##############################################################################
print_forgotPasswordPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}forgotPasswordPost - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for healthGet operation
#
##############################################################################
print_healthGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}healthGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for helloGet operation
#
##############################################################################
print_helloGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}helloGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for loginPost operation
#
##############################################################################
print_loginPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}loginPost - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}useCookies${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: useCookies=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}useSessionCookies${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: useSessionCookies=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for manage2faPost operation
#
##############################################################################
print_manage2faPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}manage2faPost - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for manageInfoGet operation
#
##############################################################################
print_manageInfoGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}manageInfoGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for manageInfoPost operation
#
##############################################################################
print_manageInfoPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}manageInfoPost - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=404
    echo -e "${result_color_table[${code:0:1}]}  404;Not Found${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for mapIdentityApiConfirmEmail operation
#
##############################################################################
print_mapIdentityApiConfirmEmail_help() {
    echo ""
    echo -e "${BOLD}${WHITE}mapIdentityApiConfirmEmail - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}userId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: userId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}code${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: code=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}changedEmail${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: changedEmail=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for refreshPost operation
#
##############################################################################
print_refreshPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}refreshPost - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for registerPost operation
#
##############################################################################
print_registerPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}registerPost - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for resendConfirmationEmailPost operation
#
##############################################################################
print_resendConfirmationEmailPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}resendConfirmationEmailPost - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for resetPasswordPost operation
#
##############################################################################
print_resetPasswordPost_help() {
    echo ""
    echo -e "${BOLD}${WHITE}resetPasswordPost - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=400
    echo -e "${result_color_table[${code:0:1}]}  400;Bad Request${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for versionGet operation
#
##############################################################################
print_versionGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}versionGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createWebPortalAsync operation
#
##############################################################################
print_createWebPortalAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createWebPortalAsync - Create a new web portal${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Create a new web portal" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteWebPortalAsync operation
#
##############################################################################
print_deleteWebPortalAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteWebPortalAsync - Delete a web portal${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Delete a web portal" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}portalId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: portalId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCurrentWebPortalAsync operation
#
##############################################################################
print_getCurrentWebPortalAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCurrentWebPortalAsync - Get the current portal${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get the current portal of the this server instance" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCurrentWebPortalOptionsAsync operation
#
##############################################################################
print_getCurrentWebPortalOptionsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCurrentWebPortalOptionsAsync - Get the current portal's options${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get the current portal's options for the current user." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getRootWebPortalAsync operation
#
##############################################################################
print_getRootWebPortalAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getRootWebPortalAsync - Get the root portal${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get the root portal of the this server instance" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getWebPortalByIdAsync operation
#
##############################################################################
print_getWebPortalByIdAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getWebPortalByIdAsync - Get a web portal by its ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a web portal by its ID" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}portalId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: portalId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getWebPortalOptionsAsync operation
#
##############################################################################
print_getWebPortalOptionsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getWebPortalOptionsAsync - Get a web portal's options by its ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a web portal's options by its ID" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}portalId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: portalId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getWebPortalSettingsAsync operation
#
##############################################################################
print_getWebPortalSettingsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getWebPortalSettingsAsync - Get a web portal's settings by its ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Get a web portal's settings by its ID" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}portalId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: portalId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for initializeCurrentWebPortalAsync operation
#
##############################################################################
print_initializeCurrentWebPortalAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}initializeCurrentWebPortalAsync - Initialize the current portal${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Initialize the current portal for the current user." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for patchWebPortalAsync operation
#
##############################################################################
print_patchWebPortalAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}patchWebPortalAsync - Partially update a web portal${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Partially update a web portal" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}portalId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: portalId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for searchWebPortalAsync operation
#
##############################################################################
print_searchWebPortalAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}searchWebPortalAsync - Search for a portal by its domain${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Search for a portal by its domain" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}domain${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: domain=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateWebPortalAsync operation
#
##############################################################################
print_updateWebPortalAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateWebPortalAsync - Update an existing web portal${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Update an existing web portal" | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}portalId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: portalId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getLatestCurrencyRatesModelAsync operation
#
##############################################################################
print_getLatestCurrencyRatesModelAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getLatestCurrencyRatesModelAsync - Update base web content themes${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Triggers an update of the base web content themes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for countWebContentsAsync operation
#
##############################################################################
print_countWebContentsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}countWebContentsAsync - Count web contents${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Counts all web contents for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createWebContentAsync operation
#
##############################################################################
print_createWebContentAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createWebContentAsync - Create a web content${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Creates a new web content for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteWebContentAsync operation
#
##############################################################################
print_deleteWebContentAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteWebContentAsync - Delete a web content${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Deletes a web content for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webContentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webContentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getWebContentByIdAsync operation
#
##############################################################################
print_getWebContentByIdAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getWebContentByIdAsync - Get web content by ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves a specific web content by its ID." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webContentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webContentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getWebContentsAsync operation
#
##############################################################################
print_getWebContentsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getWebContentsAsync - Get web contents${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all web contents for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateWebContentAsync operation
#
##############################################################################
print_updateWebContentAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateWebContentAsync - Update a web content${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Updates an existing web content for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webContentId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webContentId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createWebPageCategoryAsync operation
#
##############################################################################
print_createWebPageCategoryAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createWebPageCategoryAsync - Create a web page category${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Creates a new web page category for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteWebPageCategoryAsync operation
#
##############################################################################
print_deleteWebPageCategoryAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteWebPageCategoryAsync - Delete a web page category${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Deletes a web page category for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webPageCategoryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webPageCategoryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getWebPageCategoriesAsync operation
#
##############################################################################
print_getWebPageCategoriesAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getWebPageCategoriesAsync - Get web page categories${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all web page categories for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getWebPageCategoryByIdAsync operation
#
##############################################################################
print_getWebPageCategoryByIdAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getWebPageCategoryByIdAsync - Get web page category by ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves a specific web page category by its ID." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webPageCategoryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webPageCategoryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateWebPageCategoryAsync operation
#
##############################################################################
print_updateWebPageCategoryAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateWebPageCategoryAsync - Update a web page category${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Updates an existing web page category for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webPageCategoryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webPageCategoryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createWebPageTagAsync operation
#
##############################################################################
print_createWebPageTagAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createWebPageTagAsync - Create a web page tag${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Creates a new web page tag for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=201
    echo -e "${result_color_table[${code:0:1}]}  201;Created${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteWebPageTagAsync operation
#
##############################################################################
print_deleteWebPageTagAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteWebPageTagAsync - Delete a web page tag${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Deletes a web page tag for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webPageTagId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webPageTagId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getWebPageTagByIdAsync operation
#
##############################################################################
print_getWebPageTagByIdAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getWebPageTagByIdAsync - Get web page tag by ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves a specific web page tag by its ID." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webPageTagId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webPageTagId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getWebPageTagsAsync operation
#
##############################################################################
print_getWebPageTagsAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getWebPageTagsAsync - Get web page tags${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all web page tags for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateWebPageTagAsync operation
#
##############################################################################
print_updateWebPageTagAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateWebPageTagAsync - Update a web page tag${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Updates an existing web page tag for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webPageTagId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webPageTagId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for countWebPagesAsync operation
#
##############################################################################
print_countWebPagesAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}countWebPagesAsync - Count web pages${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Counts all web pages for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createWebPageAsync operation
#
##############################################################################
print_createWebPageAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createWebPageAsync - Create a web page${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Creates a new web page for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createWebPageCategoryRelationAsync operation
#
##############################################################################
print_createWebPageCategoryRelationAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createWebPageCategoryRelationAsync - Create a web page category relation${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Creates a new category and relates it to a web page." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webPageId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webPageId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createWebPageTagRelationAsync operation
#
##############################################################################
print_createWebPageTagRelationAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createWebPageTagRelationAsync - Create a web page tag relation${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Creates a new tag and relates it to a web page." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webPageId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webPageId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteWebPageAsync operation
#
##############################################################################
print_deleteWebPageAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteWebPageAsync - Delete a web page${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Deletes a web page for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webPageId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webPageId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getCategoriesByWebPageAsync operation
#
##############################################################################
print_getCategoriesByWebPageAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getCategoriesByWebPageAsync - Get categories by web page${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all categories related to a specific web page." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}webPageId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webPageId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getTagsByWebPageAsync operation
#
##############################################################################
print_getTagsByWebPageAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getTagsByWebPageAsync - Get tags by web page${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all tags related to a specific web page." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}webPageId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webPageId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getWebPageByIdAsync operation
#
##############################################################################
print_getWebPageByIdAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getWebPageByIdAsync - Get web page by ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves a specific web page by its identifier." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webPageId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webPageId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getWebPagesAsync operation
#
##############################################################################
print_getWebPagesAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getWebPagesAsync - Get web pages${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all web pages for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for relateWebPageToCategoryAsync operation
#
##############################################################################
print_relateWebPageToCategoryAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}relateWebPageToCategoryAsync - Relate web page to category${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Relates an existing category to a web page." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webPageId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webPageId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}categoryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: categoryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for relateWebPageToTagAsync operation
#
##############################################################################
print_relateWebPageToTagAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}relateWebPageToTagAsync - Relate web page to tag${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Relates an existing tag to a web page." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webPageId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webPageId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tagId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: tagId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for unrelateWebPageCategoryAsync operation
#
##############################################################################
print_unrelateWebPageCategoryAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}unrelateWebPageCategoryAsync - Unrelate web page from category${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Removes the relationship between a web page and a category." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webPageId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webPageId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}categoryId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: categoryId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for unrelateWebPageTagAsync operation
#
##############################################################################
print_unrelateWebPageTagAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}unrelateWebPageTagAsync - Unrelate web page from tag${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Removes the relationship between a web page and a tag." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webPageId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webPageId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tagId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: tagId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateWebPageAsync operation
#
##############################################################################
print_updateWebPageAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateWebPageAsync - Update a web page${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Updates an existing web page for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webPageId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webPageId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for countWebTemplatesAsync operation
#
##############################################################################
print_countWebTemplatesAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}countWebTemplatesAsync - Count web templates${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Counts all web templates for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for createWebTemplateAsync operation
#
##############################################################################
print_createWebTemplateAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}createWebTemplateAsync - Create a web template${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Creates a new web template for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deleteWebTemplateAsync operation
#
##############################################################################
print_deleteWebTemplateAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deleteWebTemplateAsync - Delete a web template${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Deletes a web template for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webTemplateId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webTemplateId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getWebTemplateByIdAsync operation
#
##############################################################################
print_getWebTemplateByIdAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getWebTemplateByIdAsync - Get web template by ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves a specific web template by its identifier." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webTemplateId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webTemplateId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getWebTemplatesAsync operation
#
##############################################################################
print_getWebTemplatesAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getWebTemplatesAsync - Get web templates${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Retrieves all web templates for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for updateWebTemplateAsync operation
#
##############################################################################
print_updateWebTemplateAsync_help() {
    echo ""
    echo -e "${BOLD}${WHITE}updateWebTemplateAsync - Update a web template${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Updates an existing web template for the specified tenant." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tenantId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tenantId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}webTemplateId${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: webTemplateId=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: api-version=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x-api-version${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: x-api-version:value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json,application/xml]${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=403
    echo -e "${result_color_table[${code:0:1}]}  403;Forbidden${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=401
    echo -e "${result_color_table[${code:0:1}]}  401;Unauthorized${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;OK${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call countBlogPostsByAuthorAsync operation
#
##############################################################################
call_countBlogPostsByAuthorAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(authorId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPostAuthors/{authorId}/BlogPosts/Count" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getBlogAuthorByIdAsync operation
#
##############################################################################
call_getBlogAuthorByIdAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(authorId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPostAuthors/{authorId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getBlogAuthorsAsync operation
#
##############################################################################
call_getBlogAuthorsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPostAuthors" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getBlogPostsByAuthorAsync operation
#
##############################################################################
call_getBlogPostsByAuthorAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(authorId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPostAuthors/{authorId}/BlogPosts" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call countBlogPostCategoriesAsync operation
#
##############################################################################
call_countBlogPostCategoriesAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPostCategories/Count" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call createBlogPostCategoryAsync operation
#
##############################################################################
call_createBlogPostCategoryAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPostCategories" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deleteBlogPostCategoryAsync operation
#
##############################################################################
call_deleteBlogPostCategoryAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostCategoryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPostCategories/{blogPostCategoryId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getBlogPostCategoriesAsync operation
#
##############################################################################
call_getBlogPostCategoriesAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPostCategories" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getBlogPostCategoryByIdAsync operation
#
##############################################################################
call_getBlogPostCategoryByIdAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostCategoryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPostCategories/{blogPostCategoryId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call updateBlogPostCategoryAsync operation
#
##############################################################################
call_updateBlogPostCategoryAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostCategoryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPostCategories/{blogPostCategoryId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call createBlogPostTagAsync operation
#
##############################################################################
call_createBlogPostTagAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPostTags" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deleteBlogPostTagAsync operation
#
##############################################################################
call_deleteBlogPostTagAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostTagId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPostTags/{blogPostTagId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getBlogPostTagByIdAsync operation
#
##############################################################################
call_getBlogPostTagByIdAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostTagId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPostTags/{blogPostTagId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getBlogPostTagsAsync operation
#
##############################################################################
call_getBlogPostTagsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPostTags" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call updateBlogPostTagAsync operation
#
##############################################################################
call_updateBlogPostTagAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostTagId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPostTags/{blogPostTagId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call createBlogPostAsync operation
#
##############################################################################
call_createBlogPostAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPosts" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call createCategoryForBlogPostAsync operation
#
##############################################################################
call_createCategoryForBlogPostAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPosts/{blogPostId}/Categories" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call createCommentForBlogPostAsync operation
#
##############################################################################
call_createCommentForBlogPostAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPosts/{blogPostId}/Comments" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call createTagForBlogPostAsync operation
#
##############################################################################
call_createTagForBlogPostAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPosts/{blogPostId}/Tags" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deleteBlogPostAsync operation
#
##############################################################################
call_deleteBlogPostAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPosts/{blogPostId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call deleteCommentFromBlogPostAsync operation
#
##############################################################################
call_deleteCommentFromBlogPostAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostId commentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPosts/{blogPostId}/Comments/{commentId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getBlogPostByIdAsync operation
#
##############################################################################
call_getBlogPostByIdAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPosts/{blogPostId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getBlogPostsAsync operation
#
##############################################################################
call_getBlogPostsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPosts" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getBlogPostsCountAsync operation
#
##############################################################################
call_getBlogPostsCountAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPosts/Count" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getCategoriesForBlogPostAsync operation
#
##############################################################################
call_getCategoriesForBlogPostAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPosts/{blogPostId}/Categories" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getCommentsForBlogPostAsync operation
#
##############################################################################
call_getCommentsForBlogPostAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPosts/{blogPostId}/Comments" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getRepliesForCommentAsync operation
#
##############################################################################
call_getRepliesForCommentAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(commentId blogPostId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPosts/{blogPostId}/Comments/{commentId}/Replies" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getTagsForBlogPostAsync operation
#
##############################################################################
call_getTagsForBlogPostAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPosts/{blogPostId}/Tags" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call relateCategoryToBlogPostAsync operation
#
##############################################################################
call_relateCategoryToBlogPostAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostId categoryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPosts/{blogPostId}/Categories/{categoryId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call relateTagToBlogPostAsync operation
#
##############################################################################
call_relateTagToBlogPostAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostId tagId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPosts/{blogPostId}/Tags/{tagId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call replyToCommentAsync operation
#
##############################################################################
call_replyToCommentAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostId commentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPosts/{blogPostId}/Comments/{commentId}/Reply" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call unrelateCategoryFromBlogPostAsync operation
#
##############################################################################
call_unrelateCategoryFromBlogPostAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostId categoryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPosts/{blogPostId}/Categories/{categoryId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call unrelateTagFromBlogPostAsync operation
#
##############################################################################
call_unrelateTagFromBlogPostAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostId tagId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPosts/{blogPostId}/Tags/{tagId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call updateBlogPostAsync operation
#
##############################################################################
call_updateBlogPostAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(blogPostId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BlogPosts/{blogPostId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call getBusinessDomainByIdAsync operation
#
##############################################################################
call_getBusinessDomainByIdAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(businessDomainId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BusinessDomains/{businessDomainId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getBusinessDomainsAsync operation
#
##############################################################################
call_getBusinessDomainsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BusinessDomains" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getBusinessDomainsCountAsync operation
#
##############################################################################
call_getBusinessDomainsCountAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/BusinessDomains/Count" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call forgotPasswordPost operation
#
##############################################################################
call_forgotPasswordPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/forgotPassword" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call healthGet operation
#
##############################################################################
call_healthGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/health" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call helloGet operation
#
##############################################################################
call_helloGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/hello" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call loginPost operation
#
##############################################################################
call_loginPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(useCookies useSessionCookies)
    local path

    if ! path=$(build_request_path "/login" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call manage2faPost operation
#
##############################################################################
call_manage2faPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/manage/2fa" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call manageInfoGet operation
#
##############################################################################
call_manageInfoGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/manage/info" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call manageInfoPost operation
#
##############################################################################
call_manageInfoPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/manage/info" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call mapIdentityApiConfirmEmail operation
#
##############################################################################
call_mapIdentityApiConfirmEmail() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(userId code changedEmail)
    local path

    if ! path=$(build_request_path "/confirmEmail" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call refreshPost operation
#
##############################################################################
call_refreshPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/refresh" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call registerPost operation
#
##############################################################################
call_registerPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/register" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call resendConfirmationEmailPost operation
#
##############################################################################
call_resendConfirmationEmailPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/resendConfirmationEmail" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call resetPasswordPost operation
#
##############################################################################
call_resetPasswordPost() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/resetPassword" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call versionGet operation
#
##############################################################################
call_versionGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/version" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call createWebPortalAsync operation
#
##############################################################################
call_createWebPortalAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/Portals" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deleteWebPortalAsync operation
#
##############################################################################
call_deleteWebPortalAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(portalId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/Portals/{portalId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getCurrentWebPortalAsync operation
#
##############################################################################
call_getCurrentWebPortalAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/Portals/Current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getCurrentWebPortalOptionsAsync operation
#
##############################################################################
call_getCurrentWebPortalOptionsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/Portals/Current/Options" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getRootWebPortalAsync operation
#
##############################################################################
call_getRootWebPortalAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/Portals/Root" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getWebPortalByIdAsync operation
#
##############################################################################
call_getWebPortalByIdAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(portalId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/Portals/{portalId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getWebPortalOptionsAsync operation
#
##############################################################################
call_getWebPortalOptionsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(portalId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/Portals/{portalId}/Options" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getWebPortalSettingsAsync operation
#
##############################################################################
call_getWebPortalSettingsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(portalId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/Portals/{portalId}/Settings" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call initializeCurrentWebPortalAsync operation
#
##############################################################################
call_initializeCurrentWebPortalAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/Portals/Initialize" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call patchWebPortalAsync operation
#
##############################################################################
call_patchWebPortalAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(portalId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/Portals/{portalId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call searchWebPortalAsync operation
#
##############################################################################
call_searchWebPortalAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(domain api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/Portals/Search" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call updateWebPortalAsync operation
#
##############################################################################
call_updateWebPortalAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(portalId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/Portals/{portalId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call getLatestCurrencyRatesModelAsync operation
#
##############################################################################
call_getLatestCurrencyRatesModelAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/Themes/Update" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call countWebContentsAsync operation
#
##############################################################################
call_countWebContentsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebContents/Count" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call createWebContentAsync operation
#
##############################################################################
call_createWebContentAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebContents" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deleteWebContentAsync operation
#
##############################################################################
call_deleteWebContentAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webContentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebContents/{webContentId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getWebContentByIdAsync operation
#
##############################################################################
call_getWebContentByIdAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webContentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebContents/{webContentId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getWebContentsAsync operation
#
##############################################################################
call_getWebContentsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebContents" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call updateWebContentAsync operation
#
##############################################################################
call_updateWebContentAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webContentId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebContents/{webContentId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call createWebPageCategoryAsync operation
#
##############################################################################
call_createWebPageCategoryAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPageCategories" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deleteWebPageCategoryAsync operation
#
##############################################################################
call_deleteWebPageCategoryAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webPageCategoryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPageCategories/{webPageCategoryId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getWebPageCategoriesAsync operation
#
##############################################################################
call_getWebPageCategoriesAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPageCategories" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getWebPageCategoryByIdAsync operation
#
##############################################################################
call_getWebPageCategoryByIdAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webPageCategoryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPageCategories/{webPageCategoryId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call updateWebPageCategoryAsync operation
#
##############################################################################
call_updateWebPageCategoryAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webPageCategoryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPageCategories/{webPageCategoryId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call createWebPageTagAsync operation
#
##############################################################################
call_createWebPageTagAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPageTags" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deleteWebPageTagAsync operation
#
##############################################################################
call_deleteWebPageTagAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webPageTagId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPageTags/{webPageTagId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getWebPageTagByIdAsync operation
#
##############################################################################
call_getWebPageTagByIdAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webPageTagId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPageTags/{webPageTagId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getWebPageTagsAsync operation
#
##############################################################################
call_getWebPageTagsAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPageTags" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call updateWebPageTagAsync operation
#
##############################################################################
call_updateWebPageTagAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webPageTagId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPageTags/{webPageTagId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call countWebPagesAsync operation
#
##############################################################################
call_countWebPagesAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPages/Count" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call createWebPageAsync operation
#
##############################################################################
call_createWebPageAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPages" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call createWebPageCategoryRelationAsync operation
#
##############################################################################
call_createWebPageCategoryRelationAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webPageId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPages/{webPageId}/Categories" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call createWebPageTagRelationAsync operation
#
##############################################################################
call_createWebPageTagRelationAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webPageId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPages/{webPageId}/Tags" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deleteWebPageAsync operation
#
##############################################################################
call_deleteWebPageAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webPageId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPages/{webPageId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getCategoriesByWebPageAsync operation
#
##############################################################################
call_getCategoriesByWebPageAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webPageId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPages/{webPageId}/Categories" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getTagsByWebPageAsync operation
#
##############################################################################
call_getTagsByWebPageAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webPageId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPages/{webPageId}/Tags" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getWebPageByIdAsync operation
#
##############################################################################
call_getWebPageByIdAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webPageId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPages/{webPageId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getWebPagesAsync operation
#
##############################################################################
call_getWebPagesAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPages" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call relateWebPageToCategoryAsync operation
#
##############################################################################
call_relateWebPageToCategoryAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webPageId categoryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPages/{webPageId}/Categories/{categoryId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call relateWebPageToTagAsync operation
#
##############################################################################
call_relateWebPageToTagAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webPageId tagId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPages/{webPageId}/Tags/{tagId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call unrelateWebPageCategoryAsync operation
#
##############################################################################
call_unrelateWebPageCategoryAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webPageId categoryId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPages/{webPageId}/Categories/{categoryId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call unrelateWebPageTagAsync operation
#
##############################################################################
call_unrelateWebPageTagAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webPageId tagId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPages/{webPageId}/Tags/{tagId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call updateWebPageAsync operation
#
##############################################################################
call_updateWebPageAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webPageId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebPages/{webPageId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call countWebTemplatesAsync operation
#
##############################################################################
call_countWebTemplatesAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebTemplates/Count" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call createWebTemplateAsync operation
#
##############################################################################
call_createWebTemplateAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebTemplates" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="POST"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deleteWebTemplateAsync operation
#
##############################################################################
call_deleteWebTemplateAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webTemplateId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebTemplates/{webTemplateId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getWebTemplateByIdAsync operation
#
##############################################################################
call_getWebTemplateByIdAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webTemplateId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebTemplates/{webTemplateId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getWebTemplatesAsync operation
#
##############################################################################
call_getWebTemplatesAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebTemplates" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call updateWebTemplateAsync operation
#
##############################################################################
call_updateWebTemplateAsync() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(webTemplateId)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(tenantId api-version)
    local path

    if ! path=$(build_request_path "/api/v2/ContentService/WebTemplates/{webTemplateId}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the OpenAPI specification
    # if values produces and consumes are defined unambiguously
    #


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo -e "\\t- application/xml"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}



##############################################################################
#
# Main
#
##############################################################################


# Check dependencies
type curl >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'cURL' installed."; exit 1; }
type sed >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'sed' installed."; exit 1; }
type column >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'bsdmainutils' installed."; exit 1; }

#
# Process command line
#
# Pass all arguments before 'operation' to cURL except the ones we override
#
take_user=false
take_host=false
take_accept_header=false
take_contenttype_header=false

for key in "$@"; do
# Take the value of -u|--user argument
if [[ "$take_user" = true ]]; then
    basic_auth_credential="$key"
    take_user=false
    continue
fi
# Take the value of --host argument
if [[ "$take_host" = true ]]; then
    host="$key"
    take_host=false
    continue
fi
# Take the value of --accept argument
if [[ "$take_accept_header" = true ]]; then
    header_accept=$(lookup_mime_type "$key")
    take_accept_header=false
    continue
fi
# Take the value of --content-type argument
if [[ "$take_contenttype_header" = true ]]; then
    header_content_type=$(lookup_mime_type "$key")
    take_contenttype_header=false
    continue
fi
case $key in
    -h|--help)
    if [[ "x$operation" == "x" ]]; then
        print_help
        exit 0
    else
        eval "print_${operation}_help"
        exit 0
    fi
    ;;
    -V|--version)
    print_version
    exit 0
    ;;
    --about)
    print_about
    exit 0
    ;;
    -u|--user)
    take_user=true
    ;;
    --host)
    take_host=true
    ;;
    --force)
    force=true
    ;;
    -ac|--accept)
    take_accept_header=true
    ;;
    -ct|--content-type)
    take_contenttype_header=true
    ;;
    --dry-run)
    print_curl=true
    ;;
    -nc|--no-colors)
        RED=""
        GREEN=""
        YELLOW=""
        BLUE=""
        MAGENTA=""
        CYAN=""
        WHITE=""
        BOLD=""
        OFF=""
        result_color_table=( "" "" "" "" "" "" "" )
    ;;
    countBlogPostsByAuthorAsync)
    operation="countBlogPostsByAuthorAsync"
    ;;
    getBlogAuthorByIdAsync)
    operation="getBlogAuthorByIdAsync"
    ;;
    getBlogAuthorsAsync)
    operation="getBlogAuthorsAsync"
    ;;
    getBlogPostsByAuthorAsync)
    operation="getBlogPostsByAuthorAsync"
    ;;
    countBlogPostCategoriesAsync)
    operation="countBlogPostCategoriesAsync"
    ;;
    createBlogPostCategoryAsync)
    operation="createBlogPostCategoryAsync"
    ;;
    deleteBlogPostCategoryAsync)
    operation="deleteBlogPostCategoryAsync"
    ;;
    getBlogPostCategoriesAsync)
    operation="getBlogPostCategoriesAsync"
    ;;
    getBlogPostCategoryByIdAsync)
    operation="getBlogPostCategoryByIdAsync"
    ;;
    updateBlogPostCategoryAsync)
    operation="updateBlogPostCategoryAsync"
    ;;
    createBlogPostTagAsync)
    operation="createBlogPostTagAsync"
    ;;
    deleteBlogPostTagAsync)
    operation="deleteBlogPostTagAsync"
    ;;
    getBlogPostTagByIdAsync)
    operation="getBlogPostTagByIdAsync"
    ;;
    getBlogPostTagsAsync)
    operation="getBlogPostTagsAsync"
    ;;
    updateBlogPostTagAsync)
    operation="updateBlogPostTagAsync"
    ;;
    createBlogPostAsync)
    operation="createBlogPostAsync"
    ;;
    createCategoryForBlogPostAsync)
    operation="createCategoryForBlogPostAsync"
    ;;
    createCommentForBlogPostAsync)
    operation="createCommentForBlogPostAsync"
    ;;
    createTagForBlogPostAsync)
    operation="createTagForBlogPostAsync"
    ;;
    deleteBlogPostAsync)
    operation="deleteBlogPostAsync"
    ;;
    deleteCommentFromBlogPostAsync)
    operation="deleteCommentFromBlogPostAsync"
    ;;
    getBlogPostByIdAsync)
    operation="getBlogPostByIdAsync"
    ;;
    getBlogPostsAsync)
    operation="getBlogPostsAsync"
    ;;
    getBlogPostsCountAsync)
    operation="getBlogPostsCountAsync"
    ;;
    getCategoriesForBlogPostAsync)
    operation="getCategoriesForBlogPostAsync"
    ;;
    getCommentsForBlogPostAsync)
    operation="getCommentsForBlogPostAsync"
    ;;
    getRepliesForCommentAsync)
    operation="getRepliesForCommentAsync"
    ;;
    getTagsForBlogPostAsync)
    operation="getTagsForBlogPostAsync"
    ;;
    relateCategoryToBlogPostAsync)
    operation="relateCategoryToBlogPostAsync"
    ;;
    relateTagToBlogPostAsync)
    operation="relateTagToBlogPostAsync"
    ;;
    replyToCommentAsync)
    operation="replyToCommentAsync"
    ;;
    unrelateCategoryFromBlogPostAsync)
    operation="unrelateCategoryFromBlogPostAsync"
    ;;
    unrelateTagFromBlogPostAsync)
    operation="unrelateTagFromBlogPostAsync"
    ;;
    updateBlogPostAsync)
    operation="updateBlogPostAsync"
    ;;
    getBusinessDomainByIdAsync)
    operation="getBusinessDomainByIdAsync"
    ;;
    getBusinessDomainsAsync)
    operation="getBusinessDomainsAsync"
    ;;
    getBusinessDomainsCountAsync)
    operation="getBusinessDomainsCountAsync"
    ;;
    forgotPasswordPost)
    operation="forgotPasswordPost"
    ;;
    healthGet)
    operation="healthGet"
    ;;
    helloGet)
    operation="helloGet"
    ;;
    loginPost)
    operation="loginPost"
    ;;
    manage2faPost)
    operation="manage2faPost"
    ;;
    manageInfoGet)
    operation="manageInfoGet"
    ;;
    manageInfoPost)
    operation="manageInfoPost"
    ;;
    mapIdentityApiConfirmEmail)
    operation="mapIdentityApiConfirmEmail"
    ;;
    refreshPost)
    operation="refreshPost"
    ;;
    registerPost)
    operation="registerPost"
    ;;
    resendConfirmationEmailPost)
    operation="resendConfirmationEmailPost"
    ;;
    resetPasswordPost)
    operation="resetPasswordPost"
    ;;
    versionGet)
    operation="versionGet"
    ;;
    createWebPortalAsync)
    operation="createWebPortalAsync"
    ;;
    deleteWebPortalAsync)
    operation="deleteWebPortalAsync"
    ;;
    getCurrentWebPortalAsync)
    operation="getCurrentWebPortalAsync"
    ;;
    getCurrentWebPortalOptionsAsync)
    operation="getCurrentWebPortalOptionsAsync"
    ;;
    getRootWebPortalAsync)
    operation="getRootWebPortalAsync"
    ;;
    getWebPortalByIdAsync)
    operation="getWebPortalByIdAsync"
    ;;
    getWebPortalOptionsAsync)
    operation="getWebPortalOptionsAsync"
    ;;
    getWebPortalSettingsAsync)
    operation="getWebPortalSettingsAsync"
    ;;
    initializeCurrentWebPortalAsync)
    operation="initializeCurrentWebPortalAsync"
    ;;
    patchWebPortalAsync)
    operation="patchWebPortalAsync"
    ;;
    searchWebPortalAsync)
    operation="searchWebPortalAsync"
    ;;
    updateWebPortalAsync)
    operation="updateWebPortalAsync"
    ;;
    getLatestCurrencyRatesModelAsync)
    operation="getLatestCurrencyRatesModelAsync"
    ;;
    countWebContentsAsync)
    operation="countWebContentsAsync"
    ;;
    createWebContentAsync)
    operation="createWebContentAsync"
    ;;
    deleteWebContentAsync)
    operation="deleteWebContentAsync"
    ;;
    getWebContentByIdAsync)
    operation="getWebContentByIdAsync"
    ;;
    getWebContentsAsync)
    operation="getWebContentsAsync"
    ;;
    updateWebContentAsync)
    operation="updateWebContentAsync"
    ;;
    createWebPageCategoryAsync)
    operation="createWebPageCategoryAsync"
    ;;
    deleteWebPageCategoryAsync)
    operation="deleteWebPageCategoryAsync"
    ;;
    getWebPageCategoriesAsync)
    operation="getWebPageCategoriesAsync"
    ;;
    getWebPageCategoryByIdAsync)
    operation="getWebPageCategoryByIdAsync"
    ;;
    updateWebPageCategoryAsync)
    operation="updateWebPageCategoryAsync"
    ;;
    createWebPageTagAsync)
    operation="createWebPageTagAsync"
    ;;
    deleteWebPageTagAsync)
    operation="deleteWebPageTagAsync"
    ;;
    getWebPageTagByIdAsync)
    operation="getWebPageTagByIdAsync"
    ;;
    getWebPageTagsAsync)
    operation="getWebPageTagsAsync"
    ;;
    updateWebPageTagAsync)
    operation="updateWebPageTagAsync"
    ;;
    countWebPagesAsync)
    operation="countWebPagesAsync"
    ;;
    createWebPageAsync)
    operation="createWebPageAsync"
    ;;
    createWebPageCategoryRelationAsync)
    operation="createWebPageCategoryRelationAsync"
    ;;
    createWebPageTagRelationAsync)
    operation="createWebPageTagRelationAsync"
    ;;
    deleteWebPageAsync)
    operation="deleteWebPageAsync"
    ;;
    getCategoriesByWebPageAsync)
    operation="getCategoriesByWebPageAsync"
    ;;
    getTagsByWebPageAsync)
    operation="getTagsByWebPageAsync"
    ;;
    getWebPageByIdAsync)
    operation="getWebPageByIdAsync"
    ;;
    getWebPagesAsync)
    operation="getWebPagesAsync"
    ;;
    relateWebPageToCategoryAsync)
    operation="relateWebPageToCategoryAsync"
    ;;
    relateWebPageToTagAsync)
    operation="relateWebPageToTagAsync"
    ;;
    unrelateWebPageCategoryAsync)
    operation="unrelateWebPageCategoryAsync"
    ;;
    unrelateWebPageTagAsync)
    operation="unrelateWebPageTagAsync"
    ;;
    updateWebPageAsync)
    operation="updateWebPageAsync"
    ;;
    countWebTemplatesAsync)
    operation="countWebTemplatesAsync"
    ;;
    createWebTemplateAsync)
    operation="createWebTemplateAsync"
    ;;
    deleteWebTemplateAsync)
    operation="deleteWebTemplateAsync"
    ;;
    getWebTemplateByIdAsync)
    operation="getWebTemplateByIdAsync"
    ;;
    getWebTemplatesAsync)
    operation="getWebTemplatesAsync"
    ;;
    updateWebTemplateAsync)
    operation="updateWebTemplateAsync"
    ;;
    *==*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content as strings
    if [[ "$operation" ]]; then
        IFS='==' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]="\"${body_value}\""
    fi
    ;;
    --body=*)
    # Parse value of body as argument and convert it into only
    # the raw body content
    if [[ "$operation" ]]; then
        IFS='--body=' read -r body_value <<< "$key"
        body_value=${body_value##--body=}
        body_parameters["RAW_BODY"]="${body_value}"
        RAW_BODY=1
    fi
    ;;
    *:=*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content without quotes
    if [[ "$operation" ]]; then
        # ignore error about 'sep' being unused
        # shellcheck disable=SC2034
        IFS=':=' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]=${body_value}
    fi
    ;;
    +([^=]):*)
    # Parse header arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS=':' read -r header_name header_value <<< "$key"
        header_arguments[$header_name]=$header_value
    else
        curl_arguments+=" $key"
    fi
    ;;
    -)
    body_content_temp_file=$(mktemp)
    cat - > "$body_content_temp_file"
    ;;
    *=*)
    # Parse operation arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS='=' read -r parameter_name parameter_value <<< "$key"
        if [[ -z "${operation_parameters[$parameter_name]+foo}" ]]; then
            operation_parameters[$parameter_name]=$(url_escape "${parameter_value}")
        else
            operation_parameters[$parameter_name]+=":::"$(url_escape "${parameter_value}")
        fi
    else
        curl_arguments+=" $key"
    fi
    ;;
    *)
    # If we are before the operation, treat the arguments as cURL arguments
    if [[ "x$operation" == "x" ]]; then
        # Maintain quotes around cURL arguments if necessary
        space_regexp="[[:space:]]"
        if [[ $key =~ $space_regexp ]]; then
            curl_arguments+=" \"$key\""
        else
            curl_arguments+=" $key"
        fi
    fi
    ;;
esac
done


# Check if user provided host name
if [[ -z "$host" ]]; then
    ERROR_MSG="ERROR: No hostname provided!!! You have to  provide on command line option '--host ...'"
    exit 1
fi

# Check if user specified operation ID
if [[ -z "$operation" ]]; then
    ERROR_MSG="ERROR: No operation specified!!!"
    exit 1
fi


# Run cURL command based on the operation ID
case $operation in
    countBlogPostsByAuthorAsync)
    call_countBlogPostsByAuthorAsync
    ;;
    getBlogAuthorByIdAsync)
    call_getBlogAuthorByIdAsync
    ;;
    getBlogAuthorsAsync)
    call_getBlogAuthorsAsync
    ;;
    getBlogPostsByAuthorAsync)
    call_getBlogPostsByAuthorAsync
    ;;
    countBlogPostCategoriesAsync)
    call_countBlogPostCategoriesAsync
    ;;
    createBlogPostCategoryAsync)
    call_createBlogPostCategoryAsync
    ;;
    deleteBlogPostCategoryAsync)
    call_deleteBlogPostCategoryAsync
    ;;
    getBlogPostCategoriesAsync)
    call_getBlogPostCategoriesAsync
    ;;
    getBlogPostCategoryByIdAsync)
    call_getBlogPostCategoryByIdAsync
    ;;
    updateBlogPostCategoryAsync)
    call_updateBlogPostCategoryAsync
    ;;
    createBlogPostTagAsync)
    call_createBlogPostTagAsync
    ;;
    deleteBlogPostTagAsync)
    call_deleteBlogPostTagAsync
    ;;
    getBlogPostTagByIdAsync)
    call_getBlogPostTagByIdAsync
    ;;
    getBlogPostTagsAsync)
    call_getBlogPostTagsAsync
    ;;
    updateBlogPostTagAsync)
    call_updateBlogPostTagAsync
    ;;
    createBlogPostAsync)
    call_createBlogPostAsync
    ;;
    createCategoryForBlogPostAsync)
    call_createCategoryForBlogPostAsync
    ;;
    createCommentForBlogPostAsync)
    call_createCommentForBlogPostAsync
    ;;
    createTagForBlogPostAsync)
    call_createTagForBlogPostAsync
    ;;
    deleteBlogPostAsync)
    call_deleteBlogPostAsync
    ;;
    deleteCommentFromBlogPostAsync)
    call_deleteCommentFromBlogPostAsync
    ;;
    getBlogPostByIdAsync)
    call_getBlogPostByIdAsync
    ;;
    getBlogPostsAsync)
    call_getBlogPostsAsync
    ;;
    getBlogPostsCountAsync)
    call_getBlogPostsCountAsync
    ;;
    getCategoriesForBlogPostAsync)
    call_getCategoriesForBlogPostAsync
    ;;
    getCommentsForBlogPostAsync)
    call_getCommentsForBlogPostAsync
    ;;
    getRepliesForCommentAsync)
    call_getRepliesForCommentAsync
    ;;
    getTagsForBlogPostAsync)
    call_getTagsForBlogPostAsync
    ;;
    relateCategoryToBlogPostAsync)
    call_relateCategoryToBlogPostAsync
    ;;
    relateTagToBlogPostAsync)
    call_relateTagToBlogPostAsync
    ;;
    replyToCommentAsync)
    call_replyToCommentAsync
    ;;
    unrelateCategoryFromBlogPostAsync)
    call_unrelateCategoryFromBlogPostAsync
    ;;
    unrelateTagFromBlogPostAsync)
    call_unrelateTagFromBlogPostAsync
    ;;
    updateBlogPostAsync)
    call_updateBlogPostAsync
    ;;
    getBusinessDomainByIdAsync)
    call_getBusinessDomainByIdAsync
    ;;
    getBusinessDomainsAsync)
    call_getBusinessDomainsAsync
    ;;
    getBusinessDomainsCountAsync)
    call_getBusinessDomainsCountAsync
    ;;
    forgotPasswordPost)
    call_forgotPasswordPost
    ;;
    healthGet)
    call_healthGet
    ;;
    helloGet)
    call_helloGet
    ;;
    loginPost)
    call_loginPost
    ;;
    manage2faPost)
    call_manage2faPost
    ;;
    manageInfoGet)
    call_manageInfoGet
    ;;
    manageInfoPost)
    call_manageInfoPost
    ;;
    mapIdentityApiConfirmEmail)
    call_mapIdentityApiConfirmEmail
    ;;
    refreshPost)
    call_refreshPost
    ;;
    registerPost)
    call_registerPost
    ;;
    resendConfirmationEmailPost)
    call_resendConfirmationEmailPost
    ;;
    resetPasswordPost)
    call_resetPasswordPost
    ;;
    versionGet)
    call_versionGet
    ;;
    createWebPortalAsync)
    call_createWebPortalAsync
    ;;
    deleteWebPortalAsync)
    call_deleteWebPortalAsync
    ;;
    getCurrentWebPortalAsync)
    call_getCurrentWebPortalAsync
    ;;
    getCurrentWebPortalOptionsAsync)
    call_getCurrentWebPortalOptionsAsync
    ;;
    getRootWebPortalAsync)
    call_getRootWebPortalAsync
    ;;
    getWebPortalByIdAsync)
    call_getWebPortalByIdAsync
    ;;
    getWebPortalOptionsAsync)
    call_getWebPortalOptionsAsync
    ;;
    getWebPortalSettingsAsync)
    call_getWebPortalSettingsAsync
    ;;
    initializeCurrentWebPortalAsync)
    call_initializeCurrentWebPortalAsync
    ;;
    patchWebPortalAsync)
    call_patchWebPortalAsync
    ;;
    searchWebPortalAsync)
    call_searchWebPortalAsync
    ;;
    updateWebPortalAsync)
    call_updateWebPortalAsync
    ;;
    getLatestCurrencyRatesModelAsync)
    call_getLatestCurrencyRatesModelAsync
    ;;
    countWebContentsAsync)
    call_countWebContentsAsync
    ;;
    createWebContentAsync)
    call_createWebContentAsync
    ;;
    deleteWebContentAsync)
    call_deleteWebContentAsync
    ;;
    getWebContentByIdAsync)
    call_getWebContentByIdAsync
    ;;
    getWebContentsAsync)
    call_getWebContentsAsync
    ;;
    updateWebContentAsync)
    call_updateWebContentAsync
    ;;
    createWebPageCategoryAsync)
    call_createWebPageCategoryAsync
    ;;
    deleteWebPageCategoryAsync)
    call_deleteWebPageCategoryAsync
    ;;
    getWebPageCategoriesAsync)
    call_getWebPageCategoriesAsync
    ;;
    getWebPageCategoryByIdAsync)
    call_getWebPageCategoryByIdAsync
    ;;
    updateWebPageCategoryAsync)
    call_updateWebPageCategoryAsync
    ;;
    createWebPageTagAsync)
    call_createWebPageTagAsync
    ;;
    deleteWebPageTagAsync)
    call_deleteWebPageTagAsync
    ;;
    getWebPageTagByIdAsync)
    call_getWebPageTagByIdAsync
    ;;
    getWebPageTagsAsync)
    call_getWebPageTagsAsync
    ;;
    updateWebPageTagAsync)
    call_updateWebPageTagAsync
    ;;
    countWebPagesAsync)
    call_countWebPagesAsync
    ;;
    createWebPageAsync)
    call_createWebPageAsync
    ;;
    createWebPageCategoryRelationAsync)
    call_createWebPageCategoryRelationAsync
    ;;
    createWebPageTagRelationAsync)
    call_createWebPageTagRelationAsync
    ;;
    deleteWebPageAsync)
    call_deleteWebPageAsync
    ;;
    getCategoriesByWebPageAsync)
    call_getCategoriesByWebPageAsync
    ;;
    getTagsByWebPageAsync)
    call_getTagsByWebPageAsync
    ;;
    getWebPageByIdAsync)
    call_getWebPageByIdAsync
    ;;
    getWebPagesAsync)
    call_getWebPagesAsync
    ;;
    relateWebPageToCategoryAsync)
    call_relateWebPageToCategoryAsync
    ;;
    relateWebPageToTagAsync)
    call_relateWebPageToTagAsync
    ;;
    unrelateWebPageCategoryAsync)
    call_unrelateWebPageCategoryAsync
    ;;
    unrelateWebPageTagAsync)
    call_unrelateWebPageTagAsync
    ;;
    updateWebPageAsync)
    call_updateWebPageAsync
    ;;
    countWebTemplatesAsync)
    call_countWebTemplatesAsync
    ;;
    createWebTemplateAsync)
    call_createWebTemplateAsync
    ;;
    deleteWebTemplateAsync)
    call_deleteWebTemplateAsync
    ;;
    getWebTemplateByIdAsync)
    call_getWebTemplateByIdAsync
    ;;
    getWebTemplatesAsync)
    call_getWebTemplatesAsync
    ;;
    updateWebTemplateAsync)
    call_updateWebTemplateAsync
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
