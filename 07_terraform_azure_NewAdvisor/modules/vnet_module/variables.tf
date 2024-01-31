variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure Region Location"
  type        = string
}

variable "vnet_name" {
  description = "Name of the Azure Virtual Network"
  type        = string
}

variable "address_space" {
  description = "Address space of the Azure Virtual Network"
  type        = list(string)
}

variable "subnets" {
  description           = "A list of subnets to create within the VNet"
  type                  = list(object({
    name                = string
    address_prefixes    = list(string)
  }))
}