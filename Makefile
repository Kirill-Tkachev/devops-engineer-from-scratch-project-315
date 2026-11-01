VERSION ?= latest

.PHONY: deploy

deploy:
	ansible-playbook -i inventory deploy.yml -e deploy_image_version=$(VERSION) --ask-vault-pass

.PHONY: ansible-install

ansible-install:
	ansible-galaxy collection install -r requirements.yml