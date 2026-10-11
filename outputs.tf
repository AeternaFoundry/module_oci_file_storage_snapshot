output "file_storage_snapshots_id" {
  description = "Map of id values across all file_storage_snapshots, keyed the same as var.file_storage_snapshots except keys with no id are omitted"
  value       = { for k, v in oci_file_storage_snapshot.file_storage_snapshots : k => v.id if v.id != null && length(v.id) > 0 }
}
output "file_storage_snapshots_defined_tags" {
  description = "Map of defined_tags values across all file_storage_snapshots, keyed the same as var.file_storage_snapshots except keys with no defined_tags are omitted"
  value       = { for k, v in oci_file_storage_snapshot.file_storage_snapshots : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "file_storage_snapshots_exclusive_bytes" {
  description = "Map of exclusive_bytes values across all file_storage_snapshots, keyed the same as var.file_storage_snapshots except keys with no exclusive_bytes are omitted"
  value       = { for k, v in oci_file_storage_snapshot.file_storage_snapshots : k => v.exclusive_bytes if v.exclusive_bytes != null && length(v.exclusive_bytes) > 0 }
}
output "file_storage_snapshots_expiration_time" {
  description = "Map of expiration_time values across all file_storage_snapshots, keyed the same as var.file_storage_snapshots except keys with no expiration_time are omitted"
  value       = { for k, v in oci_file_storage_snapshot.file_storage_snapshots : k => v.expiration_time if v.expiration_time != null && length(v.expiration_time) > 0 }
}
output "file_storage_snapshots_file_system_id" {
  description = "Map of file_system_id values across all file_storage_snapshots, keyed the same as var.file_storage_snapshots except keys with no file_system_id are omitted"
  value       = { for k, v in oci_file_storage_snapshot.file_storage_snapshots : k => v.file_system_id if v.file_system_id != null && length(v.file_system_id) > 0 }
}
output "file_storage_snapshots_filesystem_snapshot_policy_id" {
  description = "Map of filesystem_snapshot_policy_id values across all file_storage_snapshots, keyed the same as var.file_storage_snapshots except keys with no filesystem_snapshot_policy_id are omitted"
  value       = { for k, v in oci_file_storage_snapshot.file_storage_snapshots : k => v.filesystem_snapshot_policy_id if v.filesystem_snapshot_policy_id != null && length(v.filesystem_snapshot_policy_id) > 0 }
}
output "file_storage_snapshots_freeform_tags" {
  description = "Map of freeform_tags values across all file_storage_snapshots, keyed the same as var.file_storage_snapshots except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_file_storage_snapshot.file_storage_snapshots : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "file_storage_snapshots_is_clone_source" {
  description = "Map of is_clone_source values across all file_storage_snapshots, keyed the same as var.file_storage_snapshots except keys with no is_clone_source are omitted"
  value       = { for k, v in oci_file_storage_snapshot.file_storage_snapshots : k => v.is_clone_source if v.is_clone_source != null }
}
output "file_storage_snapshots_is_lock_override" {
  description = "Map of is_lock_override values across all file_storage_snapshots, keyed the same as var.file_storage_snapshots except keys with no is_lock_override are omitted"
  value       = { for k, v in oci_file_storage_snapshot.file_storage_snapshots : k => v.is_lock_override if v.is_lock_override != null }
}
output "file_storage_snapshots_lifecycle_details" {
  description = "Map of lifecycle_details values across all file_storage_snapshots, keyed the same as var.file_storage_snapshots except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_file_storage_snapshot.file_storage_snapshots : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "file_storage_snapshots_lock_duration_details" {
  description = "Map of lock_duration_details values across all file_storage_snapshots, keyed the same as var.file_storage_snapshots except keys with no lock_duration_details are omitted"
  value       = { for k, v in oci_file_storage_snapshot.file_storage_snapshots : k => one(v.lock_duration_details) if v.lock_duration_details != null && length(v.lock_duration_details) > 0 }
}
output "file_storage_snapshots_locks" {
  description = "Map of locks values across all file_storage_snapshots, keyed the same as var.file_storage_snapshots except keys with no locks are omitted"
  value       = { for k, v in oci_file_storage_snapshot.file_storage_snapshots : k => v.locks if v.locks != null && length(v.locks) > 0 }
}
output "file_storage_snapshots_name" {
  description = "Map of name values across all file_storage_snapshots, keyed the same as var.file_storage_snapshots except keys with no name are omitted"
  value       = { for k, v in oci_file_storage_snapshot.file_storage_snapshots : k => v.name if v.name != null && length(v.name) > 0 }
}
output "file_storage_snapshots_provenance_id" {
  description = "Map of provenance_id values across all file_storage_snapshots, keyed the same as var.file_storage_snapshots except keys with no provenance_id are omitted"
  value       = { for k, v in oci_file_storage_snapshot.file_storage_snapshots : k => v.provenance_id if v.provenance_id != null && length(v.provenance_id) > 0 }
}
output "file_storage_snapshots_snapshot_time" {
  description = "Map of snapshot_time values across all file_storage_snapshots, keyed the same as var.file_storage_snapshots except keys with no snapshot_time are omitted"
  value       = { for k, v in oci_file_storage_snapshot.file_storage_snapshots : k => v.snapshot_time if v.snapshot_time != null && length(v.snapshot_time) > 0 }
}
output "file_storage_snapshots_snapshot_type" {
  description = "Map of snapshot_type values across all file_storage_snapshots, keyed the same as var.file_storage_snapshots except keys with no snapshot_type are omitted"
  value       = { for k, v in oci_file_storage_snapshot.file_storage_snapshots : k => v.snapshot_type if v.snapshot_type != null && length(v.snapshot_type) > 0 }
}
output "file_storage_snapshots_state" {
  description = "Map of state values across all file_storage_snapshots, keyed the same as var.file_storage_snapshots except keys with no state are omitted"
  value       = { for k, v in oci_file_storage_snapshot.file_storage_snapshots : k => v.state if v.state != null && length(v.state) > 0 }
}
output "file_storage_snapshots_system_tags" {
  description = "Map of system_tags values across all file_storage_snapshots, keyed the same as var.file_storage_snapshots except keys with no system_tags are omitted"
  value       = { for k, v in oci_file_storage_snapshot.file_storage_snapshots : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "file_storage_snapshots_time_created" {
  description = "Map of time_created values across all file_storage_snapshots, keyed the same as var.file_storage_snapshots except keys with no time_created are omitted"
  value       = { for k, v in oci_file_storage_snapshot.file_storage_snapshots : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "file_storage_snapshots_time_locked" {
  description = "Map of time_locked values across all file_storage_snapshots, keyed the same as var.file_storage_snapshots except keys with no time_locked are omitted"
  value       = { for k, v in oci_file_storage_snapshot.file_storage_snapshots : k => v.time_locked if v.time_locked != null && length(v.time_locked) > 0 }
}

