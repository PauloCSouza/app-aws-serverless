terraform {
  backend "s3" {
    bucket         = "tfstate344160943160"
    key            = "terraform.tfstate"
    encrypt        = "true"
    region         = "us-east-1"
    dynamodb_table = "app-tf-state-remote"
  }
}