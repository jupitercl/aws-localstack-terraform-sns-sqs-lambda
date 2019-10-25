module "test-lambda" {
  source = "./lambda"

  function_name = "test-lambda"
  description   = "Test Lambda"
  role          = "${aws_iam_role.lambda_sqs.name}"
  handler       = "lambda_function.my_handler"
  runtime       = "python3.7"
  timeout       = 3

  source_path = "${path.cwd}/lambda/src/test-lambda"
}