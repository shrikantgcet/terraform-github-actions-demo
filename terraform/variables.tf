
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


/*
  **********************Key Vault Details*******************************
*/

variable "iac_rg_name" {
  type = string
}


variable "kv_name" {
  type = string
}

variable "kv_sku" {
  type = string
}

variable "kv_soft_delete_retention_days" {
  type = number
}

/*
  **********************Ends*******************************
*/



/*
  **********************Service bus Details*******************************
*/

variable "sb_name" {
  type = string
}

variable "sb_sku" {
  type = string
}




/*
  **********************Ends*******************************
*/