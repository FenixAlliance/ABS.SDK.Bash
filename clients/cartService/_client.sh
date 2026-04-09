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
            "addItemToCartAsync[Add an Item to a cart]" \
            "addItemToCartCompareTable[Add an item to the compare table]" \
            "addItemToWishList[Add a record to a wish list]" \
            "cartWishListExistsHead[Assesses if a WishList exists]" \
            "clearCartRecords[Clear all items from a cart]" \
            "createWishListAsync[Create a new wish list]" \
            "decreaseCartItemQuantity[Decrease an Item in a cart]" \
            "decreaseCartLineAsync[Decrease the quantity of a cart line]" \
            "deleteCartWishList[Delete a wish list]" \
            "deleteCartWishListRecord[Remove a record from a wish list]" \
            "getActingCart[Get the acting cart]" \
            "getCartByIdAsync[Get all business owned contacts]" \
            "getCartCompareRecord[Get an item from the compare table]" \
            "getCartCompareRecords[Get all items in the compare table]" \
            "getCartCountryAsync[Get the country of a cart]" \
            "getCartCurrencyAsync[Get the currency of a cart]" \
            "getCartItems[Get all cart lines]" \
            "getCartLineAsync[Get a cart line by ID]" \
            "getCartLinesAsync[Get all cart lines]" \
            "getCartWishList[Get all wishlists in a cart]" \
            "getCartWishListDetails[Get a wish list by ID]" \
            "getCartWishListItemAsync[Get a record in a wish list]" \
            "getCartWishListItems[Get all records in a wish list]" \
            "getGuestCartAsync[Get the guest cart]" \
            "getTenantCartAsync[Get the business cart]" \
            "getUserCart[Get the current user's cart]" \
            "increaseCartLineAsync[Increase the quantity of a cart line]" \
            "increaseItemCartRecordQuantityAsync[Increase an Item in a cart]" \
            "isItemAlreadyInCartAsync[Assesses if an Item is already in a cart]" \
            "isItemInCompareTableAsync[Assesses if an Item is already in the compare table]" \
            "isItemInWishLists[Assesses if an Item is already in any of the cart's wishlists]" \
            "removeCartLineAsync[Remove a cart line]" \
            "removeItemFromCartAsync[Remove an Item from a cart]" \
            "removeItemFromCompareTableAsync[Remove an item from the compare table]" \
            "setCartCountryAsync[Set the country of a cart]" \
            "setCartCurrencyAsync[Set the currency of a cart]" \
            "submitCartAsync[Submit a cart for processing]" \
            "updateCartAsync[Update a cart]" \
            "updateCartLineAsync[Update a cart line]" \
            "updateItemCartRecordAsync[Update an Item in a cart]" \
            "updateItemToWishList[Update a wish list]" \
            "wishListExistsAsync[Assesses if a WishList exists]"             "addItemToCompareTableAsync[Add an item to the compare table]" \
            "getItemToCompareRecord[Get compare record details]" \
            "getItemToCompareRecords[Get items to compare in a cart]" \
            "removeItemFromCompareTable[Remove an item from the compare table]"             "forgotPasswordPost[]" \
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
            "versionGet[]"             "addItemToCart[Add an item to a cart]" \
            "addProductToCartAsync[Add a product to a cart with tracking]" \
            "clearCartAsync[Clear all items from a cart]" \
            "decreaseItemCartRecord[Decrease cart record quantity]" \
            "getItemCartRecord[Get a cart record by ID]" \
            "getItemsInCartAsync[Get all items in a cart]" \
            "increaseItemCartRecord[Increase cart record quantity]" \
            "isItemAlreadyInCart[Check if an item is in a cart]" \
            "removeProductFromCartByParams[Remove a product from a cart]" \
            "removeProductFromCartByRecordId[Remove a product from a cart by record ID]" \
            "updateItemCartRecord[Update a cart record]"             "addProductToWishList[Add a product to a wish list]" \
            "createWishList[Create a wish list]" \
            "deleteWishList[Delete a wish list]" \
            "deleteWishListRecord[Delete a wish list record]" \
            "getCartWishListDetailsAsync[Get wish list details]" \
            "getCartWishListItemsAsync[Get wish list item records]" \
            "getWishListAsync[Get wish lists for a cart]" \
            "isProductInWishLists[Check if a product is in any wish list]" \
            "updateProductToWishList[Update a wish list]" \
            "wishListExists[Check if a wish list exists]" \
            "wishListExistsHeadAsync[Check if a wish list exists (HEAD)]" \

    _arguments "(--help)--help[Print information about operation]"

    ret=0
    ;;
  args)
    case $line[1] in
      addItemToCartAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"itemId=:[PATH] "
          "quantity=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      addItemToCartCompareTable)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      addItemToWishList)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"wishListId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cartWishListExistsHead)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"wishListId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      clearCartRecords)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createWishListAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      decreaseCartItemQuantity)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      decreaseCartLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"lineId=:[PATH] "
          "quantity=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCartWishList)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"wishListId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCartWishListRecord)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"wishListId=:[PATH] "
