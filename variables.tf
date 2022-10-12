variable "resource_group_location" {
  default     = "westus"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  default     = "rg-messenger-d03"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "storage_account_name" {
  default     = "messengerstorageaccount"
  description = "Messenger storage account name"
}

variable "storage_account_tier" {
  default     = "Standard"
  description = "Messenger storage account tier"
}

variable "storage_account_replication" {
  default     = "GRS"
  description = "Messenger storage account replication strategy"
}

variable "storage_container_name" {
  default     = "cont-messenger"
  description = "Messenger storage container name"
}

variable "postgres_server_name" {
  default     = "psql-messenger-d01"
  description = "Messenger postgres server name"
}

#export TF_VAR_username=(the username)
#export TF_VAR_password=(the password)

variable "POSTGRES_ADMIN_USERNAME" {
  type        = string
  description = "Postgres admin username"
}

variable "POSTGRES_ADMIN_PASSWORD" {
  type        = string
  description = "Postgres admin password"
}

variable "name_prefix" {
  default     = "postgresqlfs"
  description = "Prefix of the resource name."
}