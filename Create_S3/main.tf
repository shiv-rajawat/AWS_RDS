resource "aws_s3_bucket" "database-bucket" {
    bucket = "${var.bucket_name}"
    versioning {
      enabled = true
    }
}
