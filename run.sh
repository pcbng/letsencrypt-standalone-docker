#!/bin/bash

./letsencrypt-auto certonly --standalone --config-dir /etc/letsencrypt --agree-tos --email ${LETSENCRYPT_EMAIL_ADDRESS} --standalone-supported-challenges http-01 -d ${LETSENCRYPT_DOMAIN_NAME}
