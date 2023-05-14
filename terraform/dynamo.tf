# resource "aws_dynamodb_table" "dy_locks_table" {
#   name         = "app-tf-state-remote"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key     = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }

#   tags = local.common_tags
# }

resource "aws_dynamodb_table" "dy_app_table" {
  hash_key       = "AppId"
  name           = var.service_name
  read_capacity  = 5
  write_capacity = 5

  attribute {
    name = "AppId"
    type = "S"
  }

  tags = local.common_tags
}

resource "aws_dynamodb_table_item" "teste" {
  table_name = aws_dynamodb_table.dy_app_table.name
  hash_key   = aws_dynamodb_table.dy_app_table.hash_key

  item = <<ITEM
    {
      "AppId": {"S": "1"},
      "Hash": {"S": "c4ca4238a0b923820dcc509a6f75849b"},
      "Name": {"S": "Paulo Cesar de Souza"},
      "Email": {"S": "paulo.csouzas@outlook.com"},
      "Phone": {"S": "11912345678"},
      "Month": {"S": "5"},
      "Year": {"S": "2023"},
      "BarCode": {"S": "123456.12345 12345.123456 12345.123456 1 12345678901234"},
      "DueDate": {"S": "20/12/2023"},
      "Amount": {"S": "102.50"}
    }
  ITEM

}