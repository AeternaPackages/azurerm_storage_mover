# --- azurerm_storage_mover ---
output "storage_movers" {
  description = "All storage_mover resources"
  value       = module.storage_movers.storage_movers
}
output "storage_movers_description" {
  description = "List of description values across all storage_movers"
  value       = [for k, v in module.storage_movers.storage_movers : v.description]
}
output "storage_movers_location" {
  description = "List of location values across all storage_movers"
  value       = [for k, v in module.storage_movers.storage_movers : v.location]
}
output "storage_movers_name" {
  description = "List of name values across all storage_movers"
  value       = [for k, v in module.storage_movers.storage_movers : v.name]
}
output "storage_movers_resource_group_name" {
  description = "List of resource_group_name values across all storage_movers"
  value       = [for k, v in module.storage_movers.storage_movers : v.resource_group_name]
}
output "storage_movers_tags" {
  description = "List of tags values across all storage_movers"
  value       = [for k, v in module.storage_movers.storage_movers : v.tags]
}


# --- azurerm_storage_mover_agent ---
output "storage_mover_agents" {
  description = "All storage_mover_agent resources"
  value       = module.storage_mover_agents.storage_mover_agents
}
output "storage_mover_agents_arc_virtual_machine_id" {
  description = "List of arc_virtual_machine_id values across all storage_mover_agents"
  value       = [for k, v in module.storage_mover_agents.storage_mover_agents : v.arc_virtual_machine_id]
}
output "storage_mover_agents_arc_virtual_machine_uuid" {
  description = "List of arc_virtual_machine_uuid values across all storage_mover_agents"
  value       = [for k, v in module.storage_mover_agents.storage_mover_agents : v.arc_virtual_machine_uuid]
}
output "storage_mover_agents_description" {
  description = "List of description values across all storage_mover_agents"
  value       = [for k, v in module.storage_mover_agents.storage_mover_agents : v.description]
}
output "storage_mover_agents_name" {
  description = "List of name values across all storage_mover_agents"
  value       = [for k, v in module.storage_mover_agents.storage_mover_agents : v.name]
}
output "storage_mover_agents_storage_mover_id" {
  description = "List of storage_mover_id values across all storage_mover_agents"
  value       = [for k, v in module.storage_mover_agents.storage_mover_agents : v.storage_mover_id]
}


# --- azurerm_storage_mover_project ---
output "storage_mover_projects" {
  description = "All storage_mover_project resources"
  value       = module.storage_mover_projects.storage_mover_projects
}
output "storage_mover_projects_description" {
  description = "List of description values across all storage_mover_projects"
  value       = [for k, v in module.storage_mover_projects.storage_mover_projects : v.description]
}
output "storage_mover_projects_name" {
  description = "List of name values across all storage_mover_projects"
  value       = [for k, v in module.storage_mover_projects.storage_mover_projects : v.name]
}
output "storage_mover_projects_storage_mover_id" {
  description = "List of storage_mover_id values across all storage_mover_projects"
  value       = [for k, v in module.storage_mover_projects.storage_mover_projects : v.storage_mover_id]
}


# --- azurerm_storage_mover_source_endpoint ---
output "storage_mover_source_endpoints" {
  description = "All storage_mover_source_endpoint resources"
  value       = module.storage_mover_source_endpoints.storage_mover_source_endpoints
}
output "storage_mover_source_endpoints_description" {
  description = "List of description values across all storage_mover_source_endpoints"
  value       = [for k, v in module.storage_mover_source_endpoints.storage_mover_source_endpoints : v.description]
}
output "storage_mover_source_endpoints_export" {
  description = "List of export values across all storage_mover_source_endpoints"
  value       = [for k, v in module.storage_mover_source_endpoints.storage_mover_source_endpoints : v.export]
}
output "storage_mover_source_endpoints_host" {
  description = "List of host values across all storage_mover_source_endpoints"
  value       = [for k, v in module.storage_mover_source_endpoints.storage_mover_source_endpoints : v.host]
}
output "storage_mover_source_endpoints_name" {
  description = "List of name values across all storage_mover_source_endpoints"
  value       = [for k, v in module.storage_mover_source_endpoints.storage_mover_source_endpoints : v.name]
}
output "storage_mover_source_endpoints_nfs_version" {
  description = "List of nfs_version values across all storage_mover_source_endpoints"
  value       = [for k, v in module.storage_mover_source_endpoints.storage_mover_source_endpoints : v.nfs_version]
}
output "storage_mover_source_endpoints_storage_mover_id" {
  description = "List of storage_mover_id values across all storage_mover_source_endpoints"
  value       = [for k, v in module.storage_mover_source_endpoints.storage_mover_source_endpoints : v.storage_mover_id]
}


