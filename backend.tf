# Create the DyanmoDB table
resource "aws_dynamodb_table" "terraform_state_locks_table" {
  name         = "app-tf-state-remote"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

terraform {
  backend "s3" {
    bucket         = "app-tf-state-remote"
    key            = "terraform.tfstate"
    encrypt        = "true"
    region         = "us-east-1"
    dynamodb_table = "pa-tf-state-remote"
  }
}