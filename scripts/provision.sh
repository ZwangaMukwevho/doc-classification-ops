#Upgrade Server - may take a few minutes
sudo apt update
sudo apt upgrade

#Install NGINX and Certbot
sudo apt install nginx certbot python3-certbot-nginx

#Allow Firewall Access
sudo ufw allow "Nginx Full"
ufw allow OpenSSH
ufw enable

