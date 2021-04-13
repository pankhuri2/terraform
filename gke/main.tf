locals {
  gke_cluster_name = format("%s-%s", var.gke_cluster_name, "cluster")
}


resource "google_container_cluster" "env" {
  name     = local.gke_cluster_name
  location = var.google_container_cluster

  remove_default_node_pool = true
  initial_node_count       = 1
}


resource "google_container_node_pool" "primary_env_nodes" {
    name         = "${local.gke_cluster_name}-np"
    location     = var.google_container_node_pool
    cluster      = google_container_cluster.env.name
    node_count   = 1


    node_config {
        preemptible  = true
        machine_type = var.google_node_config
    }    
}