# Amit_VMCreation_2025-05-12.tf

provider "aws" {
  region = "ap-south-1"  # or any preferred region
}

resource "aws_instance" "ubuntu_vm" {
  ami           = "ami-0e35ddab05955cf57"  # Ubuntu 22.04 LTS for us-east-1
  instance_type = "t2.micro"
  key_name      = "key1"  # Replace with your AWS key pair name

  tags = {
    Name = "Ubuntu-VM-Terraform"
  }
}

