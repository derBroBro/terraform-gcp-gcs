# Create GCS buckets
resource "google_storage_bucket" "gcs_buckets" {
  count         = "${local.count_gcs_bucket_names}"
  name          = "${element(var.bucket_names, count.index)}"
  location 	  	= "${var.bucket_location}"
  project  	  	= "${var.bucket_project}"
  storage_class	= "${var.bucket_storage_class}"
  
  
  versioning	{
    enabled = "${var.gcs_versioning_enabled}" 
  }
  
  lifecycle_rule {
    action {
      type = "${var.lifecycle_rule_action_type}"
    }
    condition {
      age = "${var.lifecycle_rule_condition_age}"
      is_live = "${var.lifecycle_rule_condition_is_live}"
    }
  }
}