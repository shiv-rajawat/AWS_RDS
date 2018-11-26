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

variable "db_option_group_name"{
  type = "string"
}

variable "engine_name"{
  type = "string"
}

variable "major_engine_version"{
  type = "string"
}


variable "bucket_name"{
  type = "string"
}


variable "database_option_group_role_name"{
  type = "string"
}


variable "database_option_group_s3_policy_name"{
  type = "string"
}
