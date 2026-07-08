locals {
  storage_movers = { for k1, v1 in var.storage_movers : k1 => { description = v1.description, location = v1.location, name = v1.name, resource_group_name = v1.resource_group_name, tags = v1.tags } }

  storage_mover_agents = merge([
    for k1, v1 in var.storage_movers : {
      for k2, v2 in coalesce(v1.storage_mover_agents, {}) :
      "${k1}/${k2}" => merge(v2, {
        storage_mover_id = module.storage_movers.storage_movers["${k1}"].id
      })
    }
  ]...)

  storage_mover_projects = merge([
    for k1, v1 in var.storage_movers : {
      for k2, v2 in coalesce(v1.storage_mover_projects, {}) :
      "${k1}/${k2}" => merge(v2, {
        storage_mover_id = module.storage_movers.storage_movers["${k1}"].id
      })
    }
  ]...)

  storage_mover_source_endpoints = merge([
    for k1, v1 in var.storage_movers : {
      for k2, v2 in coalesce(v1.storage_mover_source_endpoints, {}) :
      "${k1}/${k2}" => merge(v2, {
        storage_mover_id = module.storage_movers.storage_movers["${k1}"].id
      })
    }
  ]...)

  storage_mover_target_endpoints = merge([
    for k1, v1 in var.storage_movers : {
      for k2, v2 in coalesce(v1.storage_mover_target_endpoints, {}) :
      "${k1}/${k2}" => merge(v2, {
        storage_mover_id = module.storage_movers.storage_movers["${k1}"].id
      })
    }
  ]...)

  storage_mover_job_definitions = merge([
    for k1, v1 in var.storage_movers : merge([
      for k2, v2 in coalesce(v1.storage_mover_projects, {}) : {
        for k3, v3 in coalesce(v2.storage_mover_job_definitions, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          storage_mover_project_id = module.storage_mover_projects.storage_mover_projects["${k1}/${k2}"].id
        })
      }
    ]...)
  ]...)
}

module "storage_movers" {
  source         = "git::https://github.com/AeternaModules/azurerm_storage_mover.git?ref=v4.80.0"
  storage_movers = local.storage_movers
}

module "storage_mover_agents" {
  source               = "git::https://github.com/AeternaModules/azurerm_storage_mover_agent.git?ref=v4.80.0"
  storage_mover_agents = local.storage_mover_agents
  depends_on           = [module.storage_movers]
}

module "storage_mover_projects" {
  source                 = "git::https://github.com/AeternaModules/azurerm_storage_mover_project.git?ref=v4.80.0"
  storage_mover_projects = local.storage_mover_projects
  depends_on             = [module.storage_movers]
}

module "storage_mover_source_endpoints" {
  source                         = "git::https://github.com/AeternaModules/azurerm_storage_mover_source_endpoint.git?ref=v4.80.0"
  storage_mover_source_endpoints = local.storage_mover_source_endpoints
  depends_on                     = [module.storage_movers]
}

module "storage_mover_target_endpoints" {
  source                         = "git::https://github.com/AeternaModules/azurerm_storage_mover_target_endpoint.git?ref=v4.80.0"
  storage_mover_target_endpoints = local.storage_mover_target_endpoints
  depends_on                     = [module.storage_movers]
}

module "storage_mover_job_definitions" {
  source                        = "git::https://github.com/AeternaModules/azurerm_storage_mover_job_definition.git?ref=v4.80.0"
  storage_mover_job_definitions = local.storage_mover_job_definitions
  depends_on                    = [module.storage_mover_projects]
}

