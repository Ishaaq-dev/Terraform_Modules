resource "aws_db_instance" "default" {
  allocated_storage    = var.allocated_storage
  db_name             = var.db_name
  instance_class      = var.instance_class
  engine              = var.engine
  engine_version      = var.engine_version
  username            = var.username
  password            = var.password
  parameter_group_name = var.parameter_group_name
  tags                = var.tags
}
