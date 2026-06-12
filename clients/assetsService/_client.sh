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
            "createAssetCategory[Creates a new asset category]" \
            "deleteAssetCategory[Deletes an asset category]" \
            "getAssetCategories[Gets all asset categories for the current tenant]" \
            "getAssetCategoriesCount[Gets the count of asset categories]" \
            "getAssetCategory[Gets a specific asset category]" \
            "patchAssetCategory[Partially updates an existing asset category]" \
            "updateAssetCategory[Updates an existing asset category]"             "createAssetTransferAsync[Creates a new asset transfer]" \
            "deleteAssetTransferAsync[Deletes an asset transfer]" \
            "getAssetTransferAsync[Gets a single asset transfer by ID]" \
            "getAssetTransfersAsync[Gets a list of asset transfers]" \
            "getAssetTransfersCountAsync[Gets the count of asset transfers]" \
            "patchAssetTransferAsync[Partially updates an existing asset transfer]" \
            "updateAssetTransferAsync[Updates an existing asset transfer]"             "createAssetType[Creates a new asset type]" \
            "deleteAssetType[Deletes an asset type]" \
            "getAssetType[Gets a specific asset type]" \
            "getAssetTypes[Gets all asset types for the current tenant]" \
            "getAssetTypesCount[Gets the count of asset types]" \
            "patchAssetType[Partially updates an existing asset type]" \
            "updateAssetType[Updates an existing asset type]"             "createAsset[Creates a new asset]" \
            "createAssetAssetCategory[Creates a new asset category]" \
            "createAssetDepreciationRecord[Creates a new depreciation record for an asset]" \
            "createAssetRepair[Creates a new repair for an asset]" \
            "createAssetTransfer[Creates a new transfer for an asset]" \
            "createAssetValueAmend[Creates a new value amendment for an asset]" \
            "deleteAsset[Deletes an existing asset]" \
            "deleteAssetAssetCategory[Deletes an existing asset category]" \
            "deleteAssetDepreciationRecord[Deletes a depreciation record for an asset]" \
            "deleteAssetRepair[Deletes a repair for an asset]" \
            "deleteAssetTransfer[Deletes a transfer for an asset]" \
            "deleteAssetValueAmend[Deletes a value amendment for an asset]" \
            "getAsset[Gets a specific asset by ID]" \
            "getAssetAssetCategories[Gets all asset categories]" \
            "getAssetAssetCategoriesCount[Gets the count of asset categories]" \
            "getAssetAssetCategory[Gets a specific asset category]" \
            "getAssetDepreciationRecord[Gets a specific depreciation record for an asset]" \
            "getAssetDepreciationRecords[Gets depreciation records for a specific asset]" \
            "getAssetDepreciationRecordsCount[Gets count of depreciation records for a specific asset]" \
            "getAssetRepair[Gets a specific repair for an asset]" \
            "getAssetRepairs[Gets repairs for a specific asset]" \
            "getAssetRepairsCount[Gets count of repairs for a specific asset]" \
            "getAssetTransfer[Gets a specific transfer for an asset]" \
            "getAssetTransfers[Gets transfers for a specific asset]" \
            "getAssetTransfersCount[Gets count of transfers for a specific asset]" \
            "getAssetValueAmend[Gets a specific value amendment for an asset]" \
            "getAssetValueAmends[Gets value amendments for a specific asset]" \
            "getAssetValueAmendsCount[Gets count of value amendments for a specific asset]" \
            "getAssets[Gets all assets for the current tenant]" \
            "getAssetsCount[Gets the count of assets]" \
            "patchAsset[Partially updates an existing asset]" \
            "patchAssetAssetCategory[Partially updates an existing asset category]" \
            "patchAssetDepreciationRecord[Partially updates a depreciation record for an asset]" \
            "patchAssetRepair[Partially updates a repair for an asset]" \
            "patchAssetTransfer[Partially updates a transfer for an asset]" \
            "patchAssetValueAmend[Partially updates a value amendment for an asset]" \
            "updateAsset[Updates an existing asset]" \
            "updateAssetAssetCategory[Updates an existing asset category]" \
            "updateAssetDepreciationRecord[Updates a depreciation record for an asset]" \
            "updateAssetRepair[Updates a repair for an asset]" \
            "updateAssetTransfer[Updates a transfer for an asset]" \
            "updateAssetValueAmend[Updates a value amendment for an asset]"             "apiV2AiServiceCompletionsCompleteGet[]"             "accountLogoutPost[]" \
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
            "versionGet[]" \

    _arguments "(--help)--help[Print information about operation]"

    ret=0
    ;;
  args)
    case $line[1] in
      createAssetCategory)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteAssetCategory)
        local -a _op_arguments
        _op_arguments=(
          "categoryId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetCategories)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetCategoriesCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetCategory)
        local -a _op_arguments
        _op_arguments=(
          "categoryId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchAssetCategory)
        local -a _op_arguments
        _op_arguments=(
          "categoryId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAssetCategory)
        local -a _op_arguments
        _op_arguments=(
          "categoryId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createAssetTransferAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteAssetTransferAsync)
        local -a _op_arguments
        _op_arguments=(
          "transferId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetTransferAsync)
        local -a _op_arguments
        _op_arguments=(
          "transferId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetTransfersAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetTransfersCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchAssetTransferAsync)
        local -a _op_arguments
        _op_arguments=(
          "transferId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAssetTransferAsync)
        local -a _op_arguments
        _op_arguments=(
          "transferId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createAssetType)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteAssetType)
        local -a _op_arguments
        _op_arguments=(
          "typeId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetType)
        local -a _op_arguments
        _op_arguments=(
          "typeId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetTypes)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetTypesCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchAssetType)
        local -a _op_arguments
        _op_arguments=(
          "typeId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAssetType)
        local -a _op_arguments
        _op_arguments=(
          "typeId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createAsset)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createAssetAssetCategory)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createAssetDepreciationRecord)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createAssetRepair)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createAssetTransfer)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createAssetValueAmend)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteAsset)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteAssetAssetCategory)
        local -a _op_arguments
        _op_arguments=(
          "categoryId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteAssetDepreciationRecord)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
"recordId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteAssetRepair)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
"repairId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteAssetTransfer)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
"transferId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteAssetValueAmend)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
"amendId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAsset)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetAssetCategories)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetAssetCategoriesCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetAssetCategory)
        local -a _op_arguments
        _op_arguments=(
          "categoryId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetDepreciationRecord)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
"recordId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetDepreciationRecords)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetDepreciationRecordsCount)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetRepair)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
"repairId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetRepairs)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetRepairsCount)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetTransfer)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
"transferId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetTransfers)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetTransfersCount)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetValueAmend)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
"amendId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetValueAmends)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetValueAmendsCount)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssets)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAssetsCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchAsset)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchAssetAssetCategory)
        local -a _op_arguments
        _op_arguments=(
          "categoryId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchAssetDepreciationRecord)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
"recordId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchAssetRepair)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
"repairId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchAssetTransfer)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
"transferId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchAssetValueAmend)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
"amendId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAsset)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAssetAssetCategory)
        local -a _op_arguments
        _op_arguments=(
          "categoryId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAssetDepreciationRecord)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
"recordId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAssetRepair)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
"repairId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAssetTransfer)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
"transferId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAssetValueAmend)
        local -a _op_arguments
        _op_arguments=(
          "assetId=:[PATH] "
"amendId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      apiV2AiServiceCompletionsCompleteGet)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"conversationId=:[QUERY] "
"message=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
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
    esac
    ;;

esac

return ret
