FROM ubuntu

ADD run.sh /run.sh
RUN apt-get update
RUN apt-get install -y git

RUN git clone https://github.com/letsencrypt/letsencrypt /letsencrypt
RUN cd /letsencrypt && ./letsencrypt-auto --help

WORKDIR /letsencrypt

CMD /run.sh
