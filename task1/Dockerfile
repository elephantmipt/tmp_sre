FROM ubuntu:20.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::=--force-confold dist-upgrade \
    && DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::=--force-confold install libffi-dev libsasl2-dev python3-dev \
        sudo libldap2-dev libssl-dev python3-pip python3-setuptools python3-venv mysql-server\
        mysql-client uwsgi uwsgi-plugin-python3 nginx git\
    && rm -rf /var/cache/apt/archives/*

COPY bin /tmp_sre/bin

RUN bash /tmp_sre/bin/setup.sh

WORKDIR /app/oncall

EXPOSE 8080

CMD [ "bash", "/tmp_sre/bin/start.sh" ]