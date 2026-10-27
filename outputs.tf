output "projects_lookup_id" {
  description = "Map of id values across all projects_lookup, keyed the same as var.projects_lookup"
  value       = { for k, v in data.azuredevops_projects.projects_lookup : k => v.id }
}
output "projects_lookup_name" {
  description = "Map of name values across all projects_lookup, keyed the same as var.projects_lookup"
  value       = { for k, v in data.azuredevops_projects.projects_lookup : k => v.name }
}
output "projects_lookup_projects" {
  description = "Map of projects values across all projects_lookup, keyed the same as var.projects_lookup"
  value       = { for k, v in data.azuredevops_projects.projects_lookup : k => v.projects }
}
output "projects_lookup_state" {
  description = "Map of state values across all projects_lookup, keyed the same as var.projects_lookup"
  value       = { for k, v in data.azuredevops_projects.projects_lookup : k => v.state }
}

