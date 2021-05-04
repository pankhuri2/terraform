output "filestore_instance_name" {
  value       = local.filestore_instance_name
  description = "Name of Filestore Instance."
}

output "vpc_network_name" {
  value       = var.vpc_network_name
  description = "Name of VPC Network in which Filestore Instance being created."
}