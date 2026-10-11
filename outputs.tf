output "ces_deployments_id" {
  description = "Map of id values across all ces_deployments, keyed the same as var.ces_deployments except keys with no id are omitted"
  value       = { for k, v in google_ces_deployment.ces_deployments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ces_deployments_app" {
  description = "Map of app values across all ces_deployments, keyed the same as var.ces_deployments except keys with no app are omitted"
  value       = { for k, v in google_ces_deployment.ces_deployments : k => v.app if v.app != null && length(v.app) > 0 }
}
output "ces_deployments_app_version" {
  description = "Map of app_version values across all ces_deployments, keyed the same as var.ces_deployments except keys with no app_version are omitted"
  value       = { for k, v in google_ces_deployment.ces_deployments : k => v.app_version if v.app_version != null && length(v.app_version) > 0 }
}
output "ces_deployments_channel_profile" {
  description = "Map of channel_profile values across all ces_deployments, keyed the same as var.ces_deployments except keys with no channel_profile are omitted"
  value       = { for k, v in google_ces_deployment.ces_deployments : k => one(v.channel_profile) if v.channel_profile != null && length(v.channel_profile) > 0 }
}
output "ces_deployments_create_time" {
  description = "Map of create_time values across all ces_deployments, keyed the same as var.ces_deployments except keys with no create_time are omitted"
  value       = { for k, v in google_ces_deployment.ces_deployments : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "ces_deployments_deletion_policy" {
  description = "Map of deletion_policy values across all ces_deployments, keyed the same as var.ces_deployments except keys with no deletion_policy are omitted"
  value       = { for k, v in google_ces_deployment.ces_deployments : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "ces_deployments_display_name" {
  description = "Map of display_name values across all ces_deployments, keyed the same as var.ces_deployments except keys with no display_name are omitted"
  value       = { for k, v in google_ces_deployment.ces_deployments : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "ces_deployments_etag" {
  description = "Map of etag values across all ces_deployments, keyed the same as var.ces_deployments except keys with no etag are omitted"
  value       = { for k, v in google_ces_deployment.ces_deployments : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "ces_deployments_instagram_credentials" {
  description = "Map of instagram_credentials values across all ces_deployments, keyed the same as var.ces_deployments except keys with no instagram_credentials are omitted"
  value       = { for k, v in google_ces_deployment.ces_deployments : k => one(v.instagram_credentials) if v.instagram_credentials != null && length(v.instagram_credentials) > 0 }
  sensitive   = true
}
output "ces_deployments_location" {
  description = "Map of location values across all ces_deployments, keyed the same as var.ces_deployments except keys with no location are omitted"
  value       = { for k, v in google_ces_deployment.ces_deployments : k => v.location if v.location != null && length(v.location) > 0 }
}
output "ces_deployments_name" {
  description = "Map of name values across all ces_deployments, keyed the same as var.ces_deployments except keys with no name are omitted"
  value       = { for k, v in google_ces_deployment.ces_deployments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ces_deployments_project" {
  description = "Map of project values across all ces_deployments, keyed the same as var.ces_deployments except keys with no project are omitted"
  value       = { for k, v in google_ces_deployment.ces_deployments : k => v.project if v.project != null && length(v.project) > 0 }
}
output "ces_deployments_update_time" {
  description = "Map of update_time values across all ces_deployments, keyed the same as var.ces_deployments except keys with no update_time are omitted"
  value       = { for k, v in google_ces_deployment.ces_deployments : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "ces_deployments_whatsapp_credentials" {
  description = "Map of whatsapp_credentials values across all ces_deployments, keyed the same as var.ces_deployments except keys with no whatsapp_credentials are omitted"
  value       = { for k, v in google_ces_deployment.ces_deployments : k => one(v.whatsapp_credentials) if v.whatsapp_credentials != null && length(v.whatsapp_credentials) > 0 }
  sensitive   = true
}

