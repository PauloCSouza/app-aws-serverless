data "aws_iam_policy_document" "lambda-assume-role" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

# S3 Role
data "aws_iam_policy_document" "s3" {

  # Permitir ações no S3 e SNS
  statement {
    sid       = "AllowS3AndSNSActions"
    effect    = "Allow"
    resources = ["*"]

    actions = [
      "s3:*",
      "sns:*",
    ]
  }

  # Permitir que uma lambda chame outras lambdas
  statement {
    sid       = "AllowInvokingLambdas"
    effect    = "Allow"
    resources = ["arn:aws:lambda:*:*:function:*"]
    actions   = ["lambda:InvokeFunction"]
  }

  # Permitir que uma lambda crie grupos de logs no CloudWatch
  statement {
    sid       = "AllowCreatingLogGroups"
    effect    = "Allow"
    resources = ["arn:aws:logs:*:*:*"]
    actions   = ["logs:CreateLogGroup"]
  }

  # Permissão para escrever os Logs
  statement {
    sid       = "AllowWritingLogs"
    effect    = "Allow"
    resources = ["arn:aws:logs:*:*:log-group:/aws/lambda/*:*"]

    actions = [
      "logs:CreateLogStream",
      "logs:PutLogEvents",
    ]
  }
}

resource "aws_iam_role" "s3" {
  name               = "${var.service_domain}-lambda-role"
  assume_role_policy = data.aws_iam_policy_document.lambda-assume-role.json
}

resource "aws_iam_policy" "s3" {
  name   = "s3-lambda-execute-policy"
  policy = data.aws_iam_policy_document.s3.json
}

resource "aws_iam_role_policy_attachment" "s3-execute" {
  policy_arn = aws_iam_policy.s3.arn
  role       = aws_iam_role.s3.name
}