// Initialize the provider
provider "aws" {
  region = "us-east-1"
}

// first variable
variable "ami_id" {
  description = "EC2 AMI ID"
  type = string
}

// second variable
variable "instance_type" {
  description = "EC2 Instance type"
  type = string
}

// create EC2 instance
resource "aws_instance" "example_instance" {
  ami = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "demo"
  }
}

// output variable
output "public_ip" {
  description = "Public IP of EC2 Instance"
  value = aws_instance.example_instance.public_ip
}
