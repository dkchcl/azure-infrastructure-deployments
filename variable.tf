variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "virtual_networks" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    # dns_servers         = list(string)
  }))
}

variable "subnets" {
  type = map(object({
    subnet_name          = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}

variable "public_ips" {
  type = map(object({
    pip_name            = string
    resource_group_name = string
    location            = string
    allocation_method   = string
    sku                 = string
  }))
}

# variable "bastion_hosts" {
#   type = map(object({
#     name                 = string
#     location             = string
#     resource_group_name  = string
#     virtual_network_name = string
#     subnet_name          = string
#     public_ip_name       = string
#     ip_configurations = map(object({
#       name                 = string
#       # subnet_id            = string
#       # public_ip_address_id = string
#     }))
#   }))
# }

# variable "key_vaults" {
#   type = map(object({
#     name                        = string
#     location                    = string
#     resource_group_name         = string
#     enabled_for_disk_encryption = bool
#     soft_delete_retention_days  = number
#     purge_protection_enabled    = bool
#     sku_name                    = string
#   }))
# }

# variable "key_vault_secrets" {
#   type = map(object({
#     name                = string
#     value               = string
#     key_vault           = string
#     resource_group_name = string
#   }))
# }

# variable "storage_accounts" {
#   type = map(object({
#     name                     = string
#     resource_group_name      = string
#     location                 = string
#     account_tier             = string
#     account_replication_type = string

#   }))
# }

# variable "sql_servers" {
#   type = map(object({
#     name                         = string
#     resource_group_name          = string
#     location                     = string
#     administrator_login          = string
#     administrator_login_password = string
#   }))
# }

# variable "sql_databases" {
#   type = map(object({
#     name                = string
#     sqlserver_name      = string
#     resource_group_name = string
#   }))
# }

# variable "virtual_machine_scale_sets" {
#   type = map(object({
#     name                = string
#     resource_group_name = string
#     location            = string
#     sku                 = string
#     os_profile = object({
#       computer_name_prefix = string
#       admin_username       = string
#       admin_password       = string
#     })

#     network_profile = map(object({
#       name = string
#       ip_configurations = map(object({
#         ip_configuration_name = string
#       }))
#     }))
#   }))
# }

# variable "load_balancers" {
#   type = map(object({
#     lb_name             = string
#     resource_group_name = string
#     location            = string
#     frontend_ip_configuration = object({
#       frontend_ip_configuration_name = string
#     })
#     backend_address_pool = object({
#       backend_address_pool_name = string
#     })
#     nat_name     = string
#     probe_name   = string
#     lb_rule_name = string
#   }))
# }

# variable "application_gateways" {
#   type = map(object({
#     name                = string
#     location            = string
#     resource_group_name = string
#     gateway_ip_configuration = object({
#       name = string
#     })
#     frontend_port = object({
#       name = string
#     })
#     frontend_ip_configuration = object({
#       name = string
#     })
#     backend_address_pool = object({
#       name = string
#     })
#     http_settings = object({
#       name = string
#     })
#     listener = object({
#       name = string
#     })
#     routing_rule = object({
#       name = string
#     })

#   }))
# }

# variable "log_analytics_workspaces" {
#   type = map(object({
#     name                = string
#     location            = string
#     resource_group_name = string
#   }))
# }






















