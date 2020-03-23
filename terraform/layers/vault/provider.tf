variable "aws_profile" {}
variable "aws_region" {}
variable "vault_address" {}

provider "vault" {
  version = "~> 2.7"
  address = var.vault_address
}

provider "aws" {
  shared_credentials_file = ".aws/creds"
  profile                 = var.aws_profile
  region                  = var.aws_region
  version                 = "2.40.0"
}
