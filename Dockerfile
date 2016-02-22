FROM django:latest

ADD src /

RUN apt-get update && \
    apt-get install -y supervisor git nginx ssl-cert build-essential python-dev libxml2-dev libxslt-dev libjpeg-dev librrd-dev rrdtool clamav-daemon libdbi-perl amavisd-new dovecot-imapd dovecot-lmtpd dovecot-managesieved dovecot-sieve uwsgi uwsgi-plugin-python spamassassin pyzor razor --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /var/run/supervisord && \
    git clone https://github.com/modoboa/modoboa-installer.git /usr/src/app/

WORKDIR /usr/src/app

RUN ./run.py --force mail.serverking.ch

CMD ["/usr/bin/supervisord"]
