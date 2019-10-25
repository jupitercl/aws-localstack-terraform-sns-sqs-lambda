resource "aws_iam_role" "lambda_sqs" {
  name = "lambda_sqs"
  max_session_duration=3600
  description           = "None"
  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": [
                "sqs:*"
            ],
            "Effect": "Allow",
            "Resource": "*"
        }
    ]
}
EOF
}