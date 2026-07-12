# --- azurerm_storage_mover ---
output "storage_movers_id" {
  description = "Map of id values across all storage_movers, keyed the same as var.storage_movers"
  value       = module.storage_movers.storage_movers_id
}

output "storage_movers_description" {
  description = "Map of description values across all storage_movers, keyed the same as var.storage_movers"
  value       = module.storage_movers.storage_movers_description
}

output "storage_movers_location" {
  description = "Map of location values across all storage_movers, keyed the same as var.storage_movers"
  value       = module.storage_movers.storage_movers_location
}

output "storage_movers_name" {
  description = "Map of name values across all storage_movers, keyed the same as var.storage_movers"
  value       = module.storage_movers.storage_movers_name
}

output "storage_movers_resource_group_name" {
  description = "Map of resource_group_name values across all storage_movers, keyed the same as var.storage_movers"
  value       = module.storage_movers.storage_movers_resource_group_name
}

output "storage_movers_tags" {
  description = "Map of tags values across all storage_movers, keyed the same as var.storage_movers"
  value       = module.storage_movers.storage_movers_tags
}

# --- azurerm_storage_mover_agent ---
output "storage_mover_agents_id" {
  description = "Map of id values across all storage_mover_agents, keyed the same as var.storage_mover_agents"
  value       = module.storage_mover_agents.storage_mover_agents_id
}

output "storage_mover_agents_arc_virtual_machine_id" {
  description = "Map of arc_virtual_machine_id values across all storage_mover_agents, keyed the same as var.storage_mover_agents"
  value       = module.storage_mover_agents.storage_mover_agents_arc_virtual_machine_id
}

output "storage_mover_agents_arc_virtual_machine_uuid" {
  description = "Map of arc_virtual_machine_uuid values across all storage_mover_agents, keyed the same as var.storage_mover_agents"
  value       = module.storage_mover_agents.storage_mover_agents_arc_virtual_machine_uuid
}

output "storage_mover_agents_description" {
  description = "Map of description values across all storage_mover_agents, keyed the same as var.storage_mover_agents"
  value       = module.storage_mover_agents.storage_mover_agents_description
}

output "storage_mover_agents_name" {
  description = "Map of name values across all storage_mover_agents, keyed the same as var.storage_mover_agents"
  value       = module.storage_mover_agents.storage_mover_agents_name
}

output "storage_mover_agents_storage_mover_id" {
  description = "Map of storage_mover_id values across all storage_mover_agents, keyed the same as var.storage_mover_agents"
  value       = module.storage_mover_agents.storage_mover_agents_storage_mover_id
}

# --- azurerm_storage_mover_project ---
output "storage_mover_projects_id" {
  description = "Map of id values across all storage_mover_projects, keyed the same as var.storage_mover_projects"
  value       = module.storage_mover_projects.storage_mover_projects_id
}

output "storage_mover_projects_description" {
  description = "Map of description values across all storage_mover_projects, keyed the same as var.storage_mover_projects"
  value       = module.storage_mover_projects.storage_mover_projects_description
}

output "storage_mover_projects_name" {
  description = "Map of name values across all storage_mover_projects, keyed the same as var.storage_mover_projects"
  value       = module.storage_mover_projects.storage_mover_projects_name
}

output "storage_mover_projects_storage_mover_id" {
  description = "Map of storage_mover_id values across all storage_mover_projects, keyed the same as var.storage_mover_projects"
  value       = module.storage_mover_projects.storage_mover_projects_storage_mover_id
}

# --- azurerm_storage_mover_source_endpoint ---
output "storage_mover_source_endpoints_id" {
  description = "Map of id values across all storage_mover_source_endpoints, keyed the same as var.storage_mover_source_endpoints"
  value       = module.storage_mover_source_endpoints.storage_mover_source_endpoints_id
}

output "storage_mover_source_endpoints_description" {
  description = "Map of description values across all storage_mover_source_endpoints, keyed the same as var.storage_mover_source_endpoints"
  value       = module.storage_mover_source_endpoints.storage_mover_source_endpoints_description
}

output "storage_mover_source_endpoints_export" {
  description = "Map of export values across all storage_mover_source_endpoints, keyed the same as var.storage_mover_source_endpoints"
  value       = module.storage_mover_source_endpoints.storage_mover_source_endpoints_export
}

output "storage_mover_source_endpoints_host" {
  description = "Map of host values across all storage_mover_source_endpoints, keyed the same as var.storage_mover_source_endpoints"
  value       = module.storage_mover_source_endpoints.storage_mover_source_endpoints_host
}

output "storage_mover_source_endpoints_name" {
  description = "Map of name values across all storage_mover_source_endpoints, keyed the same as var.storage_mover_source_endpoints"
  value       = module.storage_mover_source_endpoints.storage_mover_source_endpoints_name
}

