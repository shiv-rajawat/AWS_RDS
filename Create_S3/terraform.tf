terraform {
  backend "s3" {
    encrypt = true
    bucket = "cwt-app-terraform-remote-state-bucket"
    dynamodb_table = "cwt-app-terraform-state-lock"
    key    = "states/Create_S3.tfstate"
	region = "us-east-2"
  }
}