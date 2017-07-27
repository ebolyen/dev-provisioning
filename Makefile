install: 
	ansible-playbook -Ki inventory setup.yml

nvim:
	ansible-playbook -Ki inventory nvim.yml

workspace:
	python bin/clone-all.py ~/workspace
