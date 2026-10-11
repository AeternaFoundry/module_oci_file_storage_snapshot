variable "file_storage_snapshots" {
  description = <<EOT
Map of file_storage_snapshots, attributes below
Required:
    - file_system_id
    - name
Optional:
    - defined_tags
    - expiration_time
    - freeform_tags
    - is_lock_override
    - lock_duration_details (block):
        - cool_off_duration (optional)
        - lock_duration (required)
        - lock_mode (required)
    - locks (block):
        - message (optional)
        - related_resource_id (optional)
        - time_created (optional)
        - type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    file_system_id   = string
    name             = string
    defined_tags     = optional(map(string))
    expiration_time  = optional(string)
    freeform_tags    = optional(map(string))
    is_lock_override = optional(bool)
    lock_duration_details = optional(object({
      cool_off_duration = optional(number)
      lock_duration     = number
      lock_mode         = string
    }))
    locks = optional(list(object({
      message             = optional(string)
      related_resource_id = optional(string)
      time_created        = optional(string)
      type                = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

