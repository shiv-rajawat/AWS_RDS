# AWS_RDS
This repo contains terraform code to create database (RDS), Associate with option groups and a bucket to restore database backup.

The terraforms folders are configured with S3 as a backend and a dynamo db table is used for lock. Since terraform doesn't allow 
interpolations inside the backend block, hence all the values (bucket name, dynamodb table name, region) are hard-coded. The user is advised
to change the values in terraform.tf inside every terraform folder before doing terraform apply.
