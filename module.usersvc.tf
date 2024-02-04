module "usersvc" {
  count                = var.usersvc_enable ? 1 : 0
  source               = "git@github.com:Canela-Media/canela-infrapoc-svc-user.git?1.0.2"
  env_config           = local.env_config
  var1                 = var.var1
  enable_nr_logging    = var.usersvc_enable_nr_logging
}
