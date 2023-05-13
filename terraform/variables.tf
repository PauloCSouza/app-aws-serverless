variable "aws_region" {
  type        = string
  description = "US East - Northern Virginia Region"
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "default"
}

variable "service_name" {
  type        = string
  description = "Região de São Paulo"
  default     = "app-email"
}

variable "service_domain" {
  type        = string
  description = ""
  default     = "api-app-email"
}