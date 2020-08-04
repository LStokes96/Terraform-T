#cloud-config
packages:
  - nodejs
  - npm
runcmd:
  - curl https://get.docker.com | sudo bash
  - sudo usermod -aG docker $(whoami)
  - sudo apt update
  - sudo apt install -y curl jq
  - sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  - sudo chmod +x /usr/local/bin/docker-compose
  - curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
  - sudo mv ./kubectl /usr/local/bin/kubectl
  - sudo apt-get install mysql-server
  - npm --version
