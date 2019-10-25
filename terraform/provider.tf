provider "aws" {
    region                      = "us-east-1"
    access_key                  = "123"
    secret_key                  = "qwe"
    skip_requesting_account_id  = true
    skip_credentials_validation = true
    endpoints {
        lambda       = "http://localhost:4574"
        sns          = "http://localhost:4575"
        sqs          = "http://localhost:4576"
        iam          = "http://localhost:4593"
    }
}
