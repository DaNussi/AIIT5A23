FROM phpmyadmin:latest

# RUN echo "\$cfg['ForceSSL'] = false;" >/etc/phpmyadmin/config.user.inc.php
#RUN a2enmod ssl

#RUN sed -ri -e 's,80,443,' /etc/apache2/sites-available/000-default.conf
#RUN sed -i -e '/^<\/VirtualHost>/i SSLEngine on' /etc/apache2/sites-available/000-default.conf
#RUN sed -i -e '/^<\/VirtualHost>/i SSLCertificateFile /cert/cert.pem' /etc/apache2/sites-available/000-default.conf
#RUN sed -i -e '/^<\/VirtualHost>/i SSLCertificateKeyFile /cert/privkey.pem' /etc/apache2/sites-available/000-default.conf
#RUN sed -i -e '/^<\/VirtualHost>/i SSLCertificateChainFile /cert/fullchain.pem' /etc/apache2/sites-available/000-default.conf


# HTTPS
# COPY ./default.conf /etc/apache2/sites-available/default.conf
RUN a2enmod ssl && \
    a2ensite default-ssl && \
    openssl req -subj '/CN=localhost/O=HTL St.Poelten/C=US' -new -newkey rsa:2048 -days 365 -nodes -x509 -keyout /etc/ssl/private/ssl-cert-snakeoil.key -out /etc/ssl/certs/ssl-cert-snakeoil.pem

#    a2dissite 000-default && \
#    a2ensite default

EXPOSE 80 443
