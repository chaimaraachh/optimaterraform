data "azurerm_resource_group" "optima_rg_storage" {
  name = var.resource_group_name
}

resource "azurerm_storage_account" "fraaprdblobstorage" {
  name                     = var.blob_storage_account_Name
  resource_group_name      = data.azurerm_resource_group.optima_rg_storage.name
  location                 = data.azurerm_resource_group.optima_rg_storage.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
}
