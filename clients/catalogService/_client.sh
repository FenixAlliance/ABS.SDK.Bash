#compdef 

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# ! Based on: https://github.com/Valodim/zsh-curl-completion/blob/master/_curl
# !
# ! Generator version: 7.9.0
# !
# !
# ! Installation:
# !
# ! Copy the _ file to any directory under FPATH
# ! environment variable (echo $FPATH)
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


local curcontext="$curcontext" state line ret=1
typeset -A opt_args

typeset -A mime_type_abbreviations
# text/*
mime_type_abbreviations[text]="text/plain"
mime_type_abbreviations[html]="text/html"
mime_type_abbreviations[md]="text/x-markdown"
mime_type_abbreviations[csv]="text/csv"
mime_type_abbreviations[css]="text/css"
mime_type_abbreviations[rtf]="text/rtf"
# application/*
mime_type_abbreviations[json]="application/json"
mime_type_abbreviations[xml]="application/xml"
mime_type_abbreviations[yaml]="application/yaml"
mime_type_abbreviations[js]="application/javascript"
mime_type_abbreviations[bin]="application/octet-stream"
mime_type_abbreviations[rdf]="application/rdf+xml"
# image/*
mime_type_abbreviations[jpg]="image/jpeg"
mime_type_abbreviations[png]="image/png"
mime_type_abbreviations[gif]="image/gif"
mime_type_abbreviations[bmp]="image/bmp"
mime_type_abbreviations[tiff]="image/tiff"

#
# Generate zsh completion string list for abbreviated mime types
#
get_mime_type_completions() {
    typeset -a result
    result=()
    for k in "${(@k)mime_type_abbreviations}"; do
        value=$mime_type_abbreviations[${k}]
        #echo $value
        result+=( "${k}[${value}]" )
        #echo $result
    done
    echo "$result"
}

#
# cURL crypto engines completion function
#
_curl_crypto_engine() {
    local vals
    vals=( ${${(f)"$(curl --engine list)":gs/ /}[2,$]} )
    _describe -t outputs 'engines' vals && return 0
}

#
# cURL post data completion functions=
#
_curl_post_data() {

    # don't do anything further if this is raw content
    compset -P '=' && _message 'raw content' && return 0

    # complete filename or stdin for @ syntax
    compset -P '*@' && {
        local expl
        _description files expl stdin
        compadd "$expl[@]" - "-"
        _files
        return 0
    }

    # got a name already? expecting data.
    compset -P '*=' && _message 'data value' && return 0

    # otherwise, name (or @ or =) should be specified
    _message 'data name' && return 0

}


local arg_http arg_ftp arg_other arg_proxy arg_crypto arg_connection arg_auth arg_input arg_output

# HTTP Arguments
arg_http=(''\
  {-0,--http1.0}'[force use of use http 1.0 instead of 1.1]' \
  {-b,--cookie}'[pass data to http server as cookie]:data or file' \
  {-c,--cookie-jar}'[specify cookie file]:file name:_files' \
  {-d,--data}'[send specified data as HTTP POST data]:data:{_curl_post_data}' \
  '--data-binary[post HTTP POST data without any processing]:data:{_curl_post_data}' \
  '--data-urlencode[post HTTP POST data, with url encoding]:data:{_curl_post_data}' \
  {-f,--fail}'[enable failfast behavior for server errors]' \
  '*'{-F,--form}'[add POST form data]:name=content' \
  {-G,--get}'[use HTTP GET even with data (-d, --data, --data-binary)]' \
  '*'{-H,--header}'[specify an extra header]:header' \
  '--ignore-content-length[ignore Content-Length header]' \
  {-i,--include}'[include HTTP header in the output]' \
  {-j,--junk-session-cookies}'[discard all session cookies]' \
  {-e,--referer}'[send url as referer]:referer url:_urls' \
  {-L,--location}'[follow Location headers on http 3XX response]' \
  '--location-trusted[like --location, but allows sending of auth data to redirected hosts]' \
  '--max-redirs[set maximum number of redirection followings allowed]:number' \
  {-J,--remote-header-name}'[use Content-Disposition for output file name]' \
  {-O,--remote-name}'[write to filename parsed from url instead of stdout]' \
  '--post301[do not convert POST to GET after following 301 Location response (follow RFC 2616/10.3.2)]' \
  '--post302[do not convert POST to GET after following 302 Location response (follow RFC 2616/10.3.2)]' \
  )

