
/* 
  Common Details
*/

variable "tags" {
  type = map(any)
}

variable "resources_location" {
  type = string
}



/* 
  Storage Account Details
*/
variable "sto_rg_name" {
  type = string
}

variable "sto_name" {
  type = string
}

variable "sto_account_tier" {
  type = string
}

variable "sto_account_replication_type" {
  type = string
}


// container 

variable "sto_container_name" {
  type = string
}

variable "sto_container_access_type" {
  type = string
}
/* 
  *****************************************************
*/