"recordId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getActingCart)
        local -a _op_arguments
        _op_arguments=(
                    "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCartByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCartCompareRecord)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCartCompareRecords)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCartCountryAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCartCurrencyAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCartItems)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCartLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"lineId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCartLinesAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCartWishList)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCartWishListDetails)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"wishListId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCartWishListItemAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"wishListId=:[PATH] "
"recordId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCartWishListItems)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"wishListId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getGuestCartAsync)
        local -a _op_arguments
        _op_arguments=(
                    "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantCartAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getUserCart)
        local -a _op_arguments
        _op_arguments=(
                    "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      increaseCartLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"lineId=:[PATH] "
          "quantity=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      increaseItemCartRecordQuantityAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      isItemAlreadyInCartAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      isItemInCompareTableAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      isItemInWishLists)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeCartLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"lineId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeItemFromCartAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeItemFromCompareTableAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      setCartCountryAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      setCartCurrencyAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      submitCartAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCartAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCartLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"lineId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateItemCartRecordAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"itemId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateItemToWishList)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"wishListId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      wishListExistsAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
"wishListId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      addItemToCompareTableAsync)
        local -a _op_arguments
        _op_arguments=(
                    "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemToCompareRecord)
        local -a _op_arguments
        _op_arguments=(
          "recordId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemToCompareRecords)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeItemFromCompareTable)
        local -a _op_arguments
        _op_arguments=(
          "recordId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
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
      addItemToCart)
        local -a _op_arguments
        _op_arguments=(
                    "cartId=:[QUERY] "
"itemId=:[QUERY] "
"quantity=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      addProductToCartAsync)
        local -a _op_arguments
        _op_arguments=(
                    "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      clearCartAsync)
        local -a _op_arguments
        _op_arguments=(
                    "cartID=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      decreaseItemCartRecord)
        local -a _op_arguments
        _op_arguments=(
          "recordId=:[PATH] "
          "quantity=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemCartRecord)
        local -a _op_arguments
        _op_arguments=(
          "recordId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemsInCartAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      increaseItemCartRecord)
        local -a _op_arguments
        _op_arguments=(
          "recordId=:[PATH] "
          "quantity=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      isItemAlreadyInCart)
        local -a _op_arguments
        _op_arguments=(
                    "itemID=:[QUERY] "
"cartID=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeProductFromCartByParams)
        local -a _op_arguments
        _op_arguments=(
                    "cartId=:[QUERY] "
"productId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeProductFromCartByRecordId)
        local -a _op_arguments
        _op_arguments=(
          "recordId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateItemCartRecord)
        local -a _op_arguments
        _op_arguments=(
          "recordId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      addProductToWishList)
        local -a _op_arguments
        _op_arguments=(
                    "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createWishList)
        local -a _op_arguments
        _op_arguments=(
                    "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteWishList)
        local -a _op_arguments
        _op_arguments=(
          "wishListId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteWishListRecord)
        local -a _op_arguments
        _op_arguments=(
          "recordId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCartWishListDetailsAsync)
        local -a _op_arguments
        _op_arguments=(
          "wishListId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCartWishListItemsAsync)
        local -a _op_arguments
        _op_arguments=(
          "wishListId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getWishListAsync)
        local -a _op_arguments
        _op_arguments=(
          "cartId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      isProductInWishLists)
        local -a _op_arguments
        _op_arguments=(
                    "cartId=:[QUERY] "
"productId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateProductToWishList)
        local -a _op_arguments
        _op_arguments=(
          "wishListId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      wishListExists)
        local -a _op_arguments
        _op_arguments=(
                    "wishListId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      wishListExistsHeadAsync)
        local -a _op_arguments
        _op_arguments=(
                    "wishListId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
    esac
    ;;

esac

return ret
