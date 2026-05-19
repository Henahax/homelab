docker ps
docker stop portainer
docker rm portainer
docker rmi portainer/portainer-ce:latest
docker compose up -d
