#!/bin/bash

letsencrypt certonly --text --non-interactive --standalone --renew-by-default --config-dir /etc/letsencrypt --agree-tos --email ${LETSENCRYPT_EMAIL_ADDRESS} --standalone-supported-challenges http-01 -d $1

