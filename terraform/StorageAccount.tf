// Storage Account


resource "azurerm_resource_group" "sa_rg" {
  name     = var.iac_rg_name
  location = var.resources_location

  
  tags = merge(
    var.tags,
    {
      "Criticality" = "low",
      "Environment" = var.env,
      "Application"="AIS",
      "Owner":"IT"
    }
  )
}
resource "azurerm_storage_account" "sto" {
  name                     = var.sto_name
  location                 = azurerm_resource_group.sa_rg.location
  resource_group_name      = azurerm_resource_group.sa_rg.name
  account_tier             = var.sto_account_tier
  account_replication_type = var.sto_account_replication_type
allow_nested_items_to_be_public = false
infrastructure_encryption_enabled = true

  tags = merge(
    var.tags,
    {
      "Criticality" = "low",
      "Environment" = var.env,
      "Application"="AIS",
      "Owner":"IT"
    }
  )
}

resource "azurerm_storage_container" "toscan_container" {
  name                  = var.sto_container_name
  storage_account_name  = azurerm_storage_account.sto.name
  container_access_type = var.sto_container_access_type
}

