## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.54.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.54.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cognito_user_pool.this](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/resources/cognito_user_pool) | resource |
| [aws_cognito_user_pool_client.this](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/resources/cognito_user_pool_client) | resource |
| [aws_cognito_user_pool_domain.this](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/resources/cognito_user_pool_domain) | resource |
| [aws_dynamodb_table.terraform_state_locks_table](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/resources/dynamodb_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_profile"></a> [aws\_profile](#input\_aws\_profile) | n/a | `string` | `"default"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | US East - Northern Virginia Region | `string` | `"us-east-1"` | no |
| <a name="input_service_domain"></a> [service\_domain](#input\_service\_domain) | n/a | `string` | `"api-app-email"` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Região de São Paulo | `string` | `"app-email"` | no |

## Outputs

No outputs.
