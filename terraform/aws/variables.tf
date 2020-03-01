variable "aws_region" {
  default = "us-west-2"
}

# BUCKET
variable "aws_s3_bucket" {
  description = "Provide the aws_s3_bucket"
}
variable "dns_url" {
  description = "Provide the domain_url. Example: billcode.com.br"
}

# EC2
variable "aws_ami_ubuntu_16lts" {
  description = "Provide the aws AMI. Example: ami-02d0ea44ae3fe9561"
}
variable "aws_key_name" {
  description = "Provide the aws user key name for ssh access. Example: user-master"
}

variable "storage" {
  default     = "20"
  description = "Storage size in GB"
}

variable "engine_version" {
  description = "Engine version"
  default = "11.5"
}

variable "instance_class" {
  default     = "db.t2.micro"
  # default     = "db.t2.large"
  description = "Instance type for the RDS Database. Example: db.t2.large"
}

variable "database_name" {
  default     = "mydbdev"
  description = "RDS DB name"
}

variable "database_username" {
  default     = "myuser"
  description = "RDS DB username"
}

variable "database_password" {
  description = "RDS DB passowrd. Example: XYdKaM4SaWeB2020"
}
