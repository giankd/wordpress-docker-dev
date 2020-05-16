FROM wordpress:latest

SHELL ["/bin/bash", "-c"]

# Install wp-cli
RUN apt-get update && apt-get install -y \
    && apt-get install -y sudo less mariadb-client \
    && rm -rf /var/lib/apt/lists/* \
    && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp \
    && echo "alias wp='sudo -u www-data wp'" >> ~/.bashrc \
    && source ~/.bashrc

COPY ./wp_init.sh /
RUN chmod +x /wp_init.sh
EXPOSE 80/tcp
EXPOSE 80/udp