variable "suffix" {
  description = "An arbitrary suffix that will be added to the end of the resource name(s). For example: an environment name, a business-case name, a numeric id, etc."
  type        = string
  validation {
    condition     = length(var.suffix) <= 14
    error_message = "A max of 14 character(s) are allowed."
  }
}

variable "region" {
    type        = string
    description = "The project id to manage the Cloud SQL resources"
}

variable "resource_group_name" {
    type        = string
    description = "The name of the resource group in which to create the database"
}

variable "location" {
    type        = string
    description = "Specifies the supported Azure location where the resource exists."
}

    variable "database_version" {
    type        = string
    description = "The database version to use"
}

    variable "administrator_login" {
    type        = string
    description = " Specifies the name of the SQL administrator"
}

    variable "administrator_login_password" {
    type        = string
    description = "Specifies the password of the SQL administrator."
}
