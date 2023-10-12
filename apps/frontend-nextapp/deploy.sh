#!/bin/bash
export PATH=$PATH:/home/ubuntu/.nvm/versions/node/v20.5.1/bin

cd /home/ubuntu/codes-era_monorepo/Dockerized-Monorepo-of-codesera
git pull origin main
mv docker/frontend-nextapp/Dockerfile .
sudo docker build . -t frontend-nextapp-docker
sudo docker run -d -p 3000:3000 frontend-nextapp-docker
