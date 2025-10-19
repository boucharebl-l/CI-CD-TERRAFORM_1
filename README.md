## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 6.17.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.17.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_web_server_1"></a> [web\_server\_1](#module\_web\_server\_1) | ./modules/instance_ec2 | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_ami.amazon_linux_2023_x86_64](https://registry.terraform.io/providers/hashicorp/aws/6.17.0/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_profile"></a> [aws\_profile](#input\_aws\_profile) | Profil AWS à utiliser | `string` | `"project_lab_1"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Région AWS ou les ressources ont été créer | `string` | `"eu-central-1"` | no |
| <a name="input_environement_tag"></a> [environement\_tag](#input\_environement\_tag) | Tag d'environement (ex: Developement, production, staging) | `string` | `"Developement"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Le type d'instance EC2 utilisé pour le seveur web | `string` | `"t2.micro"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Nom du projet Terraform | `string` | `"project_lab_1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_instance_web_server_public_ip"></a> [aws\_instance\_web\_server\_public\_ip](#output\_aws\_instance\_web\_server\_public\_ip) | Adresse IP publique du serveur web |
