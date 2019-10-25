resource "aws_sns_topic_subscription" "test" {
  topic_arn                       = "${aws_sns_topic.test-sns.arn}"
  protocol                        = "sqs"
  endpoint                        = "${aws_sqs_queue.test-sqs.arn}"
}