# FTP arguments
arg_ftp=(\
  {-a,--append}'[append to target file instead of overwriting (FTP/SFTP)]' \
  '--crlf[convert LF to CRLF in upload]' \
  '--disable-eprt[disable use of EPRT and LPRT for active FTP transfers]' \
  '--disable-epsv[disable use of EPSV for passive FTP transfers]' \
  '--ftp-account[account data (FTP)]:data' \
  '--ftp-alternative-to-user[command to send when USER and PASS commands fail (FTP)]:command' \
  '--ftp-create-dirs[create paths remotely if it does not exist]' \
  '--ftp-method[ftp method to use to reach a file (FTP)]:method:(multicwd ocwd singlecwd)' \
  '--ftp-pasv[use passive mode for the data connection (FTP)]' \
  '--ftp-skip-pasv-ip[do not use the ip the server suggests for PASV]' \
  '--form-string[like --form, but do not parse content]:name=string' \
  '--ftp-pret[send PRET before PASV]' \
  '--ftp-ssl-ccc[use clear command channel (CCC) after authentication (FTP)]' \
  '--ftp-ssl-ccc-mode[sets the CCC mode (FTP)]:mode:(active passive)' \
  '--ftp-ssl-control[require SSL/TLS for FTP login, clear for transfer]' \
  {-l,--list-only}'[list names only when listing directories (FTP)]' \
  {-P,--ftp-port}'[use active mode, tell server to connect to specified address or interface (FTP]:address' \
  '*'{-Q,--quote}'[send arbitrary command to the remote server before transfer (FTP/SFTP)]:command' \
  )

# Other Protocol arguments
arg_other=(\
  '--mail-from[specify From: address]:address' \
  '--mail-rcpt[specify email recipient for SMTP, may be given multiple times]:address' \
  {-t,--telnet-option}'[pass options to telnet protocol]:opt=val' \
  '--tftp-blksize[set tftp BLKSIZE option]:value' \
  )

# Proxy arguments
arg_proxy=(\
  '--noproxy[list of hosts to connect directly to instead of through proxy]:no-proxy-list' \
  {-p,--proxytunnel}'[tunnel non-http protocols through http proxy]' \
  {-U,--proxy-user}'[specify the user name and password to use for proxy authentication]:user:password' \
  '--proxy-anyauth[use any authentication method for proxy, default to most secure]' \
  '--proxy-basic[use HTTP Basic authentication for proxy]' \
  '--proxy-digest[use http digest authentication for proxy]' \
  '--proxy-negotiate[enable GSS-Negotiate authentication for proxy]' \
  '--proxy-ntlm[enable ntlm authentication for proxy]' \
  '--proxy1.0[use http 1.0 proxy]:proxy url' \
  {-x,--proxy}'[use specified proxy]:proxy url' \
  '--socks5-gssapi-service[change service name for socks server]:servicename' \
  '--socks5-gssapi-nec[allow unprotected exchange of protection mode negotiation]' \
  )

# Crypto arguments
arg_crypto=(\
  {-1,--tlsv1}'[Forces curl to use TLS version 1 when negotiating with a remote TLS server.]' \
  {-2,--sslv2}'[Forces curl to use SSL version 2 when negotiating with a remote SSL server.]' \
  {-3,--sslv3}'[Forces curl to use SSL version 3 when negotiating with a remote SSL server.]' \
  '--ciphers[specifies which cipher to use for the ssl connection]:list of ciphers' \
  '--crlfile[specify file with revoked certificates]:file' \
  '--delegation[set delegation policy to use with GSS/kerberos]:delegation policy:(none policy always)' \
  {-E,--cert}'[use specified client certificate]:certificate file:_files' \
  '--engine[use selected OpenSSL crypto engine]:ssl crypto engine:{_curl_crypto_engine}' \
  '--egd-file[set ssl entropy gathering daemon socket]:entropy socket:_files' \
  '--cert-type[specify certificate type (PEM, DER, ENG)]:certificate type:(PEM DER ENG)' \
  '--cacert[specify certificate file to verify the peer with]:CA certificate:_files' \
  '--capath[specify a search path for certificate files]:CA certificate directory:_directories' \
  '--hostpubmd5[check remote hosts public key]:md5 hash' \
  {-k,--insecure}'[allow ssl to perform insecure ssl connections (ie, ignore certificate)]' \
  '--key[ssl/ssh private key file name]:key file:_files' \
  '--key-type[ssl/ssh private key file type]:file type:(PEM DER ENG)' \
  '--pubkey[ssh public key file]:pubkey file:_files' \
  '--random-file[set source of random data for ssl]:random source:_files' \
  '--no-sessionid[disable caching of ssl session ids]' \
  '--pass:phrase[passphrase for ssl/ssh private key]' \
  '--ssl[try to use ssl/tls for connection, if available]' \
  '--ssl-reqd[try to use ssl/tls for connection, fail if unavailable]' \
  '--tlsauthtype[set TLS authentication type (only SRP supported!)]:authtype' \
  '--tlsuser[set username for TLS authentication]:user' \
  '--tlspassword[set password for TLS authentication]:password' \
  )

