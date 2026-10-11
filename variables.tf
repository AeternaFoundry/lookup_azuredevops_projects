variable "projects_lookup" {
  description = <<EOT
Map of projects_lookup, attributes below
Optional:
    - name
    - state
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    name  = optional(string)
    state = optional(string)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.projects_lookup : (
        v.name == null || (length(trimspace(v.name)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

