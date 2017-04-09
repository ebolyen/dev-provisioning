install: 
	ansible-playbook -Ki inventory setup.yml

nvim:
	ansible-playbook -Ki inventory nvim.yml
