#!/bin/bash
if [ $# -gt 0 ]; then 
    echo "You have Provided $# Arguments to this script..."
    echo "Lets Get VPC Information for region $1..."
    aws ec2 describe-vpcs --region $1 | jq ".Vpcs[].VpcId" -r
    VPC_COUNT=$(aws ec2 describe-vpcs --region $1 | jq ".Vpcs[].VpcId" -r | wc -l)
    echo "$1" has a total VPC count of ${VPC_COUNT} VPCs..."
else
    echo "No region Arg Provided . Please provide a valid AWS Region Name .."
fi