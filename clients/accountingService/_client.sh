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
            "createAccountGroup[Creates a new account group]" \
            "deleteAccountGroup[Deletes an existing account group]" \
            "getAccountGroup[Gets the current tenant account group]" \
            "getAccountGroups[Gets the current tenant account groups]" \
            "getAccountGroupsCountAsync[Gets the current tenant accounts count]" \
            "updateAccountGroup[Updates an existing account group]"             "createAccountingPeriod[Creates a new accounting period]" \
            "deleteAccountingPeriod[Deletes an existing accounting period]" \
            "getAccountingPeriod[Gets the current tenant accounting period]" \
            "getAccountingPeriods[Get all accounting periods for a tenant]" \
            "getAccountingPeriodsCountAsync[Gets the current tenant accounting periods count]" \
            "updateAccountingPeriod[Updates an existing accounting period]"             "aggregateAccountsBalanceAsync[Aggregate accounts balance]" \
            "balanceAccountAsync[Balance account]" \
            "balanceRootAccountAsync[Balance root account]" \
            "createAccountAsync[Get root accounts]" \
            "createAccountCreditAsync[Create account credit]" \
            "createAccountDebitAsync[Create account debit]" \
            "createAccountEntryAsync[Create account entry]" \
            "createAccountRelationAsync[Create account relation]" \
            "createAccountTypeAsync[Create account type]" \
            "deleteAccountAsync[Delete an account]" \
            "deleteAccountEntryAsync[Delete account entry]" \
            "deleteAccountRelationAsync[Delete account relation]" \
            "deleteAccountTypeAsync[Delete account type]" \
            "getAccountAggregateAsync[Get account aggregate]" \
            "getAccountCreditsAsync[Get account credits]" \
            "getAccountCreditsCountAsync[Get account credits count]" \
            "getAccountDebitsAsync[Get account debits]" \
            "getAccountDebitsCountAsync[Get account debits count]" \
            "getAccountDetailsAsync[Get account details]" \
            "getAccountEntriesAsync[Get account entries]" \
            "getAccountEntryAsync[Get account entry]" \
            "getAccountRelationsAsync[Get account relations]" \
            "getAccountRelationsCountAsync[Get account relations count]" \
            "getAccountTypeByIdAsync[Get account type by ID]" \
            "getAccountTypesAsync[Get account types]" \
            "getAccountTypesCountAsync[Get account types count]" \
            "getAccountsAsync[Creates a new account]" \
            "getAccountsCountAsync[Get the number of accounts]" \
            "getChartsOfAccountsAsync[Get charts of accounts]" \
            "getChildAccountsAsync[Get child accounts]" \
            "getCreditAccountEntriesAsync[Get credit account entries]" \
            "getDebitAccountEntriesAsync[Get debit account entries]" \
            "getRootAccountsAsync[Get root accounts]" \
            "patchAccountAsync[Patch an account]" \
            "seedChartOfAccountsAsync[Seed chart of accounts]" \
            "updateAccountAsync[Update an account]" \
            "updateAccountEntryAsync[Update account entry]" \
            "updateAccountRelationAsync[Update account relation]" \
            "updateAccountTypeAsync[Update account type]"             "getBankProfiles[Get all bank profiles for a tenant]" \
            "getBankProfilesCount[Get bank profiles count]"             "createBank[Creates a new bank]" \
            "createBankAccount[Creates a new bank account]" \
            "createBankGuarantee[Creates a new bank guarantee]" \
            "createBankTransaction[Creates a new bank transaction]" \
            "deleteBank[Deletes a bank]" \
            "deleteBankAccount[Deletes a bank account]" \
            "deleteBankGuarantee[Deletes a bank guarantee]" \
            "deleteBankTransaction[Deletes a bank transaction]" \
            "getBank[Gets the current tenant bank]" \
            "getBankAccount[Gets the current tenant bank account]" \
            "getBankAccounts[Gets the current tenant bank accounts]" \
            "getBankAccountsCount[Gets the current tenant bank accounts count]" \
            "getBankGuarantee[Gets the current tenant bank guarantee]" \
            "getBankGuarantees[Gets the current tenant bank guarantees]" \
            "getBankGuaranteesCount[Gets the current tenant bank guarantees count]" \
            "getBankTransaction[Gets the current tenant bank transaction]" \
            "getBankTransactions[Gets the current tenant bank transactions]" \
            "getBankTransactionsCount[Gets the current tenant bank transactions count]" \
            "getBanks[Gets the current tenant banks]" \
            "getBanksCount[Gets the current tenant banks count]" \
            "updateBank[Updates a bank]" \
            "updateBankAccount[Updates a bank account]" \
            "updateBankGuarantee[Updates a bank guarantee]" \
            "updateBankTransaction[Updates a bank transaction]"             "createBillableLineTax[Create a new tax for a billable line.]" \
            "deleteBillableLineTax[Delete a tax from a billable line.]" \
            "getBillableLineTaxes[Get taxes for a billable line.]" \
            "getBillableLineTaxesCount[Get the count of taxes for a billable line.]" \
            "updateBillableLineTax[Update a tax for a billable line.]"             "createBillingProfileAsync[Creates a new billing profile]" \
            "deleteBillingProfileAsync[Deletes a billing profile]" \
            "getBillingProfileByIdAsync[Gets a billing profile by id]" \
            "getBillingProfilesAsync[Gets all billing profiles]" \
            "getBillingProfilesCountAsync[Gets the count of billing profiles]" \
            "updateBillingProfileAsync[Updates an existing billing profile]"             "createBudgetAccountEntryAsync[Creates a budget account entry]" \
            "createBudgetAsync[Creates a budget]" \
            "deleteBudgetAccountEntryAsync[Deletes a budget account entry]" \
            "deleteBudgetAsync[Deletes a budget]" \
            "getBudgetAccountEntriesCollectionAsync[Gets all budget account entries]" \
            "getBudgetAccountEntryAsync[Gets a budget account entry by id]" \
            "getBudgetDetailsAsync[Gets a budget by id]" \
            "getBudgetsAsync[Gets all budgets]" \
            "getBudgetsCountAsync[Get the count of budgets]" \
            "updateBudgetAccountEntryAsync[Updates a budget account entry]" \
            "updateBudgetAsync[Updates a budget]"             "createCommissionAsync[Create a commission]" \
            "createPaymentCommissionAsync[Create a payment commission]" \
            "deleteCommissionAsync[Delete a commission]" \
            "deletePaymentCommissionAsync[Delete a payment commission]" \
            "getCommissionAsync[Get a commission by id]" \
            "getCommissionsAsync[Get all commissions for a tenant]" \
            "getCommissionsCountAsync[Get the count of commissions for a tenant]" \
            "getPaymentCommissionAsync[Get a payment commission by id]" \
            "getPaymentCommissionsAsync[Get all payment commissions for a tenant]" \
            "getPaymentCommissionsCountAsync[Get the count of payment commissions for a tenant]" \
            "updateCommissionAsync[Update a commission]" \
            "updatePaymentCommissionAsync[Update a payment commission]"             "apiV2AiServiceCompletionsCompleteGet[]"             "createCostCentre[Create a cost centre]" \
            "createCostCentreBudget[Create a cost centre budget]" \
            "createCostCentreGroup[Create a cost centre group]" \
            "deleteCostCentre[Delete a cost centre]" \
            "deleteCostCentreBudget[Delete a cost centre budget]" \
            "deleteCostCentreGroup[Delete a cost centre group]" \
            "getCostCentre[Get a cost centre by id]" \
            "getCostCentreBudget[Get a cost centre budget by id]" \
            "getCostCentreBudgets[Get all cost centre budgets for a tenant]" \
            "getCostCentreGroup[Get a cost centre group by id]" \
            "getCostCentreGroups[Get all cost centre groups for a tenant]" \
            "getCostCentreGroupsCount[Get the count of cost centre groups for a tenant]" \
            "getCostCentres[Get all cost centres for a tenant]" \
            "getCostCentresCount[Get the count of cost centres for a tenant]" \
            "updateCostCentre[Update a cost centre]" \
            "updateCostCentreBudget[Update a cost centre budget]" \
            "updateCostCentreGroup[Update a cost centre group]"             "createExpenseClaim[Create an expense claim]" \
            "deleteExpenseClaim[Delete an expense claim]" \
            "getExpenseClaim[Get an expense claim by id]" \
            "getExpenseClaims[Get all expense claims for a tenant]" \
            "getExpenseClaimsCount[Get the count of expense claims for a tenant]" \
            "updateExpenseClaim[Update an expense claim]"             "createExpenseType[Create an expense type]" \
            "deleteExpenseType[Delete an expense type]" \
            "getExpenseType[Get an expense type by id]" \
            "getExpenseTypes[Get all expense types for a tenant]" \
            "getExpenseTypesCount[Get the count of expense types for a tenant]" \
            "updateExpenseType[Update an expense type]"             "accountLogoutPost[]" \
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
            "versionGet[]"             "createFinancialBookAsync[Creates a new financial book]" \
            "deleteFinancialBookAsync[Deletes an existing financial book]" \
            "getFinancialBookDetailsAsync[Gets the details of a specific financial book]" \
            "getFinancialBooksAsync[Get all financial books for a tenant]" \
            "getFinancialBooksCountAsync[Get the count of financial books]" \
            "updateFinancialBookAsync[Updates an existing financial book]"             "createFiscalAuthority[Create a fiscal authority]" \
            "deleteFiscalAuthority[Delete a fiscal authority]" \
            "getFiscalAuthorities[Get fiscal authorities]" \
            "getFiscalAuthoritiesCount[Get fiscal authorities count]" \
            "getFiscalAuthority[Get fiscal authority by ID]" \
            "updateFiscalAuthority[Update a fiscal authority]"             "createFiscalYear[Create a fiscal year]" \
            "deleteFiscalYear[Delete a fiscal year]" \
            "getFiscalYear[Get fiscal year by ID for an authority]" \
            "getFiscalYears[Get fiscal years for an authority]" \
            "getFiscalYearsCount[Get fiscal years count for an authority]" \
            "updateFiscalYear[Update a fiscal year]"             "createInvoiceEnumerationRange[Create an invoice enumeration range]" \
            "deleteInvoiceEnumerationRange[Delete an invoice enumeration range]" \
            "getInvoiceEnumerationRange[Get invoice enumeration range by ID]" \
            "getInvoiceEnumerationRanges[Get invoice enumeration ranges for an authority]" \
            "getInvoiceEnumerationRangesCount[Get invoice enumeration ranges count]" \
            "updateInvoiceEnumerationRange[Update an invoice enumeration range]"             "createFiscalIdentificationType[Create a fiscal identification type]" \
            "deleteFiscalIdentificationType[Delete a fiscal identification type]" \
            "getFiscalIdentificationType[Get fiscal identification type by ID]" \
            "getFiscalIdentificationTypes[Get fiscal identification types for an authority]" \
            "getFiscalIdentificationTypesCount[Get fiscal identification types count]" \
            "updateFiscalIdentificationType[Update a fiscal identification type]"             "createFiscalPeriod[Create a fiscal period]" \
            "deleteFiscalPeriod[Delete a fiscal period]" \
            "getFiscalPeriod[Get fiscal period by ID]" \
            "getFiscalPeriods[Get fiscal periods for a fiscal year]" \
            "getFiscalPeriodsCount[Get fiscal periods count]" \
            "updateFiscalPeriod[Update a fiscal period]"             "createFiscalRegime[Create a fiscal regime]" \
            "deleteFiscalRegime[Delete a fiscal regime]" \
            "getFiscalRegime[Get fiscal regime by ID]" \
            "getFiscalRegimes[Get fiscal regimes for an authority]" \
            "getFiscalRegimesCount[Get fiscal regimes count]" \
            "updateFiscalRegime[Update a fiscal regime]"             "createFiscalResponsibility[Create a fiscal responsibility]" \
            "deleteFiscalResponsibility[Delete a fiscal responsibility]" \
            "getFiscalResponsibilities[Get fiscal responsibilities for an authority]" \
            "getFiscalResponsibilitiesCount[Get fiscal responsibilities count]" \
            "getFiscalResponsibility[Get fiscal responsibility by ID]" \
            "updateFiscalResponsibility[Update a fiscal responsibility]"             "createFiscalResponsibilityRecord[Create a fiscal responsibility record]" \
            "deleteFiscalResponsibilityRecord[Delete a fiscal responsibility record]" \
            "getFiscalResponsibilityRecord[Get fiscal responsibility record by ID]" \
            "getFiscalResponsibilityRecords[Get fiscal responsibility records]" \
            "getFiscalResponsibilityRecordsCount[Get fiscal responsibility records count]" \
            "updateFiscalResponsibilityRecord[Update a fiscal responsibility record]"             "createFiscalYearAsync[Create fiscal year]" \
            "deleteFiscalYearAsync[Delete fiscal year]" \
            "getFiscalYearDetailsAsync[Get fiscal year by ID]" \
            "getFiscalYearsAsync[Get all fiscal years]" \
            "getFiscalYearsCountAsync[Count fiscal years]" \
            "updateFiscalYearAsync[Update fiscal year]"             "createGrantAsync[Create grant]" \
            "deleteGrantAsync[Delete grant]" \
            "getGrantDetailsAsync[Get grant by ID]" \
            "getGrantsAsync[Get all grants]" \
            "getGrantsCountAsync[Count grants]" \
            "updateGrantAsync[Update grant]"             "createInvoiceEnumerationRangeAsync[Create a new invoice enumeration range]" \
            "deleteInvoiceEnumerationRangeAsync[Delete an invoice enumeration range]" \
            "getInvoiceEnumerationRangeDetailsAsync[Get invoice enumeration range by ID]" \
            "getInvoiceEnumerationRangesAsync[Get all invoice enumeration ranges]" \
            "updateInvoiceEnumerationRangeAsync[Update an invoice enumeration range]"             "createJournalTypeAsync[Creates a new journal type]" \
            "deleteJournalTypeAsync[Deletes a journal type]" \
            "getJournalTypeDetailsAsync[Retrieves a journal type by ID]" \
            "getJournalTypesAsync[Retrieves all journal types]" \
            "getJournalTypesCountAsync[Counts journal types]" \
            "updateJournalTypeAsync[Updates an existing journal type]"             "aggregateJournalEntryCreditsAsync[Aggregate journal entry credits]" \
            "aggregateJournalEntryDebitsAsync[Aggregate journal entry debits]" \
            "countJournalsAsync[Count journals]" \
            "createJournalAsync[Create journal]" \
            "createJournalEntryAsync[Create journal entry]" \
            "deleteJournalAsync[Delete journal]" \
            "deleteJournalEntryAsync[Delete journal entry]" \
            "getJournalDetailsAsync[Get journal by ID]" \
            "getJournalEntriesAsync[Get journal entries]" \
            "getJournalEntriesCountAsync[Count journal entries]" \
            "getJournalsAsync[Get all journals]" \
            "updateJournalAsync[Update journal]" \
            "updateJournalEntryAsync[Update journal entry]"             "createLedgerTypeAsync[Creates a new ledger type]" \
            "deleteLedgerTypeAsync[Deletes a ledger type]" \
            "getLedgerTypeDetailsAsync[Gets a ledger type by ID]" \
            "getLedgerTypesAsync[Retrieves all ledger types]" \
            "getLedgerTypesCountAsync[Counts ledger types]" \
            "updateLedgerTypeAsync[Updates a ledger type]"             "createLedgerAsync[Creates a new ledger]" \
            "deleteLedgerAsync[Deletes a ledger]" \
            "getLedgerDetailsAsync[Gets a ledger by ID]" \
            "getLedgersAsync[Retrieves all ledgers]" \
            "getLedgersCountAsync[Counts ledgers]" \
            "updateLedgerAsync[Updates a ledger]"             "createLoanApplicationAsync[Creates a loan application]" \
            "createLoanAsync[Creates a new loan]" \
            "createLoanTypeAsync[Creates a loan type]" \
            "deleteLoanApplicationAsync[Deletes a loan application]" \
            "deleteLoanAsync[Deletes a loan]" \
            "deleteLoanTypeAsync[Deletes a loan type]" \
            "getLoanApplicationDetailsAsync[Gets a loan application by ID]" \
            "getLoanApplicationsAsync[Gets all loan applications]" \
            "getLoanApplicationsCountAsync[Counts loan applications]" \
            "getLoanDetailsAsync[Gets a loan by ID]" \
            "getLoanTypeByIdAsync[Gets a loan type by ID]" \
            "getLoanTypesAsync[Gets all loan types]" \
            "getLoanTypesCountAsync[Counts loan types]" \
            "getLoansAsync[Gets all loans]" \
            "getLoansCountAsync[Counts loans]" \
            "updateLoanApplicationAsync[Updates a loan application]" \
            "updateLoanAsync[Updates a loan]" \
            "updateLoanTypeAsync[Updates a loan type]"             "createReceiptAsync[Creates a new receipt]" \
            "deleteReceiptAsync[Deletes a receipt]" \
            "getReceiptDetailsAsync[Gets details of a receipt]" \
            "getReceiptsAsync[Retrieves tenant receipts]" \
            "getReceiptsCountAsync[Gets count of tenant receipts]" \
            "updateReceiptAsync[Updates a receipt]"             "createShareClass[Creates a new share class]" \
            "createShareIssuance[Creates a new share issuance]" \
            "createShareTransfer[Creates a new share transfer]" \
            "createShareTransferReason[Creates a new share transfer reason]" \
            "deleteShareClass[Deletes an existing share class]" \
            "deleteShareIssuance[Deletes an existing share issuance]" \
            "deleteShareTransfer[Deletes an existing share transfer]" \
            "deleteShareTransferReason[Deletes an existing share transfer reason]" \
            "getShareClass[Gets a share class by id]" \
            "getShareClasses[Gets the current tenant share classes]" \
            "getShareClassesCount[Gets the current tenant share classes count]" \
            "getShareIssuance[Gets a share issuance by id]" \
            "getShareIssuances[Gets the current tenant share issuances]" \
            "getShareIssuancesCount[Gets the current tenant share issuances count]" \
            "getShareTransfer[Gets a share transfer by id]" \
            "getShareTransferReason[Gets a share transfer reason by id]" \
            "getShareTransferReasons[Gets the current tenant share transfer reasons]" \
            "getShareTransferReasonsCount[Gets the current tenant share transfer reasons count]" \
            "getShareTransfers[Gets the current tenant share transfers]" \
            "getShareTransfersCount[Gets the current tenant share transfers count]" \
            "updateShareClass[Updates an existing share class]" \
            "updateShareIssuance[Updates an existing share issuance]" \
            "updateShareTransfer[Updates an existing share transfer]" \
            "updateShareTransferReason[Updates an existing share transfer reason]"             "createTaxClass[Create a tax class]" \
            "deleteTaxClass[Delete a tax class]" \
            "getTaxClass[Get tax class by ID]" \
            "getTaxClasses[Get all tax classes for a tenant]" \
            "getTaxClassesCount[Get tax classes count]" \
            "updateTaxClass[Update a tax class]"             "createAppliedTaxPolicyRecord[Create an applied tax policy record]" \
            "createItemTaxPolicyRecord[Create an item tax policy record]" \
            "createTaxPolicy[Create a tax policy]" \
            "deleteAppliedTaxPolicyRecord[Delete an applied tax policy record]" \
            "deleteItemTaxPolicyRecord[Delete an item tax policy record]" \
            "deleteTaxPolicy[Delete a tax policy]" \
            "getAppliedTaxPolicyRecord[Get applied tax policy record by ID]" \
            "getAppliedTaxPolicyRecords[Get applied tax policy records]" \
            "getAppliedTaxPolicyRecordsCount[Get applied tax policy records count]" \
            "getItemTaxPolicyRecord[Get item tax policy record by ID]" \
            "getItemTaxPolicyRecords[Get item tax policy records]" \
            "getTaxPolicies[Get all tax policies for a tenant]" \
            "getTaxPoliciesByAuthority[Get tax policies by fiscal authority]" \
            "getTaxPoliciesCount[Get tax policies count]" \
            "getTaxPolicy[Get tax policy by ID]" \
            "updateAppliedTaxPolicyRecord[Update an applied tax policy record]" \
            "updateItemTaxPolicyRecord[Update an item tax policy record]" \
            "updateTaxPolicy[Update a tax policy]"             "createTaxRate[Create a tax rate]" \
            "deleteTaxRate[Delete a tax rate]" \
            "getTaxRate[Get tax rate by ID]" \
            "getTaxRates[Get all tax rates for a tenant]" \
            "getTaxRatesCount[Get tax rates count]" \
            "updateTaxRate[Update a tax rate]"             "createTransaction[Create a transaction]" \
            "createTransactionCategory[Create a transaction category]" \
            "deleteTransaction[Delete a transaction]" \
            "deleteTransactionCategory[Delete a transaction category]" \
            "getTransaction[Get transaction by ID]" \
            "getTransactionCategories[Get all transaction categories]" \
            "getTransactionCategoriesCount[Get transaction categories count]" \
            "getTransactionCategory[Get transaction category by ID]" \
            "getTransactions[Get all transactions for a tenant]" \
            "getTransactionsCount[Get transactions count]" \
            "updateTransaction[Update a transaction]" \
            "updateTransactionCategory[Update a transaction category]" \

    _arguments "(--help)--help[Print information about operation]"

    ret=0
    ;;
  args)
    case $line[1] in
      createAccountGroup)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteAccountGroup)
        local -a _op_arguments
        _op_arguments=(
          "accountGroupId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountGroup)
        local -a _op_arguments
        _op_arguments=(
          "accountGroupId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountGroups)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountGroupsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAccountGroup)
        local -a _op_arguments
        _op_arguments=(
          "accountGroupId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createAccountingPeriod)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteAccountingPeriod)
        local -a _op_arguments
        _op_arguments=(
          "accountingPeriodId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountingPeriod)
        local -a _op_arguments
        _op_arguments=(
          "accountingPeriodId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountingPeriods)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountingPeriodsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAccountingPeriod)
        local -a _op_arguments
        _op_arguments=(
          "accountingPeriodId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      aggregateAccountsBalanceAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"currencyId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      balanceAccountAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      balanceRootAccountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createAccountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createAccountCreditAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createAccountDebitAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createAccountEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createAccountRelationAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"accountId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createAccountTypeAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteAccountAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteAccountEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountId=:[PATH] "
"entryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteAccountRelationAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountRelationId=:[PATH] "
          "tenantId=:[QUERY] "
"accountId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteAccountTypeAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountAggregateAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"currencyId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountCreditsAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountCreditsCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountDebitsAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountDebitsCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountDetailsAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountEntriesAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountId=:[PATH] "
"entryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountRelationsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"accountId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountRelationsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"accountId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountTypeByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountTypesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountTypesCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAccountsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getChartsOfAccountsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getChildAccountsAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCreditAccountEntriesAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getDebitAccountEntriesAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getRootAccountsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      patchAccountAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      seedChartOfAccountsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAccountAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAccountEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountId=:[PATH] "
"entryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAccountRelationAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountRelationId=:[PATH] "
          "tenantId=:[QUERY] "
"accountId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAccountTypeAsync)
        local -a _op_arguments
        _op_arguments=(
          "accountTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBankProfiles)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBankProfilesCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createBank)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createBankAccount)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createBankGuarantee)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createBankTransaction)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteBank)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteBankAccount)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
"accountId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteBankGuarantee)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
"guaranteeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteBankTransaction)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
"transactionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBank)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBankAccount)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
"accountId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBankAccounts)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBankAccountsCount)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBankGuarantee)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
"guaranteeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBankGuarantees)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBankGuaranteesCount)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBankTransaction)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
"transactionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBankTransactions)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBankTransactionsCount)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBanks)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBanksCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateBank)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateBankAccount)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
"accountId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateBankGuarantee)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
"guaranteeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateBankTransaction)
        local -a _op_arguments
        _op_arguments=(
          "bankId=:[PATH] "
"transactionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createBillableLineTax)
        local -a _op_arguments
        _op_arguments=(
          "billableLineId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteBillableLineTax)
        local -a _op_arguments
        _op_arguments=(
          "billableLineId=:[PATH] "
"taxId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBillableLineTaxes)
        local -a _op_arguments
        _op_arguments=(
          "billableLineId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBillableLineTaxesCount)
        local -a _op_arguments
        _op_arguments=(
          "billableLineId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateBillableLineTax)
        local -a _op_arguments
        _op_arguments=(
          "billableLineId=:[PATH] "
"taxId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createBillingProfileAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteBillingProfileAsync)
        local -a _op_arguments
        _op_arguments=(
          "billingProfileId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBillingProfileByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "billingProfileId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBillingProfilesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBillingProfilesCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateBillingProfileAsync)
        local -a _op_arguments
        _op_arguments=(
          "billingProfileId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createBudgetAccountEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "budgetId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createBudgetAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteBudgetAccountEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "budgetId=:[PATH] "
"entryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteBudgetAsync)
        local -a _op_arguments
        _op_arguments=(
          "budgetId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBudgetAccountEntriesCollectionAsync)
        local -a _op_arguments
        _op_arguments=(
          "budgetId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBudgetAccountEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "budgetId=:[PATH] "
"entryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBudgetDetailsAsync)
        local -a _op_arguments
        _op_arguments=(
          "budgetId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBudgetsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getBudgetsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateBudgetAccountEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "budgetId=:[PATH] "
"entryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateBudgetAsync)
        local -a _op_arguments
        _op_arguments=(
          "budgetId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCommissionAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createPaymentCommissionAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCommissionAsync)
        local -a _op_arguments
        _op_arguments=(
          "commissionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deletePaymentCommissionAsync)
        local -a _op_arguments
        _op_arguments=(
          "paymentCommissionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCommissionAsync)
        local -a _op_arguments
        _op_arguments=(
          "commissionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCommissionsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCommissionsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getPaymentCommissionAsync)
        local -a _op_arguments
        _op_arguments=(
          "paymentCommissionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getPaymentCommissionsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getPaymentCommissionsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCommissionAsync)
        local -a _op_arguments
        _op_arguments=(
          "commissionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updatePaymentCommissionAsync)
        local -a _op_arguments
        _op_arguments=(
          "paymentCommissionId=:[PATH] "
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
      createCostCentre)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCostCentreBudget)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createCostCentreGroup)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCostCentre)
        local -a _op_arguments
        _op_arguments=(
          "costCentreId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCostCentreBudget)
        local -a _op_arguments
        _op_arguments=(
          "budgetId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteCostCentreGroup)
        local -a _op_arguments
        _op_arguments=(
          "groupId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCostCentre)
        local -a _op_arguments
        _op_arguments=(
          "costCentreId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCostCentreBudget)
        local -a _op_arguments
        _op_arguments=(
          "budgetId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCostCentreBudgets)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCostCentreGroup)
        local -a _op_arguments
        _op_arguments=(
          "groupId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCostCentreGroups)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCostCentreGroupsCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCostCentres)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getCostCentresCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCostCentre)
        local -a _op_arguments
        _op_arguments=(
          "costCentreId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCostCentreBudget)
        local -a _op_arguments
        _op_arguments=(
          "budgetId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateCostCentreGroup)
        local -a _op_arguments
        _op_arguments=(
          "groupId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createExpenseClaim)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteExpenseClaim)
        local -a _op_arguments
        _op_arguments=(
          "expenseClaimId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getExpenseClaim)
        local -a _op_arguments
        _op_arguments=(
          "expenseClaimId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getExpenseClaims)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getExpenseClaimsCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateExpenseClaim)
        local -a _op_arguments
        _op_arguments=(
          "expenseClaimId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createExpenseType)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteExpenseType)
        local -a _op_arguments
        _op_arguments=(
          "expenseTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getExpenseType)
        local -a _op_arguments
        _op_arguments=(
          "expenseTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getExpenseTypes)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getExpenseTypesCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateExpenseType)
        local -a _op_arguments
        _op_arguments=(
          "expenseTypeId=:[PATH] "
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
      createFinancialBookAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteFinancialBookAsync)
        local -a _op_arguments
        _op_arguments=(
          "financialBookId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFinancialBookDetailsAsync)
        local -a _op_arguments
        _op_arguments=(
          "financialBookId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFinancialBooksAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFinancialBooksCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateFinancialBookAsync)
        local -a _op_arguments
        _op_arguments=(
          "financialBookId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createFiscalAuthority)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteFiscalAuthority)
        local -a _op_arguments
        _op_arguments=(
          "authorityId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalAuthorities)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalAuthoritiesCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalAuthority)
        local -a _op_arguments
        _op_arguments=(
          "authorityId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateFiscalAuthority)
        local -a _op_arguments
        _op_arguments=(
          "authorityId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createFiscalYear)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteFiscalYear)
        local -a _op_arguments
        _op_arguments=(
          "fiscalYearId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalYear)
        local -a _op_arguments
        _op_arguments=(
          "fiscalAuthorityId=:[PATH] "
"fiscalYearId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalYears)
        local -a _op_arguments
        _op_arguments=(
          "authorityId=:[PATH] "
          "tenantId=:[QUERY] "
"fiscalAuthorityId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalYearsCount)
        local -a _op_arguments
        _op_arguments=(
          "fiscalAuthorityId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateFiscalYear)
        local -a _op_arguments
        _op_arguments=(
          "fiscalYearId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createInvoiceEnumerationRange)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteInvoiceEnumerationRange)
        local -a _op_arguments
        _op_arguments=(
          "enumerationRangeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getInvoiceEnumerationRange)
        local -a _op_arguments
        _op_arguments=(
          "fiscalAuthorityId=:[PATH] "
"enumerationRangeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getInvoiceEnumerationRanges)
        local -a _op_arguments
        _op_arguments=(
          "authorityId=:[PATH] "
          "tenantId=:[QUERY] "
"fiscalAuthorityId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getInvoiceEnumerationRangesCount)
        local -a _op_arguments
        _op_arguments=(
          "fiscalAuthorityId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateInvoiceEnumerationRange)
        local -a _op_arguments
        _op_arguments=(
          "enumerationRangeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createFiscalIdentificationType)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteFiscalIdentificationType)
        local -a _op_arguments
        _op_arguments=(
          "identificationTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalIdentificationType)
        local -a _op_arguments
        _op_arguments=(
          "fiscalAuthorityId=:[PATH] "
"identificationTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalIdentificationTypes)
        local -a _op_arguments
        _op_arguments=(
          "authorityId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalIdentificationTypesCount)
        local -a _op_arguments
        _op_arguments=(
          "authorityId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateFiscalIdentificationType)
        local -a _op_arguments
        _op_arguments=(
          "identificationTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createFiscalPeriod)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteFiscalPeriod)
        local -a _op_arguments
        _op_arguments=(
          "fiscalPeriodId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalPeriod)
        local -a _op_arguments
        _op_arguments=(
          "fiscalAuthorityId=:[PATH] "
"fiscalYearId=:[PATH] "
"fiscalPeriodId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalPeriods)
        local -a _op_arguments
        _op_arguments=(
          "fiscalYearId=:[PATH] "
"authorityId=:[PATH] "
          "tenantId=:[QUERY] "
"fiscalAuthorityId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalPeriodsCount)
        local -a _op_arguments
        _op_arguments=(
          "fiscalAuthorityId=:[PATH] "
"fiscalYearId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateFiscalPeriod)
        local -a _op_arguments
        _op_arguments=(
          "fiscalPeriodId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createFiscalRegime)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteFiscalRegime)
        local -a _op_arguments
        _op_arguments=(
          "regimeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalRegime)
        local -a _op_arguments
        _op_arguments=(
          "fiscalAuthorityId=:[PATH] "
"regimeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalRegimes)
        local -a _op_arguments
        _op_arguments=(
          "authorityId=:[PATH] "
          "tenantId=:[QUERY] "
"fiscalAuthorityId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalRegimesCount)
        local -a _op_arguments
        _op_arguments=(
          "fiscalAuthorityId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateFiscalRegime)
        local -a _op_arguments
        _op_arguments=(
          "regimeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createFiscalResponsibility)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteFiscalResponsibility)
        local -a _op_arguments
        _op_arguments=(
          "fiscalResponsibilityId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalResponsibilities)
        local -a _op_arguments
        _op_arguments=(
          "authorityId=:[PATH] "
          "tenantId=:[QUERY] "
"fiscalAuthorityId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalResponsibilitiesCount)
        local -a _op_arguments
        _op_arguments=(
          "fiscalAuthorityId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalResponsibility)
        local -a _op_arguments
        _op_arguments=(
          "fiscalAuthorityId=:[PATH] "
"fiscalResponsibilityId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateFiscalResponsibility)
        local -a _op_arguments
        _op_arguments=(
          "fiscalResponsibilityId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createFiscalResponsibilityRecord)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteFiscalResponsibilityRecord)
        local -a _op_arguments
        _op_arguments=(
          "fiscalResponsibilityRecordId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalResponsibilityRecord)
        local -a _op_arguments
        _op_arguments=(
          "fiscalAuthorityId=:[PATH] "
"fiscalResponsibilityId=:[PATH] "
"fiscalResponsibilityRecordId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalResponsibilityRecords)
        local -a _op_arguments
        _op_arguments=(
          "fiscalAuthorityId=:[PATH] "
"fiscalResponsibilityId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalResponsibilityRecordsCount)
        local -a _op_arguments
        _op_arguments=(
          "fiscalAuthorityId=:[PATH] "
"fiscalResponsibilityId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateFiscalResponsibilityRecord)
        local -a _op_arguments
        _op_arguments=(
          "fiscalResponsibilityRecordId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createFiscalYearAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteFiscalYearAsync)
        local -a _op_arguments
        _op_arguments=(
          "fiscalYearId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalYearDetailsAsync)
        local -a _op_arguments
        _op_arguments=(
          "fiscalYearId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalYearsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getFiscalYearsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateFiscalYearAsync)
        local -a _op_arguments
        _op_arguments=(
          "fiscalYearId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createGrantAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteGrantAsync)
        local -a _op_arguments
        _op_arguments=(
          "grantId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getGrantDetailsAsync)
        local -a _op_arguments
        _op_arguments=(
          "grantId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getGrantsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getGrantsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateGrantAsync)
        local -a _op_arguments
        _op_arguments=(
          "grantId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createInvoiceEnumerationRangeAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteInvoiceEnumerationRangeAsync)
        local -a _op_arguments
        _op_arguments=(
          "rangeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getInvoiceEnumerationRangeDetailsAsync)
        local -a _op_arguments
        _op_arguments=(
          "rangeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getInvoiceEnumerationRangesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateInvoiceEnumerationRangeAsync)
        local -a _op_arguments
        _op_arguments=(
          "rangeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createJournalTypeAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteJournalTypeAsync)
        local -a _op_arguments
        _op_arguments=(
          "journalTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getJournalTypeDetailsAsync)
        local -a _op_arguments
        _op_arguments=(
          "journalTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getJournalTypesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getJournalTypesCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateJournalTypeAsync)
        local -a _op_arguments
        _op_arguments=(
          "journalTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      aggregateJournalEntryCreditsAsync)
        local -a _op_arguments
        _op_arguments=(
          "journalId=:[PATH] "
          "tenantId=:[QUERY] "
"currencyId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      aggregateJournalEntryDebitsAsync)
        local -a _op_arguments
        _op_arguments=(
          "journalId=:[PATH] "
          "tenantId=:[QUERY] "
"currencyId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      countJournalsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createJournalAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createJournalEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "journalId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteJournalAsync)
        local -a _op_arguments
        _op_arguments=(
          "journalId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteJournalEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "journalId=:[PATH] "
"entryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getJournalDetailsAsync)
        local -a _op_arguments
        _op_arguments=(
          "journalId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getJournalEntriesAsync)
        local -a _op_arguments
        _op_arguments=(
          "journalId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getJournalEntriesCountAsync)
        local -a _op_arguments
        _op_arguments=(
          "journalId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getJournalsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateJournalAsync)
        local -a _op_arguments
        _op_arguments=(
          "journalId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateJournalEntryAsync)
        local -a _op_arguments
        _op_arguments=(
          "journalId=:[PATH] "
"entryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createLedgerTypeAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteLedgerTypeAsync)
        local -a _op_arguments
        _op_arguments=(
          "ledgerTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getLedgerTypeDetailsAsync)
        local -a _op_arguments
        _op_arguments=(
          "ledgerTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getLedgerTypesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getLedgerTypesCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateLedgerTypeAsync)
        local -a _op_arguments
        _op_arguments=(
          "ledgerTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createLedgerAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteLedgerAsync)
        local -a _op_arguments
        _op_arguments=(
          "ledgerId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getLedgerDetailsAsync)
        local -a _op_arguments
        _op_arguments=(
          "ledgerId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getLedgersAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getLedgersCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateLedgerAsync)
        local -a _op_arguments
        _op_arguments=(
          "ledgerId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createLoanApplicationAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createLoanAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createLoanTypeAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteLoanApplicationAsync)
        local -a _op_arguments
        _op_arguments=(
          "applicationId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteLoanAsync)
        local -a _op_arguments
        _op_arguments=(
          "loanId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteLoanTypeAsync)
        local -a _op_arguments
        _op_arguments=(
          "loanTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getLoanApplicationDetailsAsync)
        local -a _op_arguments
        _op_arguments=(
          "applicationId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getLoanApplicationsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getLoanApplicationsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getLoanDetailsAsync)
        local -a _op_arguments
        _op_arguments=(
          "loanId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getLoanTypeByIdAsync)
        local -a _op_arguments
        _op_arguments=(
          "loanTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getLoanTypesAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getLoanTypesCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getLoansAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getLoansCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateLoanApplicationAsync)
        local -a _op_arguments
        _op_arguments=(
          "applicationId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateLoanAsync)
        local -a _op_arguments
        _op_arguments=(
          "loanId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateLoanTypeAsync)
        local -a _op_arguments
        _op_arguments=(
          "loanTypeId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createReceiptAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteReceiptAsync)
        local -a _op_arguments
        _op_arguments=(
          "receiptId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getReceiptDetailsAsync)
        local -a _op_arguments
        _op_arguments=(
          "receiptId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getReceiptsAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getReceiptsCountAsync)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateReceiptAsync)
        local -a _op_arguments
        _op_arguments=(
          "receiptId=:[PATH] "
          "tenantId=:[QUERY] "
          )
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createShareClass)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createShareIssuance)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createShareTransfer)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createShareTransferReason)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteShareClass)
        local -a _op_arguments
        _op_arguments=(
          "shareClassId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteShareIssuance)
        local -a _op_arguments
        _op_arguments=(
          "issuanceId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteShareTransfer)
        local -a _op_arguments
        _op_arguments=(
          "transferId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteShareTransferReason)
        local -a _op_arguments
        _op_arguments=(
          "reasonId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getShareClass)
        local -a _op_arguments
        _op_arguments=(
          "shareClassId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getShareClasses)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getShareClassesCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getShareIssuance)
        local -a _op_arguments
        _op_arguments=(
          "issuanceId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getShareIssuances)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getShareIssuancesCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getShareTransfer)
        local -a _op_arguments
        _op_arguments=(
          "transferId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getShareTransferReason)
        local -a _op_arguments
        _op_arguments=(
          "reasonId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getShareTransferReasons)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getShareTransferReasonsCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getShareTransfers)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getShareTransfersCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateShareClass)
        local -a _op_arguments
        _op_arguments=(
          "shareClassId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateShareIssuance)
        local -a _op_arguments
        _op_arguments=(
          "issuanceId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateShareTransfer)
        local -a _op_arguments
        _op_arguments=(
          "transferId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateShareTransferReason)
        local -a _op_arguments
        _op_arguments=(
          "reasonId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTaxClass)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTaxClass)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTaxClass)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTaxClasses)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTaxClassesCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTaxClass)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createAppliedTaxPolicyRecord)
        local -a _op_arguments
        _op_arguments=(
          "taxPolicyId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createItemTaxPolicyRecord)
        local -a _op_arguments
        _op_arguments=(
          "taxPolicyId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTaxPolicy)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteAppliedTaxPolicyRecord)
        local -a _op_arguments
        _op_arguments=(
          "taxPolicyId=:[PATH] "
"appliedTaxPolicyRecordId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteItemTaxPolicyRecord)
        local -a _op_arguments
        _op_arguments=(
          "taxPolicyId=:[PATH] "
"itemTaxPolicyRecordId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTaxPolicy)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAppliedTaxPolicyRecord)
        local -a _op_arguments
        _op_arguments=(
          "taxPolicyId=:[PATH] "
"appliedTaxPolicyRecordId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAppliedTaxPolicyRecords)
        local -a _op_arguments
        _op_arguments=(
          "taxPolicyId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getAppliedTaxPolicyRecordsCount)
        local -a _op_arguments
        _op_arguments=(
          "taxPolicyId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemTaxPolicyRecord)
        local -a _op_arguments
        _op_arguments=(
          "taxPolicyId=:[PATH] "
"itemTaxPolicyRecordId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getItemTaxPolicyRecords)
        local -a _op_arguments
        _op_arguments=(
          "taxPolicyId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTaxPolicies)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTaxPoliciesByAuthority)
        local -a _op_arguments
        _op_arguments=(
          "authorityId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTaxPoliciesCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTaxPolicy)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateAppliedTaxPolicyRecord)
        local -a _op_arguments
        _op_arguments=(
          "taxPolicyId=:[PATH] "
"appliedTaxPolicyRecordId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateItemTaxPolicyRecord)
        local -a _op_arguments
        _op_arguments=(
          "taxPolicyId=:[PATH] "
"itemTaxPolicyRecordId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTaxPolicy)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTaxRate)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTaxRate)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTaxRate)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTaxRates)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTaxRatesCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTaxRate)
        local -a _op_arguments
        _op_arguments=(
          "id=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTransaction)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      createTransactionCategory)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTransaction)
        local -a _op_arguments
        _op_arguments=(
          "transactionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      deleteTransactionCategory)
        local -a _op_arguments
        _op_arguments=(
          "categoryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTransaction)
        local -a _op_arguments
        _op_arguments=(
          "transactionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTransactionCategories)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTransactionCategoriesCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTransactionCategory)
        local -a _op_arguments
        _op_arguments=(
          "categoryId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTransactions)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      getTransactionsCount)
        local -a _op_arguments
        _op_arguments=(
                    "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTransaction)
        local -a _op_arguments
        _op_arguments=(
          "transactionId=:[PATH] "
          "tenantId=:[QUERY] "
"api-version=:[QUERY] "
          "x-api-version\::[HEADER] "
)
        _describe -t actions 'operations' _op_arguments -S '' && ret=0
        ;;
      updateTransactionCategory)
        local -a _op_arguments
        _op_arguments=(
          "categoryId=:[PATH] "
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