# Connection arguments
arg_connection=(\
  {-4,--ipv4}'[prefer ipv4]' \
  {-6,--ipv6}'[prefer ipv6, if available]' \
  {-B,--use-ascii}'[use ascii mode]' \
  '--compressed[request a compressed transfer]' \
  '--connect-timeout[timeout for connection phase]:seconds' \
  {-I,--head}'[fetch http HEAD only (HTTP/FTP/FILE]' \
  '--interface[work on a specific interface]:name' \
  '--keepalive-time[set time to wait before sending keepalive probes]:seconds' \
  '--limit-rate[specify maximum transfer rate]:speed' \
  '--local-port[set preferred number or range of local ports to use]:num' \
  {-N,--no-buffer}'[disable buffering of the output stream]' \
  '--no-keepalive[disable use of keepalive messages in TCP connections]' \
  '--raw[disable all http decoding and pass raw data]' \
  '--resolve[provide a custom address for a specific host and port pair]:host\:port\:address' \
  '--retry[specify maximum number of retries for transient errors]:num' \
  '--retry-delay[specify delay between retries]:seconds' \
  '--retry-max-time[maximum time to spend on retries]:seconds' \
  '--tcp-nodelay[turn on TCP_NODELAY option]' \
  {-y,--speed-time}'[specify time to abort after if download is slower than speed-limit]:time' \
  {-Y,--speed-limit}'[specify minimum speed for --speed-time]:speed' \
  )

# Authentication arguments
arg_auth=(\
  '--anyauth[use any authentication method, default to most secure]' \
  '--basic[use HTTP Basic authentication]' \
  '--ntlm[enable ntlm authentication]' \
  '--digest[use http digest authentication]' \
  '--krb[use kerberos authentication]:auth:(clear safe confidential private)' \
  '--negotiate[enable GSS-Negotiate authentication]' \
  {-n,--netrc}'[scan ~/.netrc for login data]' \
  '--netrc-optional[like --netrc, but does not make .netrc usage mandatory]' \
  '--netrc-file[like --netrc, but specify file to use]:netrc file:_files' \
  '--tr-encoding[request compressed transfer-encoding]' \
  {-u,--user}'[specify user name and password for server authentication]:user\:password' \
  )

# Input arguments
arg_input=(\
  {-C,--continue-at}'[resume at offset ]:offset' \
  {-g,--globoff}'[do not glob {}\[\] letters]' \
  '--max-filesize[maximum filesize to download, fail for bigger files]:bytes' \
  '--proto[specify allowed protocols for transfer]:protocols' \
  '--proto-redir[specify allowed protocols for transfer after a redirect]:protocols' \
  {-r,--range}'[set range of bytes to request (HTTP/FTP/SFTP/FILE)]:range' \
  {-R,--remote-time}'[use timestamp of remote file for local file]' \
  {-T,--upload-file}'[transfer file to remote url (using PUT for HTTP)]:file to upload:_files' \
  '--url[specify a URL to fetch (multi)]:url:_urls' \
  {-z,--time-cond}'[request downloaded file to be newer than date or given reference file]:date expression' \
  )

