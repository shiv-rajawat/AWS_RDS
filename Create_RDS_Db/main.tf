resource "aws_db_instance" "default" {
  allocated_storage    = "${var.allocated_storage}"
  storage_type         = "${var.storage_type}"
  engine               = "${var.engine}"
  engine_version       = "${var.engine_version}"
  instance_class       = "${var.instance_class}"
  username             = "${var.username}"
  password             = "${var.password}"
  option_group_name    = "${var.db_option_group_name}"
  license_model        = "${var.license_model}"
  publicly_accessible  = "${var.publicly_accessible}"
  vpc_security_group_ids = "${var.vpc_security_group_ids}"
}
