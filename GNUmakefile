ansible/env:
	virtualenv ansible/env

.PHONY: env
env: env.d/ansible env.d/packer env.d/terraform

env.d/ansible:
	cp env.d/ansible.dist env.d/ansible

env.d/packer:
	cp env.d/packer.dist env.d/packer

env.d/terraform:
	cp env.d/terraform.dist env.d/terraform

.PHONY: install-ansible
install-ansible: ansible/env
	ansible/env/bin/pip3 install -r ansible/requirements.txt
	cd ansible/ && env/bin/ansible-galaxy install -r requirements.yml

.PHONY: install-terraform
install-terraform:
	bin/terraform init
