resource "vault_mount" "kv2" {
  type        = "kv"
  path        = "kv"
  description = "Key/Value V2 - with versioning"

  options = {
    version = 2
  }
}
