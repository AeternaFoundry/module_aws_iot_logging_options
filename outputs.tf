output "iot_logging_options_id" {
  description = "Map of id values across all iot_logging_options, keyed the same as var.iot_logging_options"
  value       = { for k, v in aws_iot_logging_options.iot_logging_options : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iot_logging_options_default_log_level" {
  description = "Map of default_log_level values across all iot_logging_options, keyed the same as var.iot_logging_options"
  value       = { for k, v in aws_iot_logging_options.iot_logging_options : k => v.default_log_level if v.default_log_level != null && length(v.default_log_level) > 0 }
}
output "iot_logging_options_disable_all_logs" {
  description = "Map of disable_all_logs values across all iot_logging_options, keyed the same as var.iot_logging_options"
  value       = { for k, v in aws_iot_logging_options.iot_logging_options : k => v.disable_all_logs if v.disable_all_logs != null }
}
output "iot_logging_options_region" {
  description = "Map of region values across all iot_logging_options, keyed the same as var.iot_logging_options"
  value       = { for k, v in aws_iot_logging_options.iot_logging_options : k => v.region if v.region != null && length(v.region) > 0 }
}
output "iot_logging_options_role_arn" {
  description = "Map of role_arn values across all iot_logging_options, keyed the same as var.iot_logging_options"
  value       = { for k, v in aws_iot_logging_options.iot_logging_options : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}

