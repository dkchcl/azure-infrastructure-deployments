subscription_id = "e878567a-9df3-414b-a7d4-46f465efb83b"

resource_groups = {
  "rg1" = {
    name     = "dev-rg-01"
    location = "East US"
  }
}

virtual_networks = {
  "vnet1" = {
    name                = "dev-vnet-01"
    location            = "East US"
    resource_group_name = "dev-rg-01"
    address_space       = ["10.0.0.0/16"]
    # dns_servers = ["10.0.0.4"]
  }
}

subnets = {
  "subnet1" = {
    subnet_name          = "dev-subnet-01"
    virtual_network_name = "dev-vnet-01"
    resource_group_name  = "dev-rg-01"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    subnet_name          = "dev-subnet-02"
    virtual_network_name = "dev-vnet-01"
    resource_group_name  = "dev-rg-01"
    address_prefixes     = ["10.0.2.0/24"]
  }
  bastion_subnet = {
    subnet_name          = "AzureBastionSubnet"
    virtual_network_name = "dev-vnet-01"
    resource_group_name  = "dev-rg-01"
    address_prefixes     = ["10.0.3.0/24"]
  }
}

public_ips = {
  "pip1" = {
    pip_name            = "dev-pip-01"
    location            = "East US"
    resource_group_name = "dev-rg-01"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
}

# bastion_hosts = {
#   "bastion1" = {
#     name                 = "dev-bastion-01"
#     location             = "East US"
#     resource_group_name  = "dev-rg-01"
#     virtual_network_name = "dev-vnet-01"
#     subnet_name          = "AzureBastionSubnet"
#     public_ip_name       = "dev-pip-01"
#     ip_configurations = {
#       "ipconfig1" = {
#         name = "dev-bastion-ipconfig-01"
#         # subnet_id = "/subscriptions/your-subscription-id/resourceGroups/dev-rg-01/providers/Microsoft.Network/virtualNetworks/dev-vnet-01/subnets/AzureBastionSubnet"
#         # public_ip_address_id = "/subscriptions/your-subscription-id/resourceGroups/dev-rg-01/providers/Microsoft.Network/publicIPAddresses/dev-pip-01"
#       }
#     }
#   }
# }

# key_vaults = {
#   "kv1" = {
#     name                        = "dev-kv-01"
#     location                    = "East US"
#     resource_group_name         = "dev-rg-01"
#     enabled_for_disk_encryption = true
#     soft_delete_retention_days  = 7
#     purge_protection_enabled    = false
#     sku_name                    = "standard"
#   }
# }

# key_vault_secrets = {
#   "vmss_user" = {
#     name                = "vmss-admin"
#     value               = "vmssadminuser"
#     key_vault           = "dev-kv-01"
#     resource_group_name = "dev-rg-01"
#   }
#   "vmss_password" = {
#     name                = "vmss-password"
#     value               = "Bbpl@#123456"
#     key_vault           = "dev-kv-01"
#     resource_group_name = "dev-rg-01"
#   }
#   "sql_user" = {
#     name                = "sql-admin"
#     value               = "sqladminuser"
#     key_vault           = "dev-kv-01"
#     resource_group_name = "dev-rg-01"
#   }
#   "sql_password" = {
#     name                = "sql-password"
#     value               = "Bbpl@#123456"
#     key_vault           = "dev-kv-01"
#     resource_group_name = "dev-rg-01"
#   }
# }

# storage_accounts = {
#   "stg1" = {
#     name                     = "devstgaccount014"
#     resource_group_name      = "dev-rg-01"
#     location                 = "East US"
#     account_tier             = "Standard"
#     account_replication_type = "LRS"
#   }
# }

# sql_servers = {
#   "sqlsrv1" = {
#     name                         = "dev-sql-server-01"
#     resource_group_name          = "dev-rg-01"
#     location                     = "East US"
#     administrator_login          = "sql-admin"
#     administrator_login_password = "sql-password"

#   }
# }

# sql_databases = {
#   "sqldb1" = {
#     name                = "dev-sql-database-01"
#     sqlserver_name      = "dev-sql-server-01"
#     resource_group_name = "dev-rg-01"
#   }
# }

# virtual_machine_scale_sets = {
#   "vmss1" = {
#     name                = "dev-vmss-01"
#     resource_group_name = "dev-rg-01"
#     location            = "East US"
#     sku                 = "Standard_DS1_v2"
#     os_profile = {
#       computer_name_prefix = "devvmss"
#       admin_username       = "vmss-user"
#       admin_password       = "vmss-password"
#     }
#     network_profile = {
#       "networkprofile1" = {
#         name = "dev-vmss-network-profile-01"
#         ip_configurations = {
#           "ipconfig1" = {
#             ip_configuration_name = "dev-vmss-ipconfig-01"
#           }
#         }
#       }
#     }
#   }
# }

# load_balancers = {
#   "lb1" = {
#     lb_name             = "dev-lb-01"
#     resource_group_name = "dev-rg-01"
#     location            = "East US"
#     frontend_ip_configuration = {
#       frontend_ip_configuration_name = "dev-frontend-ipconfig-01"
#     }
#     backend_address_pool = {
#       backend_address_pool_name = "dev-backend-pool-01"
#     }
#     nat_name     = "dev-nat-rule-01"
#     probe_name   = "dev-probe-01"
#     lb_rule_name = "dev-lb-rule-01"
#   }
# }

# application_gateways = {
#   "appgwy1" = {
#     name                = "dev-app-gwy-01"
#     location            = "East US"
#     resource_group_name = "dev-rg-01"
#     gateway_ip_configuration = {
#       name = "dev-gateway-ipconfig-01"
#     }
#     frontend_port = {
#       name = "dev-frontend-port-01"
#     }
#     frontend_ip_configuration = {
#       name = "dev-frontend-ipconfig-01"
#     }
#     backend_address_pool = {
#       name = "dev-backend-pool-01"
#     }
#     http_settings = {
#       name = "dev-http-settings-01"
#     }
#     listener = {
#       name = "dev-listener-01"
#     }
#     routing_rule = {
#       name = "dev-routing-rule-01"
#     }
#   }
# }

# log_analytics_workspaces = {
#   "law1" = {
#     name                = "dev-law-01"
#     location            = "East US"
#     resource_group_name = "dev-rg-01"
#   }
# }





































