locals {
  prefix = "canela-${var.env_name}-"
  common_tags = merge(
    var.common_tags,
    {
      "canela:owner"          = var.aws_account_owner
      "canela:iac:git_repo"   = var.git_repo
    }
  )
  #newrelic_api_key = data.aws_secretsmanager_secret_version.ingest_key_current.secret_string
}
