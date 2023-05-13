## Requirements

| Name                                                                     | Version  |
| ------------------------------------------------------------------------ | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.3.5 |
| <a name="requirement_aws"></a> [aws](#requirement_aws)                   | 4.54.0   |

## Providers

| Name                                                         | Version |
| ------------------------------------------------------------ | ------- |
| <a name="provider_archive"></a> [archive](#provider_archive) | 2.3.0   |
| <a name="provider_aws"></a> [aws](#provider_aws)             | 4.54.0  |

## Modules

No modules.

## Resources

| Name                                                                                                                                                | Type        |
| --------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [aws_cognito_user_pool.this](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/resources/cognito_user_pool)                         | resource    |
| [aws_cognito_user_pool_client.this](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/resources/cognito_user_pool_client)           | resource    |
| [aws_cognito_user_pool_domain.this](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/resources/cognito_user_pool_domain)           | resource    |
| [aws_dynamodb_table.dy_app_table](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/resources/dynamodb_table)                       | resource    |
| [aws_dynamodb_table.dy_locks_table](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/resources/dynamodb_table)                     | resource    |
| [aws_dynamodb_table_item.teste](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/resources/dynamodb_table_item)                    | resource    |
| [aws_iam_policy.s3](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/resources/iam_policy)                                         | resource    |
| [aws_iam_role.s3](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/resources/iam_role)                                             | resource    |
| [aws_iam_role_policy_attachment.s3-execute](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/resources/iam_role_policy_attachment) | resource    |
| [aws_lambda_function.s3](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/resources/lambda_function)                               | resource    |
| [aws_s3_bucket.remote-state](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/resources/s3_bucket)                                 | resource    |
| [aws_s3_bucket_versioning.this](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/resources/s3_bucket_versioning)                   | resource    |
| [archive_file.lambda](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file)                                      | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/data-sources/caller_identity)                       | data source |
| [aws_iam_policy_document.lambda-assume-role](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/data-sources/iam_policy_document)    | data source |
| [aws_iam_policy_document.s3](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/data-sources/iam_policy_document)                    | data source |

## Inputs

| Name                                                                        | Description                        | Type     | Default           | Required |
| --------------------------------------------------------------------------- | ---------------------------------- | -------- | ----------------- | :------: |
| <a name="input_aws_profile"></a> [aws_profile](#input_aws_profile)          | n/a                                | `string` | `"default"`       |    no    |
| <a name="input_aws_region"></a> [aws_region](#input_aws_region)             | US East - Northern Virginia Region | `string` | `"us-east-1"`     |    no    |
| <a name="input_service_domain"></a> [service_domain](#input_service_domain) | n/a                                | `string` | `"api-app-email"` |    no    |
| <a name="input_service_name"></a> [service_name](#input_service_name)       | Região de São Paulo                | `string` | `"app-email"`     |    no    |

## Outputs

| Name                                                                                                     | Description |
| -------------------------------------------------------------------------------------------------------- | ----------- |
| <a name="output_remote_state_bucket"></a> [remote_state_bucket](#output_remote_state_bucket)             | n/a         |
| <a name="output_remote_state_bucket_arn"></a> [remote_state_bucket_arn](#output_remote_state_bucket_arn) | n/a         |
