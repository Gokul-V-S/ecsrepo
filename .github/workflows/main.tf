provider "aws" {
  region     = var.aws_region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "GitHub-Actions-EC2"
  }
}

variable "aws_region"     {default = us-east-1}
variable "ami_id" {
  default = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI (us-east-1)
}
variable "instance_type" {
  default = "t2.micro"
}
