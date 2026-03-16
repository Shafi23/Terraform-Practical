terraform {
  backend "s3" {
    bucket = "terraform-myec2"
    key    = "terraform-practical/terraform.tfstate"
    region = "ap-south-1"
  }
}

resource "aws_instance" "Nginx" {
  ami           = var.ami
  instance_type = var.ec2-type

  tags = {
    Name = "HelloWorld"
  }
}