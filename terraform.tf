terraform {
  required_version = "= 1.5.5"
  backend "s3" {
    encrypt = false
  }
}
