variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
}

variable "app_service_plan_back_name" {
  type        = string
  description = "App Service Plan back name in Azure"
}

variable "app_service_plan_front_name" {
  type        = string
  description = "App Service Plan front name in Azure"
}

variable "webappbackCompaniesName" {
  type        = string
  description = "webappbackCompaniesName"
}

variable "webappbackContactsName" {
  type        = string
  description = "webappbackContactsName"
}

variable "webappbackInvoicesName" {
  type        = string
  description = "webappbackInvoicesName"
}

variable "webappbackNotificationName" {
  type        = string
  description = "webappbackNotificationName"
}

variable "webappbackPurchaseorderName" {
  type        = string
  description = "webappbackPurchaseorderName"
}

variable "webappbackSecurityName" {
  type        = string
  description = "webappbackSecurityName"
}

variable "webappbacksuppliersName" {
  type        = string
  description = "webappbacksuppliersName"
}
variable "webappnamefront" {
  type        = string
  description = "webappnamefront"
}
variable "webappnamefrontadmin" {
  type        = string
  description = "webappnamefrontadmin"
}

variable "sql_server_name" {
  type        = string
  description = "SQL Server instance name in Azure"
}
variable "blob_storage_account_Name" {
  description = "The name of the blob storage account"
  type        = string
}
variable "key_vault_Name" {
  description = "The name of key vault"
  type        = string
}
variable "sql_admin_password" {
  description = "The password of the sql server"
  type        = string
}
variable "sql_admin_login" {
  description = "The login of the sql server"
  type        = string
}
variable "sql_DB_name" {
  description = "The name of the sql database"
  type        = string
}
variable "service_bus_name" {
  description = "The name of the service bus"
  type        = string
}