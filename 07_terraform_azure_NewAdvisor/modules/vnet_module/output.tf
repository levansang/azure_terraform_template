output "subnet_ids" {
  description = "Map of subnet names to IDs"
  value       = azurerm_subnet.example
}

output "subnet_id_frontend" {
  description = "ID of subnet 1"
  value       = azurerm_subnet.example["frontend"].id
}

output "subnet_id_backend" {
  description = "ID of subnet 2"
  value       = azurerm_subnet.example["backend"].id
}

output "subnet_id_subnet-DB" {
  description = "ID of subnet 3"
  value       = azurerm_subnet.example["subnet-DB"].id
}

output "subnet_id_subnet-AKS" {
  description = "ID of subnet 3"
  value       = azurerm_subnet.example["subnet-AKS"].id
}