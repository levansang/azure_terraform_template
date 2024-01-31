# output "my_vnet_subnet_ids" {
#   description = "Map of subnet names to IDs"
#   value       = module.my_vnet.subnet_ids
# }

output "my_vnet_subnet_id_frontend" {
  description = "ID of subnet 1"
  value       = module.my_vnet.subnet_id_frontend
}

output "my_vnet_subnet_id_backend" {
  description = "ID of subnet 2"
  value       = module.my_vnet.subnet_id_backend
}

output "my_vnet_subnet_id_subnet-DB" {
  description = "ID of subnet 3"
  value       = module.my_vnet.subnet_id_subnet-DB
}

output "my_vnet_subnet_id_subnet-AKS" {
  description = "ID of subnet 3"
  value       = module.my_vnet.subnet_id_subnet-AKS
}

# output "azurerm_public_ip_PubIP" {
#   description = "Static Public IP"
#   value       = azurerm_public_ip.pip.ip_address
# }

output "kubernetes_cluster_id" {
  description = "kubernetes_cluster_id"
  value       = module.AKS_cls.kubernetes_cluster_id
}
output "kubernetes_principal_id" {
  description = "kubernetes_principal_id"
  value       = module.AKS_cls.kubernetes_principal_id
}

output "mysql_server_id" {
  description = "mysql_server_id"
  value       = azurerm_mysql_server.mysql_server.id
}
output "mysql_server_fqdn" {
  description = "mysql_server_fqdn"
  value       = azurerm_mysql_server.mysql_server.fqdn
}