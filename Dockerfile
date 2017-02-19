FROM debian:jessie

COPY files /

WORKDIR /usr/src/app

RUN set -ex && \
    apt-get update && \
    apt-get install -y supervisor ca-certificates python git --no-install-recommends && \
    apt-get clean && \
    git clone https://github.com/modoboa/modoboa-installer.git /usr/src/app/ && \
    ./run.py --force localhost

#CMD ["supervisord"]
CMD ["/sbin/init"]
