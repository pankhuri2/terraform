terraform {
  required_version = ">= 0.13.1" # see https://releases.hashicorp.com/terraform/
}

locals {
    bigtable_instance_name = format("%s-%s", var.bigtable_name, var.suffix)
}

resource "google_bigtable_instance" "dev_instance" {
  name            = local.bigtable_instance_name
  project         = var.project_id

  cluster {
      cluster_id    = "instance_cluster_tf"
      num_nodes     = var.num_nodes
      storage_type  = var.storage_type
      zone          = var.cluster_zone
  }

  labels  = {
      my_label   = "env-label"
  }
}  