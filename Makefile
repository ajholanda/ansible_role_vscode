VENV := .venv
ANSIBLE := $(VENV)/bin/ansible
ANSIBLE_PLAYBOOK := $(VENV)/bin/ansible-playbook
ANSIBLE_GALAXY := $(VENV)/bin/ansible-galaxy

.PHONY: setup ping deploy clean

setup:
	python3 -m venv $(VENV)
	$(VENV)/bin/pip install -r requirements.txt
	$(ANSIBLE_GALAXY) collection install -r requirements.yml
	@echo "\n==> Run: source $(VENV)/bin/activate\n"

lint:
	$(VENV)/bin/ansible-lint

ping:
	$(ANSIBLE) all -m ping

deploy:
	$(ANSIBLE_PLAYBOOK) playbooks/site.yml

clean:
	rm -rf $(VENV)
