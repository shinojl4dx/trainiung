#!/bin/bash
# Infra Deployment
set -e

echo "Deploying Stack JenkinsTestStack using parameter.json..."

aws cloudformation deploy \
  --template-file ec2-cft.yml \
  --stack-name jenkisnTestStack \
  --parameter-overrides file://parameter.json \
  --capabilities CAPABILITY_NAMED_IAM

echo "Deployment complete!"
