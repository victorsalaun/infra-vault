variable "vault_address" {}

provider "vault" {
  address = var.vault_address
}
