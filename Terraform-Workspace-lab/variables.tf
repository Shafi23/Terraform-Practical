variable "instance_type" {
    default = {
        dev = "t2.micro"
        prod = "t2.medium"
        default = "t2.micro"
    }
  
}