data "azurerm_resource_group" "optima_rg_key_vault" {
  name = var.resource_group_name
}

resource "azurerm_key_vault" "fraaprdkvault" {
  name                        = var.key_vault_Name
  location                    = data.azurerm_resource_group.optima_rg_key_vault.location
  resource_group_name         = data.azurerm_resource_group.optima_rg_key_vault.name
  sku_name                    = "standard"
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  tenant_id = "5c4bcdb4-e5f6-4975-8518-00dbf0233496"
}
