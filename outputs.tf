output "projects_lookup_id" {
  description = "Map of id values across all projects_lookup, keyed the same as var.projects_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_projects.projects_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "projects_lookup_name" {
  description = "Map of name values across all projects_lookup, keyed the same as var.projects_lookup except keys with no name are omitted"
  value       = { for k, v in data.azuredevops_projects.projects_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "projects_lookup_projects" {
  description = "Map of projects values across all projects_lookup, keyed the same as var.projects_lookup except keys with no projects are omitted"
  value       = { for k, v in data.azuredevops_projects.projects_lookup : k => v.projects if v.projects != null && length(v.projects) > 0 }
}
output "projects_lookup_state" {
  description = "Map of state values across all projects_lookup, keyed the same as var.projects_lookup except keys with no state are omitted"
  value       = { for k, v in data.azuredevops_projects.projects_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

