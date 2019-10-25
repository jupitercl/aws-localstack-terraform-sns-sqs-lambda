resource "aws_lambda_event_source_mapping" "test-lambda-trigger" {
  event_source_arn = "${aws_sqs_queue.test-sqs.arn}"
  function_name    = "test-lambda"
  batch_size       = 10
}