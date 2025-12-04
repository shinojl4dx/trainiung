#!/bin/bash
# Infra Deployment
set -e

echo "Deploying Stack Jenkins_Test-Stack using parameter.json..."

aws cloudformation deploy \
  --template-file ec2-cft.yml \
  --stack-name jenkisn_Test-Stack \
  --parameter-overrides file://parameter.json \
  --capabilities CAPABILITY_NAMED_IAM

echo "Deployment complete!"