# Output arguments
arg_output=(\
  '--create-dirs[create local directory hierarchy as needed]' \
  {-D,--dump-header}'[write protocol headers to file]:dump file:_files' \
  {-o,--output}'[write to specified file instead of stdout]:output file:_files' \
  {--progress-bar,-\#}'[display progress as a simple progress bar]' \
  {-\#,--progress-bar}'[Make curl display progress as a simple progress bar instead of the standard, more informational, meter.]' \
  {-R,--remote-time}'[use timestamp of remote file for local file]' \
  '--raw[disable all http decoding and pass raw data]' \
  {-s,--silent}'[silent mode, do not show progress meter or error messages]' \
  {-S,--show-error}'[show errors in silent mode]' \
  '--stderr[redirect stderr to specified file]:output file:_files' \
  '--trace[enable full trace dump of all incoming and outgoing data]:trace file:_files' \
  '--trace-ascii[enable full trace dump of all incoming and outgoing data, without hex data]:trace file:_files' \
  '--trace-time[prepends a time stamp to each trace or verbose line that curl displays]' \
  {-v,--verbose}'[output debug info]' \
  {-w,--write-out}'[specify message to output on successful operation]:format string' \
  '--xattr[store some file metadata in extended file attributes]' \
  {-X,--request}'[specifies request method for HTTP server]:method:(GET POST PUT DELETE HEAD OPTIONS TRACE CONNECT PATCH LINK UNLINK)' \
  )

_arguments -C -s $arg_http $arg_ftp $arg_other $arg_crypto $arg_connection $arg_auth $arg_input $arg_output \
  {-M,--manual}'[Print manual]' \
  '*'{-K,--config}'[Use other config file to read arguments from]:config file:_files' \
  '--libcurl[output libcurl code for the operation to file]:output file:_files' \
  {-m,--max-time}'[Limit total time of operation]:seconds' \
  {-s,--silent}'[Silent mode, do not show progress meter or error messages]' \
  {-S,--show-error}'[Show errors in silent mode]' \
  '--stderr[Redirect stderr to specified file]:output file:_files' \
  '-q[Do not read settings from .curlrc (must be first option)]' \
  {-h,--help}'[Print help and list of operations]' \
  {-V,--version}'[Print service API version]' \
  '--about[Print the information about service]' \
  '--host[Specify the host URL]':URL:_urls \
  '--dry-run[Print out the cURL command without executing it]' \
  {-ac,--accept}'[Set the Accept header in the request]: :{_values "Accept mime type" $(get_mime_type_completions)}' \
  {-ct,--content-type}'[Set the Content-type header in request]: :{_values "Content mime type" $(get_mime_type_completions)}' \
  '1: :->ops' \
  '*:: :->args' \
  && ret=0


case $state in
  ops)
    # Operations
    _values "Operations" \
            "accountLogoutPost[]" \
            "accountManageDownloadPersonalDataPost[]" \
            "accountManageLinkExternalLoginPost[]" \
            "accountPerformExternalLoginPost[]" \
            "forgotPasswordPost[]" \
            "healthGet[]" \
            "helloGet[]" \
            "loginPost[]" \
            "manage2faPost[]" \
            "manageInfoGet[]" \
            "manageInfoPost[]" \
            "mapIdentityApiConfirmEmail[]" \
            "refreshPost[]" \
            "registerPost[]" \
            "resendConfirmationEmailPost[]" \
            "resetPasswordPost[]" \
            "versionGet[]"             "createItemAttachmentAsync[Create a new item attachment]" \
            "deleteItemAttachmentAsync[Delete an item attachment]" \
            "getItemAttachmentByIdAsync[Get item attachment by ID]" \
            "getItemAttachmentsAsync[Get all item attachments]" \
            "updateItemAttachmentAsync[Update an item attachment]"             "countItemAttributesAsync[Count item attributes]" \
            "createItemAttributeAsync[Create a new item attribute]" \
            "deleteItemAttributeAsync[Delete an item attribute]" \
            "getItemAttributeByIdAsync[Get item attribute by ID]" \
            "getItemAttributesAsync[Get all item attributes]" \
            "updateItemAttributeAsync[Update an item attribute]"             "createItemBrandAsync[Create a new item brand]" \
            "deleteItemBrandAsync[Delete an item brand]" \
            "getItemBrandByIdAsync[Get item brand by ID]" \
            "getItemBrandsAsync[Get all item brands]" \
            "updateItemBrandAsync[Update an item brand]"             "countItemCategoriesAsync[Count item categories]" \
            "createItemCategoryAsync[Create a new item category]" \
            "deleteItemCategoryAsync[Delete an item category]" \
            "getItemCategoriesAsync[Get all item categories]" \
            "getItemCategoryByIdAsync[Get item category by ID]" \
            "updateItemCategoryAsync[Update an item category]"             "getAllItemGoogleCategoriesAsync[Get all Google item categories (all)]" \
            "getChildrenItemGoogleCategoriesByIdAsync[Get children Google item categories by ID]" \
            "getItemGoogleCategoriesAsync[Get all Google item categories]" \
            "getItemGoogleCategoriesCountAsync[Get Google item categories count]" \
            "getItemGoogleCategoriesTreeAsync[Get Google item categories tree]" \
            "getItemGoogleCategoryByIdAsync[Get Google item category by ID]" \
            "getRootItemGoogleCategoriesAsync[Get root Google item categories]" \
            "mapItemGoogleCategoriesTreeAsync[Map Google item categories tree]"             "createItemImageAsync[Create a new item image]" \
            "deleteItemImageAsync[Delete an item image]" \
            "getItemImageByIdAsync[Get item image by ID]" \
            "getItemImagesAsync[Get all item images]" \
            "updateItemImageAsync[Update an item image]"             "createItemQuestionAsync[Create a new item question]" \
            "deleteItemQuestionAsync[Delete an item question]" \
            "getItemQuestionByIdAsync[Get item question by ID]" \
            "getItemQuestionsAsync[Get all item questions]" \
            "updateItemQuestionAsync[Update an item question]"             "countItemRefundPoliciesAsync[Count item refund policies]" \
            "getItemRefundPoliciesAsync[Get item refund policies]" \
            "getItemRefundPolicyByIdAsync[Get item refund policy by ID]" \
            "relateItemToRefundPolicyAsync[Relate item to refund policy]" \
            "removeRefundPolicyFromItemAsync[Remove refund policy from item]"             "countItemReturnPoliciesAsync[Count item return policies]" \
            "getItemReturnPoliciesAsync[Get item return policies]" \
            "getItemReturnPolicyByIdAsync[Get item return policy by ID]" \
            "relateItemToReturnPolicyAsync[Relate item to return policy]" \
            "removeReturnPolicyFromItemAsync[Remove return policy from item]"             "createItemReviewAsync[Create a new item review]" \
            "deleteItemReviewAsync[Delete an item review]" \
            "getItemReviewByIdAsync[Get item review by ID]" \
            "getItemReviewsAsync[Get all item reviews]" \
            "updateItemReviewAsync[Update an item review]"             "countItemShippingPoliciesAsync[Count item shipping policies]" \
            "getItemShippingPoliciesAsync[Get item shipping policies]" \
            "getItemShippingPolicyByIdAsync[Get item shipping policy by ID]" \
            "relateItemToShippingPolicyAsync[Relate item to shipping policy]" \
            "removeShippingPolicyFromItemAsync[Remove shipping policy from item]"             "createItemTagAsync[Create a new item tag]" \
            "deleteItemTagAsync[Delete an item tag]" \
            "getItemTagByIdAsync[Get item tag by ID]" \
            "getItemTagsAsync[Get all item tags]" \
            "updateItemTagAsync[Update an item tag]"             "countItemTaxPoliciesAsync[Count item tax policies]" \
            "getItemTaxPoliciesAsync[Get item tax policies]" \
            "getItemTaxPolicyByIdAsync[Get item tax policy by ID]" \
            "relateItemToTaxPolicyAsync[Relate item to tax policy]" \
            "removeTaxPolicyFromItemAsync[Remove tax policy from item]"             "countItemTypesAsync[Count item types]" \
            "createItemTypeAsync[Create a new item type]" \
            "deleteItemTypeAsync[Delete an item type]" \
            "getItemTypeByIdAsync[Get item type by ID]" \
            "getItemTypesAsync[Get all item types]" \
            "updateItemTypeAsync[Update an item type]"             "countItemWarrantyPoliciesAsync[Count item warranty policies]" \
            "getItemWarrantyPoliciesAsync[Get item warranty policies]" \
            "getItemWarrantyPolicyByIdAsync[Get item warranty policy by ID]" \
            "relateItemToWarrantyPolicyAsync[Relate item to warranty policy]" \
            "removeWarrantyPolicyFromItemAsync[Remove warranty policy from item]"             "countStockItemTagsByItemId[Count tags for a stock item]" \
            "countStockItemsByBusiness[Count stock items by business]" \
            "createStockItem[Create a new stock item]" \
            "deleteStockItem[Delete a stock item]" \
            "getExtendedStockItemById[Get extended stock item by ID]" \
            "getProductPrimaryImageAsync[Get item primary image]" \
            "getStockItemAttachmentById[Get attachment by ID for a stock item]" \
            "getStockItemAttachmentsByItemId[Get attachments for a stock item]" \
            "getStockItemAttributeOptionById[Get attribute option by ID for a stock item]" \
            "getStockItemAttributeOptionsByItemId[Get attribute options for a stock item]" \
            "getStockItemBrandById[Get brand by ID for a stock item]" \
            "getStockItemBrandsByItemId[Get brands for a stock item]" \
            "getStockItemById[Get stock item by ID]" \
            "getStockItemCategoriesByItemId[Get categories for a stock item]" \
            "getStockItemCategoryById[Get category by ID for a stock item]" \
            "getStockItemGoogleCategoriesByItemId[Get Google categories for a stock item]" \
            "getStockItemGoogleCategoryById[Get Google category by ID for a stock item]" \
            "getStockItemImageById[Get image by ID for a stock item]" \
            "getStockItemImagesByItemId[Get images for a stock item]" \
            "getStockItemPriceRuleById[Get price rule by ID for a stock item]" \
            "getStockItemPriceRulesByItemId[Get price rules for a stock item]" \
            "getStockItemQuestionById[Get question by ID for a stock item]" \
            "getStockItemQuestionsByItemId[Get questions for a stock item]" \
            "getStockItemRefundPoliciesByItemId[Get refund policies for a stock item]" \
            "getStockItemRefundPolicyById[Get refund policy by ID for a stock item]" \
            "getStockItemReturnPoliciesByItemId[Get return policies for a stock item]" \
            "getStockItemReturnPolicyById[Get return policy by ID for a stock item]" \
            "getStockItemReviewById[Get review by ID for a stock item]" \
            "getStockItemReviewsByItemId[Get reviews for a stock item]" \
            "getStockItemShippingPoliciesByItemId[Get shipping policies for a stock item]" \
            "getStockItemShippingPolicyById[Get shipping policy by ID for a stock item]" \
            "getStockItemTagById[Get tag by ID for a stock item]" \
            "getStockItemTagsByItemId[Get tags for a stock item]" \
            "getStockItemTaxPoliciesByItemId[Get tax policies for a stock item]" \
            "getStockItemTaxPolicyById[Get tax policy by ID for a stock item]" \
            "getStockItemTypeById[Get type by ID for a stock item]" \
            "getStockItemTypesByItemId[Get types for a stock item]" \
            "getStockItemWarrantyPoliciesByItemId[Get warranty policies for a stock item]" \
            "getStockItemWarrantyPolicyById[Get warranty policy by ID for a stock item]" \
            "getStockItemsOdataMaxPrice[Get max price of stock items]" \
            "getStockItemsOdataMinPrice[Get min price of stock items]" \
            "getStockItemsQuery[Get all stock items]" \
            "relateAttachmentToStockItem[Relate attachment to stock item]" \
            "relateAttributeOptionToStockItem[Relate attribute option to stock item]" \
            "relateBrandToStockItem[Relate brand to stock item]" \
            "relateCategoryToStockItem[Relate category to stock item]" \
            "relateGoogleCategoryToStockItem[Relate Google category to stock item]" \
            "relateImageToStockItem[Relate image to stock item]" \
            "relatePriceRuleToStockItem[Relate price rule to stock item]" \
            "relateQuestionToStockItem[Create question for stock item]" \
            "relateRefundPolicyToStockItem[Relate refund policy to stock item]" \
            "relateReturnPolicyToStockItem[Relate return policy to stock item]" \
            "relateReviewToStockItem[Create review for stock item]" \
            "relateShippingPolicyToStockItem[Relate shipping policy to stock item]" \
            "relateTagToStockItem[Relate tag to stock item]" \
            "relateTaxPolicyToStockItem[Relate tax policy to stock item]" \
            "relateTypeToStockItem[Relate type to stock item]" \
            "relateWarrantyPolicyToStockItem[Relate warranty policy to stock item]" \
            "removeAttachmentFromStockItem[Remove attachment from stock item]" \
            "removeAttributeOptionFromStockItem[Remove attribute option from stock item]" \
            "removeBrandFromStockItem[Remove brand from stock item]" \
            "removeCategoryFromStockItem[Remove category from stock item]" \
            "removeGoogleCategoryFromStockItem[Remove Google category from stock item]" \
            "removeImageFromStockItem[Remove image from stock item]" \
            "removePriceRuleFromStockItem[Remove price rule from stock item]" \
            "removeQuestionFromStockItem[Remove question from stock item]" \
            "removeRefundPolicyFromStockItem[Remove refund policy from stock item]" \
            "removeReturnPolicyFromStockItem[Remove return policy from stock item]" \
            "removeReviewFromStockItem[Remove review from stock item]" \
            "removeShippingPolicyFromStockItem[Remove shipping policy from stock item]" \
            "removeTagFromStockItem[Remove tag from stock item]" \
            "removeTaxPolicyFromStockItem[Remove tax policy from stock item]" \
            "removeTypeFromStockItem[Remove type from stock item]" \
            "removeWarrantyPolicyFromStockItem[Remove warranty policy from stock item]" \
            "updateProductPrimaryImageAsync[Update item primary image]" \
            "updateStockItem[Update a stock item]"             "getMerchantById[Get merchant by ID]" \
            "getMerchants[Get all merchants]" \
            "getMerchantsCount[Count merchants]"             "createPricingRule[Create a new pricing rule]" \
            "deletePricingRule[Delete a pricing rule]" \
            "getPricingRuleById[Get pricing rule by ID]" \
            "getPricingRules[Get all pricing rules]" \
            "updatePricingRule[Update a pricing rule]" \

    _arguments "(--help)--help[Print information about operation]"

    ret=0
    ;;
  args)
    case $line[1] in
      accountLogoutPost)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      accountManageDownloadPersonalDataPost)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      accountManageLinkExternalLoginPost)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      accountPerformExternalLoginPost)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      forgotPasswordPost)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      healthGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      helloGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      loginPost)
        local -a _op_arguments
        _op_arguments=(
                    "useCookies=true:[QUERY] "
          "useCookies=false:[QUERY] "
"useSessionCookies=true:[QUERY] "
          "useSessionCookies=false:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      manage2faPost)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      manageInfoGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      manageInfoPost)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      mapIdentityApiConfirmEmail)
        local -a _op_arguments
        _op_arguments=(
                    "userId=:[QUERY] "
"code=:[QUERY] "
"changedEmail=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      refreshPost)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      registerPost)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      resendConfirmationEmailPost)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      resetPasswordPost)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      versionGet)
        local -a _op_arguments
        _op_arguments=(
                              )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createItemAttachmentAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteItemAttachmentAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemAttachmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemAttachmentByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemAttachmentId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemAttachmentsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateItemAttachmentAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemAttachmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      countItemAttributesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createItemAttributeAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteItemAttributeAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemAttributeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemAttributeByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemAttributeId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemAttributesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateItemAttributeAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemAttributeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createItemBrandAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteItemBrandAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemBrandId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemBrandByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemBrandId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemBrandsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateItemBrandAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemBrandId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      countItemCategoriesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createItemCategoryAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteItemCategoryAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemCategoryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemCategoriesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemCategoryByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemCategoryId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateItemCategoryAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemCategoryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAllItemGoogleCategoriesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getChildrenItemGoogleCategoriesByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemCategoryId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemGoogleCategoriesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemGoogleCategoriesCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemGoogleCategoriesTreeAsync)
        local -a _op_arguments
        _op_arguments=(
                    "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemGoogleCategoryByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemCategoryId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getRootItemGoogleCategoriesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      mapItemGoogleCategoriesTreeAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createItemImageAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteItemImageAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemImageId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemImageByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemImageId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemImagesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateItemImageAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemImageId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createItemQuestionAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteItemQuestionAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemQuestionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemQuestionByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemQuestionId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemQuestionsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateItemQuestionAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemQuestionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      countItemRefundPoliciesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemRefundPoliciesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemRefundPolicyByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemRefundPolicyId=:[PATH] "
          "itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relateItemToRefundPolicyAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"itemId=:[QUERY] "
"refundPolicyId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeRefundPolicyFromItemAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemRefundPolicyId=:[PATH] "
          "tenantId=:[QUERY] "
"itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      countItemReturnPoliciesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemReturnPoliciesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemReturnPolicyByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemReturnPolicyId=:[PATH] "
          "itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relateItemToReturnPolicyAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"itemId=:[QUERY] "
"returnPolicyId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeReturnPolicyFromItemAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemReturnPolicyId=:[PATH] "
          "tenantId=:[QUERY] "
"itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createItemReviewAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteItemReviewAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemReviewId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemReviewByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemReviewId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemReviewsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateItemReviewAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemReviewId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      countItemShippingPoliciesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemShippingPoliciesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemShippingPolicyByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemShippingPolicyId=:[PATH] "
          "itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relateItemToShippingPolicyAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"itemId=:[QUERY] "
"shippingPolicyId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeShippingPolicyFromItemAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemShippingPolicyId=:[PATH] "
          "tenantId=:[QUERY] "
"itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createItemTagAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteItemTagAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemTagId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemTagByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemTagId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemTagsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateItemTagAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemTagId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      countItemTaxPoliciesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemTaxPoliciesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemTaxPolicyByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemTaxPolicyId=:[PATH] "
          "itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relateItemToTaxPolicyAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"itemId=:[QUERY] "
"taxPolicyId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeTaxPolicyFromItemAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemTaxPolicyId=:[PATH] "
          "tenantId=:[QUERY] "
"itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      countItemTypesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createItemTypeAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteItemTypeAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemTypeID=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemTypeByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemTypeID=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemTypesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateItemTypeAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemTypeID=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      countItemWarrantyPoliciesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemWarrantyPoliciesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemWarrantyPolicyByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemWarrantyPolicyId=:[PATH] "
          "itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relateItemToWarrantyPolicyAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"itemId=:[QUERY] "
"warrantyPolicyId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeWarrantyPolicyFromItemAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemWarrantyPolicyId=:[PATH] "
          "tenantId=:[QUERY] "
"itemId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      countStockItemTagsByItemId)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      countStockItemsByBusiness)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createStockItem)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getExtendedStockItemById)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getProductPrimaryImageAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemAttachmentById)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemAttachmentId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemAttachmentsByItemId)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemAttributeOptionById)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemAttributeOptionId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemAttributeOptionsByItemId)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemBrandById)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemBrandId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemBrandsByItemId)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemById)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemCategoriesByItemId)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemCategoryById)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemCategoryId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemGoogleCategoriesByItemId)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemGoogleCategoryById)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemGoogleCategoryId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemImageById)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemImageId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemImagesByItemId)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemPriceRuleById)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemPriceRuleId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemPriceRulesByItemId)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemQuestionById)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemQuestionId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemQuestionsByItemId)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemRefundPoliciesByItemId)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemRefundPolicyById)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemRefundPolicyId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemReturnPoliciesByItemId)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemReturnPolicyById)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemReturnPolicyId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemReviewById)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemReviewId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemReviewsByItemId)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemShippingPoliciesByItemId)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemShippingPolicyById)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemShippingPolicyId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemTagById)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemTagId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemTagsByItemId)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemTaxPoliciesByItemId)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemTaxPolicyById)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemTaxPolicyId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemTypeById)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemTypeId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemTypesByItemId)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemWarrantyPoliciesByItemId)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemWarrantyPolicyById)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemWarrantyPolicyId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemsOdataMaxPrice)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemsOdataMinPrice)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStockItemsQuery)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relateAttachmentToStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemAttachmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relateAttributeOptionToStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemAttributeOptionId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relateBrandToStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemBrandId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relateCategoryToStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemCategoryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relateGoogleCategoryToStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemGoogleCategoryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relateImageToStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemImageId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relatePriceRuleToStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemPriceRuleId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relateQuestionToStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relateRefundPolicyToStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemRefundPolicyId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relateReturnPolicyToStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemReturnPolicyId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relateReviewToStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relateShippingPolicyToStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemShippingPolicyId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relateTagToStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemTagId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relateTaxPolicyToStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemTaxPolicyId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relateTypeToStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      relateWarrantyPolicyToStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemWarrantyPolicyId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeAttachmentFromStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemAttachmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeAttributeOptionFromStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemAttributeOptionId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeBrandFromStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemBrandId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeCategoryFromStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemCategoryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeGoogleCategoryFromStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemGoogleCategoryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeImageFromStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemImageId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removePriceRuleFromStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemPriceRuleId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeQuestionFromStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemQuestionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeRefundPolicyFromStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemRefundPolicyId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeReturnPolicyFromStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemReturnPolicyId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeReviewFromStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemReviewId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeShippingPolicyFromStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemShippingPolicyId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeTagFromStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemTagId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeTaxPolicyFromStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemTaxPolicyId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeTypeFromStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeWarrantyPolicyFromStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
"itemWarrantyPolicyId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateProductPrimaryImageAsync)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateStockItem)
        local -a _op_arguments
        _op_arguments=(
          "itemId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getMerchantById)
        local -a _op_arguments
        _op_arguments=(
          "merchantId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getMerchants)
        local -a _op_arguments
        _op_arguments=(
                    "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getMerchantsCount)
        local -a _op_arguments
        _op_arguments=(
                    "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createPricingRule)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deletePricingRule)
        local -a _op_arguments
        _op_arguments=(
          "pricingRuleId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getPricingRuleById)
        local -a _op_arguments
        _op_arguments=(
          "pricingRuleId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getPricingRules)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updatePricingRule)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"pricingRuleId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
    esac
    ;;

esac

return ret
