#!/bin/sh

# Step (3), creates server certificate and uploads to AWS.  Note change the date from 08232018 to today's date. Requires to use previous pcf-admin-key.pem created in step (2). Be sure to pupulate the openssl.cnf file with the hosted zone name.

openssl req -sha256 -new -key pcf-admin-key.pem -out csr.pem -config openssl.cnf
openssl x509 -req -days 365 -in csr.pem -signkey pcf-admin-key.pem -out pcf-certificate-08232018.pem
openssl rsa -in pcf-admin-key.pem -outform PEM
aws iam upload-server-certificate --server-certificate-name pcf-certificate-08232018 --certificate-body file://pcf-certificate-08232018.pem --private-key file://pcf-admin-key.pem
aws iam get-server-certificate --server-certificate-name pcf-certificate-08232018 > arn.txt
