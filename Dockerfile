FROM ubuntu

ADD request-standalone.sh /request-standalone.sh
ADD request-cloudfront.sh /request-cloudfront.sh

RUN apt-get update
RUN apt-get install -y git python2.7 python-pip

RUN git clone https://github.com/letsencrypt/letsencrypt /letsencrypt
RUN cd /letsencrypt && ./letsencrypt-auto --help

RUN pip install letsencrypt letsencrypt-s3front

RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
WORKDIR /letsencrypt
