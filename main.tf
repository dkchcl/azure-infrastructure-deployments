module "rg" {
  source          = "git::https://github.com/dkchcl/azure-resource-modules.git//Modules/azurerm_resource_group"
  resource_groups = var.resource_groups
  
}

module "vnet" {
  depends_on = [ module.rg ]
  source           = "git::https://github.com/dkchcl/azure-resource-modules.git//Modules/azurerm_virtual_network"
  virtual_networks = var.virtual_networks
}

module "subnet" {
  depends_on = [ module.vnet ]
  source  = "git::https://github.com/dkchcl/azure-resource-modules.git//Modules/azurerm_subnet"
  subnets = var.subnets
}

# module "public_ip" {
#   depends_on = [ module.rg ]
#   source     = "git:://https://github.com/dkchcl/azure-resource-modules.git"
#   public_ips = var.public_ips
# }

# module "bastion_host" {
#   depends_on = [ module.public_ip, module.subnet ]
#   source        = "../../Modules/azurerm_bastion_host"
#   bastion_hosts = var.bastion_hosts
  
# }

# module "key_vault" {
#   depends_on = [ module.rg ]
#   source     = "../../Modules/azurerm_key_vault"
#   key_vaults = var.key_vaults
# }

# module "kvs" {
#   depends_on = [ module.key_vault ]
#   source            = "../../Modules/azurerm_key_vault_secret"
#   key_vault_secrets = var.key_vault_secrets
# }

# module "stg" {
#   depends_on = [ module.rg ]
#   source           = "../../Modules/azurerm_storage_account"
#   storage_accounts = var.storage_accounts
# }

# module "sql_server" {
#   depends_on = [ module.rg ]
#   source      = "../../Modules/azurerm_sql_server"
#   sql_servers = var.sql_servers
# }

# module "sql_database" {
#   depends_on = [ module.sql_server ]
#   source        = "../../Modules/azurerm_sql_database"
#   sql_databases = var.sql_databases
# }

# module "vmss" {
#   depends_on = [ module.rg, module.subnet, module.kvs]
#   source                     = "../../Modules/azurerm_virtual_machine_scale_set"
#   virtual_machine_scale_sets = var.virtual_machine_scale_sets
# }

# module "load_balancer" {
#   depends_on = [ module.rg, module.subnet ]
#   source         = "../../Modules/azurerm_load_balancer"
#   load_balancers = var.load_balancers
# }

# module "appgwy" {
#   depends_on = [ module.rg, module.subnet, module.public_ip ]
#   source = "../../Modules/azurerm_application_gateway"
#   application_gateways = var.application_gateways 
# }

# module "log_analytics" {
#   depends_on = [ module.rg ]
#   source = "../../Modules/azurerm_log_analytics_workspace"
#   log_analytics_workspaces = var.log_analytics_workspaces
# }
















