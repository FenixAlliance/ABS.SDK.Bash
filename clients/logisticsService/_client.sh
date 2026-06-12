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
            "addAirwayBillLineAsync[Add a line to airway bill]" \
            "cancelAirwayBillAsync[Cancel an airway bill]" \
            "createAirwayBillAsync[Create an airway bill]" \
            "deleteAirwayBillAsync[Delete an airway bill]" \
            "getAirwayBillByIdAsync[Get airway bill by ID]" \
            "getAirwayBillLinesAsync[Get airway bill lines]" \
            "getAirwayBillLinesCountAsync[Get airway bill lines count]" \
            "getAirwayBillsAsync[Get all airway bills]" \
            "getAirwayBillsCountAsync[Get airway bills count]" \
            "issueAirwayBillAsync[Issue an airway bill]" \
            "markAirwayBillArrivedAsync[Mark airway bill arrived]" \
            "markAirwayBillDeliveredAsync[Mark airway bill delivered]" \
            "markAirwayBillInTransitAsync[Mark airway bill in transit]" \
            "patchAirwayBillAsync[Patch an airway bill]" \
            "patchAirwayBillLineAsync[Patch an airway bill line]" \
            "removeAirwayBillLineAsync[Remove an airway bill line]" \
            "updateAirwayBillAsync[Update an airway bill]" \
            "updateAirwayBillLineAsync[Update an airway bill line]"             "apiV2AiServiceCompletionsCompleteGet[]"             "createDeliveryNoteAsync[Create a delivery note]" \
            "deleteDeliveryNoteAsync[Delete a delivery note]" \
            "getDeliveryNoteByIdAsync[Get delivery note by ID]" \
            "getDeliveryNotesAsync[Get all delivery notes]" \
            "getDeliveryNotesCountAsync[Get delivery notes count]" \
            "updateDeliveryNoteAsync[Update a delivery note]"             "accountLogoutPost[]" \
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
            "versionGet[]"             "createItemPackingSlipAsync[Create an item packing slip]" \
            "createItemPackingSlipEntryAsync[Create a packing slip entry]" \
            "deleteItemPackingSlipAsync[Delete an item packing slip]" \
            "deleteItemPackingSlipEntryAsync[Delete a packing slip entry]" \
            "getItemPackingSlipByIdAsync[Get item packing slip by ID]" \
            "getItemPackingSlipEntriesAsync[Get packing slip entries]" \
            "getItemPackingSlipEntriesCountAsync[Get packing slip entries count]" \
            "getItemPackingSlipEntryByIdAsync[Get packing slip entry by ID]" \
            "getItemPackingSlipsAsync[Get all item packing slips]" \
            "getItemPackingSlipsCountAsync[Get item packing slips count]" \
            "patchItemPackingSlipAsync[Patch an item packing slip]" \
            "patchItemPackingSlipEntryAsync[Patch a packing slip entry]" \
            "updateItemPackingSlipAsync[Update an item packing slip]" \
            "updateItemPackingSlipEntryAsync[Update a packing slip entry]"             "createItemPickListAsync[Create an item pick list]" \
            "createItemPickListEntryAsync[Create a pick list entry]" \
            "deleteItemPickListAsync[Delete an item pick list]" \
            "deleteItemPickListEntryAsync[Delete a pick list entry]" \
            "getItemPickListByIdAsync[Get item pick list by ID]" \
            "getItemPickListEntriesAsync[Get pick list entries]" \
            "getItemPickListEntriesCountAsync[Get pick list entries count]" \
            "getItemPickListEntryByIdAsync[Get pick list entry by ID]" \
            "getItemPickListsAsync[Get all item pick lists]" \
            "getItemPickListsCountAsync[Get item pick lists count]" \
            "patchItemPickListAsync[Patch an item pick list]" \
            "patchItemPickListEntryAsync[Patch a pick list entry]" \
            "updateItemPickListAsync[Update an item pick list]" \
            "updateItemPickListEntryAsync[Update a pick list entry]"             "createItemRestockAsync[Create an item restock]" \
            "createItemRestockEntryAsync[Create a restock entry]" \
            "deleteItemRestockAsync[Delete an item restock]" \
            "deleteItemRestockEntryAsync[Delete a restock entry]" \
            "getItemRestockByIdAsync[Get item restock by ID]" \
            "getItemRestockEntriesAsync[Get restock entries]" \
            "getItemRestockEntriesCountAsync[Get restock entries count]" \
            "getItemRestockEntryByIdAsync[Get restock entry by ID]" \
            "getItemRestocksAsync[Get all item restocks]" \
            "getItemRestocksCountAsync[Get item restocks count]" \
            "patchItemRestockAsync[Patch an item restock]" \
            "patchItemRestockEntryAsync[Patch a restock entry]" \
            "updateItemRestockAsync[Update an item restock]" \
            "updateItemRestockEntryAsync[Update a restock entry]"             "createItemRetainSampleAsync[Create an item retain sample]" \
            "deleteItemRetainSampleAsync[Delete an item retain sample]" \
            "getItemRetainSampleByIdAsync[Get item retain sample by ID]" \
            "getItemRetainSamplesAsync[Get all item retain samples]" \
            "getItemRetainSamplesCountAsync[Get item retain samples count]" \
            "patchItemRetainSampleAsync[Patch an item retain sample]" \
            "updateItemRetainSampleAsync[Update an item retain sample]"             "createPortAsync[Create a port]" \
            "deletePortAsync[Delete a port]" \
            "getPortByIdAsync[Get port by ID]" \
            "getPortsAsync[Get all ports]" \
            "getPortsCountAsync[Get ports count]" \
            "patchPortAsync[Patch a port]" \
            "updatePortAsync[Update a port]"             "addProofOfDeliveryLineAsync[Add a line to proof of delivery]" \
            "attachDeliveryNoteAsync[Attach a delivery note]" \
            "createProofOfDeliveryAsync[Create a proof of delivery]" \
            "deleteProofOfDeliveryAsync[Delete a proof of delivery]" \
            "detachDeliveryNoteAsync[Detach a delivery note]" \
            "disputeProofOfDeliveryAsync[Dispute a proof of delivery]" \
            "getProofOfDeliveryByIdAsync[Get proof of delivery by ID]" \
            "getProofOfDeliveryDeliveryNotesAsync[Get attached delivery notes]" \
            "getProofOfDeliveryDeliveryNotesCountAsync[Get delivery notes count]" \
            "getProofOfDeliveryLinesAsync[Get proof of delivery lines]" \
            "getProofOfDeliveryLinesCountAsync[Get proof of delivery lines count]" \
            "getProofsOfDeliveryAsync[Get all proofs of delivery]" \
            "getProofsOfDeliveryCountAsync[Get proofs of delivery count]" \
            "patchProofOfDeliveryAsync[Patch a proof of delivery]" \
            "patchProofOfDeliveryLineAsync[Patch a proof of delivery line]" \
            "rejectProofOfDeliveryAsync[Reject a proof of delivery]" \
            "removeProofOfDeliveryLineAsync[Remove a proof of delivery line]" \
            "signProofOfDeliveryAsync[Sign a proof of delivery]" \
            "updateProofOfDeliveryAsync[Update a proof of delivery]" \
            "updateProofOfDeliveryLineAsync[Update a proof of delivery line]"             "addRailWaybillLineAsync[Add a line to rail waybill]" \
            "cancelRailWaybillAsync[Cancel a rail waybill]" \
            "createRailWaybillAsync[Create a rail waybill]" \
            "deleteRailWaybillAsync[Delete a rail waybill]" \
            "getRailWaybillByIdAsync[Get rail waybill by ID]" \
            "getRailWaybillLinesAsync[Get rail waybill lines]" \
            "getRailWaybillLinesCountAsync[Get rail waybill lines count]" \
            "getRailWaybillsAsync[Get all rail waybills]" \
            "getRailWaybillsCountAsync[Get rail waybills count]" \
            "issueRailWaybillAsync[Issue a rail waybill]" \
            "markRailWaybillDeliveredAsync[Mark rail waybill delivered]" \
            "markRailWaybillInTransitAsync[Mark rail waybill in transit]" \
            "patchRailWaybillAsync[Patch a rail waybill]" \
            "patchRailWaybillLineAsync[Patch a rail waybill line]" \
            "removeRailWaybillLineAsync[Remove a rail waybill line]" \
            "updateRailWaybillAsync[Update a rail waybill]" \
            "updateRailWaybillLineAsync[Update a rail waybill line]"             "addRoadWaybillLineAsync[Add a line to road waybill]" \
            "cancelRoadWaybillAsync[Cancel a road waybill]" \
            "createRoadWaybillAsync[Create a road waybill]" \
            "deleteRoadWaybillAsync[Delete a road waybill]" \
            "disputeRoadWaybillAsync[Dispute a road waybill]" \
            "getRoadWaybillByIdAsync[Get road waybill by ID]" \
            "getRoadWaybillLinesAsync[Get road waybill lines]" \
            "getRoadWaybillLinesCountAsync[Get road waybill lines count]" \
            "getRoadWaybillsAsync[Get all road waybills]" \
            "getRoadWaybillsCountAsync[Get road waybills count]" \
            "issueRoadWaybillAsync[Issue a road waybill]" \
            "markRoadWaybillDeliveredAsync[Mark road waybill delivered]" \
            "markRoadWaybillInTransitAsync[Mark road waybill in transit]" \
            "patchRoadWaybillAsync[Patch a road waybill]" \
            "patchRoadWaybillLineAsync[Patch a road waybill line]" \
            "removeRoadWaybillLineAsync[Remove a road waybill line]" \
            "updateRoadWaybillAsync[Update a road waybill]" \
            "updateRoadWaybillLineAsync[Update a road waybill line]"             "addSeawayBillLineAsync[Add a line to seaway bill]" \
            "cancelSeawayBillAsync[Cancel a seaway bill]" \
            "createSeawayBillAsync[Create a seaway bill]" \
            "deleteSeawayBillAsync[Delete a seaway bill]" \
            "getSeawayBillByIdAsync[Get seaway bill by ID]" \
            "getSeawayBillLinesAsync[Get seaway bill lines]" \
            "getSeawayBillLinesCountAsync[Get seaway bill lines count]" \
            "getSeawayBillsAsync[Get all seaway bills]" \
            "getSeawayBillsCountAsync[Get seaway bills count]" \
            "issueSeawayBillAsync[Issue a seaway bill]" \
            "markSeawayBillArrivedAsync[Mark seaway bill arrived]" \
            "markSeawayBillInTransitAsync[Mark seaway bill in transit]" \
            "patchSeawayBillAsync[Patch a seaway bill]" \
            "patchSeawayBillLineAsync[Patch a seaway bill line]" \
            "releaseSeawayBillAsync[Release a seaway bill]" \
            "removeSeawayBillLineAsync[Remove a seaway bill line]" \
            "updateSeawayBillAsync[Update a seaway bill]" \
            "updateSeawayBillLineAsync[Update a seaway bill line]"             "createSupplierProfileAsync[Create a supplier profile]" \
            "deleteSupplierProfileAsync[Delete a supplier profile]" \
            "getSupplierProfileByIdAsync[Get supplier profile by ID]" \
            "getSupplierProfilesAsync[Get all supplier profiles]" \
            "getSupplierProfilesCountAsync[Get supplier profiles count]" \
            "patchSupplierProfileAsync[Patch a supplier profile]" \
            "updateSupplierProfileAsync[Update a supplier profile]"             "activateTruckDriverAsync[Activate a truck driver]" \
            "createTruckDriverAsync[Create a truck driver]" \
            "deactivateTruckDriverAsync[Deactivate a truck driver]" \
            "deleteTruckDriverAsync[Delete a truck driver]" \
            "getTruckDriverByIdAsync[Get truck driver by ID]" \
            "getTruckDriversAsync[Get all truck drivers]" \
            "getTruckDriversCountAsync[Get truck drivers count]" \
            "patchTruckDriverAsync[Patch a truck driver]" \
            "updateTruckDriverAsync[Update a truck driver]"             "arriveTripAsync[Arrive a trip]" \
            "cancelTripAsync[Cancel a trip]" \
            "createTruckAsync[Create a truck]" \
            "createTruckTripAsync[Create a truck trip]" \
            "deleteTruckAsync[Delete a truck]" \
            "deleteTruckTripAsync[Delete a truck trip]" \
            "deliverTripAsync[Deliver a trip]" \
            "departTripAsync[Depart a trip]" \
            "dispatchTripAsync[Dispatch a trip]" \
            "getTruckByIdAsync[Get truck by ID]" \
            "getTruckTripsAsync[Get truck trips]" \
            "getTruckTripsCountAsync[Get truck trips count]" \
            "getTrucksAsync[Get all trucks]" \
            "getTrucksCountAsync[Get trucks count]" \
            "patchTruckAsync[Patch a truck]" \
            "patchTruckTripAsync[Patch a truck trip]" \
            "updateTruckAsync[Update a truck]" \
            "updateTruckTripAsync[Update a truck trip]"             "createVesselAsync[Create a vessel]" \
            "deleteVesselAsync[Delete a vessel]" \
            "getVesselByIdAsync[Get vessel by ID]" \
            "getVesselsAsync[Get all vessels]" \
            "getVesselsCountAsync[Get vessels count]" \
            "patchVesselAsync[Patch a vessel]" \
            "updateVesselAsync[Update a vessel]"             "cancelVoyageAsync[Cancel a voyage]" \
            "completeVoyageAsync[Complete a voyage]" \
            "createVoyageAsync[Create a voyage]" \
            "createVoyagePortCallAsync[Create a port call]" \
            "deleteVoyageAsync[Delete a voyage]" \
            "deleteVoyagePortCallAsync[Delete a port call]" \
            "getVoyageByIdAsync[Get voyage by ID]" \
            "getVoyagePortCallsAsync[Get voyage port calls]" \
            "getVoyagePortCallsCountAsync[Get voyage port calls count]" \
            "getVoyagesAsync[Get all voyages]" \
            "getVoyagesCountAsync[Get voyages count]" \
            "patchVoyageAsync[Patch a voyage]" \
            "patchVoyagePortCallAsync[Patch a voyage port call]" \
            "startVoyageAsync[Start a voyage]" \
            "updateVoyageAsync[Update a voyage]" \
            "updateVoyagePortCallAsync[Update a port call]"             "createWarehouseAsync[Create a warehouse]" \
            "deleteWarehouseAsync[Delete a warehouse]" \
            "getWarehouseByIdAsync[Get warehouse by ID]" \
            "getWarehousesAsync[Get all warehouses]" \
            "getWarehousesCountAsync[Get warehouses count]" \
            "patchWarehouseAsync[Patch a warehouse]" \
            "updateWarehouseAsync[Update a warehouse]" \

    _arguments "(--help)--help[Print information about operation]"

    ret=0
    ;;
  args)
    case $line[1] in
      addAirwayBillLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cancelAirwayBillAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createAirwayBillAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteAirwayBillAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAirwayBillByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAirwayBillLinesAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAirwayBillLinesCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAirwayBillsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAirwayBillsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      issueAirwayBillAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      markAirwayBillArrivedAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      markAirwayBillDeliveredAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      markAirwayBillInTransitAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchAirwayBillAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchAirwayBillLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
