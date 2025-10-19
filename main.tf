terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.17.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region  = var.aws_region
  profile = var.project_name
}

data "aws_ami" "amazon_linux_2023_x86_64" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-kernel-*-x86_64"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}

module "web_server_1" {
  source           = "./modules/instance_ec2"
  ami_id           = data.aws_ami.amazon_linux_2023_x86_64.id
  instance_type    = var.instance_type
  environement_tag = var.environement_tag
  project_name     = var.project_name
}
