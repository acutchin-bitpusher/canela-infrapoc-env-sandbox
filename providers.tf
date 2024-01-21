terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    #    newrelic = {
    #      source  = "newrelic/newrelic"
    #      version = ">= 3.27"
    #    }
  }
}
provider "aws" {
  region              = var.aws_region
  allowed_account_ids = [var.aws_account_id]
  default_tags {
    tags = local.common_tags
  }
}
#provider "newrelic" {
#  account_id = var.newrelic_account_id
#  api_key    = local.newrelic_api_key
#  region     = "US"
#}
