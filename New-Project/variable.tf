variable "ami" {
  type        = string
  description = "Enter Your region AMI ID"
  default     = "ami-0f559c3642608c138"
}

variable "ec2-type" {
  type    = string
  default = "t3.micro"
}

variable "myregion" {
  type    = string
  default = "ap-south-1"
}