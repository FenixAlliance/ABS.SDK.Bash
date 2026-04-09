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
            "createCourseArticleAsync[Create a new course article]" \
            "deleteCourseArticleAsync[Delete a course article]" \
            "getCourseArticleByIdAsync[Get course article by ID]" \
            "getCourseArticlesAsync[Get all course articles]" \
            "getCourseArticlesCountAsync[Get course articles count]" \
            "updateCourseArticleAsync[Update a course article]"             "createCourseAssignmentAsync[Create a new course assignment]" \
            "deleteCourseAssignmentAsync[Delete a course assignment]" \
            "getCourseAssignmentByIdAsync[Get course assignment by ID]" \
            "getCourseAssignmentsAsync[Get all course assignments]" \
            "getCourseAssignmentsCountAsync[Get course assignments count]" \
            "updateCourseAssignmentAsync[Update a course assignment]"             "createCourseCategoryAsync[Create a new course category]" \
            "deleteCourseCategoryAsync[Delete a course category]" \
            "getCourseCategoriesAsync[Get all course categories]" \
            "getCourseCategoriesCountAsync[Get course categories count]" \
            "getCourseCategoryByIdAsync[Get course category by ID]" \
            "updateCourseCategoryAsync[Update a course category]"             "createCourseCertificateAsync[Create a course certificate]" \
            "createCourseCertificateTemplateAsync[Create a certificate template]" \
            "deleteCourseCertificateAsync[Delete a course certificate]" \
            "deleteCourseCertificateTemplateAsync[Delete a certificate template]" \
            "getCourseCertificateAsync[Get course certificate by ID]" \
            "getCourseCertificateTemplateAsync[Get certificate template by ID]" \
            "getCourseCertificateTemplatesAsync[Get all certificate templates]" \
            "getCourseCertificatesAsync[Get all course certificates]" \
            "getCourseCertificatesCountAsync[Get course certificates count]" \
            "updateCourseCertificateAsync[Update a course certificate]"             "createCourseCohortAsync[Create a new course cohort]" \
            "deleteCourseCohortAsync[Delete a course cohort]" \
            "getCourseCohortByIdAsync[Get course cohort by ID]" \
            "getCourseCohortsAsync[Get all course cohorts]" \
            "getCourseCohortsCountAsync[Get course cohorts count]" \
            "updateCourseCohortAsync[Update a course cohort]"             "createCourseEnrollmentAsync[Create a new course enrollment]" \
            "deleteCourseEnrollmentAsync[Delete a course enrollment]" \
            "getCourseEnrollmentAsync[Get course enrollment by ID]" \
            "getEnrollmentsAsync[Get all course enrollments]" \
            "getEnrollmentsCountAsync[Get course enrollments count]" \
            "getStudentCourseEnrollmentsAsync[Get enrollments by student]" \
            "updateCourseEnrollmentAsync[Update a course enrollment]"             "createCourseFileAsync[Create a new course file]" \
            "deleteCourseFileAsync[Delete a course file]" \
            "getCourseFileByIdAsync[Get course file by ID]" \
            "getCourseFilesAsync[Get all course files]" \
            "getCourseFilesCountAsync[Get course files count]" \
            "updateCourseFileAsync[Update a course file]"             "createCourseForumAsync[Create a course forum]" \
            "deleteCourseForumAsync[Delete a course forum]" \
            "getCourseForumByIdAsync[Get course forum by ID]" \
            "getCourseForumsAsync[Get all course forums]" \
            "getCourseForumsCountAsync[Get course forums count]" \
            "updateCourseForumAsync[Update a course forum]"             "createCourseHandoutAsync[Create a course handout]" \
            "deleteCourseHandoutAsync[Delete a course handout]" \
            "getCourseHandoutByIdAsync[Get course handout by ID]" \
            "getCourseHandoutsAsync[Get all course handouts]" \
            "getCourseHandoutsCountAsync[Get course handouts count]" \
            "updateCourseHandoutAsync[Update a course handout]"             "createCourseLibraryAsync[Create a course library]" \
            "deleteCourseLibraryAsync[Delete a course library]" \
            "getCourseLibrariesAsync[Get all course libraries]" \
            "getCourseLibrariesCountAsync[Get course libraries count]" \
            "getCourseLibraryByIdAsync[Get course library by ID]" \
            "updateCourseLibraryAsync[Update a course library]"             "createCoursePageAsync[Create a new course page]" \
            "deleteCoursePageAsync[Delete a course page]" \
            "getCoursePageByIdAsync[Get course page by ID]" \
            "getCoursePagesAsync[Get all course pages]" \
            "getCoursePagesCountAsync[Get course pages count]" \
            "updateCoursePageAsync[Update a course page]"             "createCourseProblemSetAsync[Create a new course problem set]" \
            "deleteCourseProblemSetAsync[Delete a course problem set]" \
            "getCourseProblemSetByIdAsync[Get course problem set by ID]" \
            "getCourseProblemSetsAsync[Get all course problem sets]" \
            "getCourseProblemSetsCountAsync[Get course problem sets count]" \
            "updateCourseProblemSetAsync[Update a course problem set]"             "createCourseSectionAsync[Create a new course section]" \
            "deleteCourseSectionAsync[Delete a course section]" \
            "getCourseSectionByIdAsync[Get course section by ID]" \
            "getCourseSectionsAsync[Get all course sections]" \
            "getCourseSectionsCountAsync[Get course sections count]" \
            "updateCourseSectionAsync[Update a course section]"             "createCourseUnitComponentAsync[Create a new course unit component]" \
            "deleteCourseUnitComponentAsync[Delete a course unit component]" \
            "getCourseUnitComponentByIdAsync[Get course unit component by ID]" \
            "getCourseUnitComponentsAsync[Get all course unit components]" \
            "getCourseUnitComponentsCountAsync[Get course unit components count]" \
            "updateCourseUnitComponentAsync[Update a course unit component]"             "createCourseUnitAsync[Create a new course unit]" \
            "deleteCourseUnitAsync[Delete a course unit]" \
            "getCourseUnitByIdAsync[Get course unit by ID]" \
            "getCourseUnitsAsync[Get all course units]" \
            "getCourseUnitsCountAsync[Get course units count]" \
            "updateCourseUnitAsync[Update a course unit]"             "createCourseUpdateAsync[Create a new course update]" \
            "deleteCourseUpdateAsync[Delete a course update]" \
            "getCourseUpdateByIdAsync[Get course update by ID]" \
            "getCourseUpdatesAsync[Get all course updates]" \
            "getCourseUpdatesCountAsync[Get course updates count]" \
            "updateCourseUpdateAsync[Update a course update]"             "createCourseWikiAsync[Create a new course wiki]" \
            "deleteCourseWikiAsync[Delete a course wiki]" \
            "getCourseWikiByIdAsync[Get course wiki by ID]" \
            "getCourseWikisAsync[Get all course wikis]" \
            "getCourseWikisCountAsync[Get course wikis count]" \
            "updateCourseWikiAsync[Update a course wiki]"             "createCourseAsync[Create a new course]" \
            "deleteCourseAsync[Delete a course]" \
            "getCourseArticlesByCourseWikiAsync[Get course articles by course wiki]" \
            "getCourseArticlesByCourseWikiCountAsync[Get course articles by course wiki count]" \
            "getCourseAssignmentsByCourseAsync[Get course assignments by course]" \
            "getCourseAssignmentsByCourseCountAsync[Get course assignments by course count]" \
            "getCourseByIdAsync[Get course by ID]" \
            "getCourseCategoriesByCourseAsync[Get course categories by course]" \
            "getCourseCategoriesByCourseCountAsync[Get course categories by course count]" \
            "getCourseCohortsByCourseAsync[Get course cohorts by course]" \
            "getCourseCohortsByCourseCountAsync[Get course cohorts by course count]" \
            "getCourseEnrollmentsByCourseAsync[Get enrollments by course]" \
            "getCourseFilesByCourseAsync[Get course files by course]" \
            "getCourseFilesByCourseCountAsync[Get course files by course count]" \
            "getCourseForumsByCourseAsync[Get course forums by course]" \
            "getCourseForumsByCourseCountAsync[Get course forums by course count]" \
            "getCourseHandoutsByCourseAsync[Get course handouts by course]" \
            "getCourseHandoutsByCourseCountAsync[Get course handouts by course count]" \
            "getCourseLibrariesByCourseAsync[Get course libraries by course]" \
            "getCourseLibrariesByCourseCountAsync[Get course libraries by course count]" \
            "getCoursePagesByCourseAsync[Get course pages by course]" \
            "getCoursePagesByCourseCountAsync[Get course pages by course count]" \
            "getCourseProblemSetsByCourseAsync[Get course problem sets by course]" \
            "getCourseProblemSetsByCourseCountAsync[Get course problem sets by course count]" \
            "getCourseSectionsByCourseAsync[Get course sections by course]" \
            "getCourseSectionsByCourseCountAsync[Get course sections by course count]" \
            "getCourseUnitComponentsByCourseAsync[Get course unit components by course]" \
            "getCourseUnitComponentsByCourseCountAsync[Get course unit components by course count]" \
            "getCourseUnitsBySectionAsync[Get course units by section]" \
            "getCourseUnitsBySectionCountAsync[Get course units by section count]" \
            "getCourseUpdatesByCourseAsync[Get course updates by course]" \
            "getCourseUpdatesByCourseCountAsync[Get course updates by course count]" \
            "getCourseWikisByCourseAsync[Get course wikis by course]" \
            "getCourseWikisByCourseCountAsync[Get course wikis by course count]" \
            "getCoursesAsync[Get courses]" \
            "getCoursesCountAsync[Get courses count]" \
            "getInstructorProfilesByCourseAsync[Get instructor profiles by course]" \
            "getInstructorProfilesByCourseCountAsync[Get instructor profiles by course count]" \
            "getStudentProfilesByCourseAsync[Get student profiles by course]" \
            "getStudentProfilesByCourseCountAsync[Get student profiles by course count]" \
            "updateCourseAsync[Update a course]"             "forgotPasswordPost[]" \
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
            "versionGet[]"             "apiV2LearningServiceInstructorProfilesCountGet[]" \
            "apiV2LearningServiceInstructorProfilesGet[]" \
            "apiV2LearningServiceInstructorProfilesInstructorProfileIdDelete[]" \
            "apiV2LearningServiceInstructorProfilesInstructorProfileIdGet[]" \
            "apiV2LearningServiceInstructorProfilesInstructorProfileIdPut[]" \
            "apiV2LearningServiceInstructorProfilesPost[]"             "apiV2LearningServiceStudentProfilesCountGet[]" \
            "apiV2LearningServiceStudentProfilesGet[]" \
            "apiV2LearningServiceStudentProfilesPost[]" \
            "apiV2LearningServiceStudentProfilesStudentProfileIdAverageGet[]" \
            "apiV2LearningServiceStudentProfilesStudentProfileIdDelete[]" \
            "apiV2LearningServiceStudentProfilesStudentProfileIdGet[]" \
            "apiV2LearningServiceStudentProfilesStudentProfileIdHoursCompletedGet[]" \
            "apiV2LearningServiceStudentProfilesStudentProfileIdPut[]" \

    _arguments "(--help)--help[Print information about operation]"

    ret=0
    ;;
  args)
    case $line[1] in
      createCourseArticleAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCourseArticleAsync)
        local -a _op_arguments
        _op_arguments=(
          "articleId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseArticleByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "articleId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseArticlesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseArticlesCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCourseArticleAsync)
        local -a _op_arguments
        _op_arguments=(
          "articleId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCourseAssignmentAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCourseAssignmentAsync)
        local -a _op_arguments
        _op_arguments=(
          "assignmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseAssignmentByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "assignmentId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseAssignmentsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseAssignmentsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCourseAssignmentAsync)
        local -a _op_arguments
        _op_arguments=(
          "assignmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCourseCategoryAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCourseCategoryAsync)
        local -a _op_arguments
        _op_arguments=(
          "categoryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseCategoriesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseCategoriesCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseCategoryByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "categoryId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCourseCategoryAsync)
        local -a _op_arguments
        _op_arguments=(
          "categoryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCourseCertificateAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCourseCertificateTemplateAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCourseCertificateAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseCertificateId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCourseCertificateTemplateAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseCertificateTemplateId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseCertificateAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseCertificateId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseCertificateTemplateAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseCertificateTemplateId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseCertificateTemplatesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseCertificatesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseCertificatesCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCourseCertificateAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseCertificateId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCourseCohortAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCourseCohortAsync)
        local -a _op_arguments
        _op_arguments=(
          "cohortId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseCohortByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "cohortId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseCohortsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseCohortsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCourseCohortAsync)
        local -a _op_arguments
        _op_arguments=(
          "cohortId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCourseEnrollmentAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCourseEnrollmentAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseEnrollmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseEnrollmentAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseEnrollmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getEnrollmentsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getEnrollmentsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStudentCourseEnrollmentsAsync)
        local -a _op_arguments
        _op_arguments=(
          "studentProfileId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCourseEnrollmentAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseEnrollmentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCourseFileAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCourseFileAsync)
        local -a _op_arguments
        _op_arguments=(
          "fileId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseFileByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "fileId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseFilesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseFilesCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCourseFileAsync)
        local -a _op_arguments
        _op_arguments=(
          "fileId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCourseForumAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCourseForumAsync)
        local -a _op_arguments
        _op_arguments=(
          "forumId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseForumByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "forumId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseForumsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseForumsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCourseForumAsync)
        local -a _op_arguments
        _op_arguments=(
          "forumId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCourseHandoutAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCourseHandoutAsync)
        local -a _op_arguments
        _op_arguments=(
          "handoutId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseHandoutByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "handoutId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseHandoutsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseHandoutsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCourseHandoutAsync)
        local -a _op_arguments
        _op_arguments=(
          "handoutId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCourseLibraryAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCourseLibraryAsync)
        local -a _op_arguments
        _op_arguments=(
          "libraryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseLibrariesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseLibrariesCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseLibraryByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "libraryId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCourseLibraryAsync)
        local -a _op_arguments
        _op_arguments=(
          "libraryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCoursePageAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCoursePageAsync)
        local -a _op_arguments
        _op_arguments=(
          "pageId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCoursePageByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "pageId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCoursePagesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCoursePagesCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCoursePageAsync)
        local -a _op_arguments
        _op_arguments=(
          "pageId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCourseProblemSetAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCourseProblemSetAsync)
        local -a _op_arguments
        _op_arguments=(
          "problemSetId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseProblemSetByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "problemSetId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseProblemSetsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseProblemSetsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCourseProblemSetAsync)
        local -a _op_arguments
        _op_arguments=(
          "problemSetId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCourseSectionAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCourseSectionAsync)
        local -a _op_arguments
        _op_arguments=(
          "sectionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseSectionByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "sectionId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseSectionsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseSectionsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCourseSectionAsync)
        local -a _op_arguments
        _op_arguments=(
          "sectionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCourseUnitComponentAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCourseUnitComponentAsync)
        local -a _op_arguments
        _op_arguments=(
          "componentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseUnitComponentByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "componentId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseUnitComponentsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseUnitComponentsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCourseUnitComponentAsync)
        local -a _op_arguments
        _op_arguments=(
          "componentId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCourseUnitAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCourseUnitAsync)
        local -a _op_arguments
        _op_arguments=(
          "unitId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseUnitByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "unitId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseUnitsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseUnitsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCourseUnitAsync)
        local -a _op_arguments
        _op_arguments=(
          "unitId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCourseUpdateAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCourseUpdateAsync)
        local -a _op_arguments
        _op_arguments=(
          "updateId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseUpdateByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "updateId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseUpdatesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseUpdatesCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCourseUpdateAsync)
        local -a _op_arguments
        _op_arguments=(
          "updateId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCourseWikiAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCourseWikiAsync)
        local -a _op_arguments
        _op_arguments=(
          "wikiId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseWikiByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "wikiId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseWikisAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseWikisCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCourseWikiAsync)
        local -a _op_arguments
        _op_arguments=(
          "wikiId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCourseAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCourseAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseArticlesByCourseWikiAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
"wikiId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseArticlesByCourseWikiCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
"wikiId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseAssignmentsByCourseAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseAssignmentsByCourseCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseCategoriesByCourseAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseCategoriesByCourseCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseCohortsByCourseAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseCohortsByCourseCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseEnrollmentsByCourseAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseFilesByCourseAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseFilesByCourseCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseForumsByCourseAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseForumsByCourseCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseHandoutsByCourseAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseHandoutsByCourseCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseLibrariesByCourseAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseLibrariesByCourseCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCoursePagesByCourseAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCoursePagesByCourseCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseProblemSetsByCourseAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseProblemSetsByCourseCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseSectionsByCourseAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseSectionsByCourseCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseUnitComponentsByCourseAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseUnitComponentsByCourseCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseUnitsBySectionAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
"sectionId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseUnitsBySectionCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
"sectionId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseUpdatesByCourseAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseUpdatesByCourseCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseWikisByCourseAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCourseWikisByCourseCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCoursesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCoursesCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getInstructorProfilesByCourseAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getInstructorProfilesByCourseCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStudentProfilesByCourseAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getStudentProfilesByCourseCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
          "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCourseAsync)
        local -a _op_arguments
        _op_arguments=(
          "courseId=:[PATH] "
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
      apiV2LearningServiceInstructorProfilesCountGet)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      apiV2LearningServiceInstructorProfilesGet)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      apiV2LearningServiceInstructorProfilesInstructorProfileIdDelete)
        local -a _op_arguments
        _op_arguments=(
          "instructorProfileId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      apiV2LearningServiceInstructorProfilesInstructorProfileIdGet)
        local -a _op_arguments
        _op_arguments=(
          "instructorProfileId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      apiV2LearningServiceInstructorProfilesInstructorProfileIdPut)
        local -a _op_arguments
        _op_arguments=(
          "instructorProfileId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      apiV2LearningServiceInstructorProfilesPost)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      apiV2LearningServiceStudentProfilesCountGet)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      apiV2LearningServiceStudentProfilesGet)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      apiV2LearningServiceStudentProfilesPost)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      apiV2LearningServiceStudentProfilesStudentProfileIdAverageGet)
        local -a _op_arguments
        _op_arguments=(
          "studentProfileId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      apiV2LearningServiceStudentProfilesStudentProfileIdDelete)
        local -a _op_arguments
        _op_arguments=(
          "studentProfileId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      apiV2LearningServiceStudentProfilesStudentProfileIdGet)
        local -a _op_arguments
        _op_arguments=(
          "studentProfileId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      apiV2LearningServiceStudentProfilesStudentProfileIdHoursCompletedGet)
        local -a _op_arguments
        _op_arguments=(
          "studentProfileId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      apiV2LearningServiceStudentProfilesStudentProfileIdPut)
        local -a _op_arguments
        _op_arguments=(
          "studentProfileId=:[PATH] "
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
