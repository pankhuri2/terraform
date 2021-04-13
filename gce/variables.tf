variable "instance_machine_type" {
    type    = string
    default = "e2-medium"
    description = "The type of gce vm instance for each node"
  
}

variable "zone"{
    type =string
    description = "zone is a deployment area where machine is created"

}

variable "boot_disk_image" {
  type        = string
  default     = "debian-cloud/debian-9"
  description = "GCE vm Instance Underlying Operating System"

}

variable "boot_disk_size" {
    type  = number
    default = 50
    description = "The size of the boot disk in gigabytes"
  
}

variable "boot_disk_type" {
    type  = string
    default = "pd-standard"
    description = "The GCE disk type. May be set to \"pd-standard\", \"pd-balanced\" or \"pd-ssd\"."

}
  
variable "network_tags" {
    type =list(string)
    default =[]
    description = "A list of network tags to attach to the instance"
  
}
variable "vpc_network_name" {
    type = string
    default = "main-vpc"
    description = "VPC network in which gce vm instance being created"
  
}