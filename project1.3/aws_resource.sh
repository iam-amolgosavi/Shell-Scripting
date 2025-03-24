#!/bin/bash

# Author: Amol
# Date: 24-march
# This script will report aws resources usage

# Aws s3, Aws EC2, Aws Lambda, Aws IAM User

LogFile="/home/ubuntu/aws_resource_usage.log"
TimeStamp=$(date +"%Y-%m-%d %H:%M:%S")

echo "This is a timstamp $TimeStamp for file $LogFile" >> "$LogFile"

# Create the directory if it doesn't exist
mkdir -p /home/ubuntu/

# List S3 buckets
echo "print the s3 buckets" >> "$LogFile"
aws s3 ls >> "$LogFile" 2>&1

# EC2 Instances list
echo "printh ec2 instances" >> "$LogFile"
aws ec2 describe-instances >> "$LogFile" 2>&1

# AWS Lambda functions list
echo "print rhe lambda functions" >> "$LogFile"
aws lambda list-functions >> "$LogFile" 2>&1

# List IAM user
echo "print Iam list of user" >> "$LogFile"
aws iam list-users >> "$LogFile" 2>&1
