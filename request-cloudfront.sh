#!/bin/bash

letsencrypt --text --non-interactive --renew-by-default --allow-subset-of-names --preferred-challenges http --renew-with-new-domains --config-dir /etc/letsencrypt --email ${LETSENCRYPT_EMAIL_ADDRESS} --agree-tos -a letsencrypt-s3front:auth \
  --letsencrypt-s3front:auth-s3-bucket $3 \
  -i letsencrypt-s3front:installer \
  --letsencrypt-s3front:installer-cf-distribution-id $4 \
  -d $1 -d $2
