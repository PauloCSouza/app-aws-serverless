locals {
  lambdas_path = "${path.module}/../app/lambdas"
  layers_path  = "${path.module}/../app/layers/nodejs"
  layer_name   = "joi"

  common_tags = {
    Project   = "AWS Application Serverless With Terraform"
    CreatedAt = "2023-05-13"
    ManagedBy = "Terraform"
    Owner     = "Paulo Souza"
    Service   = "Application Serverless"
  }
}