docker-push-shellinabox:
	cd shellinabox; make docker-push; 

swarm-up-ngrok:
	cd docker-ngrok; make swarm-up

swarm-up: docker-push-shellinabox swarm-up-ngrok 
	cd docker-ngrok; swarm status
