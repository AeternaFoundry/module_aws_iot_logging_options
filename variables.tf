variable "iot_logging_options" {
  description = <<EOT
Map of iot_logging_options, attributes below
Required:
    - default_log_level
    - role_arn
Optional:
    - disable_all_logs
    - region
EOT

  type = map(object({
    default_log_level = string
    role_arn          = string
    disable_all_logs  = optional(bool)
    region            = optional(string)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

