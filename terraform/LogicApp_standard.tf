resource "azurerm_storage_account" "la_storage_account" {
  name                      = var.la_storage_name
  location                  = azurerm_resource_group.iac_rg.location
  resource_group_name       = azurerm_resource_group.iac_rg.name
  account_tier              = var.la_account_tier
  account_replication_type  = "LRS"

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

resource "azurerm_service_plan" "la_service_plan" {
  name                = var.la_app_service_plan
  location            = azurerm_resource_group.iac_rg.location
  resource_group_name = azurerm_resource_group.iac_rg.name
  kind                = "elastic"


  sku {
    tier = var.la_sku_tier
    size = var.la_size
  }
}

resource "azurerm_logic_app_standard" "logic_app" {
  name                       = var.la_name
  location                   = azurerm_resource_group.iac_rg.location
  resource_group_name        = azurerm_resource_group.iac_rg.name
  app_service_plan_id        = azurerm_app_service_plan.la_service_plan.id
  storage_account_name       = azurerm_storage_account.la_storage_account.name
  storage_account_access_key = azurerm_storage_account.la_storage_account.primary_access_key

  app_settings = {
    "FUNCTIONS_WORKER_RUNTIME"     = "node"
    "WEBSITE_NODE_DEFAULT_VERSION" = "~18"
    APPINSIGHTS_INSTRUMENTATIONKEY = azurerm_application_insights.ai.instrumentation_key
  }

 identity  {
        type                        = "SystemAssigned"
    }

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