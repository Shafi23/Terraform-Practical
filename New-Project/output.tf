output "Instance-name" {
  value = aws_instance.Web-Server.tags["Name"]
}

output "Instance-Public-IP" {
  value = aws_instance.Web-Server.public_ip
}