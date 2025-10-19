output "aws_instance_web_server_public_ip" {
  description = "Adresse IP publique du serveur web"
  value       = module.web_server_1.aws_instance_web_server_public_ip
}
