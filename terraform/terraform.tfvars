
resources_location = "Australia Southeast"
tags = {
    "description" = "Integration solution", 
    "deployType" = "Terraform",
    "source" = "git hub",
    "updateGroup" = "Integration Team",
    "notes" = "Integration solution",
    "owner" = "Integration Team",
    "deployedBy" = "Integration Team",
    "reviewedBy" = "Integration Team"
    
 }


/*   
Storage Account Details
*/

sto_rg_name = "rg-demo"
sto_name = "gentingdemo001"
sto_account_tier = "Standard"
sto_account_replication_type = "LRS"




// Add a container

sto_container_name = "test"

sto_container_access_type = "container"
/* 
  *****************************************************
*/


iac_rg_name                   = "RG-IAC-INTGR-NPROD-UK-01"

/* Key Vault Details starts*/

kv_name                       = "intgrkv01"
kv_sku                        = "premium"
kv_soft_delete_retention_days = 90

/* Key Vault Details ends*/

/* Service Bus Details starts*/

sb_name                       = "genting-sb-np-01"
sb_sku                        = "Standard"


/* Service Bus Details ends*/