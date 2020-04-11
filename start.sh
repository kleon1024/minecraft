sudo apt update

sudo apt install -y docker-compose

sudo cp -rf daemon.json /etc/docker
sudo systemctl daemon-reload
sudo systemctl restart docker

ssh-keygen -q -t rsa
ssh-copy-id ubuntu@172.17.0.2

rsync -avP ubuntu@172.17.0.2:~/minecraft ~

cd minecraft
sudo docker-compose -f mc-compose.yaml up -d


