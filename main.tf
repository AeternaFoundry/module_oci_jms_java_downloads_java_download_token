resource "oci_jms_java_downloads_java_download_token" "jms_java_downloads_java_download_tokens" {
  for_each = var.jms_java_downloads_java_download_tokens

  compartment_id = each.value.compartment_id
  description    = each.value.description
  display_name   = each.value.display_name
  java_version   = each.value.java_version
  license_type   = each.value.license_type
  time_expires   = each.value.time_expires
  defined_tags   = each.value.defined_tags
  freeform_tags  = each.value.freeform_tags
  is_default     = each.value.is_default

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

