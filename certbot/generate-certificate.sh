rm -rf /etc/letsencrypt/live/vpbuyanov.ru

# выдаем себе сертификат
certbot certonly --standalone --email $DOMAIN_EMAIL -d $DOMAIN_URL --cert-name=vpbuyanov.ru --key-type rsa --agree-tos

rm -rf /etc/nginx/cert.pem
rm -rf /etc/nginx/key.pem

# копируем сертификаты из образа certbot в папку Nginx
cp /etc/letsencrypt/live/vpbuyanov.ru/fullchain.pem /etc/nginx/cert.pem
cp /etc/letsencrypt/live/vpbuyanov.ru/privkey.pem /etc/nginx/key.pem