# # Create Azure  Blob Storage with enabling static web function
# resource "azurerm_storage_account" "static_storage" {
#   name                     = var.sa_name
#   resource_group_name      = var.resource_group_name
#   location                 = var.location
#   account_kind             = "StorageV2"
#   account_tier             = "Standard"
#   account_replication_type = "GRS"
#   enable_https_traffic_only = true

#   static_website {
#     index_document = "index.html"
#   }

#   tags = {
#     env = var.env
#   }
# }
# resource "azurerm_storage_blob" "static" {
#   name = var.index_document
#   storage_account_name = azurerm_storage_account.static_storage.name
#   storage_container_name = "$web"
#   type = "Block"
#   content_type = "text/html"
#   source_content = var.source_content
# }


#Create azure static web
resource "azurerm_static_site" "example" {
  name                = var.web_static_name
  resource_group_name = var.resource_group_name
  location            = var.location
}