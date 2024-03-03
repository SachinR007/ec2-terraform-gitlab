resource "aws_instance" "name" {

  ami             = var.ami
  vpc_security_group_ids = [var.secgrp]
  key_name        = var.keypair
  instance_type   = var.instance_type

  tags = {
    "name" = "test-ec2"
  }
}