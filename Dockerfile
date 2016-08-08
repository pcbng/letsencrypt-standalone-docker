FROM ubuntu

RUN apt-get update
RUN apt-get install -y python2.7 python-pip libssl-dev

RUN pip install letsencrypt letsencrypt-s3front

RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD request-standalone.sh /request-standalone.sh
ADD request-cloudfront.sh /request-cloudfront.sh

WORKDIR /letsencrypt
