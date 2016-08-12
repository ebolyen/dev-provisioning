update:
	ansible-playbook -Ki inventory ansible.yml

install: 
	ansible-playbook -Ki inventory setup.yml
