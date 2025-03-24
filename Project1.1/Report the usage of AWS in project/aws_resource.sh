#!bin/bash

#Author: Amol
#Date: 24-march
#This script will report aws resources usage

#Aws s3, Aws EC2,Aws Lambda, Aws IAM USer

set -x  # it use for print the command also OR dubugging

#list s3 bucket
echo "print the s3 buckets"
aws s3 ls

#Ec2 Instances list
echo " printh ec2 instances"
aws ec2 describe-instances

#aws list lambda
echo "print rhe lambda functions"
aws lambda list-functions

#List IAM user
echo "print Iam list of user"
aws iam list-users

