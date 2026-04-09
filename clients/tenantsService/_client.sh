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
            "createTenantDepartment[Create a new tenant department]" \
            "deleteTenantDepartment[Delete a tenant department]" \
            "getTenantDepartmentById[Retrieve a single tenant department by its ID]" \
            "getTenantDepartments[Retrieve a list of tenant departments]" \
            "getTenantDepartmentsCount[Get the count of tenant departments]" \
            "updateTenantDepartment[Update a tenant department]"             "createTenantEmployeeEnrollment[Create a new tenant employee enrollment]" \
            "deleteTenantEmployeeEnrollment[Delete a tenant employee enrollment]" \
            "getTenantEmployeeEnrollmentById[Retrieve a single tenant employee enrollment by its ID]" \
            "getTenantEmployeeEnrollments[Retrieve a list of tenant employee enrollments]" \
            "getTenantEmployeeEnrollmentsCount[Get the count of tenant employee enrollments]" \
            "updateTenantEmployeeEnrollment[Update a tenant employee enrollment]"             "createTenantEnrollment[Create a new tenant enrollment]" \
            "deleteTenantEnrollment[Delete a tenant enrollment]" \
            "getExtendedTenantEnrollments[Retrieve a list of tenant enrollments]" \
            "getExtendedTenantEnrollmentsCount[Get the count of tenant enrollments]" \
            "getTenantEnrollmentById[Retrieve a single tenant enrollment by its ID]" \
            "getTenantEnrollments[Retrieve a list of tenant enrollments]" \
            "getTenantEnrollmentsCount[Get the count of tenant enrollments]" \
            "updateTenantEnrollment[Update a tenant enrollment]"             "forgotPasswordPost[]" \
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
            "versionGet[]"             "createTenantIndustry[Create a new tenant industry]" \
            "deleteTenantIndustry[Delete a tenant industry]" \
            "getTenantIndustries[Retrieve a list of tenant industries]" \
            "getTenantIndustriesCount[Get the count of tenant industries]" \
            "getTenantIndustryById[Retrieve a single tenant industry by its ID]" \
            "updateTenantIndustry[Update a tenant industry]"             "acceptTenantInvitation[Accept an invitation to join a tenant]" \
            "declineTenantInvitation[Decline an invitation to join a tenant]" \
            "deleteTenantInvitation[Delete a tenant invitation]" \
            "getTenantInvitationById[Get a tenant invitation by its ID]" \
            "getTenantInvitations[Retrieve a list of tenant invitations]" \
            "getTenantInvitationsCount[Get the count of tenant invitations]" \
            "sendTenantInvitation[Send an invitation to a user to join a tenant]"             "createTenantOption[Create a new tenant option]" \
            "deleteTenantOption[Delete a tenant option]" \
            "getTenantOptionById[Retrieve a single tenant option by its ID]" \
            "getTenantOptionByKey[Retrieve a single tenant option by its key]" \
            "getTenantOptions[Retrieve a list of tenant options]" \
            "getTenantOptionsCount[Get the count of tenant options]" \
            "updateTenantOption[Update a tenant option]" \
            "upsertTenantOption[Create or update a tenant option by key]"             "createTenantPosition[Create a new tenant position]" \
            "deleteTenantPosition[Delete a tenant position]" \
            "getTenantPositionById[Retrieve a single tenant position by its ID]" \
            "getTenantPositions[Retrieve a list of tenant positions]" \
            "getTenantPositionsCount[Get the count of tenant positions]" \
            "updateTenantPosition[Update a tenant position]"             "createTenantSegment[Create a new tenant segment]" \
            "deleteTenantSegment[Delete a tenant segment]" \
            "getTenantSegmentById[Retrieve a single tenant segment by its ID]" \
            "getTenantSegments[Retrieve a list of tenant segments]" \
            "getTenantSegmentsCount[Get the count of tenant segments]" \
            "updateTenantSegment[Update a tenant segment]"             "createTenantSize[Create a new tenant size]" \
            "deleteTenantSize[Delete a tenant size]" \
            "getTenantSizeById[Retrieve a single tenant size by its ID]" \
            "getTenantSizes[Retrieve a list of tenant sizes]" \
            "getTenantSizesCount[Get the count of tenant sizes]" \
            "updateTenantSize[Update a tenant size]"             "createTenantTeamContactEnrollment[Create a new tenant team contact enrollment]" \
            "deleteTenantTeamContactEnrollment[Delete a tenant team contact enrollment]" \
            "getTenantTeamContactEnrollmentById[Retrieve a single tenant team contact enrollment by its ID]" \
            "getTenantTeamContactEnrollments[Retrieve a list of tenant team contact enrollments]" \
            "getTenantTeamContactEnrollmentsCount[Get the count of tenant team contact enrollments]" \
            "updateTenantTeamContactEnrollment[Update a tenant team contact enrollment]"             "createTenantTeamProjectEnrollment[Create a new tenant team project enrollment]" \
            "deleteTenantTeamProjectEnrollment[Delete a tenant team project enrollment]" \
            "getTenantTeamProjectEnrollmentById[Retrieve a single tenant team project enrollment by its ID]" \
            "getTenantTeamProjectEnrollments[Retrieve a list of tenant team project enrollments]" \
            "getTenantTeamProjectEnrollmentsCount[Get the count of tenant team project enrollments]" \
            "updateTenantTeamProjectEnrollment[Update a tenant team project enrollment]"             "createTenantTeamRecord[Create a new tenant team record]" \
            "deleteTenantTeamRecord[Delete a tenant team record]" \
            "getTenantTeamRecordById[Retrieve a single tenant team record by its ID]" \
            "getTenantTeamRecords[Retrieve a list of tenant team records]" \
            "getTenantTeamRecordsCount[Get the count of tenant team records]" \
            "updateTenantTeamRecord[Update a tenant team record]"             "createTenantTeam[Create a new tenant team]" \
            "deleteTenantTeam[Delete a tenant team]" \
            "getTenantTeamById[Retrieve a single tenant team by its ID]" \
            "getTenantTeams[Retrieve a list of tenant teams]" \
            "getTenantTeamsCount[Get the count of tenant teams]" \
            "updateTenantTeam[Update a tenant team]"             "assignLicenseAsync[Assign a license to a specific enrollment]" \
            "createTenantAsync[Create a new business tenant]" \
            "deSelectTenantAsync[Deselect the user's default tenant]" \
            "deleteTenantAsync[Delete a tenant]" \
            "getAccessibleFeaturesAsync[Get the list of features accessible to a specific enrollment]" \
            "getCurrentTenantAsync[Get the user's current default tenant]" \
            "getEnrollmentLicenseByIdAsync[Get a specific license for an enrollment]" \
            "getEnrollmentLicensesAsync[Get the list of licenses available to a specific enrollment]" \
            "getEnrollmentPermissionsAsync[Get a specific tenant enrollment's permissions list]" \
            "getExtendedTenantAsync[Get an extended tenant's business profile]" \
            "getExtendedTenantEnrollmentAsync[Get a specific tenant enrollment]" \
            "getRootTenantAsync[Get the root tenant of the platform]" \
            "getTenantAsync[Get a specific tenant by ID]" \
            "getTenantAvatarAsync[Get a tenant's avatar]" \
            "getTenantCartAsync[Get a tenant's default cart]" \
            "getTenantEnrollmentAsync[Get a specific tenant enrollment]" \
            "getTenantEnrollmentsAsync[Get the list of user enrollments for a tenant]" \
            "getTenantInvitationsAsync[Get the list of invitations issued by a tenant]" \
            "getTenantLicensesAsync[Get the list of licenses available to a tenant]" \
            "getTenantNotificationsAsync[Get the list of notifications for a tenant]" \
            "getTenantNotificationsCountAsync[Get the count of notifications for a tenant]" \
            "getTenantPendingInvitationsAsync[Get the list of invitations issued by a tenant that are pending]" \
            "getTenantRedeemedInvitationsAsync[Get the list of invitations issued by a tenant that have been redeemed]" \
            "getTenantRevokedInvitationsAsync[Get the list of invitations issued by a tenant that have been revoked]" \
            "getTenantSocialProfileAsync[Get a tenant's social profile]" \
            "getTenantUsersAsync[Get the list of users enrolled in a tenant]" \
            "getTenantWalletAsync[Get a tenant's billing profile (A.K.A. Wallet Account)]" \
            "getTenantWebPortalsAsync[Get the list of web portals for a tenant]" \
            "patchTenantAsync[Patch a tenant's profile]" \
            "revokeLicenseAsync[Revoke a license from a specific enrollment]" \
            "selectTenantAsync[Select a business tenant as the user's default tenant]" \
            "updateAvatarAsync[Update a tenant's avatar]" \
            "updateTenantAsync[Update a tenant's profile]" \
            "validateEnrollmentFeatureAccess[Validate the access to a specific feature for a specific enrollment]" \
            "validateEnrollmentPermissionsAsync[Validate the existence of a list of roles and permissions for a specific enrollment]"             "createTenantTerritory[Create a new tenant territory]" \
            "deleteTenantTerritory[Delete a tenant territory]" \
            "getTenantTerritories[Retrieve a list of tenant territories]" \
            "getTenantTerritoriesCount[Get the count of tenant territories]" \
            "getTenantTerritoryById[Retrieve a single tenant territory by its ID]" \
            "updateTenantTerritory[Update a tenant territory]"             "createTenantType[Create a new tenant type]" \
            "deleteTenantType[Delete a tenant type]" \
            "getTenantTypeById[Retrieve a single tenant type by its ID]" \
            "getTenantTypes[Retrieve a list of tenant types]" \
            "getTenantTypesCount[Get the count of tenant types]" \
            "updateTenantType[Update a tenant type]"             "createUnitAsync[Create a unit within a unit group]" \
            "createUnitGroupAsync[Create a new unit group]" \
            "deleteUnitAsync[Delete a unit from a unit group]" \
            "deleteUnitGroupAsync[Delete a unit group]" \
            "getUnitAsync[Retrieve a unit by ID within a unit group]" \
            "getUnitGroupAsync[Retrieve a unit group by ID]" \
            "getUnitGroupsAsync[Retrieve a list of unit groups]" \
            "getUnitGroupsCountAsync[Get the count of unit groups]" \
            "getUnitsAsync[Retrieve units for a unit group]" \
            "getUnitsCountAsync[Get the count of units in a unit group]" \
            "updateUnitAsync[Update a unit within a unit group]" \
            "updateUnitGroupAsync[Update a unit group]"             "createTenantUnit[Create a new tenant unit]" \
            "deleteTenantUnit[Delete a tenant unit]" \
            "getTenantUnitById[Retrieve a single tenant unit by its ID]" \
            "getTenantUnits[Retrieve a list of tenant units]" \
            "getTenantUnitsCount[Get the count of tenant units]" \
            "updateTenantUnit[Update a tenant unit]" \

    _arguments "(--help)--help[Print information about operation]"

    ret=0
    ;;
  args)
    case $line[1] in
      createTenantDepartment)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTenantDepartment)
        local -a _op_arguments
        _op_arguments=(
          "tenantDepartmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantDepartmentById)
        local -a _op_arguments
        _op_arguments=(
          "tenantDepartmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantDepartments)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantDepartmentsCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTenantDepartment)
        local -a _op_arguments
        _op_arguments=(
          "tenantDepartmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTenantEmployeeEnrollment)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTenantEmployeeEnrollment)
        local -a _op_arguments
        _op_arguments=(
          "tenantEmployeeEnrollmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantEmployeeEnrollmentById)
        local -a _op_arguments
        _op_arguments=(
          "tenantEmployeeEnrollmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantEmployeeEnrollments)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantEmployeeEnrollmentsCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTenantEmployeeEnrollment)
        local -a _op_arguments
        _op_arguments=(
          "tenantEmployeeEnrollmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTenantEnrollment)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTenantEnrollment)
        local -a _op_arguments
        _op_arguments=(
          "enrollmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getExtendedTenantEnrollments)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getExtendedTenantEnrollmentsCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantEnrollmentById)
        local -a _op_arguments
        _op_arguments=(
          "enrollmentId=:[PATH] "
          "tenantId=:[QUERY] "
"userId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantEnrollments)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantEnrollmentsCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTenantEnrollment)
        local -a _op_arguments
        _op_arguments=(
          "enrollmentId=:[PATH] "
          "tenantId=:[QUERY] "
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
      createTenantIndustry)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTenantIndustry)
        local -a _op_arguments
        _op_arguments=(
          "tenantIndustryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantIndustries)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantIndustriesCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantIndustryById)
        local -a _op_arguments
        _op_arguments=(
          "tenantIndustryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTenantIndustry)
        local -a _op_arguments
        _op_arguments=(
          "tenantIndustryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      acceptTenantInvitation)
        local -a _op_arguments
        _op_arguments=(
          "invitationId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      declineTenantInvitation)
        local -a _op_arguments
        _op_arguments=(
          "invitationId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTenantInvitation)
        local -a _op_arguments
        _op_arguments=(
          "invitationId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantInvitationById)
        local -a _op_arguments
        _op_arguments=(
          "invitationId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantInvitations)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantInvitationsCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      sendTenantInvitation)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTenantOption)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"key=:[QUERY] "
"portalId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTenantOption)
        local -a _op_arguments
        _op_arguments=(
          "optionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantOptionById)
        local -a _op_arguments
        _op_arguments=(
          "optionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantOptionByKey)
        local -a _op_arguments
        _op_arguments=(
          "key=:[PATH] "
          "tenantId=:[QUERY] "
"portalId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantOptions)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"portalId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantOptionsCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"portalId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTenantOption)
        local -a _op_arguments
        _op_arguments=(
          "optionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      upsertTenantOption)
        local -a _op_arguments
        _op_arguments=(
          "key=:[PATH] "
          "tenantId=:[QUERY] "
"portalId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTenantPosition)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTenantPosition)
        local -a _op_arguments
        _op_arguments=(
          "tenantPositionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantPositionById)
        local -a _op_arguments
        _op_arguments=(
          "tenantPositionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantPositions)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantPositionsCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTenantPosition)
        local -a _op_arguments
        _op_arguments=(
          "tenantPositionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTenantSegment)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTenantSegment)
        local -a _op_arguments
        _op_arguments=(
          "tenantSegmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantSegmentById)
        local -a _op_arguments
        _op_arguments=(
          "tenantSegmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantSegments)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantSegmentsCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTenantSegment)
        local -a _op_arguments
        _op_arguments=(
          "tenantSegmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTenantSize)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTenantSize)
        local -a _op_arguments
        _op_arguments=(
          "tenantSizeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantSizeById)
        local -a _op_arguments
        _op_arguments=(
          "tenantSizeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantSizes)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantSizesCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTenantSize)
        local -a _op_arguments
        _op_arguments=(
          "tenantSizeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTenantTeamContactEnrollment)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTenantTeamContactEnrollment)
        local -a _op_arguments
        _op_arguments=(
          "tenantTeamContactEnrollmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantTeamContactEnrollmentById)
        local -a _op_arguments
        _op_arguments=(
          "tenantTeamContactEnrollmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantTeamContactEnrollments)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantTeamContactEnrollmentsCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTenantTeamContactEnrollment)
        local -a _op_arguments
        _op_arguments=(
          "tenantTeamContactEnrollmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTenantTeamProjectEnrollment)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTenantTeamProjectEnrollment)
        local -a _op_arguments
        _op_arguments=(
          "tenantTeamProjectEnrollmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantTeamProjectEnrollmentById)
        local -a _op_arguments
        _op_arguments=(
          "tenantTeamProjectEnrollmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantTeamProjectEnrollments)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantTeamProjectEnrollmentsCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTenantTeamProjectEnrollment)
        local -a _op_arguments
        _op_arguments=(
          "tenantTeamProjectEnrollmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTenantTeamRecord)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTenantTeamRecord)
        local -a _op_arguments
        _op_arguments=(
          "tenantTeamRecordId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantTeamRecordById)
        local -a _op_arguments
        _op_arguments=(
          "tenantTeamRecordId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantTeamRecords)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantTeamRecordsCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTenantTeamRecord)
        local -a _op_arguments
        _op_arguments=(
          "tenantTeamRecordId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTenantTeam)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTenantTeam)
        local -a _op_arguments
        _op_arguments=(
          "tenantTeamId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantTeamById)
        local -a _op_arguments
        _op_arguments=(
          "tenantTeamId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantTeams)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantTeamsCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTenantTeam)
        local -a _op_arguments
        _op_arguments=(
          "tenantTeamId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      assignLicenseAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
"enrollmentId=:[PATH] "
"licenseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTenantAsync)
        local -a _op_arguments
        _op_arguments=(
                    "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deSelectTenantAsync)
        local -a _op_arguments
        _op_arguments=(
                    "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTenantAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccessibleFeaturesAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
"enrollmentId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCurrentTenantAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getEnrollmentLicenseByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
"enrollmentId=:[PATH] "
"licenseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getEnrollmentLicensesAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
"enrollmentId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getEnrollmentPermissionsAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
"enrollmentId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getExtendedTenantAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getExtendedTenantEnrollmentAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
"enrollmentId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getRootTenantAsync)
        local -a _op_arguments
        _op_arguments=(
                    "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantAvatarAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
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
      getTenantEnrollmentAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
"enrollmentId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantEnrollmentsAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantInvitationsAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantLicensesAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantNotificationsAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantNotificationsCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantPendingInvitationsAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantRedeemedInvitationsAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantRevokedInvitationsAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantSocialProfileAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantUsersAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantWalletAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantWebPortalsAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchTenantAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      revokeLicenseAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
"enrollmentId=:[PATH] "
"licenseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      selectTenantAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAvatarAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTenantAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      validateEnrollmentFeatureAccess)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
"enrollmentId=:[PATH] "
          "feature=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      validateEnrollmentPermissionsAsync)
        local -a _op_arguments
        _op_arguments=(
          "tenantId=:[PATH] "
"enrollmentId=:[PATH] "
          "roles=:[QUERY] "
"permissions=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTenantTerritory)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTenantTerritory)
        local -a _op_arguments
        _op_arguments=(
          "tenantTerritoryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantTerritories)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantTerritoriesCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantTerritoryById)
        local -a _op_arguments
        _op_arguments=(
          "tenantTerritoryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTenantTerritory)
        local -a _op_arguments
        _op_arguments=(
          "tenantTerritoryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTenantType)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTenantType)
        local -a _op_arguments
        _op_arguments=(
          "tenantTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantTypeById)
        local -a _op_arguments
        _op_arguments=(
          "tenantTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantTypes)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantTypesCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTenantType)
        local -a _op_arguments
        _op_arguments=(
          "tenantTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createUnitAsync)
        local -a _op_arguments
        _op_arguments=(
          "unitGroupId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createUnitGroupAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteUnitAsync)
        local -a _op_arguments
        _op_arguments=(
          "unitGroupId=:[PATH] "
"unitId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteUnitGroupAsync)
        local -a _op_arguments
        _op_arguments=(
          "unitGroupId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getUnitAsync)
        local -a _op_arguments
        _op_arguments=(
          "unitGroupId=:[PATH] "
"unitId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getUnitGroupAsync)
        local -a _op_arguments
        _op_arguments=(
          "unitGroupId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getUnitGroupsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getUnitGroupsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getUnitsAsync)
        local -a _op_arguments
        _op_arguments=(
          "unitGroupId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getUnitsCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "unitGroupId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateUnitAsync)
        local -a _op_arguments
        _op_arguments=(
          "unitGroupId=:[PATH] "
"unitId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateUnitGroupAsync)
        local -a _op_arguments
        _op_arguments=(
          "unitGroupId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTenantUnit)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTenantUnit)
        local -a _op_arguments
        _op_arguments=(
          "tenantUnitId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantUnitById)
        local -a _op_arguments
        _op_arguments=(
          "tenantUnitId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantUnits)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTenantUnitsCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTenantUnit)
        local -a _op_arguments
        _op_arguments=(
          "tenantUnitId=:[PATH] "
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