output "storage_mover_source_endpoints_nfs_version" {
  description = "Map of nfs_version values across all storage_mover_source_endpoints, keyed the same as var.storage_mover_source_endpoints"
  value       = module.storage_mover_source_endpoints.storage_mover_source_endpoints_nfs_version
}

output "storage_mover_source_endpoints_storage_mover_id" {
  description = "Map of storage_mover_id values across all storage_mover_source_endpoints, keyed the same as var.storage_mover_source_endpoints"
  value       = module.storage_mover_source_endpoints.storage_mover_source_endpoints_storage_mover_id
}

# --- azurerm_storage_mover_target_endpoint ---
output "storage_mover_target_endpoints_id" {
  description = "Map of id values across all storage_mover_target_endpoints, keyed the same as var.storage_mover_target_endpoints"
  value       = module.storage_mover_target_endpoints.storage_mover_target_endpoints_id
}

output "storage_mover_target_endpoints_description" {
  description = "Map of description values across all storage_mover_target_endpoints, keyed the same as var.storage_mover_target_endpoints"
  value       = module.storage_mover_target_endpoints.storage_mover_target_endpoints_description
}

output "storage_mover_target_endpoints_name" {
  description = "Map of name values across all storage_mover_target_endpoints, keyed the same as var.storage_mover_target_endpoints"
  value       = module.storage_mover_target_endpoints.storage_mover_target_endpoints_name
}

output "storage_mover_target_endpoints_storage_account_id" {
  description = "Map of storage_account_id values across all storage_mover_target_endpoints, keyed the same as var.storage_mover_target_endpoints"
  value       = module.storage_mover_target_endpoints.storage_mover_target_endpoints_storage_account_id
}

output "storage_mover_target_endpoints_storage_container_name" {
  description = "Map of storage_container_name values across all storage_mover_target_endpoints, keyed the same as var.storage_mover_target_endpoints"
  value       = module.storage_mover_target_endpoints.storage_mover_target_endpoints_storage_container_name
}

output "storage_mover_target_endpoints_storage_mover_id" {
  description = "Map of storage_mover_id values across all storage_mover_target_endpoints, keyed the same as var.storage_mover_target_endpoints"
  value       = module.storage_mover_target_endpoints.storage_mover_target_endpoints_storage_mover_id
}

# --- azurerm_storage_mover_job_definition ---
output "storage_mover_job_definitions_id" {
  description = "Map of id values across all storage_mover_job_definitions, keyed the same as var.storage_mover_job_definitions"
  value       = module.storage_mover_job_definitions.storage_mover_job_definitions_id
}

output "storage_mover_job_definitions_agent_name" {
  description = "Map of agent_name values across all storage_mover_job_definitions, keyed the same as var.storage_mover_job_definitions"
  value       = module.storage_mover_job_definitions.storage_mover_job_definitions_agent_name
}

output "storage_mover_job_definitions_copy_mode" {
  description = "Map of copy_mode values across all storage_mover_job_definitions, keyed the same as var.storage_mover_job_definitions"
  value       = module.storage_mover_job_definitions.storage_mover_job_definitions_copy_mode
}

output "storage_mover_job_definitions_description" {
  description = "Map of description values across all storage_mover_job_definitions, keyed the same as var.storage_mover_job_definitions"
  value       = module.storage_mover_job_definitions.storage_mover_job_definitions_description
}

output "storage_mover_job_definitions_name" {
  description = "Map of name values across all storage_mover_job_definitions, keyed the same as var.storage_mover_job_definitions"
  value       = module.storage_mover_job_definitions.storage_mover_job_definitions_name
}

output "storage_mover_job_definitions_source_name" {
  description = "Map of source_name values across all storage_mover_job_definitions, keyed the same as var.storage_mover_job_definitions"
  value       = module.storage_mover_job_definitions.storage_mover_job_definitions_source_name
}

output "storage_mover_job_definitions_source_sub_path" {
  description = "Map of source_sub_path values across all storage_mover_job_definitions, keyed the same as var.storage_mover_job_definitions"
  value       = module.storage_mover_job_definitions.storage_mover_job_definitions_source_sub_path
}

output "storage_mover_job_definitions_storage_mover_project_id" {
  description = "Map of storage_mover_project_id values across all storage_mover_job_definitions, keyed the same as var.storage_mover_job_definitions"
  value       = module.storage_mover_job_definitions.storage_mover_job_definitions_storage_mover_project_id
}

output "storage_mover_job_definitions_target_name" {
  description = "Map of target_name values across all storage_mover_job_definitions, keyed the same as var.storage_mover_job_definitions"
  value       = module.storage_mover_job_definitions.storage_mover_job_definitions_target_name
}

output "storage_mover_job_definitions_target_sub_path" {
  description = "Map of target_sub_path values across all storage_mover_job_definitions, keyed the same as var.storage_mover_job_definitions"
  value       = module.storage_mover_job_definitions.storage_mover_job_definitions_target_sub_path
}


