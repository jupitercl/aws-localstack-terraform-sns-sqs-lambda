# terraform-sqs-lambda-trigger-example

Example on how to create a AWS Lambda triggered by SQS and SQS subscribe to SNS by Terraform


## Usage

Localstack

```
$ docker-compose up -d
```

Terraform

```
$ cd terraform
$ terraform init
$ terraform apply
$ aws sqs send-message --queue-url $(terraform output sqs_url) --message-body "hello, world"
```

List SNS

```
$ docker-compose exec localstack bash -c "awslocal sns list-topics"
```

List SQS

```
$ docker-compose exec localstack bash -c "awslocal sqs list-queues"
```

List Lambda

```
$ docker-compose exec localstack bash -c "awslocal lambda list-functions"
```

Publish 

```
$ docker-compose exec localstack bash -c "awslocal sns publish --topic-arn $(terraform output test-sns-arn) --message 'hola'"
```
