module "my_vnet" {
  source              = "./modules/vnet_module"
  resource_group_name = var.resource_group_name
  location            = var.location
  vnet_name           = var.vnet_name
  address_space       = ["10.0.0.0/16"]
  subnets = [
    {
      name             = "frontend"
      address_prefixes = ["10.0.1.0/24"]
    },
    {
      name             = "backend"
      address_prefixes = ["10.0.2.0/24"]
    },
    {
      name             = "subnet-DB"
      address_prefixes = ["10.0.3.0/24"]
    }
    # Add more subnets as needed
  ]
}

# #Request public ip
# resource "azurerm_public_ip" "pip" {
#   name                = "myAGPublicIPAddress"
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   allocation_method   = "Static"
#   sku                 = "Standard"
# }

