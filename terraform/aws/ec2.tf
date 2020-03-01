provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "myinstance" {
  ami = var.aws_ami_ubuntu_16lts
  instance_type = "t2.small"
  key_name = var.aws_key_name

  user_data = file("ec2_userdata.sh")
  iam_instance_profile = "an-existing-role"            # <--- Permission
  security_groups = ["an-existing-security-group"]     # <--- Permission

  ebs_block_device {
    device_name = "/dev/sda1"
    volume_size = "100"                                # <--- Storage
    volume_type = "gp2"
    delete_on_termination = "true"
    encrypted = "false"
  }

  # Tags for better costs management
  tags = {
    Owner = "roger"
    Name = "myproject"
    Product = "theproduct"
  }

  volume_tags = {
    Owner = "roger"
    Name = "myproject"
    Product = "theproduct"
  }
}
