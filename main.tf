data "azuredevops_projects" "projects_lookup" {
  for_each = var.projects_lookup

  name  = each.value.name
  state = each.value.state

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

