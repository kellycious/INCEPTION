#image base
FROM debian:bullseye

#update all app, install nginx with YES prompt
RUN apt update
RUN apt install nginx -y

#save certificate + secured connexion key
RUN mkdir -p /etc/nginx/ssl

#install SSL
RUN apt install openssl -y

#generate certificate, type precised, no password, stock it with key, pre-filled details
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/CN=khuynh.42.fr/UID=login"

#save CONF files
RUN mkdir -p /var/run/nginx

#copy our NGINX file to the containers' one (source, destination)
COPY ./conf/nginx.conf /etc/nginx/conf.d

#allow rights for root
RUN chmod 755 /var/www/html

CMD [ "nginx", "-g", "daemon off;"]