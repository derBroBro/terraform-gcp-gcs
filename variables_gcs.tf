# GCS Variables
variable "bucket_names" {
  type = "list"
  description = "Name of the GCS buckets"
}

variable "bucket_location" {
  description = "Location of the GCS bucket"
}

variable "bucket_project" {
  description = "Project for the GCS bucket"
}

variable "bucket_storage_class" {
  description = "Storage class of the GCS bucket"
}

variable "gcs_versioning_enabled" {
  description = "To enable object versioning"
  default     = false
}

variable "lifecycle_rule_action_type" {
  description = "The type of the action of this Lifecycle Rule. Supported values include: Delete and SetStorageClass"
  default     = "delete"
}

variable "lifecycle_rule_condition_age" {
  description = "Minimum age of an object in days to satisfy this condition"
  default     = 180
}

variable "lifecycle_rule_condition_is_live" {
  description = "Relevant only for versioned objects. If true, this condition matches live objects, archived objects otherwise."
  default     = false
}

##end