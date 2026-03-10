terraform {
  backend "s3" {
    bucket = "terraform-myec2"
    key    = "terraform-practical/New-Project/terraform.tfstate"
    region = "ap-south-1"
  }
}

resource "random_string" "my-string" {
  length  = 10
  special = false
  upper   = false
}

resource "aws_instance" "Web-Server" {
  ami           = var.ami
  instance_type = var.ec2-type
  region        = var.myregion

  lifecycle {
    create_before_destroy = true
  }
  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install nginx -y
              echo "Hello World from $(hostname -f)" > /usr/share/nginx/html/index.html
              systemctl start nginx
              systemctl enable nginx
              EOF
  tags = {
    Name = "Web-Server-${random_string.my-string.result}"
  }
}