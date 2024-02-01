
resource "azurerm_mysql_server" "mysql_server" {
  name                = "${var.resource_group_name}-${env}-mysqldb"
  location            = var.location
  resource_group_name = var.resource_group_name
#The name of the SKU, follows the tier + family + cores pattern 
#(e.g. B_Gen4_1, GP_Gen5_8). 
#Possible values are B_Gen4_1, B_Gen4_2, B_Gen5_1, B_Gen5_2, GP_Gen4_2, 
#GP_Gen4_4, GP_Gen4_8, GP_Gen4_16, GP_Gen4_32, GP_Gen5_2, GP_Gen5_4, 
#GP_Gen5_8, GP_Gen5_16, GP_Gen5_32, GP_Gen5_64, MO_Gen5_2, MO_Gen5_4, 
#MO_Gen5_8, MO_Gen5_16 and MO_Gen5_32.

  sku_name   = "B_Gen5_2"
  storage_mb = 5120
  version    = "8.0"
  auto_grow_enabled                 = true
  backup_retention_days             = 7
  geo_redundant_backup_enabled      = false
  infrastructure_encryption_enabled = false
  administrator_login               = "mysqladmin"
  administrator_login_password      = "H@Sh1CoR3!"
  public_network_access_enabled     = true
  ssl_enforcement_enabled           = true
  ssl_minimal_tls_version_enforced  = "TLS1_2"
}

resource "azurerm_mysql_database" "mysql_db" {
  name                = "Test"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_server.mysql_server.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}

resource "azurerm_mysql_firewall_rule" "fw" {
  name                = "office"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_server.mysql_server.name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
}

resource "azurerm_mysql_virtual_network_rule" "mysql_service_endpoint" {
  name                = "mysql-vnet-rule"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_server.mysql_server.name
  subnet_id           = module.my_vnet.subnet_id_subnet-DB
}
