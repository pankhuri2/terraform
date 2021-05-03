module "cloud_storage" {
  source          = "../modules"
  gcp_project_id  = "searce-academy"
  gcs_bucket_name = "wesley-may"
  storage_class   = "STANDARD"
  location        = "US"
}