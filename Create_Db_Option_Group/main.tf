resource "aws_iam_role" "database_option_group_role" {
  name = "${var.database_option_group_role_name}"

  assume_role_policy = <<EOF
{
      "Version": "2012-10-17",
      "Statement":
      [{
          "Effect": "Allow",
          "Principal": {"Service":  "rds.amazonaws.com"},
          "Action": "sts:AssumeRole"
      }]
}
EOF
}

resource "aws_iam_role_policy" "database_option_group_s3_policy" {
  name = "${var.database_option_group_s3_policy_name}"
  role = "${aws_iam_role.database_option_group_role.id}"

  policy = <<EOF
{
      "Version": "2012-10-17",
      "Statement":
      [
          {
          "Effect": "Allow",
          "Action":
              [
                  "s3:ListBucket",
                  "s3:GetBucketLocation"
              ],
          "Resource": "arn:aws:s3:::${var.bucket_name}"
          },
          {
          "Effect": "Allow",
          "Action":
              [
                  "s3:GetObjectMetaData",
                  "s3:GetObject",
                  "s3:PutObject",
                  "s3:ListMultipartUploadParts",
                  "s3:AbortMultipartUpload"
              ],
          "Resource": "arn:aws:s3:::${var.bucket_name}/*"
          }
      ]
}

EOF
}

resource "aws_db_option_group" "example" {
  name                     = "${var.db_option_group_name}"
  option_group_description = "Option Group to export data from S3 to RDS"
  engine_name              = "${var.engine_name}"
  major_engine_version     = "${var.major_engine_version}"

  option {
    option_name = "SQLSERVER_BACKUP_RESTORE"

    option_settings {
      name  = "IAM_ROLE_ARN"
      value = "${aws_iam_role.database_option_group_role.arn}"
    }
  }
}
