output "Display-IP" {
  description = "IP address of the EC2 instance"
  value       = aws_instance.Nginx.public_ip
}

output "EC2-Instnace-Name" {
    description = "Name of the EC2 instance"
    value       = aws_instance.Nginx.tags["Name"]
}