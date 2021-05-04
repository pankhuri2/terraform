resource "random_string" "launch_id" {
  length  = 4
  special = false
  upper   = false
}

locals {
  suffix = format("%s-%s", "tf", random_string.launch_id.result)
}

module "man_nas" {
  source               = "../modules"
  suffix               = local.suffix
  gcp_project_id       = "searce-academy"
  filestore_name       = "filestore"
  filestore_tier       = "STANDARD"
  filestore_share_name = "Documents"
  region               = "us-west1"
  zone                 = "b"
  vpc_network_name     = "main-vpc"
  network_modes        = ["MODE_IPV4"]
}

module "default" {
  source               = "../modules"
  suffix               = local.suffix
  gcp_project_id       = "searce-academy"
  filestore_name       = "filestore-2"
  filestore_tier       = "STANDARD"
  filestore_share_name = "Documents"
  region               = "us-west1"
  zone                 = "b"
  vpc_network_name     = "main-vpc"
  network_modes        = ["MODE_IPV4"]
}
