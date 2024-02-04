locals {
  resource_name_prefix = "${var.resource_name_prefix}-${var.env}"
  env_config = {
    env_name             = var.env_name
    env_class            = var.env_class
    resource_name_prefix = local.resource_name_prefix
  }
  common_tags = merge(
    var.common_tags,
    {
      "canela:owner"        = var.aws_account_owner
      "canela:iac:git_repo" = var.git_repo
    }
  )
  #newrelic_api_key = data.aws_secretsmanager_secret_version.ingest_key_current.secret_string
}
