VAGRANT_CMD = $(word 2, $(subst /, , $(@)))

.PHONY: up/%


up/%: export VAGRANT_VAGRANTFILE=$(CURDIR)/vagrantfiles/$(VAGRANT_CMD)
up/%:
	@echo "up vm: $(VAGRANT_CMD)"
	@ansible-playbook ansible/create-vm.yaml --extra-vars "target=$(VAGRANT_CMD)"

.PHONY: ssh/%

ssh/%: export VAGRANT_VAGRANTFILE=$(CURDIR)/vagrantfiles/$(VAGRANT_CMD)
ssh/%:
	@echo "ssh into: $(VAGRANT_CMD)"
	@vagrant ssh $(VAGRANT_CMD)

.PHONY: destroy/%

destroy/%: export VAGRANT_VAGRANTFILE=$(CURDIR)/vagrantfiles/$(VAGRANT_CMD)
destroy/%:
	@echo "destroy vm: $(VAGRANT_CMD)"
	@vagrant destroy -f $(VAGRANT_CMD)