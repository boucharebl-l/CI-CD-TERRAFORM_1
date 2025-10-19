variable "project_name" {
  description = "Nom du projet Terraform"
  type        = string
  default     = "project_lab_1"
}


variable "aws_region" {
  description = "Région AWS ou les ressources ont été créer"
  type        = string
  default     = "eu-central-1"
}

variable "aws_profile" {
  description = "Profil AWS à utiliser"
  type        = string
  default     = "project_lab_1"
}

variable "instance_type" {
  description = "Le type d'instance EC2 utilisé pour le seveur web"
  type        = string
  default     = "t2.micro"

  validation {
    condition     = contains(["t2.micro", "t2.small", "t3.micro", "t3.small"], var.instance_type)
    error_message = "Le type d'instance dois etre un des choix présent dans la liste de validation"
  }
}

variable "environement_tag" {
  description = "Tag d'environement (ex: Developement, production, staging)"
  type        = string
  default     = "Developement"

  validation {
    condition     = length(var.environement_tag) > 0
    error_message = "La tag d'env ne peut pas etre vide"
  }
}
