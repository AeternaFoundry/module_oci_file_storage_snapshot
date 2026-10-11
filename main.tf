resource "oci_file_storage_snapshot" "file_storage_snapshots" {
  for_each = var.file_storage_snapshots

  file_system_id   = each.value.file_system_id
  name             = each.value.name
  defined_tags     = each.value.defined_tags
  expiration_time  = each.value.expiration_time
  freeform_tags    = each.value.freeform_tags
  is_lock_override = each.value.is_lock_override

  dynamic "lock_duration_details" {
    for_each = each.value.lock_duration_details != null ? [each.value.lock_duration_details] : []
    content {
      cool_off_duration = lock_duration_details.value.cool_off_duration
      lock_duration     = lock_duration_details.value.lock_duration
      lock_mode         = lock_duration_details.value.lock_mode
    }
  }

  dynamic "locks" {
    for_each = each.value.locks != null ? each.value.locks : []
    content {
      message             = locks.value.message
      related_resource_id = locks.value.related_resource_id
      time_created        = locks.value.time_created
      type                = locks.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

