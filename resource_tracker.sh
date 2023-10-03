# version :v1
# this script will report the aws resource usage
# #########################

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

#List all s3 buckets
echo "print list of s3 buckets"
aws s3 ls

#List ec2 instances
echo "print list of ec2 instances"

aws ec2 describe-instances | jq '.Reservations[
]'

#List lambda
echo "print list of lambda"

aws lambda list-functions

#List IAM users
echo "print list of iam "
aws iam list-users