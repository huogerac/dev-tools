resource "aws_db_instance" "default" {
  depends_on             = [aws_security_group.default]
  identifier             = var.database_name
  allocated_storage      = var.storage
  engine                 = "postgres"
  engine_version         = var.engine_version
  port                   = "5432"
  instance_class         = var.instance_class
  name                   = var.database_name
  username               = var.database_username
  password               = var.database_password
  publicly_accessible    = "false"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  skip_final_snapshot    = "true"
}


resource "aws_security_group" "default" {
  name        = "main_rds_sg"
  description = "Allow all inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "TCP"
    cidr_blocks = ["${var.cidr_blocks}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.sg_name}"
  }
}