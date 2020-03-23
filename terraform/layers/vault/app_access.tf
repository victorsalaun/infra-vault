resource "vault_auth_backend" "approle_auth_backend" {
  type        = "approle"
  description = "Vault Auth backend for applications"
}
