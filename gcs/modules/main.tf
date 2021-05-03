resource "google_storage_bucket" "env_bucket" {
  name                        = var.gcs_bucket_name
  project                     = var.gcp_project_id
  location                    = var.location
  storage_class               = var.storage_class
  uniform_bucket_level_access = var.bucket_policy_only
  force_destroy               = var.force_destroy

  versioning {
    enabled = var.versioning
  }
  
   lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}