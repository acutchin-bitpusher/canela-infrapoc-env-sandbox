##  AWS ACCOUNT CONFIGURATION
#variable "aws_account_name" {
#  type        = string
#  description = "Name of the AWS account in which to deploy resources; used for ???"
#}
variable "aws_account_id" {
  type        = string
  description = "Numerical ID of AWS account in which to deploy resources"
}
variable "aws_region" {
  type        = string
  description = "AWS region in which to deploy resources"
}
variable "aws_account_owner" {
  type        = string
  description = "Name of engineer or team responsible for this environment"
  default     = "undefined"
}
##  ENVIRONMENT CONFIGURATION
variable "env_name" {
  type        = string
  description = "name of environment; must be unique"
}
##  GIT INFO
variable "git_repo" {
  type        = string
  description = "name of this Git repo; used for informational resource tags"
}
##  RESOURCE TAGS
variable "common_tags" {
  type        = map(string)
  description = "Map of AWS resource tags to apply to all resources"
  default     = {}
}
## NEWRELIC
#variable "newrelic_account_id" {
#  type = string
#  description = "numerical ID of New Relic account in which to create observability resources"
#}
#variable "newrelic_api_key" {
#  default = ""
#}
