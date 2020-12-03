#!/bin/bash

echo "Starting script"

for secret in `echo $secretslist | jq -c '.[]'`; do 
    echo "secret: $secret" &&
    export `echo $secret|cut -d\" -f2`=$(aws secretsmanager --region $region get-secret-value --secret-id `echo $secret |
    cut -d\" -f2` | jq ."SecretString" | cut -d\" -f2);
done

env

echo "Done with Secrets"
