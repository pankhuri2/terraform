terraform {
  required_version = ">= 0.13.1" # see https://releases.hashicorp.com/terraform/
}

locals {
  filestore_instance_name = format("%s-%s", var.filestore_name, var.suffix)
  region                  = var.region != "" ? var.region : data.google_client_config.google_client.region
  filestore_instance_zone = format("%s-%s", local.region, var.zone)
}

resource "google_project_service" "filestore_api" {
  service            = "file.googleapis.com"
  disable_on_destroy = false
}

resource "google_filestore_instance" "network" {
  provider = google-beta
  name     = local.filestore_instance_name
  zone     = local.filestore_instance_zone
  tier     = var.filestore_tier
  project  = var.gcp_project_id

  file_shares {
    capacity_gb = var.filestore_capacity
    name        = var.filestore_share_name
  }

  networks {
    network = var.vpc_network_name
    modes   = var.network_modes
  }

  timeouts {
    create = var.filestore_timeout
    update = var.filestore_timeout
    delete = var.filestore_timeout
  }
}

data "google_client_config" "google_client" {}