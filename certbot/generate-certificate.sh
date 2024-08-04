rm -rf /etc/letsencrypt/live/vpbuyanov.ru

# выдаем себе сертификат
certbot certonly --standalone --email $DOMAIN_EMAIL -d $DOMAIN_URL --cert-name=vpbuyanov.ru --key-type rsa --agree-tos