"lineId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeAirwayBillLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
"lineId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAirwayBillAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAirwayBillLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
"lineId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
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
      createDeliveryNoteAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteDeliveryNoteAsync)
        local -a _op_arguments
        _op_arguments=(
          "deliveryNoteId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getDeliveryNoteByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "deliveryNoteId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getDeliveryNotesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getDeliveryNotesCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateDeliveryNoteAsync)
        local -a _op_arguments
        _op_arguments=(
          "deliveryNoteId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
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
      createItemPackingSlipAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createItemPackingSlipEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "packingSlipId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteItemPackingSlipAsync)
        local -a _op_arguments
        _op_arguments=(
          "packingSlipId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteItemPackingSlipEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "packingSlipId=:[PATH] "
"entryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemPackingSlipByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "packingSlipId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemPackingSlipEntriesAsync)
        local -a _op_arguments
        _op_arguments=(
          "packingSlipId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemPackingSlipEntriesCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "packingSlipId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemPackingSlipEntryByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "packingSlipId=:[PATH] "
"entryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemPackingSlipsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemPackingSlipsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchItemPackingSlipAsync)
        local -a _op_arguments
        _op_arguments=(
          "packingSlipId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchItemPackingSlipEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "packingSlipId=:[PATH] "
"entryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateItemPackingSlipAsync)
        local -a _op_arguments
        _op_arguments=(
          "packingSlipId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateItemPackingSlipEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "packingSlipId=:[PATH] "
"entryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createItemPickListAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createItemPickListEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "pickListId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteItemPickListAsync)
        local -a _op_arguments
        _op_arguments=(
          "pickListId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteItemPickListEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "pickListId=:[PATH] "
"entryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemPickListByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "pickListId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemPickListEntriesAsync)
        local -a _op_arguments
        _op_arguments=(
          "pickListId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemPickListEntriesCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "pickListId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemPickListEntryByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "pickListId=:[PATH] "
"entryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemPickListsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemPickListsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchItemPickListAsync)
        local -a _op_arguments
        _op_arguments=(
          "pickListId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchItemPickListEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "pickListId=:[PATH] "
"entryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateItemPickListAsync)
        local -a _op_arguments
        _op_arguments=(
          "pickListId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateItemPickListEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "pickListId=:[PATH] "
"entryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createItemRestockAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createItemRestockEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "restockId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteItemRestockAsync)
        local -a _op_arguments
        _op_arguments=(
          "restockId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteItemRestockEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "restockId=:[PATH] "
"entryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemRestockByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "restockId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemRestockEntriesAsync)
        local -a _op_arguments
        _op_arguments=(
          "restockId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemRestockEntriesCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "restockId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemRestockEntryByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "restockId=:[PATH] "
"entryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemRestocksAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemRestocksCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchItemRestockAsync)
        local -a _op_arguments
        _op_arguments=(
          "restockId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchItemRestockEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "restockId=:[PATH] "
"entryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateItemRestockAsync)
        local -a _op_arguments
        _op_arguments=(
          "restockId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateItemRestockEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "restockId=:[PATH] "
"entryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createItemRetainSampleAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteItemRetainSampleAsync)
        local -a _op_arguments
        _op_arguments=(
          "retainSampleId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemRetainSampleByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "retainSampleId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemRetainSamplesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemRetainSamplesCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchItemRetainSampleAsync)
        local -a _op_arguments
        _op_arguments=(
          "retainSampleId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateItemRetainSampleAsync)
        local -a _op_arguments
        _op_arguments=(
          "retainSampleId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createPortAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deletePortAsync)
        local -a _op_arguments
        _op_arguments=(
          "portId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getPortByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "portId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getPortsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getPortsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchPortAsync)
        local -a _op_arguments
        _op_arguments=(
          "portId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updatePortAsync)
        local -a _op_arguments
        _op_arguments=(
          "portId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      addProofOfDeliveryLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "podId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      attachDeliveryNoteAsync)
        local -a _op_arguments
        _op_arguments=(
          "podId=:[PATH] "
"noteId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createProofOfDeliveryAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteProofOfDeliveryAsync)
        local -a _op_arguments
        _op_arguments=(
          "podId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      detachDeliveryNoteAsync)
        local -a _op_arguments
        _op_arguments=(
          "podId=:[PATH] "
"noteId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      disputeProofOfDeliveryAsync)
        local -a _op_arguments
        _op_arguments=(
          "podId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getProofOfDeliveryByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "podId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getProofOfDeliveryDeliveryNotesAsync)
        local -a _op_arguments
        _op_arguments=(
          "podId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getProofOfDeliveryDeliveryNotesCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "podId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getProofOfDeliveryLinesAsync)
        local -a _op_arguments
        _op_arguments=(
          "podId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getProofOfDeliveryLinesCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "podId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getProofsOfDeliveryAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getProofsOfDeliveryCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchProofOfDeliveryAsync)
        local -a _op_arguments
        _op_arguments=(
          "podId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchProofOfDeliveryLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "podId=:[PATH] "
"lineId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      rejectProofOfDeliveryAsync)
        local -a _op_arguments
        _op_arguments=(
          "podId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeProofOfDeliveryLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "podId=:[PATH] "
"lineId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      signProofOfDeliveryAsync)
        local -a _op_arguments
        _op_arguments=(
          "podId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateProofOfDeliveryAsync)
        local -a _op_arguments
        _op_arguments=(
          "podId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateProofOfDeliveryLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "podId=:[PATH] "
"lineId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      addRailWaybillLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cancelRailWaybillAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createRailWaybillAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteRailWaybillAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getRailWaybillByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getRailWaybillLinesAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getRailWaybillLinesCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getRailWaybillsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getRailWaybillsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      issueRailWaybillAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      markRailWaybillDeliveredAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      markRailWaybillInTransitAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchRailWaybillAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchRailWaybillLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
"lineId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeRailWaybillLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
"lineId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateRailWaybillAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateRailWaybillLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
"lineId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      addRoadWaybillLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cancelRoadWaybillAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createRoadWaybillAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteRoadWaybillAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      disputeRoadWaybillAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getRoadWaybillByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getRoadWaybillLinesAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getRoadWaybillLinesCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getRoadWaybillsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getRoadWaybillsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      issueRoadWaybillAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      markRoadWaybillDeliveredAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      markRoadWaybillInTransitAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchRoadWaybillAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchRoadWaybillLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
"lineId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeRoadWaybillLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
"lineId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateRoadWaybillAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateRoadWaybillLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "waybillId=:[PATH] "
"lineId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      addSeawayBillLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cancelSeawayBillAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createSeawayBillAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteSeawayBillAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getSeawayBillByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getSeawayBillLinesAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getSeawayBillLinesCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getSeawayBillsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getSeawayBillsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      issueSeawayBillAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      markSeawayBillArrivedAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      markSeawayBillInTransitAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchSeawayBillAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchSeawayBillLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
"lineId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      releaseSeawayBillAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      removeSeawayBillLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
"lineId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateSeawayBillAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateSeawayBillLineAsync)
        local -a _op_arguments
        _op_arguments=(
          "billId=:[PATH] "
"lineId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createSupplierProfileAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteSupplierProfileAsync)
        local -a _op_arguments
        _op_arguments=(
          "supplierProfileId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getSupplierProfileByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "supplierProfileId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getSupplierProfilesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getSupplierProfilesCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchSupplierProfileAsync)
        local -a _op_arguments
        _op_arguments=(
          "supplierProfileId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateSupplierProfileAsync)
        local -a _op_arguments
        _op_arguments=(
          "supplierProfileId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      activateTruckDriverAsync)
        local -a _op_arguments
        _op_arguments=(
          "driverId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTruckDriverAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deactivateTruckDriverAsync)
        local -a _op_arguments
        _op_arguments=(
          "driverId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTruckDriverAsync)
        local -a _op_arguments
        _op_arguments=(
          "driverId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTruckDriverByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "driverId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTruckDriversAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTruckDriversCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchTruckDriverAsync)
        local -a _op_arguments
        _op_arguments=(
          "driverId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTruckDriverAsync)
        local -a _op_arguments
        _op_arguments=(
          "driverId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      arriveTripAsync)
        local -a _op_arguments
        _op_arguments=(
          "truckId=:[PATH] "
"tripId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cancelTripAsync)
        local -a _op_arguments
        _op_arguments=(
          "truckId=:[PATH] "
"tripId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTruckAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTruckTripAsync)
        local -a _op_arguments
        _op_arguments=(
          "truckId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTruckAsync)
        local -a _op_arguments
        _op_arguments=(
          "truckId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTruckTripAsync)
        local -a _op_arguments
        _op_arguments=(
          "truckId=:[PATH] "
"tripId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deliverTripAsync)
        local -a _op_arguments
        _op_arguments=(
          "truckId=:[PATH] "
"tripId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      departTripAsync)
        local -a _op_arguments
        _op_arguments=(
          "truckId=:[PATH] "
"tripId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      dispatchTripAsync)
        local -a _op_arguments
        _op_arguments=(
          "truckId=:[PATH] "
"tripId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTruckByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "truckId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTruckTripsAsync)
        local -a _op_arguments
        _op_arguments=(
          "truckId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTruckTripsCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "truckId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTrucksAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTrucksCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchTruckAsync)
        local -a _op_arguments
        _op_arguments=(
          "truckId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchTruckTripAsync)
        local -a _op_arguments
        _op_arguments=(
          "truckId=:[PATH] "
"tripId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTruckAsync)
        local -a _op_arguments
        _op_arguments=(
          "truckId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTruckTripAsync)
        local -a _op_arguments
        _op_arguments=(
          "truckId=:[PATH] "
"tripId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createVesselAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteVesselAsync)
        local -a _op_arguments
        _op_arguments=(
          "vesselId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVesselByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "vesselId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVesselsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVesselsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchVesselAsync)
        local -a _op_arguments
        _op_arguments=(
          "vesselId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateVesselAsync)
        local -a _op_arguments
        _op_arguments=(
          "vesselId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      cancelVoyageAsync)
        local -a _op_arguments
        _op_arguments=(
          "voyageId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      completeVoyageAsync)
        local -a _op_arguments
        _op_arguments=(
          "voyageId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createVoyageAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createVoyagePortCallAsync)
        local -a _op_arguments
        _op_arguments=(
          "voyageId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteVoyageAsync)
        local -a _op_arguments
        _op_arguments=(
          "voyageId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteVoyagePortCallAsync)
        local -a _op_arguments
        _op_arguments=(
          "voyageId=:[PATH] "
"portCallId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVoyageByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "voyageId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVoyagePortCallsAsync)
        local -a _op_arguments
        _op_arguments=(
          "voyageId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVoyagePortCallsCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "voyageId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVoyagesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getVoyagesCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchVoyageAsync)
        local -a _op_arguments
        _op_arguments=(
          "voyageId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchVoyagePortCallAsync)
        local -a _op_arguments
        _op_arguments=(
          "voyageId=:[PATH] "
"portCallId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      startVoyageAsync)
        local -a _op_arguments
        _op_arguments=(
          "voyageId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateVoyageAsync)
        local -a _op_arguments
        _op_arguments=(
          "voyageId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateVoyagePortCallAsync)
        local -a _op_arguments
        _op_arguments=(
          "voyageId=:[PATH] "
"portCallId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createWarehouseAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteWarehouseAsync)
        local -a _op_arguments
        _op_arguments=(
          "warehouseId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getWarehouseByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "warehouseId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getWarehousesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getWarehousesCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchWarehouseAsync)
        local -a _op_arguments
        _op_arguments=(
          "warehouseId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateWarehouseAsync)
        local -a _op_arguments
        _op_arguments=(
          "warehouseId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
    esac
    ;;

esac

return ret