# --- azurerm_storage_mover_target_endpoint ---
output "storage_mover_target_endpoints" {
  description = "All storage_mover_target_endpoint resources"
  value       = module.storage_mover_target_endpoints.storage_mover_target_endpoints
}
output "storage_mover_target_endpoints_description" {
  description = "List of description values across all storage_mover_target_endpoints"
  value       = [for k, v in module.storage_mover_target_endpoints.storage_mover_target_endpoints : v.description]
}
output "storage_mover_target_endpoints_name" {
  description = "List of name values across all storage_mover_target_endpoints"
  value       = [for k, v in module.storage_mover_target_endpoints.storage_mover_target_endpoints : v.name]
}
output "storage_mover_target_endpoints_storage_account_id" {
  description = "List of storage_account_id values across all storage_mover_target_endpoints"
  value       = [for k, v in module.storage_mover_target_endpoints.storage_mover_target_endpoints : v.storage_account_id]
}
output "storage_mover_target_endpoints_storage_container_name" {
  description = "List of storage_container_name values across all storage_mover_target_endpoints"
  value       = [for k, v in module.storage_mover_target_endpoints.storage_mover_target_endpoints : v.storage_container_name]
}
output "storage_mover_target_endpoints_storage_mover_id" {
  description = "List of storage_mover_id values across all storage_mover_target_endpoints"
  value       = [for k, v in module.storage_mover_target_endpoints.storage_mover_target_endpoints : v.storage_mover_id]
}


# --- azurerm_storage_mover_job_definition ---
output "storage_mover_job_definitions" {
  description = "All storage_mover_job_definition resources"
  value       = module.storage_mover_job_definitions.storage_mover_job_definitions
}
output "storage_mover_job_definitions_agent_name" {
  description = "List of agent_name values across all storage_mover_job_definitions"
  value       = [for k, v in module.storage_mover_job_definitions.storage_mover_job_definitions : v.agent_name]
}
output "storage_mover_job_definitions_copy_mode" {
  description = "List of copy_mode values across all storage_mover_job_definitions"
  value       = [for k, v in module.storage_mover_job_definitions.storage_mover_job_definitions : v.copy_mode]
}
output "storage_mover_job_definitions_description" {
  description = "List of description values across all storage_mover_job_definitions"
  value       = [for k, v in module.storage_mover_job_definitions.storage_mover_job_definitions : v.description]
}
output "storage_mover_job_definitions_name" {
  description = "List of name values across all storage_mover_job_definitions"
  value       = [for k, v in module.storage_mover_job_definitions.storage_mover_job_definitions : v.name]
}
output "storage_mover_job_definitions_source_name" {
  description = "List of source_name values across all storage_mover_job_definitions"
  value       = [for k, v in module.storage_mover_job_definitions.storage_mover_job_definitions : v.source_name]
}
output "storage_mover_job_definitions_source_sub_path" {
  description = "List of source_sub_path values across all storage_mover_job_definitions"
  value       = [for k, v in module.storage_mover_job_definitions.storage_mover_job_definitions : v.source_sub_path]
}
output "storage_mover_job_definitions_storage_mover_project_id" {
  description = "List of storage_mover_project_id values across all storage_mover_job_definitions"
  value       = [for k, v in module.storage_mover_job_definitions.storage_mover_job_definitions : v.storage_mover_project_id]
}
output "storage_mover_job_definitions_target_name" {
  description = "List of target_name values across all storage_mover_job_definitions"
  value       = [for k, v in module.storage_mover_job_definitions.storage_mover_job_definitions : v.target_name]
}
output "storage_mover_job_definitions_target_sub_path" {
  description = "List of target_sub_path values across all storage_mover_job_definitions"
  value       = [for k, v in module.storage_mover_job_definitions.storage_mover_job_definitions : v.target_sub_path]
}



