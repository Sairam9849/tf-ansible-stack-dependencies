terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 5.0" }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  my      = var.my

  tags = { Name = "ansible-demo-instance" }

  provisioner "local-exec" {
    command = "echo ${self.public_ip} > public_ip.txt"
  }
}

output "instance_ip" {
  value = aws_instance.web.public_ip
}
