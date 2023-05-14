data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "remote-state" {
  bucket = "tfstate${data.aws_caller_identity.current.account_id}"
  tags   = local.common_tags
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.remote-state.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "random_pet" "bucket" {}

resource "aws_s3_bucket" "s3-lambda" {
  bucket = "${var.service_domain}-${random_pet.bucket.id}"
  tags   = local.common_tags
}

resource "aws_s3_bucket_notification" "lambda" {
  bucket = aws_s3_bucket.s3-lambda.id

  lambda_function {
    lambda_function_arn = aws_lambda_function.s3.arn
    events              = ["s3:ObjectCreated:*"]
  }
}