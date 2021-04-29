module "cloud_storage" {
  source               = "../modules"
  gcp_project_id       = "searce-academy"
  storage_name         = "storage"
  storage_class        = "STANDARD"
  location             = "US"
}