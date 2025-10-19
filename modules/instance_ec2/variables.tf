variable "instance_type" {
  description = "Le type d'instance EC2 utilisé pour le seveur web"
  type        = string
  default     = "t2.micro"
}

variable "project_name" {
  description = "Nom du projet Terraform"
  type        = string
  default     = "project_lab_1"
}

variable "environement_tag" {
  description = "Tag d'environement (ex: Developement, production, staging)"
  type        = string
}


variable "ami_id" {
  description = "ID de l'AMI à utiliser pour l'instance EC2"
  type        = string
}
