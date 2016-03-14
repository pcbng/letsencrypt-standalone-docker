#!/bin/bash

letsencrypt --config-dir /etc/letsencrypt --email ${LETSENCRYPT_EMAIL_ADDRESS} --agree-tos -a letsencrypt-s3front:auth \
--letsencrypt-s3front:auth-s3-bucket $2 \
-i letsencrypt-s3front:installer \
--letsencrypt-s3front:installer-cf-distribution-id $3 \
-d $1
