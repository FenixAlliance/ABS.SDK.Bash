# SocialService Bash client

## Overview

This is a Bash client script for accessing SocialService service.

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
*CurriculumExperiencesApi* | [**createCurriculumExperienceAsync**](docs/CurriculumExperiencesApi.md#createcurriculumexperienceasync) | **POST** /api/v2/SocialService/Curriculums/{curriculumId}/Experiences | Create a curriculum experience
*CurriculumExperiencesApi* | [**deleteCurriculumExperienceAsync**](docs/CurriculumExperiencesApi.md#deletecurriculumexperienceasync) | **DELETE** /api/v2/SocialService/Curriculums/{curriculumId}/Experiences/{experienceId} | Delete a curriculum experience
*CurriculumExperiencesApi* | [**getCurriculumExperienceAsync**](docs/CurriculumExperiencesApi.md#getcurriculumexperienceasync) | **GET** /api/v2/SocialService/Curriculums/{curriculumId}/Experiences/{experienceId} | Get curriculum experience by ID
*CurriculumExperiencesApi* | [**getCurriculumExperiencesAsync**](docs/CurriculumExperiencesApi.md#getcurriculumexperiencesasync) | **GET** /api/v2/SocialService/Curriculums/{curriculumId}/Experiences | Get curriculum experiences
*CurriculumExperiencesApi* | [**getCurriculumExperiencesCountAsync**](docs/CurriculumExperiencesApi.md#getcurriculumexperiencescountasync) | **GET** /api/v2/SocialService/Curriculums/{curriculumId}/Experiences/Count | Count curriculum experiences
*CurriculumExperiencesApi* | [**patchCurriculumExperienceAsync**](docs/CurriculumExperiencesApi.md#patchcurriculumexperienceasync) | **PATCH** /api/v2/SocialService/Curriculums/{curriculumId}/Experiences/{experienceId} | Patch a curriculum experience
*CurriculumExperiencesApi* | [**updateCurriculumExperienceAsync**](docs/CurriculumExperiencesApi.md#updatecurriculumexperienceasync) | **PUT** /api/v2/SocialService/Curriculums/{curriculumId}/Experiences/{experienceId} | Update a curriculum experience
*CurriculumsApi* | [**createCurriculumAsync**](docs/CurriculumsApi.md#createcurriculumasync) | **POST** /api/v2/SocialService/Curriculums | Create a curriculum
*CurriculumsApi* | [**deleteCurriculumAsync**](docs/CurriculumsApi.md#deletecurriculumasync) | **DELETE** /api/v2/SocialService/Curriculums/{curriculumId} | Delete a curriculum
*CurriculumsApi* | [**getCurriculumAsync**](docs/CurriculumsApi.md#getcurriculumasync) | **GET** /api/v2/SocialService/Curriculums/{curriculumId} | Get curriculum by ID
*CurriculumsApi* | [**getCurriculumsAsync**](docs/CurriculumsApi.md#getcurriculumsasync) | **GET** /api/v2/SocialService/Curriculums | Get curricula
*CurriculumsApi* | [**getCurriculumsCountAsync**](docs/CurriculumsApi.md#getcurriculumscountasync) | **GET** /api/v2/SocialService/Curriculums/Count | Count curricula
*CurriculumsApi* | [**patchCurriculumAsync**](docs/CurriculumsApi.md#patchcurriculumasync) | **PATCH** /api/v2/SocialService/Curriculums/{curriculumId} | Patch a curriculum
*CurriculumsApi* | [**updateCurriculumAsync**](docs/CurriculumsApi.md#updatecurriculumasync) | **PUT** /api/v2/SocialService/Curriculums/{curriculumId} | Update a curriculum
*FenixAllianceABSWebApi* | [**accountLogoutPost**](docs/FenixAllianceABSWebApi.md#accountlogoutpost) | **POST** /Account/Logout | 
*FenixAllianceABSWebApi* | [**accountManageDownloadPersonalDataPost**](docs/FenixAllianceABSWebApi.md#accountmanagedownloadpersonaldatapost) | **POST** /Account/Manage/DownloadPersonalData | 
*FenixAllianceABSWebApi* | [**accountManageLinkExternalLoginPost**](docs/FenixAllianceABSWebApi.md#accountmanagelinkexternalloginpost) | **POST** /Account/Manage/LinkExternalLogin | 
*FenixAllianceABSWebApi* | [**accountPerformExternalLoginPost**](docs/FenixAllianceABSWebApi.md#accountperformexternalloginpost) | **POST** /Account/PerformExternalLogin | 
*FenixAllianceABSWebApi* | [**forgotPasswordPost**](docs/FenixAllianceABSWebApi.md#forgotpasswordpost) | **POST** /forgotPassword | 
*FenixAllianceABSWebApi* | [**healthGet**](docs/FenixAllianceABSWebApi.md#healthget) | **GET** /health | 
*FenixAllianceABSWebApi* | [**helloGet**](docs/FenixAllianceABSWebApi.md#helloget) | **GET** /hello | 
*FenixAllianceABSWebApi* | [**loginPost**](docs/FenixAllianceABSWebApi.md#loginpost) | **POST** /login | 
*FenixAllianceABSWebApi* | [**manage2faPost**](docs/FenixAllianceABSWebApi.md#manage2fapost) | **POST** /manage/2fa | 
*FenixAllianceABSWebApi* | [**manageInfoGet**](docs/FenixAllianceABSWebApi.md#manageinfoget) | **GET** /manage/info | 
*FenixAllianceABSWebApi* | [**manageInfoPost**](docs/FenixAllianceABSWebApi.md#manageinfopost) | **POST** /manage/info | 
*FenixAllianceABSWebApi* | [**mapIdentityApiConfirmEmail**](docs/FenixAllianceABSWebApi.md#mapidentityapiconfirmemail) | **GET** /confirmEmail | 
*FenixAllianceABSWebApi* | [**refreshPost**](docs/FenixAllianceABSWebApi.md#refreshpost) | **POST** /refresh | 
*FenixAllianceABSWebApi* | [**registerPost**](docs/FenixAllianceABSWebApi.md#registerpost) | **POST** /register | 
*FenixAllianceABSWebApi* | [**resendConfirmationEmailPost**](docs/FenixAllianceABSWebApi.md#resendconfirmationemailpost) | **POST** /resendConfirmationEmail | 
*FenixAllianceABSWebApi* | [**resetPasswordPost**](docs/FenixAllianceABSWebApi.md#resetpasswordpost) | **POST** /resetPassword | 
*FenixAllianceABSWebApi* | [**versionGet**](docs/FenixAllianceABSWebApi.md#versionget) | **GET** /version | 
*SkillsApi* | [**createSkillAsync**](docs/SkillsApi.md#createskillasync) | **POST** /api/v2/SocialService/Skills | Create a skill
*SkillsApi* | [**deleteSkillAsync**](docs/SkillsApi.md#deleteskillasync) | **DELETE** /api/v2/SocialService/Skills/{skillId} | Delete a skill
*SkillsApi* | [**getSkillByIdAsync**](docs/SkillsApi.md#getskillbyidasync) | **GET** /api/v2/SocialService/Skills/{skillId} | Get skill by ID
*SkillsApi* | [**getSkillsAsync**](docs/SkillsApi.md#getskillsasync) | **GET** /api/v2/SocialService/Skills | Get skills
*SkillsApi* | [**getSkillsCountAsync**](docs/SkillsApi.md#getskillscountasync) | **GET** /api/v2/SocialService/Skills/Count | Count skills
*SkillsApi* | [**patchSkillAsync**](docs/SkillsApi.md#patchskillasync) | **PATCH** /api/v2/SocialService/Skills/{skillId} | Patch a skill
*SkillsApi* | [**updateSkillAsync**](docs/SkillsApi.md#updateskillasync) | **PUT** /api/v2/SocialService/Skills/{skillId} | Update a skill
*SocialFeedsApi* | [**createFeedPostAsync**](docs/SocialFeedsApi.md#createfeedpostasync) | **POST** /api/v2/SocialService/SocialFeeds/{socialFeedId}/Posts | Create a social feed post
*SocialFeedsApi* | [**deleteFeedPostAsync**](docs/SocialFeedsApi.md#deletefeedpostasync) | **DELETE** /api/v2/SocialService/SocialFeeds/{socialFeedId}/Posts/{feedPostId} | Delete a social feed post
*SocialFeedsApi* | [**getFeedNotifications**](docs/SocialFeedsApi.md#getfeednotifications) | **GET** /api/v2/SocialService/SocialFeeds | Get social feeds
*SocialFeedsApi* | [**getFeedPostAsync**](docs/SocialFeedsApi.md#getfeedpostasync) | **GET** /api/v2/SocialService/SocialFeeds/{socialFeedId}/Posts/{feedPostId} | Get social feed post by ID
*SocialFeedsApi* | [**getFeedPostsAsync**](docs/SocialFeedsApi.md#getfeedpostsasync) | **GET** /api/v2/SocialService/SocialFeeds/{socialFeedId}/Posts | Get social feed posts
*SocialFeedsApi* | [**getFeedPostsCountAsync**](docs/SocialFeedsApi.md#getfeedpostscountasync) | **GET** /api/v2/SocialService/SocialFeeds/{socialFeedId}/Posts/Count | Count social feed posts
*SocialFeedsApi* | [**getNotificationAsync**](docs/SocialFeedsApi.md#getnotificationasync) | **GET** /api/v2/SocialService/SocialFeeds/{socialFeedId} | Get social feed by ID
*SocialFeedsApi* | [**getNotificationsCountAsync**](docs/SocialFeedsApi.md#getnotificationscountasync) | **GET** /api/v2/SocialService/SocialFeeds/Count | Count social feeds
*SocialFeedsApi* | [**patchFeedPostAsync**](docs/SocialFeedsApi.md#patchfeedpostasync) | **PATCH** /api/v2/SocialService/SocialFeeds/{socialFeedId}/Posts/{feedPostId} | Patch a social feed post
*SocialFeedsApi* | [**updateFeedPostAsync**](docs/SocialFeedsApi.md#updatefeedpostasync) | **PUT** /api/v2/SocialService/SocialFeeds/{socialFeedId}/Posts/{feedPostId} | Update a social feed post
*SocialGroupsApi* | [**countSocialGroupsAsync**](docs/SocialGroupsApi.md#countsocialgroupsasync) | **GET** /api/v2/SocialService/SocialGroups/Count | Count social groups
*SocialGroupsApi* | [**createSocialGroupAsync**](docs/SocialGroupsApi.md#createsocialgroupasync) | **POST** /api/v2/SocialService/SocialGroups | Create a social group
*SocialGroupsApi* | [**deleteSocialGroupAsync**](docs/SocialGroupsApi.md#deletesocialgroupasync) | **DELETE** /api/v2/SocialService/SocialGroups/{socialGroupId} | Delete a social group
*SocialGroupsApi* | [**getSocialGroupByIdAsync**](docs/SocialGroupsApi.md#getsocialgroupbyidasync) | **GET** /api/v2/SocialService/SocialGroups/{socialGroupId} | Get social group by ID
*SocialGroupsApi* | [**getSocialGroupsAsync**](docs/SocialGroupsApi.md#getsocialgroupsasync) | **GET** /api/v2/SocialService/SocialGroups | Get social groups
*SocialGroupsApi* | [**patchSocialGroupAsync**](docs/SocialGroupsApi.md#patchsocialgroupasync) | **PATCH** /api/v2/SocialService/SocialGroups/{socialGroupId} | Patch a social group
*SocialGroupsApi* | [**updateSocialGroupAsync**](docs/SocialGroupsApi.md#updatesocialgroupasync) | **PUT** /api/v2/SocialService/SocialGroups/{socialGroupId} | Update a social group
*SocialPostsApi* | [**createSocialPostAsync**](docs/SocialPostsApi.md#createsocialpostasync) | **POST** /api/v2/SocialService/SocialPosts | Create a social post
*SocialPostsApi* | [**createSocialPostAttachmentAsync**](docs/SocialPostsApi.md#createsocialpostattachmentasync) | **POST** /api/v2/SocialService/SocialPosts/{socialPostId}/Attachments | Create a social post attachment
*SocialPostsApi* | [**createSocialPostCommentAsync**](docs/SocialPostsApi.md#createsocialpostcommentasync) | **POST** /api/v2/SocialService/SocialPosts/{socialPostId}/Comments | Create a social post comment
*SocialPostsApi* | [**createSocialPostReactionAsync**](docs/SocialPostsApi.md#createsocialpostreactionasync) | **POST** /api/v2/SocialService/SocialPosts/{socialPostId}/Reactions | Create a social post reaction
*SocialPostsApi* | [**deleteSocialPostAsync**](docs/SocialPostsApi.md#deletesocialpostasync) | **DELETE** /api/v2/SocialService/SocialPosts/{socialPostId} | Delete a social post
*SocialPostsApi* | [**deleteSocialPostAttachmentAsync**](docs/SocialPostsApi.md#deletesocialpostattachmentasync) | **DELETE** /api/v2/SocialService/SocialPosts/{socialPostId}/Attachments/{attachmentId} | Delete a social post attachment
*SocialPostsApi* | [**deleteSocialPostCommentAsync**](docs/SocialPostsApi.md#deletesocialpostcommentasync) | **DELETE** /api/v2/SocialService/SocialPosts/{socialPostId}/Comments/{commentId} | Delete a social post comment
*SocialPostsApi* | [**deleteSocialPostReactionAsync**](docs/SocialPostsApi.md#deletesocialpostreactionasync) | **DELETE** /api/v2/SocialService/SocialPosts/{socialPostId}/Reactions/{reactionId} | Delete a social post reaction
*SocialPostsApi* | [**getSocialPostAsync**](docs/SocialPostsApi.md#getsocialpostasync) | **GET** /api/v2/SocialService/SocialPosts/{socialPostId} | Get social post by ID
*SocialPostsApi* | [**getSocialPostAttachmentAsync**](docs/SocialPostsApi.md#getsocialpostattachmentasync) | **GET** /api/v2/SocialService/SocialPosts/{socialPostId}/Attachments/{attachmentId} | Get social post attachment by ID
*SocialPostsApi* | [**getSocialPostAttachmentsAsync**](docs/SocialPostsApi.md#getsocialpostattachmentsasync) | **GET** /api/v2/SocialService/SocialPosts/{socialPostId}/Attachments | Get social post attachments
*SocialPostsApi* | [**getSocialPostAttachmentsCountAsync**](docs/SocialPostsApi.md#getsocialpostattachmentscountasync) | **GET** /api/v2/SocialService/SocialPosts/{socialPostId}/Attachments/Count | Count social post attachments
*SocialPostsApi* | [**getSocialPostCommentAsync**](docs/SocialPostsApi.md#getsocialpostcommentasync) | **GET** /api/v2/SocialService/SocialPosts/{socialPostId}/Comments/{commentId} | Get social post comment by ID
*SocialPostsApi* | [**getSocialPostCommentsAsync**](docs/SocialPostsApi.md#getsocialpostcommentsasync) | **GET** /api/v2/SocialService/SocialPosts/{socialPostId}/Comments | Get social post comments
*SocialPostsApi* | [**getSocialPostCommentsCountAsync**](docs/SocialPostsApi.md#getsocialpostcommentscountasync) | **GET** /api/v2/SocialService/SocialPosts/{socialPostId}/Comments/Count | Count social post comments
*SocialPostsApi* | [**getSocialPostReactionAsync**](docs/SocialPostsApi.md#getsocialpostreactionasync) | **GET** /api/v2/SocialService/SocialPosts/{socialPostId}/Reactions/{reactionId} | Get social post reaction by ID
*SocialPostsApi* | [**getSocialPostReactionsAsync**](docs/SocialPostsApi.md#getsocialpostreactionsasync) | **GET** /api/v2/SocialService/SocialPosts/{socialPostId}/Reactions | Get social post reactions
*SocialPostsApi* | [**getSocialPostReactionsCountAsync**](docs/SocialPostsApi.md#getsocialpostreactionscountasync) | **GET** /api/v2/SocialService/SocialPosts/{socialPostId}/Reactions/Count | Count social post reactions
*SocialPostsApi* | [**getSocialPostsAsync**](docs/SocialPostsApi.md#getsocialpostsasync) | **GET** /api/v2/SocialService/SocialPosts | Get social posts
*SocialPostsApi* | [**getSocialPostsCountAsync**](docs/SocialPostsApi.md#getsocialpostscountasync) | **GET** /api/v2/SocialService/SocialPosts/Count | Count social posts
*SocialPostsApi* | [**patchSocialPostAsync**](docs/SocialPostsApi.md#patchsocialpostasync) | **PATCH** /api/v2/SocialService/SocialPosts/{socialPostId} | Patch a social post
*SocialPostsApi* | [**updateSocialPostAsync**](docs/SocialPostsApi.md#updatesocialpostasync) | **PUT** /api/v2/SocialService/SocialPosts/{socialPostId} | Update a social post
*SocialPostsApi* | [**updateSocialPostAttachmentAsync**](docs/SocialPostsApi.md#updatesocialpostattachmentasync) | **PUT** /api/v2/SocialService/SocialPosts/{socialPostId}/Attachments/{attachmentId} | Update a social post attachment
*SocialPostsApi* | [**updateSocialPostCommentAsync**](docs/SocialPostsApi.md#updatesocialpostcommentasync) | **PUT** /api/v2/SocialService/SocialPosts/{socialPostId}/Comments/{commentId} | Update a social post comment
*SocialPostsApi* | [**updateSocialPostReactionAsync**](docs/SocialPostsApi.md#updatesocialpostreactionasync) | **PUT** /api/v2/SocialService/SocialPosts/{socialPostId}/Reactions/{reactionId} | Update a social post reaction
*SocialProfilesApi* | [**countConversationsAsync**](docs/SocialProfilesApi.md#countconversationsasync) | **GET** /api/v2/SocialService/SocialProfiles/{socialProfileId}/Conversations/Count | Count Conversations
*SocialProfilesApi* | [**countFollowedProfilesAsync**](docs/SocialProfilesApi.md#countfollowedprofilesasync) | **GET** /api/v2/SocialService/SocialProfiles/{socialProfileId}/Follows/Profiles/Count | Count Followed Profiles
*SocialProfilesApi* | [**countFollowerProfilesAsync**](docs/SocialProfilesApi.md#countfollowerprofilesasync) | **GET** /api/v2/SocialService/SocialProfiles/{socialProfileId}/Followers/Profiles/Count | Count Follower Profiles
*SocialProfilesApi* | [**countFollowersAsync**](docs/SocialProfilesApi.md#countfollowersasync) | **GET** /api/v2/SocialService/SocialProfiles/{socialProfileId}/Followers/Count | Count Followers
*SocialProfilesApi* | [**countFollowsAsync**](docs/SocialProfilesApi.md#countfollowsasync) | **GET** /api/v2/SocialService/SocialProfiles/{socialProfileId}/Follows/Count | Count Follows
*SocialProfilesApi* | [**countMessagesAsync**](docs/SocialProfilesApi.md#countmessagesasync) | **GET** /api/v2/SocialService/SocialProfiles/{conversationId}/Messages/Count | Count Messages
*SocialProfilesApi* | [**countNotificationsAsync**](docs/SocialProfilesApi.md#countnotificationsasync) | **GET** /api/v2/SocialService/SocialProfiles/{socialProfileId}/Notifications/Count | Count Notifications
*SocialProfilesApi* | [**countSocialProfilesAsync**](docs/SocialProfilesApi.md#countsocialprofilesasync) | **GET** /api/v2/SocialService/SocialProfiles/Count | Count Social Profiles
*SocialProfilesApi* | [**createConversationAsync**](docs/SocialProfilesApi.md#createconversationasync) | **POST** /api/v2/SocialService/SocialProfiles/{socialProfileId}/Conversations | Create Conversation
*SocialProfilesApi* | [**createMessageAsync**](docs/SocialProfilesApi.md#createmessageasync) | **POST** /api/v2/SocialService/SocialProfiles/{conversationId}/Messages | Create Message
*SocialProfilesApi* | [**deleteMessageAsync**](docs/SocialProfilesApi.md#deletemessageasync) | **DELETE** /api/v2/SocialService/SocialProfiles/{conversationId}/Messages/{messageId} | Delete Message
*SocialProfilesApi* | [**followAsync**](docs/SocialProfilesApi.md#followasync) | **POST** /api/v2/SocialService/SocialProfiles/{socialProfileId}/Follows/{followedSocialProfileId} | Follow
*SocialProfilesApi* | [**followExistsAsync**](docs/SocialProfilesApi.md#followexistsasync) | **GET** /api/v2/SocialService/SocialProfiles/{socialProfileId}/Follows/{followedSocialProfileId} | Check if Follow Exists
*SocialProfilesApi* | [**getConversationsAsync**](docs/SocialProfilesApi.md#getconversationsasync) | **GET** /api/v2/SocialService/SocialProfiles/{socialProfileId}/Conversations | Get Conversations
*SocialProfilesApi* | [**getFollowedProfilesAsync**](docs/SocialProfilesApi.md#getfollowedprofilesasync) | **GET** /api/v2/SocialService/SocialProfiles/{socialProfileId}/Follows/Profiles | Get Followed Profiles
*SocialProfilesApi* | [**getFollowerProfilesAsync**](docs/SocialProfilesApi.md#getfollowerprofilesasync) | **GET** /api/v2/SocialService/SocialProfiles/{socialProfileId}/Followers/Profiles | Get Follower Profiles
*SocialProfilesApi* | [**getFollowersAsync**](docs/SocialProfilesApi.md#getfollowersasync) | **GET** /api/v2/SocialService/SocialProfiles/{socialProfileId}/Followers | Get Followers
*SocialProfilesApi* | [**getFollowsAsync**](docs/SocialProfilesApi.md#getfollowsasync) | **GET** /api/v2/SocialService/SocialProfiles/{socialProfileId}/Follows | Get Follows
*SocialProfilesApi* | [**getMessagesAsync**](docs/SocialProfilesApi.md#getmessagesasync) | **GET** /api/v2/SocialService/SocialProfiles/{conversationId}/Messages | Get Messages
*SocialProfilesApi* | [**getNotificationByIdAsync**](docs/SocialProfilesApi.md#getnotificationbyidasync) | **GET** /api/v2/SocialService/SocialProfiles/{socialProfileId}/Notifications/{notificationId} | Get Notification
*SocialProfilesApi* | [**getNotificationsAsync**](docs/SocialProfilesApi.md#getnotificationsasync) | **GET** /api/v2/SocialService/SocialProfiles/{socialProfileId}/Notifications | Get Notifications
*SocialProfilesApi* | [**getSocialProfileAsync**](docs/SocialProfilesApi.md#getsocialprofileasync) | **GET** /api/v2/SocialService/SocialProfiles/{socialProfileId} | Get Social Profile
*SocialProfilesApi* | [**getSocialProfilesAsync**](docs/SocialProfilesApi.md#getsocialprofilesasync) | **GET** /api/v2/SocialService/SocialProfiles | Get Social Profiles
*SocialProfilesApi* | [**unfollowAsync**](docs/SocialProfilesApi.md#unfollowasync) | **DELETE** /api/v2/SocialService/SocialProfiles/{socialProfileId}/Follows/{followedSocialProfileId} | Unfollow
*SocialProfilesApi* | [**updateMessageAsync**](docs/SocialProfilesApi.md#updatemessageasync) | **PUT** /api/v2/SocialService/SocialProfiles/{conversationId}/Messages/{messageId} | Update Message


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [BooleanEnvelope](docs/BooleanEnvelope.md)
 - [ConversationCreateDto](docs/ConversationCreateDto.md)
 - [ConversationDto](docs/ConversationDto.md)
 - [ConversationDtoListEnvelope](docs/ConversationDtoListEnvelope.md)
 - [CurriculumCreateDto](docs/CurriculumCreateDto.md)
 - [CurriculumDto](docs/CurriculumDto.md)
 - [CurriculumDtoEnvelope](docs/CurriculumDtoEnvelope.md)
 - [CurriculumDtoListEnvelope](docs/CurriculumDtoListEnvelope.md)
 - [CurriculumExperienceCreateDto](docs/CurriculumExperienceCreateDto.md)
 - [CurriculumExperienceDto](docs/CurriculumExperienceDto.md)
 - [CurriculumExperienceDtoEnvelope](docs/CurriculumExperienceDtoEnvelope.md)
 - [CurriculumExperienceDtoListEnvelope](docs/CurriculumExperienceDtoListEnvelope.md)
 - [CurriculumExperienceUpdateDto](docs/CurriculumExperienceUpdateDto.md)
 - [CurriculumUpdateDto](docs/CurriculumUpdateDto.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [FollowRecordDto](docs/FollowRecordDto.md)
 - [FollowRecordDtoListEnvelope](docs/FollowRecordDtoListEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [NotificationDto](docs/NotificationDto.md)
 - [NotificationDtoEnvelope](docs/NotificationDtoEnvelope.md)
 - [NotificationDtoListEnvelope](docs/NotificationDtoListEnvelope.md)
 - [Operation](docs/Operation.md)
 - [PrivateMessageCreateDto](docs/PrivateMessageCreateDto.md)
 - [PrivateMessageDto](docs/PrivateMessageDto.md)
 - [PrivateMessageDtoListEnvelope](docs/PrivateMessageDtoListEnvelope.md)
 - [PrivateMessageUpdateDto](docs/PrivateMessageUpdateDto.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [SkillCreateDto](docs/SkillCreateDto.md)
 - [SkillDto](docs/SkillDto.md)
 - [SkillDtoEnvelope](docs/SkillDtoEnvelope.md)
 - [SkillDtoListEnvelope](docs/SkillDtoListEnvelope.md)
 - [SkillUpdateDto](docs/SkillUpdateDto.md)
 - [SocialFeedDto](docs/SocialFeedDto.md)
 - [SocialFeedDtoEnvelope](docs/SocialFeedDtoEnvelope.md)
 - [SocialFeedDtoListEnvelope](docs/SocialFeedDtoListEnvelope.md)
 - [SocialFeedPostCreateDto](docs/SocialFeedPostCreateDto.md)
 - [SocialFeedPostDto](docs/SocialFeedPostDto.md)
 - [SocialFeedPostDtoEnvelope](docs/SocialFeedPostDtoEnvelope.md)
 - [SocialFeedPostDtoListEnvelope](docs/SocialFeedPostDtoListEnvelope.md)
 - [SocialFeedPostUpdateDto](docs/SocialFeedPostUpdateDto.md)
 - [SocialGroupCreateDto](docs/SocialGroupCreateDto.md)
 - [SocialGroupDto](docs/SocialGroupDto.md)
 - [SocialGroupDtoEnvelope](docs/SocialGroupDtoEnvelope.md)
 - [SocialGroupDtoListEnvelope](docs/SocialGroupDtoListEnvelope.md)
 - [SocialGroupUpdateDto](docs/SocialGroupUpdateDto.md)
 - [SocialPostAttachmentCreateDto](docs/SocialPostAttachmentCreateDto.md)
 - [SocialPostAttachmentDto](docs/SocialPostAttachmentDto.md)
 - [SocialPostAttachmentDtoEnvelope](docs/SocialPostAttachmentDtoEnvelope.md)
 - [SocialPostAttachmentDtoListEnvelope](docs/SocialPostAttachmentDtoListEnvelope.md)
 - [SocialPostAttachmentUpdateDto](docs/SocialPostAttachmentUpdateDto.md)
 - [SocialPostCommentCreateDto](docs/SocialPostCommentCreateDto.md)
 - [SocialPostCommentDto](docs/SocialPostCommentDto.md)
 - [SocialPostCommentDtoEnvelope](docs/SocialPostCommentDtoEnvelope.md)
 - [SocialPostCommentDtoListEnvelope](docs/SocialPostCommentDtoListEnvelope.md)
 - [SocialPostCommentUpdateDto](docs/SocialPostCommentUpdateDto.md)
 - [SocialPostCreateDto](docs/SocialPostCreateDto.md)
 - [SocialPostDto](docs/SocialPostDto.md)
 - [SocialPostDtoEnvelope](docs/SocialPostDtoEnvelope.md)
 - [SocialPostDtoListEnvelope](docs/SocialPostDtoListEnvelope.md)
 - [SocialPostUpdateDto](docs/SocialPostUpdateDto.md)
 - [SocialProfileDto](docs/SocialProfileDto.md)
 - [SocialProfileDtoEnvelope](docs/SocialProfileDtoEnvelope.md)
 - [SocialProfileDtoListEnvelope](docs/SocialProfileDtoListEnvelope.md)
 - [SocialReactionCreateDto](docs/SocialReactionCreateDto.md)
 - [SocialReactionDto](docs/SocialReactionDto.md)
 - [SocialReactionDtoEnvelope](docs/SocialReactionDtoEnvelope.md)
 - [SocialReactionDtoListEnvelope](docs/SocialReactionDtoListEnvelope.md)
 - [SocialReactionUpdateDto](docs/SocialReactionUpdateDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

