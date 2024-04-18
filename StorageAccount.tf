// Storage Account


resource "azurerm_resource_group" "sa_rg" {
  name     = var.sto_rg_name
  location = var.resources_location

  
  tags = merge(
    var.tags ,
    {
      "deployedDate" = timestamp(),
      "reviewedDate" = timestamp()
    }
    )
}
resource "azurerm_storage_account" "sto" {
  name                     = var.sto_name
  location                 = azurerm_resource_group.sa_rg.location
  resource_group_name      = azurerm_resource_group.sa_rg.name
  account_tier             = var.sto_account_tier
  account_replication_type = var.sto_account_replication_type
  
  tags = merge(
    var.tags ,
    {
      "deployedDate" = timestamp(),
      "reviewedDate" = timestamp()
    }
    )
}

resource "azurerm_storage_container" "toscan_container" {
  name                  = var.sto_container_name
  storage_account_name  = azurerm_storage_account.sto.name
  container_access_type = var.sto_container_access_type
}

