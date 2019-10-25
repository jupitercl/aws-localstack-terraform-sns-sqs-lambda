resource "aws_lambda_function" "lambda" {

  function_name                  = var.function_name
  description                    = var.description
  role                           = var.role
  handler                        = var.handler
  memory_size                    = var.memory_size
  reserved_concurrent_executions = var.reserved_concurrent_executions
  runtime                        = var.runtime
  layers                         = var.layers
  timeout                        = local.timeout
  publish                        = local.publish
  tags                           = var.tags

  filename   = data.external.built.result.filename
  depends_on = [null_resource.archive]
}