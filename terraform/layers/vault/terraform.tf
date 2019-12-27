terraform {
  backend "remote" {
    organization = "victorsalaun"

    workspaces {
      name = "infra-vault"
    }
  }

  required_version = ">=0.12.16"
}
