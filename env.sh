apt update
apt install -y docker-ce docker-compose
echo daemon.json >> /etc/docker/daemon.json
systemctl daemon-reload
systemctl restart docker
