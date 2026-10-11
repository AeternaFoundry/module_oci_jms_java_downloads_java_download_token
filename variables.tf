variable "jms_java_downloads_java_download_tokens" {
  description = <<EOT
Map of jms_java_downloads_java_download_tokens, attributes below
Required:
    - compartment_id
    - description
    - display_name
    - java_version
    - license_type
    - time_expires
Optional:
    - defined_tags
    - freeform_tags
    - is_default
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    description    = string
    display_name   = string
    java_version   = string
    license_type   = list(string)
    time_expires   = string
    defined_tags   = optional(map(string))
    freeform_tags  = optional(map(string))
    is_default     = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

