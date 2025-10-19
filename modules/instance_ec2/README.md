## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.web_server](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_security_group.web_server_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_vpc_security_group_egress_rule.allow_all_outbound](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_security_group_egress_rule) | resource |
| [aws_vpc_security_group_ingress_rule.allow_http](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_security_group_ingress_rule) | resource |
| [aws_vpc_security_group_ingress_rule.allow_https](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_security_group_ingress_rule) | resource |
| [aws_vpc_security_group_ingress_rule.allow_ssh](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_security_group_ingress_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | ID de l'AMI à utiliser pour l'instance EC2 | `string` | n/a | yes |
| <a name="input_environement_tag"></a> [environement\_tag](#input\_environement\_tag) | Tag d'environement (ex: Developement, production, staging) | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Le type d'instance EC2 utilisé pour le seveur web | `string` | `"t2.micro"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Nom du projet Terraform | `string` | `"project_lab_1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_instance_web_server_public_ip"></a> [aws\_instance\_web\_server\_public\_ip](#output\_aws\_instance\_web\_server\_public\_ip) | Adresse IP publique du serveur web |
| <a name="output_aws_security_group_web_server_sg_id"></a> [aws\_security\_group\_web\_server\_sg\_id](#output\_aws\_security\_group\_web\_server\_sg\_id) | ID du groupe de sécurité pour le serveur web |
| <a name="output_aws_security_group_web_server_sg_vpc_id"></a> [aws\_security\_group\_web\_server\_sg\_vpc\_id](#output\_aws\_security\_group\_web\_server\_sg\_vpc\_id) | VPC ID du groupe de sécurité pour le serveur web |
