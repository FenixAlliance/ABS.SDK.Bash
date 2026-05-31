# LogisticsService Bash client

## Overview

This is a Bash client script for accessing LogisticsService service.

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
*AirwayBillsApi* | [**addAirwayBillLineAsync**](docs/AirwayBillsApi.md#addairwaybilllineasync) | **POST** /api/v2/LogisticsService/AirwayBills/{billId}/Lines | Add a line to airway bill
*AirwayBillsApi* | [**cancelAirwayBillAsync**](docs/AirwayBillsApi.md#cancelairwaybillasync) | **POST** /api/v2/LogisticsService/AirwayBills/{billId}/Cancel | Cancel an airway bill
*AirwayBillsApi* | [**createAirwayBillAsync**](docs/AirwayBillsApi.md#createairwaybillasync) | **POST** /api/v2/LogisticsService/AirwayBills | Create an airway bill
*AirwayBillsApi* | [**deleteAirwayBillAsync**](docs/AirwayBillsApi.md#deleteairwaybillasync) | **DELETE** /api/v2/LogisticsService/AirwayBills/{billId} | Delete an airway bill
*AirwayBillsApi* | [**getAirwayBillByIdAsync**](docs/AirwayBillsApi.md#getairwaybillbyidasync) | **GET** /api/v2/LogisticsService/AirwayBills/{billId} | Get airway bill by ID
*AirwayBillsApi* | [**getAirwayBillLinesAsync**](docs/AirwayBillsApi.md#getairwaybilllinesasync) | **GET** /api/v2/LogisticsService/AirwayBills/{billId}/Lines | Get airway bill lines
*AirwayBillsApi* | [**getAirwayBillLinesCountAsync**](docs/AirwayBillsApi.md#getairwaybilllinescountasync) | **GET** /api/v2/LogisticsService/AirwayBills/{billId}/Lines/Count | Get airway bill lines count
*AirwayBillsApi* | [**getAirwayBillsAsync**](docs/AirwayBillsApi.md#getairwaybillsasync) | **GET** /api/v2/LogisticsService/AirwayBills | Get all airway bills
*AirwayBillsApi* | [**getAirwayBillsCountAsync**](docs/AirwayBillsApi.md#getairwaybillscountasync) | **GET** /api/v2/LogisticsService/AirwayBills/Count | Get airway bills count
*AirwayBillsApi* | [**issueAirwayBillAsync**](docs/AirwayBillsApi.md#issueairwaybillasync) | **POST** /api/v2/LogisticsService/AirwayBills/{billId}/Issue | Issue an airway bill
*AirwayBillsApi* | [**markAirwayBillArrivedAsync**](docs/AirwayBillsApi.md#markairwaybillarrivedasync) | **POST** /api/v2/LogisticsService/AirwayBills/{billId}/MarkArrived | Mark airway bill arrived
*AirwayBillsApi* | [**markAirwayBillDeliveredAsync**](docs/AirwayBillsApi.md#markairwaybilldeliveredasync) | **POST** /api/v2/LogisticsService/AirwayBills/{billId}/MarkDelivered | Mark airway bill delivered
*AirwayBillsApi* | [**markAirwayBillInTransitAsync**](docs/AirwayBillsApi.md#markairwaybillintransitasync) | **POST** /api/v2/LogisticsService/AirwayBills/{billId}/MarkInTransit | Mark airway bill in transit
*AirwayBillsApi* | [**removeAirwayBillLineAsync**](docs/AirwayBillsApi.md#removeairwaybilllineasync) | **DELETE** /api/v2/LogisticsService/AirwayBills/{billId}/Lines/{lineId} | Remove an airway bill line
*AirwayBillsApi* | [**updateAirwayBillAsync**](docs/AirwayBillsApi.md#updateairwaybillasync) | **PUT** /api/v2/LogisticsService/AirwayBills/{billId} | Update an airway bill
*AirwayBillsApi* | [**updateAirwayBillLineAsync**](docs/AirwayBillsApi.md#updateairwaybilllineasync) | **PUT** /api/v2/LogisticsService/AirwayBills/{billId}/Lines/{lineId} | Update an airway bill line
*CompletionsApi* | [**apiV2AiServiceCompletionsCompleteGet**](docs/CompletionsApi.md#apiv2aiservicecompletionscompleteget) | **GET** /api/v2/AiService/Completions/Complete | 
*DeliveryNotesApi* | [**createDeliveryNoteAsync**](docs/DeliveryNotesApi.md#createdeliverynoteasync) | **POST** /api/v2/LogisticsService/DeliveryNotes | Create a delivery note
*DeliveryNotesApi* | [**deleteDeliveryNoteAsync**](docs/DeliveryNotesApi.md#deletedeliverynoteasync) | **DELETE** /api/v2/LogisticsService/DeliveryNotes/{deliveryNoteId} | Delete a delivery note
*DeliveryNotesApi* | [**getDeliveryNoteByIdAsync**](docs/DeliveryNotesApi.md#getdeliverynotebyidasync) | **GET** /api/v2/LogisticsService/DeliveryNotes/{deliveryNoteId} | Get delivery note by ID
*DeliveryNotesApi* | [**getDeliveryNotesAsync**](docs/DeliveryNotesApi.md#getdeliverynotesasync) | **GET** /api/v2/LogisticsService/DeliveryNotes | Get all delivery notes
*DeliveryNotesApi* | [**getDeliveryNotesCountAsync**](docs/DeliveryNotesApi.md#getdeliverynotescountasync) | **GET** /api/v2/LogisticsService/DeliveryNotes/Count | Get delivery notes count
*DeliveryNotesApi* | [**updateDeliveryNoteAsync**](docs/DeliveryNotesApi.md#updatedeliverynoteasync) | **PUT** /api/v2/LogisticsService/DeliveryNotes/{deliveryNoteId} | Update a delivery note
*FenixAlliancePortalsWebsiteApi* | [**accountLogoutPost**](docs/FenixAlliancePortalsWebsiteApi.md#accountlogoutpost) | **POST** /Account/Logout | 
*FenixAlliancePortalsWebsiteApi* | [**accountManageDownloadPersonalDataPost**](docs/FenixAlliancePortalsWebsiteApi.md#accountmanagedownloadpersonaldatapost) | **POST** /Account/Manage/DownloadPersonalData | 
*FenixAlliancePortalsWebsiteApi* | [**accountManageLinkExternalLoginPost**](docs/FenixAlliancePortalsWebsiteApi.md#accountmanagelinkexternalloginpost) | **POST** /Account/Manage/LinkExternalLogin | 
*FenixAlliancePortalsWebsiteApi* | [**accountPerformExternalLoginPost**](docs/FenixAlliancePortalsWebsiteApi.md#accountperformexternalloginpost) | **POST** /Account/PerformExternalLogin | 
*FenixAlliancePortalsWebsiteApi* | [**forgotPasswordPost**](docs/FenixAlliancePortalsWebsiteApi.md#forgotpasswordpost) | **POST** /forgotPassword | 
*FenixAlliancePortalsWebsiteApi* | [**healthGet**](docs/FenixAlliancePortalsWebsiteApi.md#healthget) | **GET** /health | 
*FenixAlliancePortalsWebsiteApi* | [**helloGet**](docs/FenixAlliancePortalsWebsiteApi.md#helloget) | **GET** /hello | 
*FenixAlliancePortalsWebsiteApi* | [**loginPost**](docs/FenixAlliancePortalsWebsiteApi.md#loginpost) | **POST** /login | 
*FenixAlliancePortalsWebsiteApi* | [**manage2faPost**](docs/FenixAlliancePortalsWebsiteApi.md#manage2fapost) | **POST** /manage/2fa | 
*FenixAlliancePortalsWebsiteApi* | [**manageInfoGet**](docs/FenixAlliancePortalsWebsiteApi.md#manageinfoget) | **GET** /manage/info | 
*FenixAlliancePortalsWebsiteApi* | [**manageInfoPost**](docs/FenixAlliancePortalsWebsiteApi.md#manageinfopost) | **POST** /manage/info | 
*FenixAlliancePortalsWebsiteApi* | [**mapIdentityApiConfirmEmail**](docs/FenixAlliancePortalsWebsiteApi.md#mapidentityapiconfirmemail) | **GET** /confirmEmail | 
*FenixAlliancePortalsWebsiteApi* | [**refreshPost**](docs/FenixAlliancePortalsWebsiteApi.md#refreshpost) | **POST** /refresh | 
*FenixAlliancePortalsWebsiteApi* | [**registerPost**](docs/FenixAlliancePortalsWebsiteApi.md#registerpost) | **POST** /register | 
*FenixAlliancePortalsWebsiteApi* | [**resendConfirmationEmailPost**](docs/FenixAlliancePortalsWebsiteApi.md#resendconfirmationemailpost) | **POST** /resendConfirmationEmail | 
*FenixAlliancePortalsWebsiteApi* | [**resetPasswordPost**](docs/FenixAlliancePortalsWebsiteApi.md#resetpasswordpost) | **POST** /resetPassword | 
*FenixAlliancePortalsWebsiteApi* | [**versionGet**](docs/FenixAlliancePortalsWebsiteApi.md#versionget) | **GET** /version | 
*ItemPackingSlipsApi* | [**createItemPackingSlipAsync**](docs/ItemPackingSlipsApi.md#createitempackingslipasync) | **POST** /api/v2/LogisticsService/ItemPackingSlips | Create an item packing slip
*ItemPackingSlipsApi* | [**createItemPackingSlipEntryAsync**](docs/ItemPackingSlipsApi.md#createitempackingslipentryasync) | **POST** /api/v2/LogisticsService/ItemPackingSlips/{packingSlipId}/Entries | Create a packing slip entry
*ItemPackingSlipsApi* | [**deleteItemPackingSlipAsync**](docs/ItemPackingSlipsApi.md#deleteitempackingslipasync) | **DELETE** /api/v2/LogisticsService/ItemPackingSlips/{packingSlipId} | Delete an item packing slip
*ItemPackingSlipsApi* | [**deleteItemPackingSlipEntryAsync**](docs/ItemPackingSlipsApi.md#deleteitempackingslipentryasync) | **DELETE** /api/v2/LogisticsService/ItemPackingSlips/{packingSlipId}/Entries/{entryId} | Delete a packing slip entry
*ItemPackingSlipsApi* | [**getItemPackingSlipByIdAsync**](docs/ItemPackingSlipsApi.md#getitempackingslipbyidasync) | **GET** /api/v2/LogisticsService/ItemPackingSlips/{packingSlipId} | Get item packing slip by ID
*ItemPackingSlipsApi* | [**getItemPackingSlipEntriesAsync**](docs/ItemPackingSlipsApi.md#getitempackingslipentriesasync) | **GET** /api/v2/LogisticsService/ItemPackingSlips/{packingSlipId}/Entries | Get packing slip entries
*ItemPackingSlipsApi* | [**getItemPackingSlipEntriesCountAsync**](docs/ItemPackingSlipsApi.md#getitempackingslipentriescountasync) | **GET** /api/v2/LogisticsService/ItemPackingSlips/{packingSlipId}/Entries/Count | Get packing slip entries count
*ItemPackingSlipsApi* | [**getItemPackingSlipEntryByIdAsync**](docs/ItemPackingSlipsApi.md#getitempackingslipentrybyidasync) | **GET** /api/v2/LogisticsService/ItemPackingSlips/{packingSlipId}/Entries/{entryId} | Get packing slip entry by ID
*ItemPackingSlipsApi* | [**getItemPackingSlipsAsync**](docs/ItemPackingSlipsApi.md#getitempackingslipsasync) | **GET** /api/v2/LogisticsService/ItemPackingSlips | Get all item packing slips
*ItemPackingSlipsApi* | [**getItemPackingSlipsCountAsync**](docs/ItemPackingSlipsApi.md#getitempackingslipscountasync) | **GET** /api/v2/LogisticsService/ItemPackingSlips/Count | Get item packing slips count
*ItemPackingSlipsApi* | [**updateItemPackingSlipAsync**](docs/ItemPackingSlipsApi.md#updateitempackingslipasync) | **PUT** /api/v2/LogisticsService/ItemPackingSlips/{packingSlipId} | Update an item packing slip
*ItemPackingSlipsApi* | [**updateItemPackingSlipEntryAsync**](docs/ItemPackingSlipsApi.md#updateitempackingslipentryasync) | **PUT** /api/v2/LogisticsService/ItemPackingSlips/{packingSlipId}/Entries/{entryId} | Update a packing slip entry
*ItemPickListsApi* | [**createItemPickListAsync**](docs/ItemPickListsApi.md#createitempicklistasync) | **POST** /api/v2/LogisticsService/ItemPickLists | Create an item pick list
*ItemPickListsApi* | [**createItemPickListEntryAsync**](docs/ItemPickListsApi.md#createitempicklistentryasync) | **POST** /api/v2/LogisticsService/ItemPickLists/{pickListId}/Entries | Create a pick list entry
*ItemPickListsApi* | [**deleteItemPickListAsync**](docs/ItemPickListsApi.md#deleteitempicklistasync) | **DELETE** /api/v2/LogisticsService/ItemPickLists/{pickListId} | Delete an item pick list
*ItemPickListsApi* | [**deleteItemPickListEntryAsync**](docs/ItemPickListsApi.md#deleteitempicklistentryasync) | **DELETE** /api/v2/LogisticsService/ItemPickLists/{pickListId}/Entries/{entryId} | Delete a pick list entry
*ItemPickListsApi* | [**getItemPickListByIdAsync**](docs/ItemPickListsApi.md#getitempicklistbyidasync) | **GET** /api/v2/LogisticsService/ItemPickLists/{pickListId} | Get item pick list by ID
*ItemPickListsApi* | [**getItemPickListEntriesAsync**](docs/ItemPickListsApi.md#getitempicklistentriesasync) | **GET** /api/v2/LogisticsService/ItemPickLists/{pickListId}/Entries | Get pick list entries
*ItemPickListsApi* | [**getItemPickListEntriesCountAsync**](docs/ItemPickListsApi.md#getitempicklistentriescountasync) | **GET** /api/v2/LogisticsService/ItemPickLists/{pickListId}/Entries/Count | Get pick list entries count
*ItemPickListsApi* | [**getItemPickListEntryByIdAsync**](docs/ItemPickListsApi.md#getitempicklistentrybyidasync) | **GET** /api/v2/LogisticsService/ItemPickLists/{pickListId}/Entries/{entryId} | Get pick list entry by ID
*ItemPickListsApi* | [**getItemPickListsAsync**](docs/ItemPickListsApi.md#getitempicklistsasync) | **GET** /api/v2/LogisticsService/ItemPickLists | Get all item pick lists
*ItemPickListsApi* | [**getItemPickListsCountAsync**](docs/ItemPickListsApi.md#getitempicklistscountasync) | **GET** /api/v2/LogisticsService/ItemPickLists/Count | Get item pick lists count
*ItemPickListsApi* | [**updateItemPickListAsync**](docs/ItemPickListsApi.md#updateitempicklistasync) | **PUT** /api/v2/LogisticsService/ItemPickLists/{pickListId} | Update an item pick list
*ItemPickListsApi* | [**updateItemPickListEntryAsync**](docs/ItemPickListsApi.md#updateitempicklistentryasync) | **PUT** /api/v2/LogisticsService/ItemPickLists/{pickListId}/Entries/{entryId} | Update a pick list entry
*ItemRestocksApi* | [**createItemRestockAsync**](docs/ItemRestocksApi.md#createitemrestockasync) | **POST** /api/v2/LogisticsService/ItemRestocks | Create an item restock
*ItemRestocksApi* | [**createItemRestockEntryAsync**](docs/ItemRestocksApi.md#createitemrestockentryasync) | **POST** /api/v2/LogisticsService/ItemRestocks/{restockId}/Entries | Create a restock entry
*ItemRestocksApi* | [**deleteItemRestockAsync**](docs/ItemRestocksApi.md#deleteitemrestockasync) | **DELETE** /api/v2/LogisticsService/ItemRestocks/{restockId} | Delete an item restock
*ItemRestocksApi* | [**deleteItemRestockEntryAsync**](docs/ItemRestocksApi.md#deleteitemrestockentryasync) | **DELETE** /api/v2/LogisticsService/ItemRestocks/{restockId}/Entries/{entryId} | Delete a restock entry
*ItemRestocksApi* | [**getItemRestockByIdAsync**](docs/ItemRestocksApi.md#getitemrestockbyidasync) | **GET** /api/v2/LogisticsService/ItemRestocks/{restockId} | Get item restock by ID
*ItemRestocksApi* | [**getItemRestockEntriesAsync**](docs/ItemRestocksApi.md#getitemrestockentriesasync) | **GET** /api/v2/LogisticsService/ItemRestocks/{restockId}/Entries | Get restock entries
*ItemRestocksApi* | [**getItemRestockEntriesCountAsync**](docs/ItemRestocksApi.md#getitemrestockentriescountasync) | **GET** /api/v2/LogisticsService/ItemRestocks/{restockId}/Entries/Count | Get restock entries count
*ItemRestocksApi* | [**getItemRestockEntryByIdAsync**](docs/ItemRestocksApi.md#getitemrestockentrybyidasync) | **GET** /api/v2/LogisticsService/ItemRestocks/{restockId}/Entries/{entryId} | Get restock entry by ID
*ItemRestocksApi* | [**getItemRestocksAsync**](docs/ItemRestocksApi.md#getitemrestocksasync) | **GET** /api/v2/LogisticsService/ItemRestocks | Get all item restocks
*ItemRestocksApi* | [**getItemRestocksCountAsync**](docs/ItemRestocksApi.md#getitemrestockscountasync) | **GET** /api/v2/LogisticsService/ItemRestocks/Count | Get item restocks count
*ItemRestocksApi* | [**updateItemRestockAsync**](docs/ItemRestocksApi.md#updateitemrestockasync) | **PUT** /api/v2/LogisticsService/ItemRestocks/{restockId} | Update an item restock
*ItemRestocksApi* | [**updateItemRestockEntryAsync**](docs/ItemRestocksApi.md#updateitemrestockentryasync) | **PUT** /api/v2/LogisticsService/ItemRestocks/{restockId}/Entries/{entryId} | Update a restock entry
*ItemRetainSamplesApi* | [**createItemRetainSampleAsync**](docs/ItemRetainSamplesApi.md#createitemretainsampleasync) | **POST** /api/v2/LogisticsService/ItemRetainSamples | Create an item retain sample
*ItemRetainSamplesApi* | [**deleteItemRetainSampleAsync**](docs/ItemRetainSamplesApi.md#deleteitemretainsampleasync) | **DELETE** /api/v2/LogisticsService/ItemRetainSamples/{retainSampleId} | Delete an item retain sample
*ItemRetainSamplesApi* | [**getItemRetainSampleByIdAsync**](docs/ItemRetainSamplesApi.md#getitemretainsamplebyidasync) | **GET** /api/v2/LogisticsService/ItemRetainSamples/{retainSampleId} | Get item retain sample by ID
*ItemRetainSamplesApi* | [**getItemRetainSamplesAsync**](docs/ItemRetainSamplesApi.md#getitemretainsamplesasync) | **GET** /api/v2/LogisticsService/ItemRetainSamples | Get all item retain samples
*ItemRetainSamplesApi* | [**getItemRetainSamplesCountAsync**](docs/ItemRetainSamplesApi.md#getitemretainsamplescountasync) | **GET** /api/v2/LogisticsService/ItemRetainSamples/Count | Get item retain samples count
*ItemRetainSamplesApi* | [**updateItemRetainSampleAsync**](docs/ItemRetainSamplesApi.md#updateitemretainsampleasync) | **PUT** /api/v2/LogisticsService/ItemRetainSamples/{retainSampleId} | Update an item retain sample
*PortsApi* | [**createPortAsync**](docs/PortsApi.md#createportasync) | **POST** /api/v2/LogisticsService/Ports | Create a port
*PortsApi* | [**deletePortAsync**](docs/PortsApi.md#deleteportasync) | **DELETE** /api/v2/LogisticsService/Ports/{portId} | Delete a port
*PortsApi* | [**getPortByIdAsync**](docs/PortsApi.md#getportbyidasync) | **GET** /api/v2/LogisticsService/Ports/{portId} | Get port by ID
*PortsApi* | [**getPortsAsync**](docs/PortsApi.md#getportsasync) | **GET** /api/v2/LogisticsService/Ports | Get all ports
*PortsApi* | [**getPortsCountAsync**](docs/PortsApi.md#getportscountasync) | **GET** /api/v2/LogisticsService/Ports/Count | Get ports count
*PortsApi* | [**updatePortAsync**](docs/PortsApi.md#updateportasync) | **PUT** /api/v2/LogisticsService/Ports/{portId} | Update a port
*ProofsOfDeliveryApi* | [**addProofOfDeliveryLineAsync**](docs/ProofsOfDeliveryApi.md#addproofofdeliverylineasync) | **POST** /api/v2/LogisticsService/ProofsOfDelivery/{podId}/Lines | Add a line to proof of delivery
*ProofsOfDeliveryApi* | [**attachDeliveryNoteAsync**](docs/ProofsOfDeliveryApi.md#attachdeliverynoteasync) | **POST** /api/v2/LogisticsService/ProofsOfDelivery/{podId}/DeliveryNotes/{noteId} | Attach a delivery note
*ProofsOfDeliveryApi* | [**createProofOfDeliveryAsync**](docs/ProofsOfDeliveryApi.md#createproofofdeliveryasync) | **POST** /api/v2/LogisticsService/ProofsOfDelivery | Create a proof of delivery
*ProofsOfDeliveryApi* | [**deleteProofOfDeliveryAsync**](docs/ProofsOfDeliveryApi.md#deleteproofofdeliveryasync) | **DELETE** /api/v2/LogisticsService/ProofsOfDelivery/{podId} | Delete a proof of delivery
*ProofsOfDeliveryApi* | [**detachDeliveryNoteAsync**](docs/ProofsOfDeliveryApi.md#detachdeliverynoteasync) | **DELETE** /api/v2/LogisticsService/ProofsOfDelivery/{podId}/DeliveryNotes/{noteId} | Detach a delivery note
*ProofsOfDeliveryApi* | [**disputeProofOfDeliveryAsync**](docs/ProofsOfDeliveryApi.md#disputeproofofdeliveryasync) | **POST** /api/v2/LogisticsService/ProofsOfDelivery/{podId}/Dispute | Dispute a proof of delivery
*ProofsOfDeliveryApi* | [**getProofOfDeliveryByIdAsync**](docs/ProofsOfDeliveryApi.md#getproofofdeliverybyidasync) | **GET** /api/v2/LogisticsService/ProofsOfDelivery/{podId} | Get proof of delivery by ID
*ProofsOfDeliveryApi* | [**getProofOfDeliveryDeliveryNotesAsync**](docs/ProofsOfDeliveryApi.md#getproofofdeliverydeliverynotesasync) | **GET** /api/v2/LogisticsService/ProofsOfDelivery/{podId}/DeliveryNotes | Get attached delivery notes
*ProofsOfDeliveryApi* | [**getProofOfDeliveryDeliveryNotesCountAsync**](docs/ProofsOfDeliveryApi.md#getproofofdeliverydeliverynotescountasync) | **GET** /api/v2/LogisticsService/ProofsOfDelivery/{podId}/DeliveryNotes/Count | Get delivery notes count
*ProofsOfDeliveryApi* | [**getProofOfDeliveryLinesAsync**](docs/ProofsOfDeliveryApi.md#getproofofdeliverylinesasync) | **GET** /api/v2/LogisticsService/ProofsOfDelivery/{podId}/Lines | Get proof of delivery lines
*ProofsOfDeliveryApi* | [**getProofOfDeliveryLinesCountAsync**](docs/ProofsOfDeliveryApi.md#getproofofdeliverylinescountasync) | **GET** /api/v2/LogisticsService/ProofsOfDelivery/{podId}/Lines/Count | Get proof of delivery lines count
*ProofsOfDeliveryApi* | [**getProofsOfDeliveryAsync**](docs/ProofsOfDeliveryApi.md#getproofsofdeliveryasync) | **GET** /api/v2/LogisticsService/ProofsOfDelivery | Get all proofs of delivery
*ProofsOfDeliveryApi* | [**getProofsOfDeliveryCountAsync**](docs/ProofsOfDeliveryApi.md#getproofsofdeliverycountasync) | **GET** /api/v2/LogisticsService/ProofsOfDelivery/Count | Get proofs of delivery count
*ProofsOfDeliveryApi* | [**rejectProofOfDeliveryAsync**](docs/ProofsOfDeliveryApi.md#rejectproofofdeliveryasync) | **POST** /api/v2/LogisticsService/ProofsOfDelivery/{podId}/Reject | Reject a proof of delivery
*ProofsOfDeliveryApi* | [**removeProofOfDeliveryLineAsync**](docs/ProofsOfDeliveryApi.md#removeproofofdeliverylineasync) | **DELETE** /api/v2/LogisticsService/ProofsOfDelivery/{podId}/Lines/{lineId} | Remove a proof of delivery line
*ProofsOfDeliveryApi* | [**signProofOfDeliveryAsync**](docs/ProofsOfDeliveryApi.md#signproofofdeliveryasync) | **POST** /api/v2/LogisticsService/ProofsOfDelivery/{podId}/Sign | Sign a proof of delivery
*ProofsOfDeliveryApi* | [**updateProofOfDeliveryAsync**](docs/ProofsOfDeliveryApi.md#updateproofofdeliveryasync) | **PUT** /api/v2/LogisticsService/ProofsOfDelivery/{podId} | Update a proof of delivery
*ProofsOfDeliveryApi* | [**updateProofOfDeliveryLineAsync**](docs/ProofsOfDeliveryApi.md#updateproofofdeliverylineasync) | **PUT** /api/v2/LogisticsService/ProofsOfDelivery/{podId}/Lines/{lineId} | Update a proof of delivery line
*RailWaybillsApi* | [**addRailWaybillLineAsync**](docs/RailWaybillsApi.md#addrailwaybilllineasync) | **POST** /api/v2/LogisticsService/RailWaybills/{waybillId}/Lines | Add a line to rail waybill
*RailWaybillsApi* | [**cancelRailWaybillAsync**](docs/RailWaybillsApi.md#cancelrailwaybillasync) | **POST** /api/v2/LogisticsService/RailWaybills/{waybillId}/Cancel | Cancel a rail waybill
*RailWaybillsApi* | [**createRailWaybillAsync**](docs/RailWaybillsApi.md#createrailwaybillasync) | **POST** /api/v2/LogisticsService/RailWaybills | Create a rail waybill
*RailWaybillsApi* | [**deleteRailWaybillAsync**](docs/RailWaybillsApi.md#deleterailwaybillasync) | **DELETE** /api/v2/LogisticsService/RailWaybills/{waybillId} | Delete a rail waybill
*RailWaybillsApi* | [**getRailWaybillByIdAsync**](docs/RailWaybillsApi.md#getrailwaybillbyidasync) | **GET** /api/v2/LogisticsService/RailWaybills/{waybillId} | Get rail waybill by ID
*RailWaybillsApi* | [**getRailWaybillLinesAsync**](docs/RailWaybillsApi.md#getrailwaybilllinesasync) | **GET** /api/v2/LogisticsService/RailWaybills/{waybillId}/Lines | Get rail waybill lines
*RailWaybillsApi* | [**getRailWaybillLinesCountAsync**](docs/RailWaybillsApi.md#getrailwaybilllinescountasync) | **GET** /api/v2/LogisticsService/RailWaybills/{waybillId}/Lines/Count | Get rail waybill lines count
*RailWaybillsApi* | [**getRailWaybillsAsync**](docs/RailWaybillsApi.md#getrailwaybillsasync) | **GET** /api/v2/LogisticsService/RailWaybills | Get all rail waybills
*RailWaybillsApi* | [**getRailWaybillsCountAsync**](docs/RailWaybillsApi.md#getrailwaybillscountasync) | **GET** /api/v2/LogisticsService/RailWaybills/Count | Get rail waybills count
*RailWaybillsApi* | [**issueRailWaybillAsync**](docs/RailWaybillsApi.md#issuerailwaybillasync) | **POST** /api/v2/LogisticsService/RailWaybills/{waybillId}/Issue | Issue a rail waybill
*RailWaybillsApi* | [**markRailWaybillDeliveredAsync**](docs/RailWaybillsApi.md#markrailwaybilldeliveredasync) | **POST** /api/v2/LogisticsService/RailWaybills/{waybillId}/MarkDelivered | Mark rail waybill delivered
*RailWaybillsApi* | [**markRailWaybillInTransitAsync**](docs/RailWaybillsApi.md#markrailwaybillintransitasync) | **POST** /api/v2/LogisticsService/RailWaybills/{waybillId}/MarkInTransit | Mark rail waybill in transit
*RailWaybillsApi* | [**removeRailWaybillLineAsync**](docs/RailWaybillsApi.md#removerailwaybilllineasync) | **DELETE** /api/v2/LogisticsService/RailWaybills/{waybillId}/Lines/{lineId} | Remove a rail waybill line
*RailWaybillsApi* | [**updateRailWaybillAsync**](docs/RailWaybillsApi.md#updaterailwaybillasync) | **PUT** /api/v2/LogisticsService/RailWaybills/{waybillId} | Update a rail waybill
*RailWaybillsApi* | [**updateRailWaybillLineAsync**](docs/RailWaybillsApi.md#updaterailwaybilllineasync) | **PUT** /api/v2/LogisticsService/RailWaybills/{waybillId}/Lines/{lineId} | Update a rail waybill line
*RoadWaybillsApi* | [**addRoadWaybillLineAsync**](docs/RoadWaybillsApi.md#addroadwaybilllineasync) | **POST** /api/v2/LogisticsService/RoadWaybills/{waybillId}/Lines | Add a line to road waybill
*RoadWaybillsApi* | [**cancelRoadWaybillAsync**](docs/RoadWaybillsApi.md#cancelroadwaybillasync) | **POST** /api/v2/LogisticsService/RoadWaybills/{waybillId}/Cancel | Cancel a road waybill
*RoadWaybillsApi* | [**createRoadWaybillAsync**](docs/RoadWaybillsApi.md#createroadwaybillasync) | **POST** /api/v2/LogisticsService/RoadWaybills | Create a road waybill
*RoadWaybillsApi* | [**deleteRoadWaybillAsync**](docs/RoadWaybillsApi.md#deleteroadwaybillasync) | **DELETE** /api/v2/LogisticsService/RoadWaybills/{waybillId} | Delete a road waybill
*RoadWaybillsApi* | [**disputeRoadWaybillAsync**](docs/RoadWaybillsApi.md#disputeroadwaybillasync) | **POST** /api/v2/LogisticsService/RoadWaybills/{waybillId}/Dispute | Dispute a road waybill
*RoadWaybillsApi* | [**getRoadWaybillByIdAsync**](docs/RoadWaybillsApi.md#getroadwaybillbyidasync) | **GET** /api/v2/LogisticsService/RoadWaybills/{waybillId} | Get road waybill by ID
*RoadWaybillsApi* | [**getRoadWaybillLinesAsync**](docs/RoadWaybillsApi.md#getroadwaybilllinesasync) | **GET** /api/v2/LogisticsService/RoadWaybills/{waybillId}/Lines | Get road waybill lines
*RoadWaybillsApi* | [**getRoadWaybillLinesCountAsync**](docs/RoadWaybillsApi.md#getroadwaybilllinescountasync) | **GET** /api/v2/LogisticsService/RoadWaybills/{waybillId}/Lines/Count | Get road waybill lines count
*RoadWaybillsApi* | [**getRoadWaybillsAsync**](docs/RoadWaybillsApi.md#getroadwaybillsasync) | **GET** /api/v2/LogisticsService/RoadWaybills | Get all road waybills
*RoadWaybillsApi* | [**getRoadWaybillsCountAsync**](docs/RoadWaybillsApi.md#getroadwaybillscountasync) | **GET** /api/v2/LogisticsService/RoadWaybills/Count | Get road waybills count
*RoadWaybillsApi* | [**issueRoadWaybillAsync**](docs/RoadWaybillsApi.md#issueroadwaybillasync) | **POST** /api/v2/LogisticsService/RoadWaybills/{waybillId}/Issue | Issue a road waybill
*RoadWaybillsApi* | [**markRoadWaybillDeliveredAsync**](docs/RoadWaybillsApi.md#markroadwaybilldeliveredasync) | **POST** /api/v2/LogisticsService/RoadWaybills/{waybillId}/MarkDelivered | Mark road waybill delivered
*RoadWaybillsApi* | [**markRoadWaybillInTransitAsync**](docs/RoadWaybillsApi.md#markroadwaybillintransitasync) | **POST** /api/v2/LogisticsService/RoadWaybills/{waybillId}/MarkInTransit | Mark road waybill in transit
*RoadWaybillsApi* | [**removeRoadWaybillLineAsync**](docs/RoadWaybillsApi.md#removeroadwaybilllineasync) | **DELETE** /api/v2/LogisticsService/RoadWaybills/{waybillId}/Lines/{lineId} | Remove a road waybill line
*RoadWaybillsApi* | [**updateRoadWaybillAsync**](docs/RoadWaybillsApi.md#updateroadwaybillasync) | **PUT** /api/v2/LogisticsService/RoadWaybills/{waybillId} | Update a road waybill
*RoadWaybillsApi* | [**updateRoadWaybillLineAsync**](docs/RoadWaybillsApi.md#updateroadwaybilllineasync) | **PUT** /api/v2/LogisticsService/RoadWaybills/{waybillId}/Lines/{lineId} | Update a road waybill line
*SeawayBillsApi* | [**addSeawayBillLineAsync**](docs/SeawayBillsApi.md#addseawaybilllineasync) | **POST** /api/v2/LogisticsService/SeawayBills/{billId}/Lines | Add a line to seaway bill
*SeawayBillsApi* | [**cancelSeawayBillAsync**](docs/SeawayBillsApi.md#cancelseawaybillasync) | **POST** /api/v2/LogisticsService/SeawayBills/{billId}/Cancel | Cancel a seaway bill
*SeawayBillsApi* | [**createSeawayBillAsync**](docs/SeawayBillsApi.md#createseawaybillasync) | **POST** /api/v2/LogisticsService/SeawayBills | Create a seaway bill
*SeawayBillsApi* | [**deleteSeawayBillAsync**](docs/SeawayBillsApi.md#deleteseawaybillasync) | **DELETE** /api/v2/LogisticsService/SeawayBills/{billId} | Delete a seaway bill
*SeawayBillsApi* | [**getSeawayBillByIdAsync**](docs/SeawayBillsApi.md#getseawaybillbyidasync) | **GET** /api/v2/LogisticsService/SeawayBills/{billId} | Get seaway bill by ID
*SeawayBillsApi* | [**getSeawayBillLinesAsync**](docs/SeawayBillsApi.md#getseawaybilllinesasync) | **GET** /api/v2/LogisticsService/SeawayBills/{billId}/Lines | Get seaway bill lines
*SeawayBillsApi* | [**getSeawayBillLinesCountAsync**](docs/SeawayBillsApi.md#getseawaybilllinescountasync) | **GET** /api/v2/LogisticsService/SeawayBills/{billId}/Lines/Count | Get seaway bill lines count
*SeawayBillsApi* | [**getSeawayBillsAsync**](docs/SeawayBillsApi.md#getseawaybillsasync) | **GET** /api/v2/LogisticsService/SeawayBills | Get all seaway bills
*SeawayBillsApi* | [**getSeawayBillsCountAsync**](docs/SeawayBillsApi.md#getseawaybillscountasync) | **GET** /api/v2/LogisticsService/SeawayBills/Count | Get seaway bills count
*SeawayBillsApi* | [**issueSeawayBillAsync**](docs/SeawayBillsApi.md#issueseawaybillasync) | **POST** /api/v2/LogisticsService/SeawayBills/{billId}/Issue | Issue a seaway bill
*SeawayBillsApi* | [**markSeawayBillArrivedAsync**](docs/SeawayBillsApi.md#markseawaybillarrivedasync) | **POST** /api/v2/LogisticsService/SeawayBills/{billId}/MarkArrived | Mark seaway bill arrived
*SeawayBillsApi* | [**markSeawayBillInTransitAsync**](docs/SeawayBillsApi.md#markseawaybillintransitasync) | **POST** /api/v2/LogisticsService/SeawayBills/{billId}/MarkInTransit | Mark seaway bill in transit
*SeawayBillsApi* | [**releaseSeawayBillAsync**](docs/SeawayBillsApi.md#releaseseawaybillasync) | **POST** /api/v2/LogisticsService/SeawayBills/{billId}/Release | Release a seaway bill
*SeawayBillsApi* | [**removeSeawayBillLineAsync**](docs/SeawayBillsApi.md#removeseawaybilllineasync) | **DELETE** /api/v2/LogisticsService/SeawayBills/{billId}/Lines/{lineId} | Remove a seaway bill line
*SeawayBillsApi* | [**updateSeawayBillAsync**](docs/SeawayBillsApi.md#updateseawaybillasync) | **PUT** /api/v2/LogisticsService/SeawayBills/{billId} | Update a seaway bill
*SeawayBillsApi* | [**updateSeawayBillLineAsync**](docs/SeawayBillsApi.md#updateseawaybilllineasync) | **PUT** /api/v2/LogisticsService/SeawayBills/{billId}/Lines/{lineId} | Update a seaway bill line
*SupplierProfilesApi* | [**createSupplierProfileAsync**](docs/SupplierProfilesApi.md#createsupplierprofileasync) | **POST** /api/v2/LogisticsService/SupplierProfiles | Create a supplier profile
*SupplierProfilesApi* | [**deleteSupplierProfileAsync**](docs/SupplierProfilesApi.md#deletesupplierprofileasync) | **DELETE** /api/v2/LogisticsService/SupplierProfiles/{supplierProfileId} | Delete a supplier profile
*SupplierProfilesApi* | [**getSupplierProfileByIdAsync**](docs/SupplierProfilesApi.md#getsupplierprofilebyidasync) | **GET** /api/v2/LogisticsService/SupplierProfiles/{supplierProfileId} | Get supplier profile by ID
*SupplierProfilesApi* | [**getSupplierProfilesAsync**](docs/SupplierProfilesApi.md#getsupplierprofilesasync) | **GET** /api/v2/LogisticsService/SupplierProfiles | Get all supplier profiles
*SupplierProfilesApi* | [**getSupplierProfilesCountAsync**](docs/SupplierProfilesApi.md#getsupplierprofilescountasync) | **GET** /api/v2/LogisticsService/SupplierProfiles/Count | Get supplier profiles count
*SupplierProfilesApi* | [**updateSupplierProfileAsync**](docs/SupplierProfilesApi.md#updatesupplierprofileasync) | **PUT** /api/v2/LogisticsService/SupplierProfiles/{supplierProfileId} | Update a supplier profile
*TruckDriversApi* | [**activateTruckDriverAsync**](docs/TruckDriversApi.md#activatetruckdriverasync) | **POST** /api/v2/LogisticsService/TruckDrivers/{driverId}/Activate | Activate a truck driver
*TruckDriversApi* | [**createTruckDriverAsync**](docs/TruckDriversApi.md#createtruckdriverasync) | **POST** /api/v2/LogisticsService/TruckDrivers | Create a truck driver
*TruckDriversApi* | [**deactivateTruckDriverAsync**](docs/TruckDriversApi.md#deactivatetruckdriverasync) | **POST** /api/v2/LogisticsService/TruckDrivers/{driverId}/Deactivate | Deactivate a truck driver
*TruckDriversApi* | [**deleteTruckDriverAsync**](docs/TruckDriversApi.md#deletetruckdriverasync) | **DELETE** /api/v2/LogisticsService/TruckDrivers/{driverId} | Delete a truck driver
*TruckDriversApi* | [**getTruckDriverByIdAsync**](docs/TruckDriversApi.md#gettruckdriverbyidasync) | **GET** /api/v2/LogisticsService/TruckDrivers/{driverId} | Get truck driver by ID
*TruckDriversApi* | [**getTruckDriversAsync**](docs/TruckDriversApi.md#gettruckdriversasync) | **GET** /api/v2/LogisticsService/TruckDrivers | Get all truck drivers
*TruckDriversApi* | [**getTruckDriversCountAsync**](docs/TruckDriversApi.md#gettruckdriverscountasync) | **GET** /api/v2/LogisticsService/TruckDrivers/Count | Get truck drivers count
*TruckDriversApi* | [**updateTruckDriverAsync**](docs/TruckDriversApi.md#updatetruckdriverasync) | **PUT** /api/v2/LogisticsService/TruckDrivers/{driverId} | Update a truck driver
*TrucksApi* | [**arriveTripAsync**](docs/TrucksApi.md#arrivetripasync) | **POST** /api/v2/LogisticsService/Trucks/{truckId}/Trips/{tripId}/Arrive | Arrive a trip
*TrucksApi* | [**cancelTripAsync**](docs/TrucksApi.md#canceltripasync) | **POST** /api/v2/LogisticsService/Trucks/{truckId}/Trips/{tripId}/Cancel | Cancel a trip
*TrucksApi* | [**createTruckAsync**](docs/TrucksApi.md#createtruckasync) | **POST** /api/v2/LogisticsService/Trucks | Create a truck
*TrucksApi* | [**createTruckTripAsync**](docs/TrucksApi.md#createtrucktripasync) | **POST** /api/v2/LogisticsService/Trucks/{truckId}/Trips | Create a truck trip
*TrucksApi* | [**deleteTruckAsync**](docs/TrucksApi.md#deletetruckasync) | **DELETE** /api/v2/LogisticsService/Trucks/{truckId} | Delete a truck
*TrucksApi* | [**deleteTruckTripAsync**](docs/TrucksApi.md#deletetrucktripasync) | **DELETE** /api/v2/LogisticsService/Trucks/{truckId}/Trips/{tripId} | Delete a truck trip
*TrucksApi* | [**deliverTripAsync**](docs/TrucksApi.md#delivertripasync) | **POST** /api/v2/LogisticsService/Trucks/{truckId}/Trips/{tripId}/Deliver | Deliver a trip
*TrucksApi* | [**departTripAsync**](docs/TrucksApi.md#departtripasync) | **POST** /api/v2/LogisticsService/Trucks/{truckId}/Trips/{tripId}/Depart | Depart a trip
*TrucksApi* | [**dispatchTripAsync**](docs/TrucksApi.md#dispatchtripasync) | **POST** /api/v2/LogisticsService/Trucks/{truckId}/Trips/{tripId}/Dispatch | Dispatch a trip
*TrucksApi* | [**getTruckByIdAsync**](docs/TrucksApi.md#gettruckbyidasync) | **GET** /api/v2/LogisticsService/Trucks/{truckId} | Get truck by ID
*TrucksApi* | [**getTruckTripsAsync**](docs/TrucksApi.md#gettrucktripsasync) | **GET** /api/v2/LogisticsService/Trucks/{truckId}/Trips | Get truck trips
*TrucksApi* | [**getTruckTripsCountAsync**](docs/TrucksApi.md#gettrucktripscountasync) | **GET** /api/v2/LogisticsService/Trucks/{truckId}/Trips/Count | Get truck trips count
*TrucksApi* | [**getTrucksAsync**](docs/TrucksApi.md#gettrucksasync) | **GET** /api/v2/LogisticsService/Trucks | Get all trucks
*TrucksApi* | [**getTrucksCountAsync**](docs/TrucksApi.md#gettruckscountasync) | **GET** /api/v2/LogisticsService/Trucks/Count | Get trucks count
*TrucksApi* | [**updateTruckAsync**](docs/TrucksApi.md#updatetruckasync) | **PUT** /api/v2/LogisticsService/Trucks/{truckId} | Update a truck
*TrucksApi* | [**updateTruckTripAsync**](docs/TrucksApi.md#updatetrucktripasync) | **PUT** /api/v2/LogisticsService/Trucks/{truckId}/Trips/{tripId} | Update a truck trip
*VesselsApi* | [**createVesselAsync**](docs/VesselsApi.md#createvesselasync) | **POST** /api/v2/LogisticsService/Vessels | Create a vessel
*VesselsApi* | [**deleteVesselAsync**](docs/VesselsApi.md#deletevesselasync) | **DELETE** /api/v2/LogisticsService/Vessels/{vesselId} | Delete a vessel
*VesselsApi* | [**getVesselByIdAsync**](docs/VesselsApi.md#getvesselbyidasync) | **GET** /api/v2/LogisticsService/Vessels/{vesselId} | Get vessel by ID
*VesselsApi* | [**getVesselsAsync**](docs/VesselsApi.md#getvesselsasync) | **GET** /api/v2/LogisticsService/Vessels | Get all vessels
*VesselsApi* | [**getVesselsCountAsync**](docs/VesselsApi.md#getvesselscountasync) | **GET** /api/v2/LogisticsService/Vessels/Count | Get vessels count
*VesselsApi* | [**updateVesselAsync**](docs/VesselsApi.md#updatevesselasync) | **PUT** /api/v2/LogisticsService/Vessels/{vesselId} | Update a vessel
*VoyagesApi* | [**cancelVoyageAsync**](docs/VoyagesApi.md#cancelvoyageasync) | **POST** /api/v2/LogisticsService/Voyages/{voyageId}/Cancel | Cancel a voyage
*VoyagesApi* | [**completeVoyageAsync**](docs/VoyagesApi.md#completevoyageasync) | **POST** /api/v2/LogisticsService/Voyages/{voyageId}/Complete | Complete a voyage
*VoyagesApi* | [**createVoyageAsync**](docs/VoyagesApi.md#createvoyageasync) | **POST** /api/v2/LogisticsService/Voyages | Create a voyage
*VoyagesApi* | [**createVoyagePortCallAsync**](docs/VoyagesApi.md#createvoyageportcallasync) | **POST** /api/v2/LogisticsService/Voyages/{voyageId}/PortCalls | Create a port call
*VoyagesApi* | [**deleteVoyageAsync**](docs/VoyagesApi.md#deletevoyageasync) | **DELETE** /api/v2/LogisticsService/Voyages/{voyageId} | Delete a voyage
*VoyagesApi* | [**deleteVoyagePortCallAsync**](docs/VoyagesApi.md#deletevoyageportcallasync) | **DELETE** /api/v2/LogisticsService/Voyages/{voyageId}/PortCalls/{portCallId} | Delete a port call
*VoyagesApi* | [**getVoyageByIdAsync**](docs/VoyagesApi.md#getvoyagebyidasync) | **GET** /api/v2/LogisticsService/Voyages/{voyageId} | Get voyage by ID
*VoyagesApi* | [**getVoyagePortCallsAsync**](docs/VoyagesApi.md#getvoyageportcallsasync) | **GET** /api/v2/LogisticsService/Voyages/{voyageId}/PortCalls | Get voyage port calls
*VoyagesApi* | [**getVoyagePortCallsCountAsync**](docs/VoyagesApi.md#getvoyageportcallscountasync) | **GET** /api/v2/LogisticsService/Voyages/{voyageId}/PortCalls/Count | Get voyage port calls count
*VoyagesApi* | [**getVoyagesAsync**](docs/VoyagesApi.md#getvoyagesasync) | **GET** /api/v2/LogisticsService/Voyages | Get all voyages
*VoyagesApi* | [**getVoyagesCountAsync**](docs/VoyagesApi.md#getvoyagescountasync) | **GET** /api/v2/LogisticsService/Voyages/Count | Get voyages count
*VoyagesApi* | [**startVoyageAsync**](docs/VoyagesApi.md#startvoyageasync) | **POST** /api/v2/LogisticsService/Voyages/{voyageId}/Start | Start a voyage
*VoyagesApi* | [**updateVoyageAsync**](docs/VoyagesApi.md#updatevoyageasync) | **PUT** /api/v2/LogisticsService/Voyages/{voyageId} | Update a voyage
*VoyagesApi* | [**updateVoyagePortCallAsync**](docs/VoyagesApi.md#updatevoyageportcallasync) | **PUT** /api/v2/LogisticsService/Voyages/{voyageId}/PortCalls/{portCallId} | Update a port call
*WarehousesApi* | [**createWarehouseAsync**](docs/WarehousesApi.md#createwarehouseasync) | **POST** /api/v2/LogisticsService/Warehouses | Create a warehouse
*WarehousesApi* | [**deleteWarehouseAsync**](docs/WarehousesApi.md#deletewarehouseasync) | **DELETE** /api/v2/LogisticsService/Warehouses/{warehouseId} | Delete a warehouse
*WarehousesApi* | [**getWarehouseByIdAsync**](docs/WarehousesApi.md#getwarehousebyidasync) | **GET** /api/v2/LogisticsService/Warehouses/{warehouseId} | Get warehouse by ID
*WarehousesApi* | [**getWarehousesAsync**](docs/WarehousesApi.md#getwarehousesasync) | **GET** /api/v2/LogisticsService/Warehouses | Get all warehouses
*WarehousesApi* | [**getWarehousesCountAsync**](docs/WarehousesApi.md#getwarehousescountasync) | **GET** /api/v2/LogisticsService/Warehouses/Count | Get warehouses count
*WarehousesApi* | [**updateWarehouseAsync**](docs/WarehousesApi.md#updatewarehouseasync) | **PUT** /api/v2/LogisticsService/Warehouses/{warehouseId} | Update a warehouse


## Documentation For Models

 - [AccessTokenResponse](docs/AccessTokenResponse.md)
 - [AirwayBillCreateDto](docs/AirwayBillCreateDto.md)
 - [AirwayBillDto](docs/AirwayBillDto.md)
 - [AirwayBillDtoEnvelope](docs/AirwayBillDtoEnvelope.md)
 - [AirwayBillDtoListEnvelope](docs/AirwayBillDtoListEnvelope.md)
 - [AirwayBillUpdateDto](docs/AirwayBillUpdateDto.md)
 - [ContactDto](docs/ContactDto.md)
 - [DeliveryNoteCreateDto](docs/DeliveryNoteCreateDto.md)
 - [DeliveryNoteDto](docs/DeliveryNoteDto.md)
 - [DeliveryNoteDtoEnvelope](docs/DeliveryNoteDtoEnvelope.md)
 - [DeliveryNoteDtoListEnvelope](docs/DeliveryNoteDtoListEnvelope.md)
 - [DeliveryNoteUpdateDto](docs/DeliveryNoteUpdateDto.md)
 - [DisputeProofOfDeliveryRequest](docs/DisputeProofOfDeliveryRequest.md)
 - [EmptyEnvelope](docs/EmptyEnvelope.md)
 - [ErrorEnvelope](docs/ErrorEnvelope.md)
 - [ForgotPasswordRequest](docs/ForgotPasswordRequest.md)
 - [HttpValidationProblemDetails](docs/HttpValidationProblemDetails.md)
 - [InfoRequest](docs/InfoRequest.md)
 - [InfoResponse](docs/InfoResponse.md)
 - [Int32Envelope](docs/Int32Envelope.md)
 - [ItemPackingSlipCreateDto](docs/ItemPackingSlipCreateDto.md)
 - [ItemPackingSlipDto](docs/ItemPackingSlipDto.md)
 - [ItemPackingSlipDtoEnvelope](docs/ItemPackingSlipDtoEnvelope.md)
 - [ItemPackingSlipDtoListEnvelope](docs/ItemPackingSlipDtoListEnvelope.md)
 - [ItemPackingSlipEntryCreateDto](docs/ItemPackingSlipEntryCreateDto.md)
 - [ItemPackingSlipEntryDto](docs/ItemPackingSlipEntryDto.md)
 - [ItemPackingSlipEntryDtoEnvelope](docs/ItemPackingSlipEntryDtoEnvelope.md)
 - [ItemPackingSlipEntryDtoListEnvelope](docs/ItemPackingSlipEntryDtoListEnvelope.md)
 - [ItemPackingSlipEntryUpdateDto](docs/ItemPackingSlipEntryUpdateDto.md)
 - [ItemPackingSlipUpdateDto](docs/ItemPackingSlipUpdateDto.md)
 - [ItemPickListCreateDto](docs/ItemPickListCreateDto.md)
 - [ItemPickListDto](docs/ItemPickListDto.md)
 - [ItemPickListDtoEnvelope](docs/ItemPickListDtoEnvelope.md)
 - [ItemPickListDtoListEnvelope](docs/ItemPickListDtoListEnvelope.md)
 - [ItemPickListEntryCreateDto](docs/ItemPickListEntryCreateDto.md)
 - [ItemPickListEntryDto](docs/ItemPickListEntryDto.md)
 - [ItemPickListEntryDtoEnvelope](docs/ItemPickListEntryDtoEnvelope.md)
 - [ItemPickListEntryDtoListEnvelope](docs/ItemPickListEntryDtoListEnvelope.md)
 - [ItemPickListEntryUpdateDto](docs/ItemPickListEntryUpdateDto.md)
 - [ItemPickListUpdateDto](docs/ItemPickListUpdateDto.md)
 - [ItemRestockCreateDto](docs/ItemRestockCreateDto.md)
 - [ItemRestockDto](docs/ItemRestockDto.md)
 - [ItemRestockDtoEnvelope](docs/ItemRestockDtoEnvelope.md)
 - [ItemRestockDtoListEnvelope](docs/ItemRestockDtoListEnvelope.md)
 - [ItemRestockEntryCreateDto](docs/ItemRestockEntryCreateDto.md)
 - [ItemRestockEntryDto](docs/ItemRestockEntryDto.md)
 - [ItemRestockEntryDtoEnvelope](docs/ItemRestockEntryDtoEnvelope.md)
 - [ItemRestockEntryDtoListEnvelope](docs/ItemRestockEntryDtoListEnvelope.md)
 - [ItemRestockEntryUpdateDto](docs/ItemRestockEntryUpdateDto.md)
 - [ItemRestockUpdateDto](docs/ItemRestockUpdateDto.md)
 - [ItemRetainSampleCreateDto](docs/ItemRetainSampleCreateDto.md)
 - [ItemRetainSampleDto](docs/ItemRetainSampleDto.md)
 - [ItemRetainSampleDtoEnvelope](docs/ItemRetainSampleDtoEnvelope.md)
 - [ItemRetainSampleDtoListEnvelope](docs/ItemRetainSampleDtoListEnvelope.md)
 - [ItemRetainSampleUpdateDto](docs/ItemRetainSampleUpdateDto.md)
 - [LoginRequest](docs/LoginRequest.md)
 - [PortCreateDto](docs/PortCreateDto.md)
 - [PortDto](docs/PortDto.md)
 - [PortDtoEnvelope](docs/PortDtoEnvelope.md)
 - [PortDtoListEnvelope](docs/PortDtoListEnvelope.md)
 - [PortUpdateDto](docs/PortUpdateDto.md)
 - [ProofOfDeliveryCreateDto](docs/ProofOfDeliveryCreateDto.md)
 - [ProofOfDeliveryDto](docs/ProofOfDeliveryDto.md)
 - [ProofOfDeliveryDtoEnvelope](docs/ProofOfDeliveryDtoEnvelope.md)
 - [ProofOfDeliveryDtoListEnvelope](docs/ProofOfDeliveryDtoListEnvelope.md)
 - [ProofOfDeliveryLineCreateDto](docs/ProofOfDeliveryLineCreateDto.md)
 - [ProofOfDeliveryLineDto](docs/ProofOfDeliveryLineDto.md)
 - [ProofOfDeliveryLineDtoListEnvelope](docs/ProofOfDeliveryLineDtoListEnvelope.md)
 - [ProofOfDeliveryLineUpdateDto](docs/ProofOfDeliveryLineUpdateDto.md)
 - [ProofOfDeliveryUpdateDto](docs/ProofOfDeliveryUpdateDto.md)
 - [RailWaybillCreateDto](docs/RailWaybillCreateDto.md)
 - [RailWaybillDto](docs/RailWaybillDto.md)
 - [RailWaybillDtoEnvelope](docs/RailWaybillDtoEnvelope.md)
 - [RailWaybillDtoListEnvelope](docs/RailWaybillDtoListEnvelope.md)
 - [RailWaybillUpdateDto](docs/RailWaybillUpdateDto.md)
 - [RefreshRequest](docs/RefreshRequest.md)
 - [RegisterRequest](docs/RegisterRequest.md)
 - [RejectProofOfDeliveryRequest](docs/RejectProofOfDeliveryRequest.md)
 - [ResendConfirmationEmailRequest](docs/ResendConfirmationEmailRequest.md)
 - [ResetPasswordRequest](docs/ResetPasswordRequest.md)
 - [RoadWaybillCreateDto](docs/RoadWaybillCreateDto.md)
 - [RoadWaybillDto](docs/RoadWaybillDto.md)
 - [RoadWaybillDtoEnvelope](docs/RoadWaybillDtoEnvelope.md)
 - [RoadWaybillDtoListEnvelope](docs/RoadWaybillDtoListEnvelope.md)
 - [RoadWaybillUpdateDto](docs/RoadWaybillUpdateDto.md)
 - [SeawayBillCreateDto](docs/SeawayBillCreateDto.md)
 - [SeawayBillDto](docs/SeawayBillDto.md)
 - [SeawayBillDtoEnvelope](docs/SeawayBillDtoEnvelope.md)
 - [SeawayBillDtoListEnvelope](docs/SeawayBillDtoListEnvelope.md)
 - [SeawayBillUpdateDto](docs/SeawayBillUpdateDto.md)
 - [SignProofOfDeliveryRequest](docs/SignProofOfDeliveryRequest.md)
 - [SupplierProfileCreateDto](docs/SupplierProfileCreateDto.md)
 - [SupplierProfileDto](docs/SupplierProfileDto.md)
 - [SupplierProfileDtoEnvelope](docs/SupplierProfileDtoEnvelope.md)
 - [SupplierProfileDtoListEnvelope](docs/SupplierProfileDtoListEnvelope.md)
 - [SupplierProfileUpdateDto](docs/SupplierProfileUpdateDto.md)
 - [TruckCreateDto](docs/TruckCreateDto.md)
 - [TruckDriverCreateDto](docs/TruckDriverCreateDto.md)
 - [TruckDriverDto](docs/TruckDriverDto.md)
 - [TruckDriverDtoEnvelope](docs/TruckDriverDtoEnvelope.md)
 - [TruckDriverDtoListEnvelope](docs/TruckDriverDtoListEnvelope.md)
 - [TruckDriverUpdateDto](docs/TruckDriverUpdateDto.md)
 - [TruckDto](docs/TruckDto.md)
 - [TruckDtoEnvelope](docs/TruckDtoEnvelope.md)
 - [TruckDtoListEnvelope](docs/TruckDtoListEnvelope.md)
 - [TruckTripCreateDto](docs/TruckTripCreateDto.md)
 - [TruckTripDto](docs/TruckTripDto.md)
 - [TruckTripDtoListEnvelope](docs/TruckTripDtoListEnvelope.md)
 - [TruckTripUpdateDto](docs/TruckTripUpdateDto.md)
 - [TruckUpdateDto](docs/TruckUpdateDto.md)
 - [TwoFactorRequest](docs/TwoFactorRequest.md)
 - [TwoFactorResponse](docs/TwoFactorResponse.md)
 - [VesselCreateDto](docs/VesselCreateDto.md)
 - [VesselDto](docs/VesselDto.md)
 - [VesselDtoEnvelope](docs/VesselDtoEnvelope.md)
 - [VesselDtoListEnvelope](docs/VesselDtoListEnvelope.md)
 - [VesselUpdateDto](docs/VesselUpdateDto.md)
 - [VoyageCreateDto](docs/VoyageCreateDto.md)
 - [VoyageDto](docs/VoyageDto.md)
 - [VoyageDtoEnvelope](docs/VoyageDtoEnvelope.md)
 - [VoyageDtoListEnvelope](docs/VoyageDtoListEnvelope.md)
 - [VoyagePortCallCreateDto](docs/VoyagePortCallCreateDto.md)
 - [VoyagePortCallDto](docs/VoyagePortCallDto.md)
 - [VoyagePortCallDtoListEnvelope](docs/VoyagePortCallDtoListEnvelope.md)
 - [VoyagePortCallUpdateDto](docs/VoyagePortCallUpdateDto.md)
 - [VoyageUpdateDto](docs/VoyageUpdateDto.md)
 - [WarehouseCreateDto](docs/WarehouseCreateDto.md)
 - [WarehouseDto](docs/WarehouseDto.md)
 - [WarehouseDtoEnvelope](docs/WarehouseDtoEnvelope.md)
 - [WarehouseDtoListEnvelope](docs/WarehouseDtoListEnvelope.md)
 - [WarehouseUpdateDto](docs/WarehouseUpdateDto.md)
 - [WaybillLineCreateDto](docs/WaybillLineCreateDto.md)
 - [WaybillLineDto](docs/WaybillLineDto.md)
 - [WaybillLineDtoListEnvelope](docs/WaybillLineDtoListEnvelope.md)
 - [WaybillLineUpdateDto](docs/WaybillLineUpdateDto.md)


## Documentation For Authorization

 All endpoints do not require authorization.

