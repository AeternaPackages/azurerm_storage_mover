variable "storage_movers" {
  description = <<EOT
Map of storage_movers, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - description
    - tags
Nested storage_mover_agents (azurerm_storage_mover_agent):
    Required:
        - arc_virtual_machine_id
        - arc_virtual_machine_uuid
        - name
    Optional:
        - description
Nested storage_mover_projects (azurerm_storage_mover_project):
    Required:
        - name
    Optional:
        - description
    Nested storage_mover_job_definitions (azurerm_storage_mover_job_definition):
        Required:
            - copy_mode
            - name
            - source_name
            - target_name
        Optional:
            - agent_name
            - description
            - source_sub_path
            - target_sub_path
Nested storage_mover_source_endpoints (azurerm_storage_mover_source_endpoint):
    Required:
        - host
        - name
    Optional:
        - description
        - export
        - nfs_version
Nested storage_mover_target_endpoints (azurerm_storage_mover_target_endpoint):
    Required:
        - name
        - storage_account_id
        - storage_container_name
    Optional:
        - description
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    description         = optional(string)
    tags                = optional(map(string))
    storage_mover_agents = optional(map(object({
      arc_virtual_machine_id   = string
      arc_virtual_machine_uuid = string
      name                     = string
      description              = optional(string)
    })))
    storage_mover_projects = optional(map(object({
      name        = string
      description = optional(string)
      storage_mover_job_definitions = optional(map(object({
        copy_mode       = string
        name            = string
        source_name     = string
        target_name     = string
        agent_name      = optional(string)
        description     = optional(string)
        source_sub_path = optional(string)
        target_sub_path = optional(string)
      })))
    })))
    storage_mover_source_endpoints = optional(map(object({
      host        = string
      name        = string
      description = optional(string)
      export      = optional(string)
      nfs_version = optional(string) # Default: "NFSauto"
    })))
    storage_mover_target_endpoints = optional(map(object({
      name                   = string
      storage_account_id     = string
      storage_container_name = string
      description            = optional(string)
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.storage_movers) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.storage_movers : [for kk in keys(coalesce(v0.storage_mover_agents, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.storage_movers : [for kk in keys(coalesce(v0.storage_mover_projects, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.storage_movers : [for k1, v1 in coalesce(v0.storage_mover_projects, {}) : [for kk in keys(coalesce(v1.storage_mover_job_definitions, {})) : !strcontains(kk, "/")]]]),
      flatten([for k0, v0 in var.storage_movers : [for kk in keys(coalesce(v0.storage_mover_source_endpoints, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.storage_movers : [for kk in keys(coalesce(v0.storage_mover_target_endpoints, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
