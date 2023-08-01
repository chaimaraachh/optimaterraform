data "azurerm_resource_group" "optima_rg_sql" {
  name = var.resource_group_name
}

resource "azurerm_mssql_server" "optimaSqlDBserver" {
  name                         = var.sql_server_name
  resource_group_name          = data.azurerm_resource_group.optima_rg_sql.name
  location                     = data.azurerm_resource_group.optima_rg_sql.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_login
  administrator_login_password = var.sql_admin_password
  tags = {
    Cruise      = "Galactic"
    Environment = "Prd"
    Project     = "Optima"
  }
}

resource "azurerm_mssql_database" "optimaSqlDB" {
  name           = var.sql_DB_name
  server_id      = azurerm_mssql_server.optimaSqlDBserver.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  license_type   = "LicenseIncluded"
  max_size_gb    = 2
  read_scale     = false
  sku_name       = "Basic"
  zone_redundant = false
}


resource "azurerm_mssql_database_extended_auditing_policy" "policy" {
  database_id                             = azurerm_mssql_database.optimaSqlDB.id
  storage_endpoint                        = azurerm_storage_account.fraaprdblobstorage.primary_blob_endpoint
  storage_account_access_key              = azurerm_storage_account.fraaprdblobstorage.primary_access_key
  storage_account_access_key_is_secondary = false
  retention_in_days                       = 1
}
