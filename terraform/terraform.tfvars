
resources_location = "Australia Southeast"
tags = {
      "Criticality" = "low",
      "Owner" = "dev",
      "Application"="AIS",
      "Owner":"IT"
    }
env   =   "dev"

/*Storage Account Details*/

sto_name = "staisuksouthdev001"
sto_account_tier = "Standard"
sto_account_replication_type = "LRS"


sto_container_name = "test"

sto_container_access_type = "container"
/*Storage Account Details*/

iac_rg_name                   = "rg-ais-uksouth-test-001"

/* Key Vault Details starts*/

kv_name                       = "kv-ais-uksouth-dev-001"
kv_sku                        = "premium"
kv_soft_delete_retention_days = 90

/* Key Vault Details ends*/

/* Service Bus Details starts*/
sb_name                       = "sbns-ais-uksouth-dev-001"
sb_sku                        = "Standard"
/* Service Bus Details ends*/

/* Logic App Details starts*/
la_name                       = "logic-ais-uksouth-dev-001"
la_account_tier               = "Standard"
la_sku_tier                   = "WorkflowStandard"
la_size                       = "WS1"
la_app_service_plan           = "logic-ais-uksouth-dev-plan-001"
la_storage_name               = "staisuksouthdev002"
/* Logic app Details ends*/


/* Application insights Details starts*/
ai_name                       = "appi-ais-uksouth-dev-001 "
/* Application insights Details ends*/


law_name = "Log-ais-uksouth-dev-001"