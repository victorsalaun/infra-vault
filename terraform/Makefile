extra_vars=-var-file="./tfvars/inputs.tfvars"
vault_topology=./layers/vault

.PHONY: lint
lint:
	terraform fmt

.PHONY: tfsec
tfsec:
	tfsec layers

# VAULT

.PHONY: vault_init
vault_init:
	terraform init -upgrade=true -reconfigure $(vault_topology)

.PHONY: vault_plan
vault_plan:
	terraform plan $(extra_vars) $(vault_topology)

.PHONY: vault_apply
vault_apply:
	terraform apply $(extra_vars) -auto-approve $(vault_topology)

.PHONY: vault_destroy
vault_destroy:
	terraform destroy $(extra_vars) -auto-approve $(vault_topology)
