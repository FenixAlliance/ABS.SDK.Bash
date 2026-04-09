# AccountingService Bash client

## Overview

This is a Bash client script for accessing AccountingService service.

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
*AccountGroupsApi* | [**createAccountGroup**](docs/AccountGroupsApi.md#createaccountgroup) | **POST** /api/v2/AccountingService/AccountGroups | Creates a new account group
*AccountGroupsApi* | [**deleteAccountGroup**](docs/AccountGroupsApi.md#deleteaccountgroup) | **DELETE** /api/v2/AccountingService/AccountGroups/{accountGroupId} | Deletes an existing account group
*AccountGroupsApi* | [**getAccountGroup**](docs/AccountGroupsApi.md#getaccountgroup) | **GET** /api/v2/AccountingService/AccountGroups/{accountGroupId} | Gets the current tenant account group
*AccountGroupsApi* | [**getAccountGroups**](docs/AccountGroupsApi.md#getaccountgroups) | **GET** /api/v2/AccountingService/AccountGroups | Gets the current tenant account groups
*AccountGroupsApi* | [**getAccountGroupsCountAsync**](docs/AccountGroupsApi.md#getaccountgroupscountasync) | **GET** /api/v2/AccountingService/AccountGroups/Count | Gets the current tenant accounts count
*AccountGroupsApi* | [**updateAccountGroup**](docs/AccountGroupsApi.md#updateaccountgroup) | **PUT** /api/v2/AccountingService/AccountGroups/{accountGroupId} | Updates an existing account group
*AccountingPeriodsApi* | [**createAccountingPeriod**](docs/AccountingPeriodsApi.md#createaccountingperiod) | **POST** /api/v2/AccountingService/AccountingPeriods | Creates a new accounting period
*AccountingPeriodsApi* | [**deleteAccountingPeriod**](docs/AccountingPeriodsApi.md#deleteaccountingperiod) | **DELETE** /api/v2/AccountingService/AccountingPeriods/{accountingPeriodId} | Deletes an existing accounting period
*AccountingPeriodsApi* | [**getAccountingPeriod**](docs/AccountingPeriodsApi.md#getaccountingperiod) | **GET** /api/v2/AccountingService/AccountingPeriods/{accountingPeriodId} | Gets the current tenant accounting period
*AccountingPeriodsApi* | [**getAccountingPeriods**](docs/AccountingPeriodsApi.md#getaccountingperiods) | **GET** /api/v2/AccountingService/AccountingPeriods | Get all accounting periods for a tenant
*AccountingPeriodsApi* | [**getAccountingPeriodsCountAsync**](docs/AccountingPeriodsApi.md#getaccountingperiodscountasync) | **GET** /api/v2/AccountingService/AccountingPeriods/Count | Gets the current tenant accounting periods count
*AccountingPeriodsApi* | [**updateAccountingPeriod**](docs/AccountingPeriodsApi.md#updateaccountingperiod) | **PUT** /api/v2/AccountingService/AccountingPeriods/{accountingPeriodId} | Updates an existing accounting period
*AccountsApi* | [**balanceAccountAsync**](docs/AccountsApi.md#balanceaccountasync) | **POST** /api/v2/AccountingService/Accounts/{accountId}/Balance | Balance account
*AccountsApi* | [**balanceRootAccountAsync**](docs/AccountsApi.md#balancerootaccountasync) | **POST** /api/v2/AccountingService/Accounts/Root/Balance | Balance root account
*AccountsApi* | [**createAccountAsync**](docs/AccountsApi.md#createaccountasync) | **POST** /api/v2/AccountingService/Accounts | Get root accounts
*AccountsApi* | [**createAccountCreditAsync**](docs/AccountsApi.md#createaccountcreditasync) | **POST** /api/v2/AccountingService/Accounts/{accountId}/Credits | Create account credit
*AccountsApi* | [**createAccountDebitAsync**](docs/AccountsApi.md#createaccountdebitasync) | **POST** /api/v2/AccountingService/Accounts/{accountId}/Debits | Create account debit
*AccountsApi* | [**createAccountEntryAsync**](docs/AccountsApi.md#createaccountentryasync) | **POST** /api/v2/AccountingService/Accounts/{accountId}/Entries | Create account entry
*AccountsApi* | [**createAccountRelationAsync**](docs/AccountsApi.md#createaccountrelationasync) | **POST** /api/v2/AccountingService/Accounts/Relations | Create account relation
*AccountsApi* | [**createAccountTypeAsync**](docs/AccountsApi.md#createaccounttypeasync) | **POST** /api/v2/AccountingService/Accounts/Types | Create account type
*AccountsApi* | [**deleteAccountAsync**](docs/AccountsApi.md#deleteaccountasync) | **DELETE** /api/v2/AccountingService/Accounts/{accountId} | Delete an account
*AccountsApi* | [**deleteAccountEntryAsync**](docs/AccountsApi.md#deleteaccountentryasync) | **DELETE** /api/v2/AccountingService/Accounts/{accountId}/Entries/{entryId} | Delete account entry
*AccountsApi* | [**deleteAccountRelationAsync**](docs/AccountsApi.md#deleteaccountrelationasync) | **DELETE** /api/v2/AccountingService/Accounts/Relations/{accountRelationId} | Delete account relation
*AccountsApi* | [**deleteAccountTypeAsync**](docs/AccountsApi.md#deleteaccounttypeasync) | **DELETE** /api/v2/AccountingService/Accounts/Types/{accountTypeId} | Delete account type
*AccountsApi* | [**getAccountAggregateAsync**](docs/AccountsApi.md#getaccountaggregateasync) | **POST** /api/v2/AccountingService/Accounts/Aggregate | Get account aggregate
*AccountsApi* | [**getAccountCreditsAsync**](docs/AccountsApi.md#getaccountcreditsasync) | **GET** /api/v2/AccountingService/Accounts/{accountId}/Credits | Get account credits
*AccountsApi* | [**getAccountCreditsCountAsync**](docs/AccountsApi.md#getaccountcreditscountasync) | **GET** /api/v2/AccountingService/Accounts/{accountId}/Credits/Count | Get account credits count
*AccountsApi* | [**getAccountDebitsAsync**](docs/AccountsApi.md#getaccountdebitsasync) | **GET** /api/v2/AccountingService/Accounts/{accountId}/Debits | Get account debits
*AccountsApi* | [**getAccountDebitsCountAsync**](docs/AccountsApi.md#getaccountdebitscountasync) | **GET** /api/v2/AccountingService/Accounts/{accountId}/Debits/Count | Get account debits count
*AccountsApi* | [**getAccountDetailsAsync**](docs/AccountsApi.md#getaccountdetailsasync) | **GET** /api/v2/AccountingService/Accounts/{accountId} | Get account details
*AccountsApi* | [**getAccountEntriesAsync**](docs/AccountsApi.md#getaccountentriesasync) | **GET** /api/v2/AccountingService/Accounts/{accountId}/Entries | Get account entries
*AccountsApi* | [**getAccountEntryAsync**](docs/AccountsApi.md#getaccountentryasync) | **GET** /api/v2/AccountingService/Accounts/{accountId}/Entries/{entryId} | Get account entry
*AccountsApi* | [**getAccountRelationsAsync**](docs/AccountsApi.md#getaccountrelationsasync) | **GET** /api/v2/AccountingService/Accounts/Relations | Get account relations
*AccountsApi* | [**getAccountRelationsCountAsync**](docs/AccountsApi.md#getaccountrelationscountasync) | **GET** /api/v2/AccountingService/Accounts/Relations/Count | Get account relations count
*AccountsApi* | [**getAccountTypesAsync**](docs/AccountsApi.md#getaccounttypesasync) | **GET** /api/v2/AccountingService/Accounts/Types | Get account types
*AccountsApi* | [**getAccountTypesCountAsync**](docs/AccountsApi.md#getaccounttypescountasync) | **GET** /api/v2/AccountingService/Accounts/Types/Count | Get account types count
*AccountsApi* | [**getAccountsAsync**](docs/AccountsApi.md#getaccountsasync) | **GET** /api/v2/AccountingService/Accounts | Creates a new account
*AccountsApi* | [**getAccountsCountAsync**](docs/AccountsApi.md#getaccountscountasync) | **GET** /api/v2/AccountingService/Accounts/Count | Get the number of accounts
*AccountsApi* | [**getChildAccountsAsync**](docs/AccountsApi.md#getchildaccountsasync) | **GET** /api/v2/AccountingService/Accounts/{accountId}/Children | Get child accounts
*AccountsApi* | [**getCreditAccountEntriesAsync**](docs/AccountsApi.md#getcreditaccountentriesasync) | **GET** /api/v2/AccountingService/Accounts/{accountId}/Entries/Credit | Get credit account entries
*AccountsApi* | [**getDebitAccountEntriesAsync**](docs/AccountsApi.md#getdebitaccountentriesasync) | **GET** /api/v2/AccountingService/Accounts/{accountId}/Entries/Debit | Get debit account entries
*AccountsApi* | [**getRootAccountsAsync**](docs/AccountsApi.md#getrootaccountsasync) | **GET** /api/v2/AccountingService/Accounts/Root | Get root accounts
*AccountsApi* | [**patchAccountAsync**](docs/AccountsApi.md#patchaccountasync) | **PATCH** /api/v2/AccountingService/Accounts/{accountId} | Patch an account
*AccountsApi* | [**updateAccountAsync**](docs/AccountsApi.md#updateaccountasync) | **PUT** /api/v2/AccountingService/Accounts/{accountId} | Update an account
*AccountsApi* | [**updateAccountEntryAsync**](docs/AccountsApi.md#updateaccountentryasync) | **PUT** /api/v2/AccountingService/Accounts/{accountId}/Entries/{entryId} | Update account entry
*AccountsApi* | [**updateAccountRelationAsync**](docs/AccountsApi.md#updateaccountrelationasync) | **PUT** /api/v2/AccountingService/Accounts/Relations/{accountRelationId} | Update account relation
*AccountsApi* | [**updateAccountTypeAsync**](docs/AccountsApi.md#updateaccounttypeasync) | **PUT** /api/v2/AccountingService/Accounts/Types/{accountTypeId} | Update account type
*BankingApi* | [**createBank**](docs/BankingApi.md#createbank) | **POST** /api/v2/AccountingService/Banking | Creates a new bank
*BankingApi* | [**createBankAccount**](docs/BankingApi.md#createbankaccount) | **POST** /api/v2/AccountingService/Banking/{bankId}/Accounts | Creates a new bank account
*BankingApi* | [**createBankGuarantee**](docs/BankingApi.md#createbankguarantee) | **POST** /api/v2/AccountingService/Banking/{bankId}/Guarantees | Creates a new bank guarantee
*BankingApi* | [**createBankTransaction**](docs/BankingApi.md#createbanktransaction) | **POST** /api/v2/AccountingService/Banking/{bankId}/Transactions | Creates a new bank transaction
*BankingApi* | [**deleteBank**](docs/BankingApi.md#deletebank) | **DELETE** /api/v2/AccountingService/Banking/{bankId} | Deletes a bank
*BankingApi* | [**deleteBankAccount**](docs/BankingApi.md#deletebankaccount) | **DELETE** /api/v2/AccountingService/Banking/{bankId}/Accounts/{accountId} | Deletes a bank account
*BankingApi* | [**deleteBankGuarantee**](docs/BankingApi.md#deletebankguarantee) | **DELETE** /api/v2/AccountingService/Banking/{bankId}/Guarantees/{guaranteeId} | Deletes a bank guarantee
*BankingApi* | [**deleteBankTransaction**](docs/BankingApi.md#deletebanktransaction) | **DELETE** /api/v2/AccountingService/Banking/{bankId}/Transactions/{transactionId} | Deletes a bank transaction
*BankingApi* | [**getBank**](docs/BankingApi.md#getbank) | **GET** /api/v2/AccountingService/Banking/{bankId} | Gets the current tenant bank
*BankingApi* | [**getBankAccount**](docs/BankingApi.md#getbankaccount) | **GET** /api/v2/AccountingService/Banking/{bankId}/Accounts/{accountId} | Gets the current tenant bank account
*BankingApi* | [**getBankAccounts**](docs/BankingApi.md#getbankaccounts) | **GET** /api/v2/AccountingService/Banking/{bankId}/Accounts | Gets the current tenant bank accounts
*BankingApi* | [**getBankAccountsCount**](docs/BankingApi.md#getbankaccountscount) | **GET** /api/v2/AccountingService/Banking/{bankId}/Accounts/Count | Gets the current tenant bank accounts count
*BankingApi* | [**getBankGuarantee**](docs/BankingApi.md#getbankguarantee) | **GET** /api/v2/AccountingService/Banking/{bankId}/Guarantees/{guaranteeId} | Gets the current tenant bank guarantee
*BankingApi* | [**getBankGuarantees**](docs/BankingApi.md#getbankguarantees) | **GET** /api/v2/AccountingService/Banking/{bankId}/Guarantees | Gets the current tenant bank guarantees
*BankingApi* | [**getBankGuaranteesCount**](docs/BankingApi.md#getbankguaranteescount) | **GET** /api/v2/AccountingService/Banking/{bankId}/Guarantees/Count | Gets the current tenant bank guarantees count
*BankingApi* | [**getBankTransaction**](docs/BankingApi.md#getbanktransaction) | **GET** /api/v2/AccountingService/Banking/{bankId}/Transactions/{transactionId} | Gets the current tenant bank transaction
*BankingApi* | [**getBankTransactions**](docs/BankingApi.md#getbanktransactions) | **GET** /api/v2/AccountingService/Banking/{bankId}/Transactions | Gets the current tenant bank transactions
*BankingApi* | [**getBankTransactionsCount**](docs/BankingApi.md#getbanktransactionscount) | **GET** /api/v2/AccountingService/Banking/{bankId}/Transactions/Count | Gets the current tenant bank transactions count
*BankingApi* | [**getBanks**](docs/BankingApi.md#getbanks) | **GET** /api/v2/AccountingService/Banking | Gets the current tenant banks
*BankingApi* | [**getBanksCount**](docs/BankingApi.md#getbankscount) | **GET** /api/v2/AccountingService/Banking/Count | Gets the current tenant banks count
*BankingApi* | [**updateBank**](docs/BankingApi.md#updatebank) | **PUT** /api/v2/AccountingService/Banking/{bankId} | Updates a bank
*BankingApi* | [**updateBankAccount**](docs/BankingApi.md#updatebankaccount) | **PUT** /api/v2/AccountingService/Banking/{bankId}/Accounts/{accountId} | Updates a bank account
*BankingApi* | [**updateBankGuarantee**](docs/BankingApi.md#updatebankguarantee) | **PUT** /api/v2/AccountingService/Banking/{bankId}/Guarantees/{guaranteeId} | Updates a bank guarantee
*BankingApi* | [**updateBankTransaction**](docs/BankingApi.md#updatebanktransaction) | **PUT** /api/v2/AccountingService/Banking/{bankId}/Transactions/{transactionId} | Updates a bank transaction
*BillingProfilesApi* | [**createBillingProfileAsync**](docs/BillingProfilesApi.md#createbillingprofileasync) | **POST** /api/v2/AccountingService/BillingProfiles | Creates a new billing profile
*BillingProfilesApi* | [**deleteBillingProfileAsync**](docs/BillingProfilesApi.md#deletebillingprofileasync) | **DELETE** /api/v2/AccountingService/BillingProfiles/{billingProfileId} | Deletes a billing profile
*BillingProfilesApi* | [**getBillingProfileByIdAsync**](docs/BillingProfilesApi.md#getbillingprofilebyidasync) | **GET** /api/v2/AccountingService/BillingProfiles/{billingProfileId} | Gets a billing profile by id
*BillingProfilesApi* | [**getBillingProfilesAsync**](docs/BillingProfilesApi.md#getbillingprofilesasync) | **GET** /api/v2/AccountingService/BillingProfiles | Gets all billing profiles
*BillingProfilesApi* | [**getBillingProfilesCountAsync**](docs/BillingProfilesApi.md#getbillingprofilescountasync) | **GET** /api/v2/AccountingService/BillingProfiles/Count | Gets the count of billing profiles
*BillingProfilesApi* | [**updateBillingProfileAsync**](docs/BillingProfilesApi.md#updatebillingprofileasync) | **PUT** /api/v2/AccountingService/BillingProfiles/{billingProfileId} | Updates an existing billing profile
*BudgetsApi* | [**createBudgetAccountEntryAsync**](docs/BudgetsApi.md#createbudgetaccountentryasync) | **POST** /api/v2/AccountingService/Budgets/{budgetId}/AccountEntries | Creates a budget account entry
*BudgetsApi* | [**createBudgetAsync**](docs/BudgetsApi.md#createbudgetasync) | **POST** /api/v2/AccountingService/Budgets | Creates a budget
*BudgetsApi* | [**deleteBudgetAccountEntryAsync**](docs/BudgetsApi.md#deletebudgetaccountentryasync) | **DELETE** /api/v2/AccountingService/Budgets/{budgetId}/AccountEntries/{entryId} | Deletes a budget account entry
*BudgetsApi* | [**deleteBudgetAsync**](docs/BudgetsApi.md#deletebudgetasync) | **DELETE** /api/v2/AccountingService/Budgets/{budgetId} | Deletes a budget
*BudgetsApi* | [**getBudgetAccountEntriesCollectionAsync**](docs/BudgetsApi.md#getbudgetaccountentriescollectionasync) | **GET** /api/v2/AccountingService/Budgets/{budgetId}/AccountEntries | Gets all budget account entries
*BudgetsApi* | [**getBudgetAccountEntryAsync**](docs/BudgetsApi.md#getbudgetaccountentryasync) | **GET** /api/v2/AccountingService/Budgets/{budgetId}/AccountEntries/{entryId} | Gets a budget account entry by id
*BudgetsApi* | [**getBudgetDetailsAsync**](docs/BudgetsApi.md#getbudgetdetailsasync) | **GET** /api/v2/AccountingService/Budgets/{budgetId} | Gets a budget by id
*BudgetsApi* | [**getBudgetsAsync**](docs/BudgetsApi.md#getbudgetsasync) | **GET** /api/v2/AccountingService/Budgets | Gets all budgets
*BudgetsApi* | [**updateBudgetAccountEntryAsync**](docs/BudgetsApi.md#updatebudgetaccountentryasync) | **PUT** /api/v2/AccountingService/Budgets/{budgetId}/AccountEntries/{entryId} | Updates a budget account entry
*BudgetsApi* | [**updateBudgetAsync**](docs/BudgetsApi.md#updatebudgetasync) | **PUT** /api/v2/AccountingService/Budgets/{budgetId} | Updates a budget
*CommissionsApi* | [**createCommissionAsync**](docs/CommissionsApi.md#createcommissionasync) | **POST** /api/v2/AccountingService/Commissions/Commissions | Create a commission
*CommissionsApi* | [**createPaymentCommissionAsync**](docs/CommissionsApi.md#createpaymentcommissionasync) | **POST** /api/v2/AccountingService/Commissions/PaymentCommissions | Create a payment commission
*CommissionsApi* | [**deleteCommissionAsync**](docs/CommissionsApi.md#deletecommissionasync) | **DELETE** /api/v2/AccountingService/Commissions/Commissions/{commissionId} | Delete a commission
*CommissionsApi* | [**deletePaymentCommissionAsync**](docs/CommissionsApi.md#deletepaymentcommissionasync) | **DELETE** /api/v2/AccountingService/Commissions/PaymentCommissions/{paymentCommissionId} | Delete a payment commission
*CommissionsApi* | [**getCommissionAsync**](docs/CommissionsApi.md#getcommissionasync) | **GET** /api/v2/AccountingService/Commissions/Commissions/{commissionId} | Get a commission by id
*CommissionsApi* | [**getCommissionsAsync**](docs/CommissionsApi.md#getcommissionsasync) | **GET** /api/v2/AccountingService/Commissions/Commissions | Get all commissions for a tenant
*CommissionsApi* | [**getCommissionsCountAsync**](docs/CommissionsApi.md#getcommissionscountasync) | **GET** /api/v2/AccountingService/Commissions/Commissions/Count | Get the count of commissions for a tenant
*CommissionsApi* | [**getPaymentCommissionAsync**](docs/CommissionsApi.md#getpaymentcommissionasync) | **GET** /api/v2/AccountingService/Commissions/PaymentCommissions/{paymentCommissionId} | Get a payment commission by id
*CommissionsApi* | [**getPaymentCommissionsAsync**](docs/CommissionsApi.md#getpaymentcommissionsasync) | **GET** /api/v2/AccountingService/Commissions/PaymentCommissions | Get all payment commissions for a tenant
*CommissionsApi* | [**getPaymentCommissionsCountAsync**](docs/CommissionsApi.md#getpaymentcommissionscountasync) | **GET** /api/v2/AccountingService/Commissions/PaymentCommissions/Count | Get the count of payment commissions for a tenant
*CommissionsApi* | [**updateCommissionAsync**](docs/CommissionsApi.md#updatecommissionasync) | **PUT** /api/v2/AccountingService/Commissions/Commissions/{commissionId} | Update a commission
*CommissionsApi* | [**updatePaymentCommissionAsync**](docs/CommissionsApi.md#updatepaymentcommissionasync) | **PUT** /api/v2/AccountingService/Commissions/PaymentCommissions/{paymentCommissionId} | Update a payment commission
*CostCentresApi* | [**createCostCentre**](docs/CostCentresApi.md#createcostcentre) | **POST** /api/v2/AccountingService/CostCentres | Create a cost centre
*CostCentresApi* | [**createCostCentreBudget**](docs/CostCentresApi.md#createcostcentrebudget) | **POST** /api/v2/AccountingService/CostCentres/CostCentreBudgets | Create a cost centre budget
*CostCentresApi* | [**createCostCentreGroup**](docs/CostCentresApi.md#createcostcentregroup) | **POST** /api/v2/AccountingService/CostCentres/CostCentreGroups | Create a cost centre group
*CostCentresApi* | [**deleteCostCentre**](docs/CostCentresApi.md#deletecostcentre) | **DELETE** /api/v2/AccountingService/CostCentres/{costCentreId} | Delete a cost centre
*CostCentresApi* | [**deleteCostCentreBudget**](docs/CostCentresApi.md#deletecostcentrebudget) | **DELETE** /api/v2/AccountingService/CostCentres/CostCentreBudgets/{budgetId} | Delete a cost centre budget
*CostCentresApi* | [**deleteCostCentreGroup**](docs/CostCentresApi.md#deletecostcentregroup) | **DELETE** /api/v2/AccountingService/CostCentres/CostCentreGroups/{groupId} | Delete a cost centre group
*CostCentresApi* | [**getCostCentre**](docs/CostCentresApi.md#getcostcentre) | **GET** /api/v2/AccountingService/CostCentres/{costCentreId} | Get a cost centre by id
*CostCentresApi* | [**getCostCentreBudget**](docs/CostCentresApi.md#getcostcentrebudget) | **GET** /api/v2/AccountingService/CostCentres/CostCentreBudgets/{budgetId} | Get a cost centre budget by id
*CostCentresApi* | [**getCostCentreBudgets**](docs/CostCentresApi.md#getcostcentrebudgets) | **GET** /api/v2/AccountingService/CostCentres/CostCentreBudgets | Get all cost centre budgets for a tenant
*CostCentresApi* | [**getCostCentreGroup**](docs/CostCentresApi.md#getcostcentregroup) | **GET** /api/v2/AccountingService/CostCentres/CostCentreGroups/{groupId} | Get a cost centre group by id
*CostCentresApi* | [**getCostCentreGroups**](docs/CostCentresApi.md#getcostcentregroups) | **GET** /api/v2/AccountingService/CostCentres/CostCentreGroups | Get all cost centre groups for a tenant
*CostCentresApi* | [**getCostCentreGroupsCount**](docs/CostCentresApi.md#getcostcentregroupscount) | **GET** /api/v2/AccountingService/CostCentres/CostCentreGroups/Count | Get the count of cost centre groups for a tenant
*CostCentresApi* | [**getCostCentres**](docs/CostCentresApi.md#getcostcentres) | **GET** /api/v2/AccountingService/CostCentres | Get all cost centres for a tenant
*CostCentresApi* | [**getCostCentresCount**](docs/CostCentresApi.md#getcostcentrescount) | **GET** /api/v2/AccountingService/CostCentres/Count | Get the count of cost centres for a tenant
*CostCentresApi* | [**updateCostCentre**](docs/CostCentresApi.md#updatecostcentre) | **PUT** /api/v2/AccountingService/CostCentres/{costCentreId} | Update a cost centre
*CostCentresApi* | [**updateCostCentreBudget**](docs/CostCentresApi.md#updatecostcentrebudget) | **PUT** /api/v2/AccountingService/CostCentres/CostCentreBudgets/{budgetId} | Update a cost centre budget
*CostCentresApi* | [**updateCostCentreGroup**](docs/CostCentresApi.md#updatecostcentregroup) | **PUT** /api/v2/AccountingService/CostCentres/CostCentreGroups/{groupId} | Update a cost centre group
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
*FinancialBooksApi* | [**createFinancialBookAsync**](docs/FinancialBooksApi.md#createfinancialbookasync) | **POST** /api/v2/AccountingService/FinancialBooks | Creates a new financial book
*FinancialBooksApi* | [**deleteFinancialBookAsync**](docs/FinancialBooksApi.md#deletefinancialbookasync) | **DELETE** /api/v2/AccountingService/FinancialBooks/{financialBookId} | Deletes an existing financial book
*FinancialBooksApi* | [**getFinancialBookDetailsAsync**](docs/FinancialBooksApi.md#getfinancialbookdetailsasync) | **GET** /api/v2/AccountingService/FinancialBooks/{financialBookId} | Gets the details of a specific financial book
*FinancialBooksApi* | [**getFinancialBooksAsync**](docs/FinancialBooksApi.md#getfinancialbooksasync) | **GET** /api/v2/AccountingService/FinancialBooks | Get all financial books for a tenant
*FinancialBooksApi* | [**getFinancialBooksCountAsync**](docs/FinancialBooksApi.md#getfinancialbookscountasync) | **GET** /api/v2/AccountingService/FinancialBooks/Count | Get the count of financial books
*FinancialBooksApi* | [**updateFinancialBookAsync**](docs/FinancialBooksApi.md#updatefinancialbookasync) | **PUT** /api/v2/AccountingService/FinancialBooks/{financialBookId} | Updates an existing financial book
*FiscalAuthoritiesApi* | [**createFiscalAuthority**](docs/FiscalAuthoritiesApi.md#createfiscalauthority) | **POST** /api/v2/AccountingService/Fiscals/Authorities | Create a fiscal authority
*FiscalAuthoritiesApi* | [**deleteFiscalAuthority**](docs/FiscalAuthoritiesApi.md#deletefiscalauthority) | **DELETE** /api/v2/AccountingService/Fiscals/Authorities/{authorityId} | Delete a fiscal authority
*FiscalAuthoritiesApi* | [**getFiscalAuthorities**](docs/FiscalAuthoritiesApi.md#getfiscalauthorities) | **GET** /api/v2/AccountingService/Fiscals/Authorities | Get fiscal authorities
*FiscalAuthoritiesApi* | [**getFiscalAuthoritiesCount**](docs/FiscalAuthoritiesApi.md#getfiscalauthoritiescount) | **GET** /api/v2/AccountingService/Fiscals/Authorities/Count | Get fiscal authorities count
*FiscalAuthoritiesApi* | [**getFiscalAuthority**](docs/FiscalAuthoritiesApi.md#getfiscalauthority) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{authorityId} | Get fiscal authority by ID
*FiscalAuthoritiesApi* | [**updateFiscalAuthority**](docs/FiscalAuthoritiesApi.md#updatefiscalauthority) | **PUT** /api/v2/AccountingService/Fiscals/Authorities/{authorityId} | Update a fiscal authority
*FiscalAuthorityYearsApi* | [**createFiscalYear**](docs/FiscalAuthorityYearsApi.md#createfiscalyear) | **POST** /api/v2/AccountingService/Fiscals/Authorities/FiscalYears | Create a fiscal year
*FiscalAuthorityYearsApi* | [**deleteFiscalYear**](docs/FiscalAuthorityYearsApi.md#deletefiscalyear) | **DELETE** /api/v2/AccountingService/Fiscals/Authorities/FiscalYears/{fiscalYearId} | Delete a fiscal year
*FiscalAuthorityYearsApi* | [**getFiscalYear**](docs/FiscalAuthorityYearsApi.md#getfiscalyear) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{fiscalAuthorityId}/FiscalYears/{fiscalYearId} | Get fiscal year by ID for an authority
*FiscalAuthorityYearsApi* | [**getFiscalYears**](docs/FiscalAuthorityYearsApi.md#getfiscalyears) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{authorityId}/FiscalYears | Get fiscal years for an authority
*FiscalAuthorityYearsApi* | [**getFiscalYearsCount**](docs/FiscalAuthorityYearsApi.md#getfiscalyearscount) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{fiscalAuthorityId}/FiscalYears/Count | Get fiscal years count for an authority
*FiscalAuthorityYearsApi* | [**updateFiscalYear**](docs/FiscalAuthorityYearsApi.md#updatefiscalyear) | **PUT** /api/v2/AccountingService/Fiscals/Authorities/FiscalYears/{fiscalYearId} | Update a fiscal year
*FiscalEnumerationRangesApi* | [**createInvoiceEnumerationRange**](docs/FiscalEnumerationRangesApi.md#createinvoiceenumerationrange) | **POST** /api/v2/AccountingService/Fiscals/Authorities/EnumerationRanges | Create an invoice enumeration range
*FiscalEnumerationRangesApi* | [**deleteInvoiceEnumerationRange**](docs/FiscalEnumerationRangesApi.md#deleteinvoiceenumerationrange) | **DELETE** /api/v2/AccountingService/Fiscals/Authorities/EnumerationRanges/{enumerationRangeId} | Delete an invoice enumeration range
*FiscalEnumerationRangesApi* | [**getInvoiceEnumerationRange**](docs/FiscalEnumerationRangesApi.md#getinvoiceenumerationrange) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{fiscalAuthorityId}/EnumerationRanges/{enumerationRangeId} | Get invoice enumeration range by ID
*FiscalEnumerationRangesApi* | [**getInvoiceEnumerationRanges**](docs/FiscalEnumerationRangesApi.md#getinvoiceenumerationranges) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{authorityId}/EnumerationRanges | Get invoice enumeration ranges for an authority
*FiscalEnumerationRangesApi* | [**getInvoiceEnumerationRangesCount**](docs/FiscalEnumerationRangesApi.md#getinvoiceenumerationrangescount) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{fiscalAuthorityId}/EnumerationRanges/Count | Get invoice enumeration ranges count
*FiscalEnumerationRangesApi* | [**updateInvoiceEnumerationRange**](docs/FiscalEnumerationRangesApi.md#updateinvoiceenumerationrange) | **PUT** /api/v2/AccountingService/Fiscals/Authorities/EnumerationRanges/{enumerationRangeId} | Update an invoice enumeration range
*FiscalIdentificationTypesApi* | [**createFiscalIdentificationType**](docs/FiscalIdentificationTypesApi.md#createfiscalidentificationtype) | **POST** /api/v2/AccountingService/Fiscals/Authorities/IdentificationTypes | Create a fiscal identification type
*FiscalIdentificationTypesApi* | [**deleteFiscalIdentificationType**](docs/FiscalIdentificationTypesApi.md#deletefiscalidentificationtype) | **DELETE** /api/v2/AccountingService/Fiscals/Authorities/IdentificationTypes/{identificationTypeId} | Delete a fiscal identification type
*FiscalIdentificationTypesApi* | [**getFiscalIdentificationType**](docs/FiscalIdentificationTypesApi.md#getfiscalidentificationtype) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{fiscalAuthorityId}/IdentificationTypes/{identificationTypeId} | Get fiscal identification type by ID
*FiscalIdentificationTypesApi* | [**getFiscalIdentificationTypes**](docs/FiscalIdentificationTypesApi.md#getfiscalidentificationtypes) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{authorityId}/IdentificationTypes | Get fiscal identification types for an authority
*FiscalIdentificationTypesApi* | [**getFiscalIdentificationTypesCount**](docs/FiscalIdentificationTypesApi.md#getfiscalidentificationtypescount) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{authorityId}/IdentificationTypes/Count | Get fiscal identification types count
*FiscalIdentificationTypesApi* | [**updateFiscalIdentificationType**](docs/FiscalIdentificationTypesApi.md#updatefiscalidentificationtype) | **PUT** /api/v2/AccountingService/Fiscals/Authorities/IdentificationTypes/{identificationTypeId} | Update a fiscal identification type
*FiscalPeriodsApi* | [**createFiscalPeriod**](docs/FiscalPeriodsApi.md#createfiscalperiod) | **POST** /api/v2/AccountingService/Fiscals/Authorities/FiscalPeriods | Create a fiscal period
*FiscalPeriodsApi* | [**deleteFiscalPeriod**](docs/FiscalPeriodsApi.md#deletefiscalperiod) | **DELETE** /api/v2/AccountingService/Fiscals/Authorities/FiscalPeriods/{fiscalPeriodId} | Delete a fiscal period
*FiscalPeriodsApi* | [**getFiscalPeriod**](docs/FiscalPeriodsApi.md#getfiscalperiod) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{fiscalAuthorityId}/FiscalYears/{fiscalYearId}/FiscalPeriods/{fiscalPeriodId} | Get fiscal period by ID
*FiscalPeriodsApi* | [**getFiscalPeriods**](docs/FiscalPeriodsApi.md#getfiscalperiods) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{authorityId}/FiscalYears/{fiscalYearId}/FiscalPeriods | Get fiscal periods for a fiscal year
*FiscalPeriodsApi* | [**getFiscalPeriodsCount**](docs/FiscalPeriodsApi.md#getfiscalperiodscount) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{fiscalAuthorityId}/FiscalYears/{fiscalYearId}/FiscalPeriods/Count | Get fiscal periods count
*FiscalPeriodsApi* | [**updateFiscalPeriod**](docs/FiscalPeriodsApi.md#updatefiscalperiod) | **PUT** /api/v2/AccountingService/Fiscals/Authorities/FiscalPeriods/{fiscalPeriodId} | Update a fiscal period
*FiscalRegimesApi* | [**createFiscalRegime**](docs/FiscalRegimesApi.md#createfiscalregime) | **POST** /api/v2/AccountingService/Fiscals/Authorities/FiscalRegimes | Create a fiscal regime
*FiscalRegimesApi* | [**deleteFiscalRegime**](docs/FiscalRegimesApi.md#deletefiscalregime) | **DELETE** /api/v2/AccountingService/Fiscals/Authorities/FiscalRegimes/{regimeId} | Delete a fiscal regime
*FiscalRegimesApi* | [**getFiscalRegime**](docs/FiscalRegimesApi.md#getfiscalregime) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{fiscalAuthorityId}/FiscalRegimes/{regimeId} | Get fiscal regime by ID
*FiscalRegimesApi* | [**getFiscalRegimes**](docs/FiscalRegimesApi.md#getfiscalregimes) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{authorityId}/FiscalRegimes | Get fiscal regimes for an authority
*FiscalRegimesApi* | [**getFiscalRegimesCount**](docs/FiscalRegimesApi.md#getfiscalregimescount) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{fiscalAuthorityId}/FiscalRegimes/Count | Get fiscal regimes count
*FiscalRegimesApi* | [**updateFiscalRegime**](docs/FiscalRegimesApi.md#updatefiscalregime) | **PUT** /api/v2/AccountingService/Fiscals/Authorities/FiscalRegimes/{regimeId} | Update a fiscal regime
*FiscalResponsibilitiesApi* | [**createFiscalResponsibility**](docs/FiscalResponsibilitiesApi.md#createfiscalresponsibility) | **POST** /api/v2/AccountingService/Fiscals/Authorities/FiscalResponsibilities | Create a fiscal responsibility
*FiscalResponsibilitiesApi* | [**deleteFiscalResponsibility**](docs/FiscalResponsibilitiesApi.md#deletefiscalresponsibility) | **DELETE** /api/v2/AccountingService/Fiscals/Authorities/FiscalResponsibilities/{fiscalResponsibilityId} | Delete a fiscal responsibility
*FiscalResponsibilitiesApi* | [**getFiscalResponsibilities**](docs/FiscalResponsibilitiesApi.md#getfiscalresponsibilities) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{authorityId}/FiscalResponsibilities | Get fiscal responsibilities for an authority
*FiscalResponsibilitiesApi* | [**getFiscalResponsibilitiesCount**](docs/FiscalResponsibilitiesApi.md#getfiscalresponsibilitiescount) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{fiscalAuthorityId}/FiscalResponsibilities/Count | Get fiscal responsibilities count
*FiscalResponsibilitiesApi* | [**getFiscalResponsibility**](docs/FiscalResponsibilitiesApi.md#getfiscalresponsibility) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{fiscalAuthorityId}/FiscalResponsibilities/{fiscalResponsibilityId} | Get fiscal responsibility by ID
*FiscalResponsibilitiesApi* | [**updateFiscalResponsibility**](docs/FiscalResponsibilitiesApi.md#updatefiscalresponsibility) | **PUT** /api/v2/AccountingService/Fiscals/Authorities/FiscalResponsibilities/{fiscalResponsibilityId} | Update a fiscal responsibility
*FiscalResponsibilityRecordsApi* | [**createFiscalResponsibilityRecord**](docs/FiscalResponsibilityRecordsApi.md#createfiscalresponsibilityrecord) | **POST** /api/v2/AccountingService/Fiscals/Authorities/FiscalResponsibilityRecords | Create a fiscal responsibility record
*FiscalResponsibilityRecordsApi* | [**deleteFiscalResponsibilityRecord**](docs/FiscalResponsibilityRecordsApi.md#deletefiscalresponsibilityrecord) | **DELETE** /api/v2/AccountingService/Fiscals/Authorities/FiscalResponsibilityRecords/{fiscalResponsibilityRecordId} | Delete a fiscal responsibility record
*FiscalResponsibilityRecordsApi* | [**getFiscalResponsibilityRecord**](docs/FiscalResponsibilityRecordsApi.md#getfiscalresponsibilityrecord) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{fiscalAuthorityId}/FiscalResponsibilities/{fiscalResponsibilityId}/FiscalResponsibilityRecords/{fiscalResponsibilityRecordId} | Get fiscal responsibility record by ID
*FiscalResponsibilityRecordsApi* | [**getFiscalResponsibilityRecords**](docs/FiscalResponsibilityRecordsApi.md#getfiscalresponsibilityrecords) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{fiscalAuthorityId}/FiscalResponsibilities/{fiscalResponsibilityId}/FiscalResponsibilityRecords | Get fiscal responsibility records
*FiscalResponsibilityRecordsApi* | [**getFiscalResponsibilityRecordsCount**](docs/FiscalResponsibilityRecordsApi.md#getfiscalresponsibilityrecordscount) | **GET** /api/v2/AccountingService/Fiscals/Authorities/{fiscalAuthorityId}/FiscalResponsibilities/{fiscalResponsibilityId}/FiscalResponsibilityRecords/Count | Get fiscal responsibility records count
*FiscalResponsibilityRecordsApi* | [**updateFiscalResponsibilityRecord**](docs/FiscalResponsibilityRecordsApi.md#updatefiscalresponsibilityrecord) | **PUT** /api/v2/AccountingService/Fiscals/Authorities/FiscalResponsibilityRecords/{fiscalResponsibilityRecordId} | Update a fiscal responsibility record
*FiscalYearsApi* | [**createFiscalYearAsync**](docs/FiscalYearsApi.md#createfiscalyearasync) | **POST** /api/v2/AccountingService/FiscalYears | Create fiscal year
*FiscalYearsApi* | [**deleteFiscalYearAsync**](docs/FiscalYearsApi.md#deletefiscalyearasync) | **DELETE** /api/v2/AccountingService/FiscalYears/{fiscalYearId} | Delete fiscal year
*FiscalYearsApi* | [**getFiscalYearDetailsAsync**](docs/FiscalYearsApi.md#getfiscalyeardetailsasync) | **GET** /api/v2/AccountingService/FiscalYears/{fiscalYearId} | Get fiscal year by ID
*FiscalYearsApi* | [**getFiscalYearsAsync**](docs/FiscalYearsApi.md#getfiscalyearsasync) | **GET** /api/v2/AccountingService/FiscalYears | Get all fiscal years
*FiscalYearsApi* | [**getFiscalYearsCountAsync**](docs/FiscalYearsApi.md#getfiscalyearscountasync) | **GET** /api/v2/AccountingService/FiscalYears/Count | Count fiscal years
*FiscalYearsApi* | [**updateFiscalYearAsync**](docs/FiscalYearsApi.md#updatefiscalyearasync) | **PUT** /api/v2/AccountingService/FiscalYears/{fiscalYearId} | Update fiscal year
*GrantsApi* | [**createGrantAsync**](docs/GrantsApi.md#creategrantasync) | **POST** /api/v2/AccountingService/Grants | Create grant
*GrantsApi* | [**deleteGrantAsync**](docs/GrantsApi.md#deletegrantasync) | **DELETE** /api/v2/AccountingService/Grants/{grantId} | Delete grant
*GrantsApi* | [**getGrantDetailsAsync**](docs/GrantsApi.md#getgrantdetailsasync) | **GET** /api/v2/AccountingService/Grants/{grantId} | Get grant by ID
*GrantsApi* | [**getGrantsAsync**](docs/GrantsApi.md#getgrantsasync) | **GET** /api/v2/AccountingService/Grants | Get all grants
*GrantsApi* | [**getGrantsCountAsync**](docs/GrantsApi.md#getgrantscountasync) | **GET** /api/v2/AccountingService/Grants/Count | Count grants
*GrantsApi* | [**updateGrantAsync**](docs/GrantsApi.md#updategrantasync) | **PUT** /api/v2/AccountingService/Grants/{grantId} | Update grant
*InvoiceEnumerationRangesApi* | [**createInvoiceEnumerationRangeAsync**](docs/InvoiceEnumerationRangesApi.md#createinvoiceenumerationrangeasync) | **POST** /api/v2/AccountingService/InvoiceEnumerationRanges | Create a new invoice enumeration range
*InvoiceEnumerationRangesApi* | [**deleteInvoiceEnumerationRangeAsync**](docs/InvoiceEnumerationRangesApi.md#deleteinvoiceenumerationrangeasync) | **DELETE** /api/v2/AccountingService/InvoiceEnumerationRanges/{rangeId} | Delete an invoice enumeration range
*InvoiceEnumerationRangesApi* | [**getInvoiceEnumerationRangeDetailsAsync**](docs/InvoiceEnumerationRangesApi.md#getinvoiceenumerationrangedetailsasync) | **GET** /api/v2/AccountingService/InvoiceEnumerationRanges/{rangeId} | Get invoice enumeration range by ID
*InvoiceEnumerationRangesApi* | [**getInvoiceEnumerationRangesAsync**](docs/InvoiceEnumerationRangesApi.md#getinvoiceenumerationrangesasync) | **GET** /api/v2/AccountingService/InvoiceEnumerationRanges | Get all invoice enumeration ranges
*InvoiceEnumerationRangesApi* | [**updateInvoiceEnumerationRangeAsync**](docs/InvoiceEnumerationRangesApi.md#updateinvoiceenumerationrangeasync) | **PUT** /api/v2/AccountingService/InvoiceEnumerationRanges/{rangeId} | Update an invoice enumeration range
*JournalTypesApi* | [**createJournalTypeAsync**](docs/JournalTypesApi.md#createjournaltypeasync) | **POST** /api/v2/AccountingService/JournalTypes | Creates a new journal type
*JournalTypesApi* | [**deleteJournalTypeAsync**](docs/JournalTypesApi.md#deletejournaltypeasync) | **DELETE** /api/v2/AccountingService/JournalTypes/{journalTypeId} | Deletes a journal type
*JournalTypesApi* | [**getJournalTypeDetailsAsync**](docs/JournalTypesApi.md#getjournaltypedetailsasync) | **GET** /api/v2/AccountingService/JournalTypes/{journalTypeId} | Retrieves a journal type by ID
*JournalTypesApi* | [**getJournalTypesAsync**](docs/JournalTypesApi.md#getjournaltypesasync) | **GET** /api/v2/AccountingService/JournalTypes | Retrieves all journal types
*JournalTypesApi* | [**getJournalTypesCountAsync**](docs/JournalTypesApi.md#getjournaltypescountasync) | **GET** /api/v2/AccountingService/JournalTypes/Count | Counts journal types
*JournalTypesApi* | [**updateJournalTypeAsync**](docs/JournalTypesApi.md#updatejournaltypeasync) | **PUT** /api/v2/AccountingService/JournalTypes/{journalTypeId} | Updates an existing journal type
*JournalsApi* | [**countJournalsAsync**](docs/JournalsApi.md#countjournalsasync) | **GET** /api/v2/AccountingService/Journals/Count | Count journals
*JournalsApi* | [**createJournalAsync**](docs/JournalsApi.md#createjournalasync) | **POST** /api/v2/AccountingService/Journals | Create journal
*JournalsApi* | [**createJournalEntryAsync**](docs/JournalsApi.md#createjournalentryasync) | **POST** /api/v2/AccountingService/Journals/{journalId}/Entries | Create journal entry
*JournalsApi* | [**deleteJournalAsync**](docs/JournalsApi.md#deletejournalasync) | **DELETE** /api/v2/AccountingService/Journals/{journalId} | Delete journal
*JournalsApi* | [**deleteJournalEntryAsync**](docs/JournalsApi.md#deletejournalentryasync) | **DELETE** /api/v2/AccountingService/Journals/{journalId}/Entries/{entryId} | Delete journal entry
*JournalsApi* | [**getJournalDetailsAsync**](docs/JournalsApi.md#getjournaldetailsasync) | **GET** /api/v2/AccountingService/Journals/{journalId} | Get journal by ID
*JournalsApi* | [**getJournalEntriesAsync**](docs/JournalsApi.md#getjournalentriesasync) | **GET** /api/v2/AccountingService/Journals/{journalId}/Entries | Get journal entries
*JournalsApi* | [**getJournalEntriesCountAsync**](docs/JournalsApi.md#getjournalentriescountasync) | **GET** /api/v2/AccountingService/Journals/{journalId}/Entries/Count | Count journal entries
*JournalsApi* | [**getJournalsAsync**](docs/JournalsApi.md#getjournalsasync) | **GET** /api/v2/AccountingService/Journals | Get all journals
*JournalsApi* | [**updateJournalAsync**](docs/JournalsApi.md#updatejournalasync) | **PUT** /api/v2/AccountingService/Journals/{journalId} | Update journal
*JournalsApi* | [**updateJournalEntryAsync**](docs/JournalsApi.md#updatejournalentryasync) | **PUT** /api/v2/AccountingService/Journals/{journalId}/Entries/{entryId} | Update journal entry
*LedgerTypesApi* | [**createLedgerTypeAsync**](docs/LedgerTypesApi.md#createledgertypeasync) | **POST** /api/v2/AccountingService/LedgerTypes | Creates a new ledger type
*LedgerTypesApi* | [**deleteLedgerTypeAsync**](docs/LedgerTypesApi.md#deleteledgertypeasync) | **DELETE** /api/v2/AccountingService/LedgerTypes/{ledgerTypeId} | Deletes a ledger type
*LedgerTypesApi* | [**getLedgerTypeDetailsAsync**](docs/LedgerTypesApi.md#getledgertypedetailsasync) | **GET** /api/v2/AccountingService/LedgerTypes/{ledgerTypeId} | Gets a ledger type by ID
*LedgerTypesApi* | [**getLedgerTypesAsync**](docs/LedgerTypesApi.md#getledgertypesasync) | **GET** /api/v2/AccountingService/LedgerTypes | Retrieves all ledger types
*LedgerTypesApi* | [**getLedgerTypesCountAsync**](docs/LedgerTypesApi.md#getledgertypescountasync) | **GET** /api/v2/AccountingService/LedgerTypes/Count | Counts ledger types
*LedgerTypesApi* | [**updateLedgerTypeAsync**](docs/LedgerTypesApi.md#updateledgertypeasync) | **PUT** /api/v2/AccountingService/LedgerTypes/{ledgerTypeId} | Updates a ledger type
*LedgersApi* | [**createLedgerAsync**](docs/LedgersApi.md#createledgerasync) | **POST** /api/v2/AccountingService/Ledgers | Creates a new ledger
*LedgersApi* | [**deleteLedgerAsync**](docs/LedgersApi.md#deleteledgerasync) | **DELETE** /api/v2/AccountingService/Ledgers/{ledgerId} | Deletes a ledger
*LedgersApi* | [**getLedgerDetailsAsync**](docs/LedgersApi.md#getledgerdetailsasync) | **GET** /api/v2/AccountingService/Ledgers/{ledgerId} | Gets a ledger by ID
*LedgersApi* | [**getLedgersAsync**](docs/LedgersApi.md#getledgersasync) | **GET** /api/v2/AccountingService/Ledgers | Retrieves all ledgers
*LedgersApi* | [**getLedgersCountAsync**](docs/LedgersApi.md#getledgerscountasync) | **GET** /api/v2/AccountingService/Ledgers/Count | Counts ledgers
*LedgersApi* | [**updateLedgerAsync**](docs/LedgersApi.md#updateledgerasync) | **PUT** /api/v2/AccountingService/Ledgers/{ledgerId} | Updates a ledger
*LoansApi* | [**createLoanApplicationAsync**](docs/LoansApi.md#createloanapplicationasync) | **POST** /api/v2/AccountingService/Loans/Applications | Creates a loan application
*LoansApi* | [**createLoanAsync**](docs/LoansApi.md#createloanasync) | **POST** /api/v2/AccountingService/Loans | Creates a new loan
*LoansApi* | [**deleteLoanApplicationAsync**](docs/LoansApi.md#deleteloanapplicationasync) | **DELETE** /api/v2/AccountingService/Loans/Applications/{applicationId} | Deletes a loan application
*LoansApi* | [**deleteLoanAsync**](docs/LoansApi.md#deleteloanasync) | **DELETE** /api/v2/AccountingService/Loans/{loanId} | Deletes a loan
*LoansApi* | [**getLoanApplicationDetailsAsync**](docs/LoansApi.md#getloanapplicationdetailsasync) | **GET** /api/v2/AccountingService/Loans/Applications/{applicationId} | Gets a loan application by ID
*LoansApi* | [**getLoanApplicationsAsync**](docs/LoansApi.md#getloanapplicationsasync) | **GET** /api/v2/AccountingService/Loans/Applications | Gets all loan applications
*LoansApi* | [**getLoanApplicationsCountAsync**](docs/LoansApi.md#getloanapplicationscountasync) | **GET** /api/v2/AccountingService/Loans/Applications/Count | Counts loan applications
*LoansApi* | [**getLoanDetailsAsync**](docs/LoansApi.md#getloandetailsasync) | **GET** /api/v2/AccountingService/Loans/{loanId} | Gets a loan by ID
*LoansApi* | [**getLoansAsync**](docs/LoansApi.md#getloansasync) | **GET** /api/v2/AccountingService/Loans | Gets all loans
*LoansApi* | [**getLoansCountAsync**](docs/LoansApi.md#getloanscountasync) | **GET** /api/v2/AccountingService/Loans/Count | Counts loans
*LoansApi* | [**updateLoanApplicationAsync**](docs/LoansApi.md#updateloanapplicationasync) | **PUT** /api/v2/AccountingService/Loans/Applications/{applicationId} | Updates a loan application
*LoansApi* | [**updateLoanAsync**](docs/LoansApi.md#updateloanasync) | **PUT** /api/v2/AccountingService/Loans/{loanId} | Updates a loan
*ReceiptsApi* | [**createReceiptAsync**](docs/ReceiptsApi.md#createreceiptasync) | **POST** /api/v2/AccountingService/Receipts | Creates a new receipt
*ReceiptsApi* | [**deleteReceiptAsync**](docs/ReceiptsApi.md#deletereceiptasync) | **DELETE** /api/v2/AccountingService/Receipts/{receiptId} | Deletes a receipt
*ReceiptsApi* | [**getReceiptDetailsAsync**](docs/ReceiptsApi.md#getreceiptdetailsasync) | **GET** /api/v2/AccountingService/Receipts/{receiptId} | Gets details of a receipt
*ReceiptsApi* | [**getReceiptsAsync**](docs/ReceiptsApi.md#getreceiptsasync) | **GET** /api/v2/AccountingService/Receipts | Retrieves tenant receipts
*ReceiptsApi* | [**getReceiptsCountAsync**](docs/ReceiptsApi.md#getreceiptscountasync) | **GET** /api/v2/AccountingService/Receipts/Count | Gets count of tenant receipts
*ReceiptsApi* | [**updateReceiptAsync**](docs/ReceiptsApi.md#updatereceiptasync) | **PUT** /api/v2/AccountingService/Receipts/{receiptId} | Updates a receipt
*SharesApi* | [**createShareClass**](docs/SharesApi.md#createshareclass) | **POST** /api/v2/AccountingService/Shares/Classes | Creates a new share class
*SharesApi* | [**createShareIssuance**](docs/SharesApi.md#createshareissuance) | **POST** /api/v2/AccountingService/Shares/Issuances | Creates a new share issuance
*SharesApi* | [**createShareTransfer**](docs/SharesApi.md#createsharetransfer) | **POST** /api/v2/AccountingService/Shares/Transfers | Creates a new share transfer
*SharesApi* | [**createShareTransferReason**](docs/SharesApi.md#createsharetransferreason) | **POST** /api/v2/AccountingService/Shares/TransferReasons | Creates a new share transfer reason
*SharesApi* | [**deleteShareClass**](docs/SharesApi.md#deleteshareclass) | **DELETE** /api/v2/AccountingService/Shares/Classes/{shareClassId} | Deletes an existing share class
*SharesApi* | [**deleteShareIssuance**](docs/SharesApi.md#deleteshareissuance) | **DELETE** /api/v2/AccountingService/Shares/Issuances/{issuanceId} | Deletes an existing share issuance
*SharesApi* | [**deleteShareTransfer**](docs/SharesApi.md#deletesharetransfer) | **DELETE** /api/v2/AccountingService/Shares/Transfers/{transferId} | Deletes an existing share transfer
*SharesApi* | [**deleteShareTransferReason**](docs/SharesApi.md#deletesharetransferreason) | **DELETE** /api/v2/AccountingService/Shares/TransferReasons/{reasonId} | Deletes an existing share transfer reason
*SharesApi* | [**getShareClass**](docs/SharesApi.md#getshareclass) | **GET** /api/v2/AccountingService/Shares/Classes/{shareClassId} | Gets a share class by id
*SharesApi* | [**getShareClasses**](docs/SharesApi.md#getshareclasses) | **GET** /api/v2/AccountingService/Shares/Classes | Gets the current tenant share classes
*SharesApi* | [**getShareClassesCount**](docs/SharesApi.md#getshareclassescount) | **GET** /api/v2/AccountingService/Shares/Classes/Count | Gets the current tenant share classes count
*SharesApi* | [**getShareIssuance**](docs/SharesApi.md#getshareissuance) | **GET** /api/v2/AccountingService/Shares/Issuances/{issuanceId} | Gets a share issuance by id
*SharesApi* | [**getShareIssuances**](docs/SharesApi.md#getshareissuances) | **GET** /api/v2/AccountingService/Shares/Issuances | Gets the current tenant share issuances
*SharesApi* | [**getShareIssuancesCount**](docs/SharesApi.md#getshareissuancescount) | **GET** /api/v2/AccountingService/Shares/Issuances/Count | Gets the current tenant share issuances count
*SharesApi* | [**getShareTransfer**](docs/SharesApi.md#getsharetransfer) | **GET** /api/v2/AccountingService/Shares/Transfers/{transferId} | Gets a share transfer by id
*SharesApi* | [**getShareTransferReason**](docs/SharesApi.md#getsharetransferreason) | **GET** /api/v2/AccountingService/Shares/TransferReasons/{reasonId} | Gets a share transfer reason by id
*SharesApi* | [**getShareTransferReasons**](docs/SharesApi.md#getsharetransferreasons) | **GET** /api/v2/AccountingService/Shares/TransferReasons | Gets the current tenant share transfer reasons
*SharesApi* | [**getShareTransferReasonsCount**](docs/SharesApi.md#getsharetransferreasonscount) | **GET** /api/v2/AccountingService/Shares/TransferReasons/Count | Gets the current tenant share transfer reasons count
*SharesApi* | [**getShareTransfers**](docs/SharesApi.md#getsharetransfers) | **GET** /api/v2/AccountingService/Shares/Transfers | Gets the current tenant share transfers
*SharesApi* | [**getShareTransfersCount**](docs/SharesApi.md#getsharetransferscount) | **GET** /api/v2/AccountingService/Shares/Transfers/Count | Gets the current tenant share transfers count
*SharesApi* | [**updateShareClass**](docs/SharesApi.md#updateshareclass) | **PUT** /api/v2/AccountingService/Shares/Classes/{shareClassId} | Updates an existing share class
*SharesApi* | [**updateShareIssuance**](docs/SharesApi.md#updateshareissuance) | **PUT** /api/v2/AccountingService/Shares/Issuances/{issuanceId} | Updates an existing share issuance
*SharesApi* | [**updateShareTransfer**](docs/SharesApi.md#updatesharetransfer) | **PUT** /api/v2/AccountingService/Shares/Transfers/{transferId} | Updates an existing share transfer
*SharesApi* | [**updateShareTransferReason**](docs/SharesApi.md#updatesharetransferreason) | **PUT** /api/v2/AccountingService/Shares/TransferReasons/{reasonId} | Updates an existing share transfer reason
*TaxPoliciesApi* | [**createAppliedTaxPolicyRecord**](docs/TaxPoliciesApi.md#createappliedtaxpolicyrecord) | **POST** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/AppliedTaxPolicyRecords | Create an applied tax policy record
*TaxPoliciesApi* | [**createItemTaxPolicyRecord**](docs/TaxPoliciesApi.md#createitemtaxpolicyrecord) | **POST** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/ItemTaxPolicyRecords | Create an item tax policy record
*TaxPoliciesApi* | [**createTaxPolicy**](docs/TaxPoliciesApi.md#createtaxpolicy) | **POST** /api/v2/AccountingService/TaxPolicies | Create a tax policy
*TaxPoliciesApi* | [**deleteAppliedTaxPolicyRecord**](docs/TaxPoliciesApi.md#deleteappliedtaxpolicyrecord) | **DELETE** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/AppliedTaxPolicyRecords/{appliedTaxPolicyRecordId} | Delete an applied tax policy record
*TaxPoliciesApi* | [**deleteItemTaxPolicyRecord**](docs/TaxPoliciesApi.md#deleteitemtaxpolicyrecord) | **DELETE** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/ItemTaxPolicyRecords/{itemTaxPolicyRecordId} | Delete an item tax policy record
*TaxPoliciesApi* | [**deleteTaxPolicy**](docs/TaxPoliciesApi.md#deletetaxpolicy) | **DELETE** /api/v2/AccountingService/TaxPolicies/{id} | Delete a tax policy
*TaxPoliciesApi* | [**getAppliedTaxPolicyRecord**](docs/TaxPoliciesApi.md#getappliedtaxpolicyrecord) | **GET** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/AppliedTaxPolicyRecords/{appliedTaxPolicyRecordId} | Get applied tax policy record by ID
*TaxPoliciesApi* | [**getAppliedTaxPolicyRecords**](docs/TaxPoliciesApi.md#getappliedtaxpolicyrecords) | **GET** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/AppliedTaxPolicyRecords | Get applied tax policy records
*TaxPoliciesApi* | [**getAppliedTaxPolicyRecordsCount**](docs/TaxPoliciesApi.md#getappliedtaxpolicyrecordscount) | **GET** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/AppliedTaxPolicyRecords/Count | Get applied tax policy records count
*TaxPoliciesApi* | [**getItemTaxPolicyRecord**](docs/TaxPoliciesApi.md#getitemtaxpolicyrecord) | **GET** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/ItemTaxPolicyRecords/{itemTaxPolicyRecordId} | Get item tax policy record by ID
*TaxPoliciesApi* | [**getItemTaxPolicyRecords**](docs/TaxPoliciesApi.md#getitemtaxpolicyrecords) | **GET** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/ItemTaxPolicyRecords | Get item tax policy records
*TaxPoliciesApi* | [**getTaxPolicies**](docs/TaxPoliciesApi.md#gettaxpolicies) | **GET** /api/v2/AccountingService/TaxPolicies | Get all tax policies for a tenant
*TaxPoliciesApi* | [**getTaxPoliciesByAuthority**](docs/TaxPoliciesApi.md#gettaxpoliciesbyauthority) | **GET** /api/v2/AccountingService/TaxPolicies/ByAuthority/{authorityId} | Get tax policies by fiscal authority
*TaxPoliciesApi* | [**getTaxPoliciesCount**](docs/TaxPoliciesApi.md#gettaxpoliciescount) | **GET** /api/v2/AccountingService/TaxPolicies/Count | Get tax policies count
*TaxPoliciesApi* | [**getTaxPolicy**](docs/TaxPoliciesApi.md#gettaxpolicy) | **GET** /api/v2/AccountingService/TaxPolicies/{id} | Get tax policy by ID
*TaxPoliciesApi* | [**updateAppliedTaxPolicyRecord**](docs/TaxPoliciesApi.md#updateappliedtaxpolicyrecord) | **PUT** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/AppliedTaxPolicyRecords/{appliedTaxPolicyRecordId} | Update an applied tax policy record
*TaxPoliciesApi* | [**updateItemTaxPolicyRecord**](docs/TaxPoliciesApi.md#updateitemtaxpolicyrecord) | **PUT** /api/v2/AccountingService/TaxPolicies/{taxPolicyId}/ItemTaxPolicyRecords/{itemTaxPolicyRecordId} | Update an item tax policy record
*TaxPoliciesApi* | [**updateTaxPolicy**](docs/TaxPoliciesApi.md#updatetaxpolicy) | **PUT** /api/v2/AccountingService/TaxPolicies/{id} | Update a tax policy
*TaxRatesApi* | [**createTaxRate**](docs/TaxRatesApi.md#createtaxrate) | **POST** /api/v2/AccountingService/TaxRates | Create a tax rate
*TaxRatesApi* | [**deleteTaxRate**](docs/TaxRatesApi.md#deletetaxrate) | **DELETE** /api/v2/AccountingService/TaxRates/{id} | Delete a tax rate
*TaxRatesApi* | [**getTaxRate**](docs/TaxRatesApi.md#gettaxrate) | **GET** /api/v2/AccountingService/TaxRates/{id} | Get tax rate by ID
*TaxRatesApi* | [**getTaxRates**](docs/TaxRatesApi.md#gettaxrates) | **GET** /api/v2/AccountingService/TaxRates | Get all tax rates for a tenant
*TaxRatesApi* | [**getTaxRatesCount**](docs/TaxRatesApi.md#gettaxratescount) | **GET** /api/v2/AccountingService/TaxRates/Count | Get tax rates count
*TaxRatesApi* | [**updateTaxRate**](docs/TaxRatesApi.md#updatetaxrate) | **PUT** /api/v2/AccountingService/TaxRates/{id} | Update a tax rate
*TransactionsApi* | [**createTransaction**](docs/TransactionsApi.md#createtransaction) | **POST** /api/v2/AccountingService/Transactions | Create a transaction
*TransactionsApi* | [**createTransactionCategory**](docs/TransactionsApi.md#createtransactioncategory) | **POST** /api/v2/AccountingService/Transactions/Categories | Create a transaction category
*TransactionsApi* | [**deleteTransaction**](docs/TransactionsApi.md#deletetransaction) | **DELETE** /api/v2/AccountingService/Transactions/{transactionId} | Delete a transaction
*TransactionsApi* | [**deleteTransactionCategory**](docs/TransactionsApi.md#deletetransactioncategory) | **DELETE** /api/v2/AccountingService/Transactions/Categories/{categoryId} | Delete a transaction category
*TransactionsApi* | [**getTransaction**](docs/TransactionsApi.md#gettransaction) | **GET** /api/v2/AccountingService/Transactions/{transactionId} | Get transaction by ID
*TransactionsApi* | [**getTransactionCategories**](docs/TransactionsApi.md#gettransactioncategories) | **GET** /api/v2/AccountingService/Transactions/Categories | Get all transaction categories
*TransactionsApi* | [**getTransactionCategoriesCount**](docs/TransactionsApi.md#gettransactioncategoriescount) | **GET** /api/v2/AccountingService/Transactions/Categories/Count | Get transaction categories count
*TransactionsApi* | [**getTransactionCategory**](docs/TransactionsApi.md#gettransactioncategory) | **GET** /api/v2/AccountingService/Transactions/Categories/{categoryId} | Get transaction category by ID
*TransactionsApi* | [**getTransactions**](docs/TransactionsApi.md#gettransactions) | **GET** /api/v2/AccountingService/Transactions | Get all transactions for a tenant
*TransactionsApi* | [**getTransactionsCount**](docs/TransactionsApi.md#gettransactionscount) | **GET** /api/v2/AccountingService/Transactions/Count | Get transactions count
*TransactionsApi* | [**updateTransaction**](docs/TransactionsApi.md#updatetransaction) | **PUT** /api/v2/AccountingService/Transactions/{transactionId} | Update a transaction
*TransactionsApi* | [**updateTransactionCategory**](docs/TransactionsApi.md#updatetransactioncategory) | **PUT** /api/v2/AccountingService/Transactions/Categories/{categoryId} | Update a transaction category


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [AccountCreateDto](docs/AccountCreateDto.md)
 - [AccountDto](docs/AccountDto.md)
 - [AccountDtoEnvelope](docs/AccountDtoEnvelope.md)
 - [AccountDtoListEnvelope](docs/AccountDtoListEnvelope.md)
 - [AccountGroupCreateDto](docs/AccountGroupCreateDto.md)
 - [AccountGroupDto](docs/AccountGroupDto.md)
 - [AccountGroupDtoEnvelope](docs/AccountGroupDtoEnvelope.md)
 - [AccountGroupDtoListEnvelope](docs/AccountGroupDtoListEnvelope.md)
 - [AccountGroupUpdateDto](docs/AccountGroupUpdateDto.md)
 - [AccountRelationCreateDto](docs/AccountRelationCreateDto.md)
 - [AccountRelationDto](docs/AccountRelationDto.md)
 - [AccountRelationDtoListEnvelope](docs/AccountRelationDtoListEnvelope.md)
 - [AccountRelationUpdateDto](docs/AccountRelationUpdateDto.md)
 - [AccountTypeCreateDto](docs/AccountTypeCreateDto.md)
 - [AccountTypeDto](docs/AccountTypeDto.md)
 - [AccountTypeDtoListEnvelope](docs/AccountTypeDtoListEnvelope.md)
 - [AccountTypeUpdateDto](docs/AccountTypeUpdateDto.md)
 - [AccountUpdateDto](docs/AccountUpdateDto.md)
 - [AccountingEntryCreateDto](docs/AccountingEntryCreateDto.md)
 - [AccountingEntryDto](docs/AccountingEntryDto.md)
 - [AccountingEntryDtoEnvelope](docs/AccountingEntryDtoEnvelope.md)
 - [AccountingEntryDtoListEnvelope](docs/AccountingEntryDtoListEnvelope.md)
 - [AccountingEntryUpdateDto](docs/AccountingEntryUpdateDto.md)
 - [AccountingPeriodCreateDto](docs/AccountingPeriodCreateDto.md)
 - [AccountingPeriodDto](docs/AccountingPeriodDto.md)
 - [AccountingPeriodDtoEnvelope](docs/AccountingPeriodDtoEnvelope.md)
 - [AccountingPeriodDtoListEnvelope](docs/AccountingPeriodDtoListEnvelope.md)
 - [AccountingPeriodUpdateDto](docs/AccountingPeriodUpdateDto.md)
 - [AppliedTaxPolicyRecordCreateDto](docs/AppliedTaxPolicyRecordCreateDto.md)
 - [AppliedTaxPolicyRecordDto](docs/AppliedTaxPolicyRecordDto.md)
 - [AppliedTaxPolicyRecordDtoEnvelope](docs/AppliedTaxPolicyRecordDtoEnvelope.md)
 - [AppliedTaxPolicyRecordDtoListEnvelope](docs/AppliedTaxPolicyRecordDtoListEnvelope.md)
 - [AppliedTaxPolicyRecordUpdateDto](docs/AppliedTaxPolicyRecordUpdateDto.md)
 - [BankAccountCreateDto](docs/BankAccountCreateDto.md)
 - [BankAccountDto](docs/BankAccountDto.md)
 - [BankAccountDtoEnvelope](docs/BankAccountDtoEnvelope.md)
 - [BankAccountDtoListEnvelope](docs/BankAccountDtoListEnvelope.md)
 - [BankAccountUpdateDto](docs/BankAccountUpdateDto.md)
 - [BankCreateDto](docs/BankCreateDto.md)
 - [BankDto](docs/BankDto.md)
 - [BankDtoEnvelope](docs/BankDtoEnvelope.md)
 - [BankDtoListEnvelope](docs/BankDtoListEnvelope.md)
 - [BankGuaranteeCreateDto](docs/BankGuaranteeCreateDto.md)
 - [BankGuaranteeDto](docs/BankGuaranteeDto.md)
 - [BankGuaranteeDtoEnvelope](docs/BankGuaranteeDtoEnvelope.md)
 - [BankGuaranteeDtoListEnvelope](docs/BankGuaranteeDtoListEnvelope.md)
 - [BankGuaranteeUpdateDto](docs/BankGuaranteeUpdateDto.md)
 - [BankTransactionCreateDto](docs/BankTransactionCreateDto.md)
 - [BankTransactionDto](docs/BankTransactionDto.md)
 - [BankTransactionDtoEnvelope](docs/BankTransactionDtoEnvelope.md)
 - [BankTransactionDtoListEnvelope](docs/BankTransactionDtoListEnvelope.md)
 - [BankTransactionUpdateDto](docs/BankTransactionUpdateDto.md)
 - [BankUpdateDto](docs/BankUpdateDto.md)
 - [BillingProfileCreateDto](docs/BillingProfileCreateDto.md)
 - [BillingProfileDto](docs/BillingProfileDto.md)
 - [BillingProfileDtoEnvelope](docs/BillingProfileDtoEnvelope.md)
 - [BillingProfileDtoIReadOnlyListEnvelope](docs/BillingProfileDtoIReadOnlyListEnvelope.md)
 - [BillingProfileUpdateDto](docs/BillingProfileUpdateDto.md)
 - [BudgetAccountEntryCreateDto](docs/BudgetAccountEntryCreateDto.md)
 - [BudgetAccountEntryDto](docs/BudgetAccountEntryDto.md)
 - [BudgetAccountEntryDtoEnvelope](docs/BudgetAccountEntryDtoEnvelope.md)
 - [BudgetAccountEntryDtoIReadOnlyListEnvelope](docs/BudgetAccountEntryDtoIReadOnlyListEnvelope.md)
 - [BudgetAccountEntryUpdateDto](docs/BudgetAccountEntryUpdateDto.md)
 - [BudgetCreateDto](docs/BudgetCreateDto.md)
 - [BudgetDto](docs/BudgetDto.md)
 - [BudgetDtoEnvelope](docs/BudgetDtoEnvelope.md)
 - [BudgetDtoIReadOnlyListEnvelope](docs/BudgetDtoIReadOnlyListEnvelope.md)
 - [BudgetUpdateDto](docs/BudgetUpdateDto.md)
 - [CommissionCreateDto](docs/CommissionCreateDto.md)
 - [CommissionDto](docs/CommissionDto.md)
 - [CommissionDtoEnvelope](docs/CommissionDtoEnvelope.md)
 - [CommissionDtoListEnvelope](docs/CommissionDtoListEnvelope.md)
 - [CommissionUpdateDto](docs/CommissionUpdateDto.md)
 - [CostCentreBudgetCreateDto](docs/CostCentreBudgetCreateDto.md)
 - [CostCentreBudgetDto](docs/CostCentreBudgetDto.md)
 - [CostCentreBudgetDtoEnvelope](docs/CostCentreBudgetDtoEnvelope.md)
 - [CostCentreBudgetDtoListEnvelope](docs/CostCentreBudgetDtoListEnvelope.md)
 - [CostCentreBudgetUpdateDto](docs/CostCentreBudgetUpdateDto.md)
 - [CostCentreCreateDto](docs/CostCentreCreateDto.md)
 - [CostCentreDto](docs/CostCentreDto.md)
 - [CostCentreDtoEnvelope](docs/CostCentreDtoEnvelope.md)
 - [CostCentreDtoListEnvelope](docs/CostCentreDtoListEnvelope.md)
 - [CostCentreGroupCreateDto](docs/CostCentreGroupCreateDto.md)
 - [CostCentreGroupDto](docs/CostCentreGroupDto.md)
 - [CostCentreGroupDtoEnvelope](docs/CostCentreGroupDtoEnvelope.md)
 - [CostCentreGroupDtoListEnvelope](docs/CostCentreGroupDtoListEnvelope.md)
 - [CostCentreGroupUpdateDto](docs/CostCentreGroupUpdateDto.md)
 - [CostCentreUpdateDto](docs/CostCentreUpdateDto.md)
 - [CreateLedgerDto](docs/CreateLedgerDto.md)
 - [CurrencyId](docs/CurrencyId.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [FinancialBookCreateDto](docs/FinancialBookCreateDto.md)
 - [FinancialBookDto](docs/FinancialBookDto.md)
 - [FinancialBookDtoEnvelope](docs/FinancialBookDtoEnvelope.md)
 - [FinancialBookDtoListEnvelope](docs/FinancialBookDtoListEnvelope.md)
 - [FinancialBookUpdateDto](docs/FinancialBookUpdateDto.md)
 - [FiscalAuthorityCreateDto](docs/FiscalAuthorityCreateDto.md)
 - [FiscalAuthorityDto](docs/FiscalAuthorityDto.md)
 - [FiscalAuthorityDtoEnvelope](docs/FiscalAuthorityDtoEnvelope.md)
 - [FiscalAuthorityDtoListEnvelope](docs/FiscalAuthorityDtoListEnvelope.md)
 - [FiscalAuthorityUpdateDto](docs/FiscalAuthorityUpdateDto.md)
 - [FiscalIdentificationTypeCreateDto](docs/FiscalIdentificationTypeCreateDto.md)
 - [FiscalIdentificationTypeDto](docs/FiscalIdentificationTypeDto.md)
 - [FiscalIdentificationTypeDtoEnvelope](docs/FiscalIdentificationTypeDtoEnvelope.md)
 - [FiscalIdentificationTypeDtoListEnvelope](docs/FiscalIdentificationTypeDtoListEnvelope.md)
 - [FiscalIdentificationTypeUpdateDto](docs/FiscalIdentificationTypeUpdateDto.md)
 - [FiscalPeriodCreateDto](docs/FiscalPeriodCreateDto.md)
 - [FiscalPeriodDto](docs/FiscalPeriodDto.md)
 - [FiscalPeriodDtoEnvelope](docs/FiscalPeriodDtoEnvelope.md)
 - [FiscalPeriodDtoListEnvelope](docs/FiscalPeriodDtoListEnvelope.md)
 - [FiscalPeriodUpdateDto](docs/FiscalPeriodUpdateDto.md)
 - [FiscalRegimeCreateDto](docs/FiscalRegimeCreateDto.md)
 - [FiscalRegimeDto](docs/FiscalRegimeDto.md)
 - [FiscalRegimeDtoEnvelope](docs/FiscalRegimeDtoEnvelope.md)
 - [FiscalRegimeDtoListEnvelope](docs/FiscalRegimeDtoListEnvelope.md)
 - [FiscalRegimeUpdateDto](docs/FiscalRegimeUpdateDto.md)
 - [FiscalResponsibilityCreateDto](docs/FiscalResponsibilityCreateDto.md)
 - [FiscalResponsibilityDto](docs/FiscalResponsibilityDto.md)
 - [FiscalResponsibilityDtoEnvelope](docs/FiscalResponsibilityDtoEnvelope.md)
 - [FiscalResponsibilityDtoListEnvelope](docs/FiscalResponsibilityDtoListEnvelope.md)
 - [FiscalResponsibilityRecordCreateDto](docs/FiscalResponsibilityRecordCreateDto.md)
 - [FiscalResponsibilityRecordDto](docs/FiscalResponsibilityRecordDto.md)
 - [FiscalResponsibilityRecordDtoEnvelope](docs/FiscalResponsibilityRecordDtoEnvelope.md)
 - [FiscalResponsibilityRecordDtoListEnvelope](docs/FiscalResponsibilityRecordDtoListEnvelope.md)
 - [FiscalResponsibilityRecordUpdateDto](docs/FiscalResponsibilityRecordUpdateDto.md)
 - [FiscalResponsibilityUpdateDto](docs/FiscalResponsibilityUpdateDto.md)
 - [FiscalYearCreateDto](docs/FiscalYearCreateDto.md)
 - [FiscalYearDto](docs/FiscalYearDto.md)
 - [FiscalYearDtoEnvelope](docs/FiscalYearDtoEnvelope.md)
 - [FiscalYearDtoIReadOnlyListEnvelope](docs/FiscalYearDtoIReadOnlyListEnvelope.md)
 - [FiscalYearDtoListEnvelope](docs/FiscalYearDtoListEnvelope.md)
 - [FiscalYearUpdateDto](docs/FiscalYearUpdateDto.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [GrantCreateDto](docs/GrantCreateDto.md)
 - [GrantDto](docs/GrantDto.md)
 - [GrantDtoEnvelope](docs/GrantDtoEnvelope.md)
 - [GrantDtoIReadOnlyListEnvelope](docs/GrantDtoIReadOnlyListEnvelope.md)
 - [GrantUpdateDto](docs/GrantUpdateDto.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [InvoiceEnumerationRangeCreateDto](docs/InvoiceEnumerationRangeCreateDto.md)
 - [InvoiceEnumerationRangeDto](docs/InvoiceEnumerationRangeDto.md)
 - [InvoiceEnumerationRangeDtoEnvelope](docs/InvoiceEnumerationRangeDtoEnvelope.md)
 - [InvoiceEnumerationRangeDtoListEnvelope](docs/InvoiceEnumerationRangeDtoListEnvelope.md)
 - [InvoiceEnumerationRangeUpdateDto](docs/InvoiceEnumerationRangeUpdateDto.md)
 - [ItemTaxPolicyRecordCreateDto](docs/ItemTaxPolicyRecordCreateDto.md)
 - [ItemTaxPolicyRecordDto](docs/ItemTaxPolicyRecordDto.md)
 - [ItemTaxPolicyRecordDtoEnvelope](docs/ItemTaxPolicyRecordDtoEnvelope.md)
 - [ItemTaxPolicyRecordDtoListEnvelope](docs/ItemTaxPolicyRecordDtoListEnvelope.md)
 - [ItemTaxPolicyRecordUpdateDto](docs/ItemTaxPolicyRecordUpdateDto.md)
 - [JournalCreateDto](docs/JournalCreateDto.md)
 - [JournalDto](docs/JournalDto.md)
 - [JournalDtoEnvelope](docs/JournalDtoEnvelope.md)
 - [JournalDtoIReadOnlyListEnvelope](docs/JournalDtoIReadOnlyListEnvelope.md)
 - [JournalEntryCreateDto](docs/JournalEntryCreateDto.md)
 - [JournalEntryDto](docs/JournalEntryDto.md)
 - [JournalEntryDtoIReadOnlyListEnvelope](docs/JournalEntryDtoIReadOnlyListEnvelope.md)
 - [JournalEntryUpdateDto](docs/JournalEntryUpdateDto.md)
 - [JournalTypeCreateDto](docs/JournalTypeCreateDto.md)
 - [JournalTypeDto](docs/JournalTypeDto.md)
 - [JournalTypeDtoEnvelope](docs/JournalTypeDtoEnvelope.md)
 - [JournalTypeDtoIReadOnlyListEnvelope](docs/JournalTypeDtoIReadOnlyListEnvelope.md)
 - [JournalTypeUpdateDto](docs/JournalTypeUpdateDto.md)
 - [JournalUpdateDto](docs/JournalUpdateDto.md)
 - [LedgerDto](docs/LedgerDto.md)
 - [LedgerDtoEnvelope](docs/LedgerDtoEnvelope.md)
 - [LedgerDtoIReadOnlyListEnvelope](docs/LedgerDtoIReadOnlyListEnvelope.md)
 - [LedgerTypeCreateDto](docs/LedgerTypeCreateDto.md)
 - [LedgerTypeDto](docs/LedgerTypeDto.md)
 - [LedgerTypeDtoEnvelope](docs/LedgerTypeDtoEnvelope.md)
 - [LedgerTypeDtoIReadOnlyListEnvelope](docs/LedgerTypeDtoIReadOnlyListEnvelope.md)
 - [LedgerTypeUpdateDto](docs/LedgerTypeUpdateDto.md)
 - [LoanApplicationCreateDto](docs/LoanApplicationCreateDto.md)
 - [LoanApplicationDto](docs/LoanApplicationDto.md)
 - [LoanApplicationDtoEnvelope](docs/LoanApplicationDtoEnvelope.md)
 - [LoanApplicationDtoIReadOnlyListEnvelope](docs/LoanApplicationDtoIReadOnlyListEnvelope.md)
 - [LoanApplicationUpdateDto](docs/LoanApplicationUpdateDto.md)
 - [LoanCreateDto](docs/LoanCreateDto.md)
 - [LoanDto](docs/LoanDto.md)
 - [LoanDtoEnvelope](docs/LoanDtoEnvelope.md)
 - [LoanDtoIReadOnlyListEnvelope](docs/LoanDtoIReadOnlyListEnvelope.md)
 - [LoanUpdateDto](docs/LoanUpdateDto.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [Money](docs/Money.md)
 - [Operation](docs/Operation.md)
 - [PaymentCommissionCreateDto](docs/PaymentCommissionCreateDto.md)
 - [PaymentCommissionDto](docs/PaymentCommissionDto.md)
 - [PaymentCommissionDtoEnvelope](docs/PaymentCommissionDtoEnvelope.md)
 - [PaymentCommissionDtoListEnvelope](docs/PaymentCommissionDtoListEnvelope.md)
 - [PaymentCommissionUpdateDto](docs/PaymentCommissionUpdateDto.md)
 - [ReceiptCreateDto](docs/ReceiptCreateDto.md)
 - [ReceiptDto](docs/ReceiptDto.md)
 - [ReceiptDtoEnvelope](docs/ReceiptDtoEnvelope.md)
 - [ReceiptDtoIReadOnlyListEnvelope](docs/ReceiptDtoIReadOnlyListEnvelope.md)
 - [ReceiptUpdateDto](docs/ReceiptUpdateDto.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [ShareClassCreateDto](docs/ShareClassCreateDto.md)
 - [ShareClassDto](docs/ShareClassDto.md)
 - [ShareClassDtoEnvelope](docs/ShareClassDtoEnvelope.md)
 - [ShareClassDtoListEnvelope](docs/ShareClassDtoListEnvelope.md)
 - [ShareClassUpdateDto](docs/ShareClassUpdateDto.md)
 - [ShareIssuanceCreateDto](docs/ShareIssuanceCreateDto.md)
 - [ShareIssuanceDto](docs/ShareIssuanceDto.md)
 - [ShareIssuanceDtoEnvelope](docs/ShareIssuanceDtoEnvelope.md)
 - [ShareIssuanceDtoListEnvelope](docs/ShareIssuanceDtoListEnvelope.md)
 - [ShareIssuanceUpdateDto](docs/ShareIssuanceUpdateDto.md)
 - [ShareTransferCreateDto](docs/ShareTransferCreateDto.md)
 - [ShareTransferDto](docs/ShareTransferDto.md)
 - [ShareTransferDtoEnvelope](docs/ShareTransferDtoEnvelope.md)
 - [ShareTransferDtoListEnvelope](docs/ShareTransferDtoListEnvelope.md)
 - [ShareTransferReasonCreateDto](docs/ShareTransferReasonCreateDto.md)
 - [ShareTransferReasonDto](docs/ShareTransferReasonDto.md)
 - [ShareTransferReasonDtoEnvelope](docs/ShareTransferReasonDtoEnvelope.md)
 - [ShareTransferReasonDtoListEnvelope](docs/ShareTransferReasonDtoListEnvelope.md)
 - [ShareTransferReasonUpdateDto](docs/ShareTransferReasonUpdateDto.md)
 - [ShareTransferUpdateDto](docs/ShareTransferUpdateDto.md)
 - [TaxPolicyCreateDto](docs/TaxPolicyCreateDto.md)
 - [TaxPolicyDto](docs/TaxPolicyDto.md)
 - [TaxPolicyDtoEnvelope](docs/TaxPolicyDtoEnvelope.md)
 - [TaxPolicyDtoListEnvelope](docs/TaxPolicyDtoListEnvelope.md)
 - [TaxPolicyUpdateDto](docs/TaxPolicyUpdateDto.md)
 - [TaxRateCreateDto](docs/TaxRateCreateDto.md)
 - [TaxRateDto](docs/TaxRateDto.md)
 - [TaxRateDtoEnvelope](docs/TaxRateDtoEnvelope.md)
 - [TaxRateDtoListEnvelope](docs/TaxRateDtoListEnvelope.md)
 - [TaxRateUpdateDto](docs/TaxRateUpdateDto.md)
 - [TransactionCategoryCreateDto](docs/TransactionCategoryCreateDto.md)
 - [TransactionCategoryDto](docs/TransactionCategoryDto.md)
 - [TransactionCategoryDtoEnvelope](docs/TransactionCategoryDtoEnvelope.md)
 - [TransactionCategoryDtoListEnvelope](docs/TransactionCategoryDtoListEnvelope.md)
 - [TransactionCategoryUpdateDto](docs/TransactionCategoryUpdateDto.md)
 - [TransactionCreateDto](docs/TransactionCreateDto.md)
 - [TransactionDto](docs/TransactionDto.md)
 - [TransactionDtoEnvelope](docs/TransactionDtoEnvelope.md)
 - [TransactionDtoListEnvelope](docs/TransactionDtoListEnvelope.md)
 - [TransactionUpdateDto](docs/TransactionUpdateDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)
 - [UpdateLedgerDto](docs/UpdateLedgerDto.md)


## Documentation For Authorization

 All endpoints do not require authorization.

