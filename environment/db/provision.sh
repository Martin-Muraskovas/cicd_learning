#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y

sudo DEBIAN_FRONTEND=noninteractive apt-get install gnupg curl
curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | \
   sudo gpg --batch -o /usr/share/keyrings/mongodb-server-7.0.gpg \
   --dearmor

echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

sudo DEBIAN_FRONTEND=noninteractive apt-get update


# sudo apt-get install mongodb-org=3.2.20 -y
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y mongodb-org=7.0.6 mongodb-org-database=7.0.6 mongodb-org-server=7.0.6 mongodb-mongosh=2.2.4 mongodb-org-mongos=7.0.6 mongodb-org-tools=7.0.6

# remove the default .conf and replace with our configuration
sudo rm /etc/mongod.conf
cd /home/ubuntu/environment/
sudo mv mongod.conf /etc/

# if mongo is is set up correctly these will be successful
sudo systemctl enable mongod
sudo systemctl restart mongod


#test2