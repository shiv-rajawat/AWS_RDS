## This files declares all the parameters used for setting up configurations for dev. The values are given through the *.tfvars file.

#variable "access_key" {
#  type = "string"
#  }

#variable "secret_key" {
#  type = "string"
#  }

variable "aws_region" {
  type = "string"
}

variable "allocated_storage" {
  type = "string"
}

variable "storage_type" {
  type = "string"
}

variable "engine" {
  type = "string"
}

variable "engine_version" {
  type = "string"
}

variable "instance_class" {
  type = "string"
}

variable "username" {
  type = "string"
}

variable "password" {
  type = "string"
}

variable "db_option_group_name" {
  type = "string"
}

variable "license_model" {
  type = "string"
}

variable "publicly_accessible" {
  type = "string"
}
