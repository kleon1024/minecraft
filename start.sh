apt update

apt install -y docker-ce docker-compose

cp -rf daemon.json /etc/docker
systemctl daemon-reload
systemctl restart docker

ssh-copy-id ubuntu@172.17.0.2

rsync -avP ubuntu@172.17.0.2:~/minecraft ~

cd minecraft
docker-compose -f mc-compose.yaml up -d


