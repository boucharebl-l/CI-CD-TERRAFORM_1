output "aws_instance_web_server_public_ip" {
  description = "Adresse IP publique du serveur web"
  value       = aws_instance.web_server.public_ip
}

output "aws_security_group_web_server_sg_id" {
  description = "ID du groupe de sécurité pour le serveur web"
  value       = aws_security_group.web_server_sg.id
}

output "aws_security_group_web_server_sg_vpc_id" {
  description = "VPC ID du groupe de sécurité pour le serveur web"
  value       = aws_security_group.web_server_sg.vpc_id
}

